import "bootstrap";
import { startSortable } from "../functions/sortable"
import { thumbOption } from "../functions/thumb"
import { btnOption } from "../functions/btn_options"
import { slider } from "../functions/slider"
import { submit } from "../functions/submit_btn"
import { getSalary } from "../functions/salary_display"
import { autocomplete } from "../functions/autocomplete"
import { loader } from "../functions/loader"


startSortable();
thumbOption();
btnOption();
slider();
submit();
getSalary();
autocomplete();
loader();
