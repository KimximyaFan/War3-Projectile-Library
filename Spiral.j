function Spiral_Attack takes unit missle, unit target, real height, integer direction, integer collSize, integer damage, integer knoc, integer deathType returns nothing
    local location loc = GetUnitLoc(missle)
    local location loc2 = GetUnitLoc(target)
    local real angleA = GetUnitFacing(missle)
    local real angleB = AngleBetweenPoints(loc, loc2)
    local real A = angleA - angleB
    local real dist = DistanceBetweenPoints(loc, loc2)
    local real w = dist/1000
    local real time = 1.1 + w
    local real x = 0
    
    if time > 3 then
        set time = 3
        set w = 1.9
    endif
    
    if RAbsBJ(A) >= 180 then
        if A >= 0 then
            set A = A - 360
        else
            set A = A + 360
        endif
    endif
    
    if direction == 0 then
        set A = 540 - A - (w * 90)
        set x = 180 - (w * 90)
    else
        set A = -540 - A + (w * 90)
        set x = -180 + (w * 90)
    endif
    
    call SetUnitUserData( missle, collSize )
    call SetUnitLifeBJ( missle, deathType )
    call SetUnitManaBJ( missle, knoc )
    
    call CreateParticleToUnitHH( missle )
    call SetParticleTypeHH( GetLastCreatedParticleHH(), hh_PARTICLE_TYPE_RESISTABLE )
    call ModifyParticleTimedLifeHH( GetLastCreatedParticleHH(), time, bj_MODIFYMETHOD_SET )
    call SetParticleUserDataHH( GetLastCreatedParticleHH(), damage )
    call SetParticleFieldHH( GetLastCreatedParticleHH(), hh_PARTICLE_FIELD_SPEED_Z, height / time )
    call SetParticleActionHH( GetLastCreatedParticleHH(), hh_PARTICLE_EVENT_ONTERRAINCOLLIDE, gg_trg_P_Destroy )
    call SetParticleActionHH( GetLastCreatedParticleHH(), hh_PARTICLE_EVENT_ONDESTROY, gg_trg_Generic_Projectile_ValueDeath )
    
    call UnitApplyTimedLifeBJ( time + 0.04, 'BHwe', missle )
    
    call Cos_Move(missle, angleA - x, dist, A/360, time, true)
    call Sin_Move(missle, angleA + 90 - x, dist, A/360, time, true)
    
    call RemoveLocation(loc)
    call RemoveLocation(loc2)
    set loc = null
    set loc2 = null
    set missle = null
    set target = null
endfunction

function Rotate_Custom_Timer takes nothing returns nothing
    local timer t = GetExpiredTimer()
    local integer id = GetHandleId(t)
    local unit u = LoadUnitHandleBJ(0, id, bj_lastCreatedHashtable)
    local unit c = LoadUnitHandleBJ(1, id, bj_lastCreatedHashtable)
    local real startAngle = LoadRealBJ(2, id, bj_lastCreatedHashtable)
    local real angle = LoadRealBJ(3, id, bj_lastCreatedHashtable)
    local real dist = LoadRealBJ(4, id, bj_lastCreatedHashtable)
    local real A = startAngle + angle
    local location loc = GetUnitLoc(u)
    local location loc2 = PolarProjectionBJ(loc, dist, A)
    
    call SetUnitX( c, GetLocationX(loc2) )
    call SetUnitY( c, GetLocationY(loc2) )
    
    if angle >= 0 then
        call SetUnitFacingTimed( c, A + 90,  0)
    else
        call SetUnitFacingTimed( c, A - 90,  0)
    endif
    
    if GetUnitUserData(c) == 1 and IsUnitAliveBJ(u) == true and IsUnitAliveBJ(c) == true then
        call SaveRealBJ( A, 2, id, bj_lastCreatedHashtable)
    else
        call PauseTimer(t)
        call DestroyTimer(t)
        call FlushChildHashtableBJ(id, udg_H)
        
        if IsUnitAliveBJ(u) == false then
            call RemoveUnit(c)
        endif
    endif
    
    call RemoveLocation(loc)
    call RemoveLocation(loc2)
    set loc = null
    set loc2 = null
    set t = null
    set u = null
    set c = null
endfunction

function Rotate_Custom takes unit u, unit c, real angle, real dist returns nothing
    local timer t = CreateTimer()
    local integer id = GetHandleId(t)
    local location loc = GetUnitLoc(u)
    local location loc2 = GetUnitLoc(c)
    local real startAngle = AngleBetweenPoints(loc, loc2)
    
    call SetUnitUserData( c, 1 )
    
    call SaveUnitHandleBJ(u, 0, id, bj_lastCreatedHashtable)
    call SaveUnitHandleBJ(c, 1, id, bj_lastCreatedHashtable)
    call SaveRealBJ(startAngle, 2, id, bj_lastCreatedHashtable)
    call SaveRealBJ(angle, 3, id, bj_lastCreatedHashtable)
    call SaveRealBJ(dist, 4, id, bj_lastCreatedHashtable)
    
    call TimerStart(t, 0.02, true, function Rotate_Custom_Timer)
    
    call RemoveLocation(loc)
    call RemoveLocation(loc2)
    set loc = null
    set loc2 = null
    set t = null
endfunction

function Spiral_Timer takes nothing returns nothing
    local timer t = GetExpiredTimer()
    local integer id = GetHandleId(t)
    
    local unit u = LoadUnitHandleBJ(0, id, bj_lastCreatedHashtable)
    local unit c = LoadUnitHandleBJ(1, id, bj_lastCreatedHashtable)
    local integer tic = LoadIntegerBJ(2, id, bj_lastCreatedHashtable)
    local integer i = LoadIntegerBJ(3, id, bj_lastCreatedHashtable) + 1
    local real startAngle = LoadRealBJ(4, id, bj_lastCreatedHashtable)
    local real angle = LoadRealBJ(5, id, bj_lastCreatedHashtable)
    local real d = LoadRealBJ(6, id, bj_lastCreatedHashtable)
    local real A = startAngle + angle
    local location loc = GetUnitLoc(u)
    local location loc2 = PolarProjectionBJ(loc, i*d, A)
    
    if angle >= 0 then
        call SetUnitFacingTimed( c, A + 90,  0)
    else
        call SetUnitFacingTimed( c, A - 90,  0)
    endif
    
    call SetUnitX( c, GetLocationX(loc2) )
    call SetUnitY( c, GetLocationY(loc2) )
    
    if i < tic and IsUnitAliveBJ(u) == true and IsUnitAliveBJ(c) == true then
        call SaveIntegerBJ( i, 3, id, bj_lastCreatedHashtable)
        call SaveRealBJ( A, 4, id, bj_lastCreatedHashtable)
    else
        call PauseTimer(t)
        call DestroyTimer(t)
        call FlushChildHashtableBJ(id, udg_H)
        
        if IsUnitAliveBJ(u) == false then
            call RemoveUnit(c)
        endif
    endif
    
    call RemoveLocation(loc)
    call RemoveLocation(loc2)
    
    set loc = null
    set loc2 = null
    set u = null
    set c = null
    set t = null
endfunction

function Spiral takes unit u, integer Type, real time, real startAngle, real angle, real dist, real height, real modelSize, real lifeTime returns nothing
    local timer t = CreateTimer()
    local integer id = GetHandleId(t)
    local location loc = GetUnitLoc(u)
    local integer tic = R2I(time/0.02)
    local unit c = null

    call CreateNUnitsAtLoc( 1, 'e004', GetOwningPlayer(u), loc, startAngle )
    call UnitApplyTimedLifeBJ( lifeTime, 'BHwe', GetLastCreatedUnit() )
    set c = GetLastCreatedUnit()
    set udg_LastCreatedSpiral = GetLastCreatedUnit()
    if Type == 0 then
        //call DzSetUnitModel(GetLastCreatedUnit(), "Fireball Medium x0.75.mdx")
        //call DzSetUnitModel(GetLastCreatedUnit(), "Abilities\\Spells\\Other\\Volcano\\VolcanoMissile.mdl")
        call DzSetUnitModel(GetLastCreatedUnit(), "Firebolt Classic.mdx")
        call SetUnitVertexColorBJ( GetLastCreatedUnit(), 100, 55.00, 10.00, 0 )
    endif
    //call SetUnitAnimationByIndex(c, 1)
    call SetUnitScalePercent( GetLastCreatedUnit(), modelSize, modelSize, modelSize )
    call CreateParticleToUnitHH( GetLastCreatedUnit() )
    call SetParticleTypeHH( GetLastCreatedParticleHH(), hh_PARTICLE_TYPE_RESISTABLE )
    call ModifyParticleTimedLifeHH( GetLastCreatedParticleHH(), time, bj_MODIFYMETHOD_SET )
    call SetParticleFieldHH( GetLastCreatedParticleHH(), hh_PARTICLE_FIELD_SPEED_Z, height/time )
    
    call SaveUnitHandleBJ(u, 0, id, bj_lastCreatedHashtable)
    call SaveUnitHandleBJ(c, 1, id, bj_lastCreatedHashtable)
    call SaveIntegerBJ( tic, 2, id, bj_lastCreatedHashtable)
    call SaveIntegerBJ( 0 , 3, id, bj_lastCreatedHashtable)
    call SaveRealBJ( startAngle, 4, id, bj_lastCreatedHashtable)
    call SaveRealBJ(angle, 5, id, bj_lastCreatedHashtable)
    call SaveRealBJ( dist/tic, 6, id, bj_lastCreatedHashtable)
    
    call TimerStart(t, 0.02, true, function Spiral_Timer)
    
    call RemoveLocation(loc)
    set loc = null
    set t = null
    set u = null
    set c = null
endfunction