<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->


<script>
	function return_call() {
		alert("We will get in touch with you soon!");
	}
</script>

<style>
.jumbotron {
	background: #358CCE;
	color: #FFF;
	border-radius: 0px;
}

.jumbotron-sm {
	padding-top: 24px;
	padding-bottom: 24px;
}

.jumbotron small {
	color: #FFF;
}

.h1 small {
	font-size: 24px;
}
</style>

<div class="jumbotron jumbotron-sm">
	<div class="container">
		<div class="row">
			<div class="col-sm-12 col-lg-12">
				<h1 class="h1">
					Contact us <small>Feel free to contact us</small>
				</h1>
			</div>
		</div>
	</div>
</div>
<div class="container">
	<div class="row">
		<div class="col-md-8">
			<div class="well well-sm">
				<form method=post action="ContactData.jsp" name="f"
					onSubmit='return call()'>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label for="name"> Name</label> <input type="text"
									class="form-control" name="name" id="name"
									placeholder="Enter name" required="required" />
							</div>
							<div class="form-group">
								<label for="email"> Email Address</label>
								<div class="input-group">
									<span class="input-group-addon"><span
										class="glyphicon glyphicon-envelope"></span> </span> <input
										type="email" class="form-control" name="email" id="email"
										placeholder="Enter email" required="required" />
								</div>
							</div>
							<div class="form-group">
								<label for="subject"> Subject</label> <select id="subject"
									name="subject" class="form-control" required="required">
									<option value="na" selected="">Choose One:</option>
									<option value="service">General Customer Service</option>
									<option value="suggestions">Suggestions</option>
									<option value="product">Transaction Problem</option>
								</select>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label for="name"> Message</label>
								<textarea name="message" id="message" class="form-control"
									rows="9" cols="25" required="required" placeholder="Message"></textarea>
							</div>
						</div>
						<div class="col-md-12">
							<button type="submit" class="btn btn-primary pull-right"
								id="btnContactUs">Send Message</button>
							<button type="Button" class="btn btn-primary pull-right"
								name=back value="Home" onClick="window.location='index.jsp'">
								Home</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="col-md-4">
			<form>
				<legend>
					<span class="glyphicon glyphicon-globe"></span> Our office
				</legend>
				<address>
					<strong>Bankigiri</strong><br> Department of Computer
					Engineering and Technology<br> Guru Nanak Dev University,
					Amritsar, Punjab, India<br> <abbr title="Phone"> P:</abbr>
					8437861947
				</address>
				<address>
					<strong>Pareekshit (2015CSA1127)</strong><br> <a
						href="mailto:#">mail2vaid@gmail.com</a>
				</address>
			</form>
		</div>
	</div>
</div>
