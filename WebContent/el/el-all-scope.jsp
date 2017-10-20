<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<h1>requestScope</h1>
<br> ${requestScope.name}

<br> Modules: ${requestScope.modules}
<br> Module1: ${requestScope.modules[0]}
<br> Module1: ${requestScope.modules[1]}

<br> Course: ${requestScope.course}
<br> Course Name: ${requestScope.course.courseName}
<br> Assignment: ${requestScope.course.assignment}
<br> Assignment Name: ${requestScope.course.assignment.assinmentName}

<br> Courses: ${requestScope.courses}
<br> Course 1: ${requestScope.courses[0]}
<br> Course 1 Name: ${requestScope.courses[0].courseName}
<br> Assignment 1: ${requestScope.courses[0].assignment}
<br> Assignment 1 Name: ${requestScope.courses[0].assignment.assinmentName}

<br> Trainer: ${requestScope.trainer.trainerName}
<br> Trainer Name: ${requestScope.trainer.trainerName}
<br> Course Name: ${requestScope.trainer.courseName}

<br> Trainers: ${requestScope.trainers}
<br> Trainer Name: ${requestScope.trainers[0].trainerName}
<br> Course Name: ${requestScope.trainers[0].courseName}

<h1>sessionScope</h1>
<br> ${sessionScope.userName}

<h1>applicationScope</h1>
<br> ${applicationScope.copyright}

<h1>pageScope</h1>
<c:set var="myAttribute" value="myValue" scope="page" />
<br> ${pageScope.myAttribute}
