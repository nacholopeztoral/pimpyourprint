import "bootstrap";
import "./moving.js"
import "./transportation-co2.js"
import "./daily-challenge.js"
import "./quiz.js"
import "./navbar.js"
import "./quiz-results.js"
import Chartkick from "chartkick";
window.Chartkick = Chartkick;
// for Chart.js
import Chart from "chart.js";
Chartkick.addAdapter(Chart);
import { showTips, hideTips } from "./tips.js";
showTips();
hideTips();
