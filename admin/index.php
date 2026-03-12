<?php
	require_once 'header_template.php';
?>

<style>
	/* Styling tambahan untuk tampilan admin */
	.content {
		padding: 25px 0;
		background-color: #f9f9f9;
		min-height: calc(100vh - 120px);
	}
	.container {
		width: 960px;
		margin: 0 auto;
		padding: 15px;
		box-sizing: border-box;
	}
	.page-title {
		font-size: 24px;
		font-weight: bold;
		color: #4A90E2;
		margin-bottom: 20px;
		border-bottom: 2px solid #4A90E2;
		padding-bottom: 8px;
	}
	.card {
		background-color: #ffffff;
		padding: 20px;
		border-radius: 8px;
		box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
		display: flex;
		align-items: center;
		gap: 15px;
	}
	.card h2 {
		font-size: 20px;
		color: #333333;
		margin-bottom: 8px;
	}
	.card p {
		font-size: 16px;
		color: #666666;
		margin: 0;
	}
	.card-icon {
		background-color: #4A90E2;
		color: #fff;
		width: 60px;
		height: 60px;
		display: flex;
		align-items: center;
		justify-content: center;
		border-radius: 50%;
		font-size: 30px;
	}
	@media (max-width: 768px) {
		.container {
			width: 100%;
		}
		.card {
			flex-direction: column;
			text-align: center;
		}
		.card-icon {
			margin-bottom: 15px;
		}
	}
</style>

<div class="content">
	<div class="container">
		
		<h3 class="page-title">Beranda</h3>

		<div class="card">
			<div class="card-icon">
				<i class="fas fa-user-circle"></i>
			</div>
			<div>
				<h2>Hai, <?= $_SESSION['uname'] ?>!</h2>
				<p>Selamat datang di sistem informasi <strong>Tantri Resto</strong>. Kami harap Anda memiliki pengalaman yang menyenangkan.</p>
			</div>
		</div>

	</div>
</div>

<?php require_once 'footer_template.php'; ?>
