///@function draw_text_special(x, y, string, len_x, len_y, total_direction, text_direction, tilt_x, tilt_y, angle, xscale, yscale, color, alpha)

/* ///@description
    Some things to take note:
    
    Video guide available here: https://www.youtube.com/watch?v=ztPgJV-_yfo
    The text isn't modified automatically just by passing the values, 
    so you need to control all of its aspects yourself, like rotating or tilting.
    
    Another thing to note is that it uses the last halign and valign defined by the user,
    so if you want to center it on the x and y coordinates, you need to set that yourself by
    using the fa_center and fa_middle values on the halign and valign functions.
*/

///@param {real}   x                  The X position of the center of the text
///@param {real}   y                  The Y position of the center of the text
///@param {string} string             The text that is going to be drawn
///@param {real}   len_x              The X length in pixels that the text will be drawn from the center point
///@param {real}   len_y              The Y length in pixels that the text will be drawn from the center point
///@param {real}   total_direction    The total direction "area" that the text is going to be drawn to
///@param {real}   text_direction     The direction that the text is drawn (used to rotate the text)
///@param {real}   tilt_x             The ammount of tilt on the X axis
///@param {real}   tilt_y             The ammount of tilt on the Y axis
///@param {real}   angle              Angle that is going to be applied to each letter of the string
///@param {real}   xscale             Xscale that is going to be applied to each letter of the string
///@param {real}   yscale             Yscale that is going to be applied to each letter of the string
///@param {real}   color              The color of the text
///@param {real}   alpha              The alpha value of the text

var _x = argument[0];
var _y = argument[1];
var _text = argument[2];
var _len_x = argument[3];
var _len_y = argument[4];
var _total_direction = argument[5];
var _text_direction = argument[6];
var _tx = argument[7];
var _ty = argument[8];
var _angle = argument[9];
var _xs = argument[10];
var _ys = argument[11];
var _color = argument[12];
var _alpha = argument[13];

var _sl = string_length(_text);

for(var i = 0; i < _sl; i++){
    var _ldx = lengthdir_x(_len_x,((_total_direction/_sl)*i)+_text_direction+_tx);
    var _ldy = lengthdir_y(_len_y,((_total_direction/_sl)*i)+_text_direction+_ty);
    
    var _cl = string_char_at(_text,i+1);

    draw_text_transformed_colour(_x+_ldx,_y+_ldy,
    _cl,_xs,_ys,_angle,_color,_color,_color,_color,_alpha);
}
