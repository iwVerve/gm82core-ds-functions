#define alarm_get
    ///alarm_get(numb)
    return alarm[argument0]


#define alarm_set
    ///alarm_set(numb,steps)
    alarm[argument0]=argument1


#define animation_stop
    ///animation_stop()
    image_speed=0
    image_index=image_number-1


#define event_alarm
    ///event_alarm(numb)
    event_perform(ev_alarm,argument0)


#define event_beginstep
    ///event_beginstep()
    event_perform(ev_step,ev_step_begin)


#define event_draw
    ///event_draw()
    event_perform(ev_draw,0)


#define event_endstep
    ///event_endstep()
    event_perform(ev_step,ev_step_end)


#define event_inherit_object
    ///event_inherit_object(object)
    event_perform_object(argument0,event_type,event_number)


#define event_step
    ///event_step()
    event_perform(ev_step,ev_step_normal)


#define event_trigger
    ///event_trigger(trig)
    event_perform(ev_trigger,argument0)


#define object_is_child_of
    ///object_is_child_of(object)
    return object_index==argument0 || object_is_ancestor(object_index,argument0)


#define object_other_is_child_of
    ///object_other_is_child_of(object)
    return other.object_index==argument0 || object_is_ancestor(other.object_index,argument0)


#define pick
    ///pick(which,opt1,opt2,...)
    return argument[(argument[0] mod (argument_count-1))+1]


#define tile_find_anywhere
    ///tile_find_anywhere(x,y)
    var __t;
    __t=tile_find(argument0,argument1,0)
    if (__t) return __t
    return tile_find(argument0,argument1,1)
//
//