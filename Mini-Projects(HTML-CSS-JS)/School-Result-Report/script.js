function generateReport(){
    var admissionNo = document.getElementById('admission-no').value;
    var cls = document.getElementById('class').value;
    var rollNo = document.getElementById('roll-no').value;
    var sname = document.getElementById('sname').value;
    var fname = document.getElementById('fname').value;
    var mname = document.getElementById('mname').value;
    var dob = document.getElementById('dob').value;
    var address = document.getElementById('address').value;
    var eng = document.getElementById('eng').value;
    var hindi = document.getElementById('hindi').value;
    var mar = document.getElementById('mar').value;
    var math = document.getElementById('math').value;
    var sci = document.getElementById('sci').value;
    var soSci = document.getElementById('so-sci').value;
    var draw = document.getElementById('draw').value;
    var env = document.getElementById('env').value;
    var pt = document.getElementById('pt').value;
    
    localStorage.setItem("admissionNo",admissionNo);
    localStorage.setItem("cls",cls);
    localStorage.setItem("rollNo",rollNo);
    localStorage.setItem("sname",sname);
    localStorage.setItem("fname",fname);
    localStorage.setItem("mname",mname);
    localStorage.setItem("dob",dob);
    localStorage.setItem("address",address);
    localStorage.setItem("eng",eng);
    localStorage.setItem("hindi",hindi);
    localStorage.setItem("mar",mar);
    localStorage.setItem("math",math);
    localStorage.setItem("sci",sci);
    localStorage.setItem("soSci",soSci);
    localStorage.setItem("draw",draw);
    localStorage.setItem("env",env);
    localStorage.setItem("pt",pt);
    
    window.location.href = "report.html";
}
 
var adm  = localStorage.getItem("admissionNo")
document.getElementById('adm').innerHTML += adm;
var cls = localStorage.getItem("cls")
document.getElementById('cls').innerHTML += cls;
var roll  = localStorage.getItem("rollNo")
document.getElementById('roll').innerHTML += roll;
var sname  = localStorage.getItem("sname")
document.getElementById('sname').innerHTML += sname;
var fname = localStorage.getItem("fname")
document.getElementById('fname').innerHTML += fname;
var mname  = localStorage.getItem("mname")
document.getElementById('mname').innerHTML += mname;
var dob = localStorage.getItem("dob")
document.getElementById('dob').innerHTML += dob;
var addr  = localStorage.getItem("address")
document.getElementById('addr').innerHTML += addr;
var engm  = Number(localStorage.getItem("eng"))
document.getElementById('engm').innerHTML = engm;
var hm = Number(localStorage.getItem("hindi"))
document.getElementById('hm').innerHTML = hm;
var mm  = Number(localStorage.getItem("mar"))
document.getElementById('mm').innerHTML = mm;
var mathm  = Number(localStorage.getItem("math"))
document.getElementById('mathm').innerHTML = mathm;
var sm = Number(localStorage.getItem("sci"))
document.getElementById('sm').innerHTML = sm;
var ssm  = Number(localStorage.getItem("soSci"))
document.getElementById('ssm').innerHTML = ssm;
var dm = Number(localStorage.getItem("draw"))
document.getElementById('dm').innerHTML = dm;
var em  = Number(localStorage.getItem("env"))
document.getElementById('em').innerHTML = em;
var pm  = Number(localStorage.getItem("pt"))
document.getElementById('pm').innerHTML = pm;

var total = engm + hm + mm + mathm + sm + ssm + dm + em + pm;
document.getElementById("totalm").innerHTML = total;

var per = (total/9).toFixed(2);
document.getElementById("per").innerHTML = per+"%";

if(per>=35 && engm>=35 && hm>=35 && mm>=35 && mathm>=35 && sm>=35 && ssm>=35 && dm>=35 && em>=35 && pm>=35){
    document.getElementById("pf").innerHTML = "Pass";
}
else{
    document.getElementById("pf").innerHTML = "Fail";
}

if(per>90){
    document.getElementById("grade").innerHTML = "O";
    document.getElementById("totalg").innerHTML = "O";
}
else if(per>80 && per<=90){
    document.getElementById("grade").innerHTML = "A+";
    document.getElementById("totalg").innerHTML = "A+";
}
else if(per>70 && per<=80){
    document.getElementById("grade").innerHTML = "A";
    document.getElementById("totalg").innerHTML = "A";
}
else if(per>60 && per<=70){
    document.getElementById("grade").innerHTML = "B+";
    document.getElementById("totalg").innerHTML = "B+";
}
else if(per>50 && per<=60){
    document.getElementById("grade").innerHTML = "B";
    document.getElementById("totalg").innerHTML = "B";
}
else if(per>40 && per<=50){
    document.getElementById("grade").innerHTML = "C";
    document.getElementById("totalg").innerHTML = "C";
}
else if(per>=35 && per<=40){
    document.getElementById("grade").innerHTML = "D";
    document.getElementById("totalg").innerHTML = "D";
}
else{
    document.getElementById("grade").innerHTML = "F";
    document.getElementById("totalg").innerHTML = "F";
}

// english grade
if(engm>90){
    document.getElementById("engg").innerHTML = "O";
}
else if(engm>80 && engm<=90){
    document.getElementById("engg").innerHTML = "A+";
}
else if(engm>70 && engm<=80){
    document.getElementById("engg").innerHTML = "A";
}
else if(engm>60 && engm<=70){
    document.getElementById("engg").innerHTML = "B+";
}
else if(engm>50 && engm<=60){
    document.getElementById("engg").innerHTML = "B";
}
else if(engm>40 && engm<=50){
    document.getElementById("engg").innerHTML = "C";
}
else if(engm>=35 && engm<=40){
    document.getElementById("engg").innerHTML = "D";
}
else{
    document.getElementById("engg").innerHTML = "F";
    document.getElementById("grade").innerHTML = "F";
    document.getElementById("totalg").innerHTML = "F";
}

// hindi grade
if(hm>90){
    document.getElementById("hg").innerHTML = "O";
}
else if(hm>80 && hm<=90){
    document.getElementById("hg").innerHTML = "A+";
}
else if(hm>70 && hm<=80){
    document.getElementById("hg").innerHTML = "A";
}
else if(hm>60 && hm<=70){
    document.getElementById("hg").innerHTML = "B+";
}
else if(hm>50 && hm<=60){
    document.getElementById("hg").innerHTML = "B";
}
else if(hm>40 && hm<=50){
    document.getElementById("hg").innerHTML = "C";
}
else if(hm>=35 && hm<=40){
    document.getElementById("hg").innerHTML = "D";
}
else{
    document.getElementById("hg").innerHTML = "F";
    document.getElementById("grade").innerHTML = "F";
    document.getElementById("totalg").innerHTML = "F";
}

// marathi grade
if(mm>90){
    document.getElementById("mg").innerHTML = "O";
}
else if(mm>80 && mm<=90){
    document.getElementById("mg").innerHTML = "A+";
}
else if(mm>70 && mm<=80){
    document.getElementById("mg").innerHTML = "A";
}
else if(mm>60 && mm<=70){
    document.getElementById("mg").innerHTML = "B+";
}
else if(mm>50 && mm<=60){
    document.getElementById("mg").innerHTML = "B";
}
else if(mm>40 && mm<=50){
    document.getElementById("mg").innerHTML = "C";
}
else if(mm>=35 && mm<=40){
    document.getElementById("mg").innerHTML = "D";
}
else{
    document.getElementById("mg").innerHTML = "F";
    document.getElementById("grade").innerHTML = "F";
    document.getElementById("totalg").innerHTML = "F";
}

// math grade
if(mathm>90){
    document.getElementById("mathg").innerHTML = "O";
}
else if(mathm>80 && mathm<=90){
    document.getElementById("mathg").innerHTML = "A+";
}
else if(mathm>70 && mathm<=80){
    document.getElementById("mathg").innerHTML = "A";
}
else if(mathm>60 && mathm<=70){
    document.getElementById("mathg").innerHTML = "B+";
}
else if(mathm>50 && mathm<=60){
    document.getElementById("mathg").innerHTML = "B";
}
else if(mathm>40 && mathm<=50){
    document.getElementById("mathg").innerHTML = "C";
}
else if(mathm>=35 && mathm<=40){
    document.getElementById("mathg").innerHTML = "D";
}
else{
    document.getElementById("mathg").innerHTML = "F";
    document.getElementById("grade").innerHTML = "F";
    document.getElementById("totalg").innerHTML = "F";
}

// science grade
if(sm>90){
    document.getElementById("sg").innerHTML = "O";
}
else if(sm>80 && sm<=90){
    document.getElementById("sg").innerHTML = "A+";
}
else if(sm>70 && sm<=80){
    document.getElementById("sg").innerHTML = "A";
}
else if(sm>60 && sm<=70){
    document.getElementById("sg").innerHTML = "B+";
}
else if(sm>50 && sm<=60){
    document.getElementById("sg").innerHTML = "B";
}
else if(sm>40 && sm<=50){
    document.getElementById("sg").innerHTML = "C";
}
else if(sm>=35 && sm<=40){
    document.getElementById("sg").innerHTML = "D";
}
else{
    document.getElementById("sg").innerHTML = "F";
    document.getElementById("grade").innerHTML = "F";
    document.getElementById("totalg").innerHTML = "F";
}

// social science grade
if(ssm>90){
    document.getElementById("ssg").innerHTML = "O";
}
else if(ssm>80 && ssm<=90){
    document.getElementById("ssg").innerHTML = "A+";
}
else if(ssm>70 && ssm<=80){
    document.getElementById("ssg").innerHTML = "A";
}
else if(ssm>60 && ssm<=70){
    document.getElementById("ssg").innerHTML = "B+";
}
else if(ssm>50 && ssm<=60){
    document.getElementById("ssg").innerHTML = "B";
}
else if(ssm>40 && ssm<=50){
    document.getElementById("ssg").innerHTML = "C";
}
else if(ssm>=35 && ssm<=40){
    document.getElementById("ssg").innerHTML = "D";
}
else{
    document.getElementById("ssg").innerHTML = "F";
    document.getElementById("grade").innerHTML = "F";
    document.getElementById("totalg").innerHTML = "F";
}

// drawing grade
if(dm>90){
    document.getElementById("dg").innerHTML = "O";
}
else if(dm>80 && dm<=90){
    document.getElementById("dg").innerHTML = "A+";
}
else if(dm>70 && dm<=80){
    document.getElementById("dg").innerHTML = "A";
}
else if(dm>60 && dm<=70){
    document.getElementById("dg").innerHTML = "B+";
}
else if(dm>50 && dm<=60){
    document.getElementById("dg").innerHTML = "B";
}
else if(dm>40 && dm<=50){
    document.getElementById("dg").innerHTML = "C";
}
else if(dm>=35 && dm<=40){
    document.getElementById("dg").innerHTML = "D";
}
else{
    document.getElementById("dg").innerHTML = "F";
    document.getElementById("grade").innerHTML = "F";
    document.getElementById("totalg").innerHTML = "F";
}

// environment grade
if(em>90){
    document.getElementById("eg").innerHTML = "O";
}
else if(em>80 && em<=90){
    document.getElementById("eg").innerHTML = "A+";
}
else if(em>70 && em<=80){
    document.getElementById("eg").innerHTML = "A";
}
else if(em>60 && em<=70){
    document.getElementById("eg").innerHTML = "B+";
}
else if(em>50 && em<=60){
    document.getElementById("eg").innerHTML = "B";
}
else if(em>40 && em<=50){
    document.getElementById("eg").innerHTML = "C";
}
else if(em>=35 && em<=40){
    document.getElementById("eg").innerHTML = "D";
}
else{
    document.getElementById("eg").innerHTML = "F";
    document.getElementById("grade").innerHTML = "F";
    document.getElementById("totalg").innerHTML = "F";
}

// pt grade
if(pm>90){
    document.getElementById("pg").innerHTML = "O";
}
else if(pm>80 && pm<=90){
    document.getElementById("pg").innerHTML = "A+";
}
else if(pm>70 && pm<=80){
    document.getElementById("pg").innerHTML = "A";
}
else if(pm>60 && pm<=70){
    document.getElementById("pg").innerHTML = "B+";
}
else if(pm>50 && pm<=60){
    document.getElementById("pg").innerHTML = "B";
}
else if(pm>40 && pm<=50){
    document.getElementById("pg").innerHTML = "C";
}
else if(pm>=35 && pm<=40){
    document.getElementById("pg").innerHTML = "D";
}
else{
    document.getElementById("pg").innerHTML = "F";
    document.getElementById("grade").innerHTML = "F";
    document.getElementById("totalg").innerHTML = "F";
}