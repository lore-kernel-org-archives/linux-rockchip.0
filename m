Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63D1CC433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Feb 2022 18:42:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JRkPQF7v61GWxXL5/2dFiMZ6hWzTK+JZLAey/E+5aog=; b=yif+oITcEqKEWV
	oyS8aeAlvTJNU/fSd/nbkr7JhYLv7EEcxXijd1RUUyqBX0tUKRRi26D7GA8ciYzWENTnVTGOkQksj
	RlvB6e81wRRLOMHFrursi7cjDVMFp82PV5S6/HJxhJb9+S3I1sxhfsrPnetqNrtl3mO/NKRN4YrB9
	OSwT3rCVxhwLxASAq+JkLvB3xIipZKFp9uBFkDkmS6hvX4sz0UXamRkX7Lz/elIhAvjWAOgI7lNam
	YEaEYx28/3Ak8QdID5J4R4FmWQD7sxQT/3UdZB0QRe3i/mn6GetPXFus1QHrNSNKDACjIQ0T5Bqvs
	CZsvrqXrNua1o6MMh/tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nO21i-008NY1-Lr; Sat, 26 Feb 2022 18:42:42 +0000
Received: from mail-qk1-x72d.google.com ([2607:f8b0:4864:20::72d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nO211-008N9G-HR; Sat, 26 Feb 2022 18:42:01 +0000
Received: by mail-qk1-x72d.google.com with SMTP id b13so7267342qkj.12;
 Sat, 26 Feb 2022 10:41:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZtUJySmbIWUCXkZt6OYhMWHmPcZgwTz+ISBAU3SmGDQ=;
 b=GLCGWP2NbqUAt+NRaCS9PbZaUL79BYkVdjpvU9SCymlZdEK+v2Fj0Bcr+hG8TNlyr6
 myRfqA2boAT6LU6bTUFYK31FWtgXeW/V6UPxFjHexE0tFoYEKG9Tkg4DM5zNYGQWoddr
 iQ3sLhmYLnMDuLc2M6chCxFvV3b0jXFKw8lf5lS90aUARI/CvTE7EAfXVY9PFtNUW/EI
 D7rQp2uL3ar7vQZGsGLqjewXOvoyAm36B4eiJKWJua9vaTiQgzSp4yBI27EmW81MfL3N
 7SuPTS7dcy94V5vhHfGkvXqgYsCQOek4MIC0tTNQBosKIaOvPPxArmNnJlVh44GW5dJW
 VLzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZtUJySmbIWUCXkZt6OYhMWHmPcZgwTz+ISBAU3SmGDQ=;
 b=uIpsm61P8bVxdCHZC1nAv4ZRUY6yINFEVygIMGc670Im2WVNMAOHu9oMaNvnRKt0of
 1lJYxOEfY1rl6fArlICzCPFft+T+tJVQwfHKI/CtiI38N1rz0BbKr/487E2ElgoeqwuP
 9VWMu0Pv+syI42ZmMS/9/NRr3vwXXTb5vpVNWu4QOQOXwgCryVI+UeWorNqm+uopiB1C
 zaXd0bcwHwY0q+zoLuTH2zB1BON5O2BsYhUIZnu2Hnx6vOPN9FiK0VD16sc1eJm6KUrJ
 pKr5R9piKGMfiFN7gyXMVCKE3CYPeakk1ektDhh171rxzM8MlY4nC5U9BFqoDFF0C9SV
 pz4g==
X-Gm-Message-State: AOAM531OmyvmEd0vlYrCSVutz1PD/c0Euc7G43/v41UmOlu2/PBuiFqn
 ldPwjcmH1djaARaW+gECvswAp3uO7Rj3Fw==
X-Google-Smtp-Source: ABdhPJwjzpEX1dev4bOXCiYiicnwVacVs9OJdVCEIhtaa9wFGKty4rqda6jqF/suyoCbaYJvEpzEgQ==
X-Received: by 2002:a05:620a:2941:b0:47e:144b:84a9 with SMTP id
 n1-20020a05620a294100b0047e144b84a9mr7826680qkp.32.1645900918443; 
 Sat, 26 Feb 2022 10:41:58 -0800 (PST)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 p68-20020a378d47000000b006491d2d1450sm2891983qkd.10.2022.02.26.10.41.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Feb 2022 10:41:58 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, michael.riesch@wolfvision.net,
 Peter Geis <pgwipeout@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 04/11] soc: rockchip: set dwc3 clock for rk3566
Date: Sat, 26 Feb 2022 13:41:40 -0500
Message-Id: <20220226184147.769964-5-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220226184147.769964-1-pgwipeout@gmail.com>
References: <20220226184147.769964-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220226_104159_597534_D87902B0 
X-CRM114-Status: GOOD (  12.65  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The rk3566 dwc3 otg port clock is unavailable at boot, as it defaults to
the combophy as the clock source. As combophy0 doesn't exist on rk3566,
we need to set the clock source to the usb2 phy instead.

Add handling to the grf driver to handle this on boot.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 drivers/soc/rockchip/grf.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/soc/rockchip/grf.c b/drivers/soc/rockchip/grf.c
index 494cf2b5bf7b..384461b70684 100644
--- a/drivers/soc/rockchip/grf.c
+++ b/drivers/soc/rockchip/grf.c
@@ -108,6 +108,20 @@ static const struct rockchip_grf_info rk3399_grf __initconst = {
 	.num_values = ARRAY_SIZE(rk3399_defaults),
 };
 
+#define RK3566_GRF_USB3OTG0_CON1	0x0104
+
+static const struct rockchip_grf_value rk3566_defaults[] __initconst = {
+	{ "usb3otg port switch", RK3566_GRF_USB3OTG0_CON1, HIWORD_UPDATE(0, 1, 12) },
+	{ "usb3otg clock switch", RK3566_GRF_USB3OTG0_CON1, HIWORD_UPDATE(1, 1, 7) },
+	{ "usb3otg disable usb3", RK3566_GRF_USB3OTG0_CON1, HIWORD_UPDATE(1, 1, 0) },
+};
+
+static const struct rockchip_grf_info rk3566_pipegrf __initconst = {
+	.values = rk3566_defaults,
+	.num_values = ARRAY_SIZE(rk3566_defaults),
+};
+
+
 static const struct of_device_id rockchip_grf_dt_match[] __initconst = {
 	{
 		.compatible = "rockchip,rk3036-grf",
@@ -130,6 +144,9 @@ static const struct of_device_id rockchip_grf_dt_match[] __initconst = {
 	}, {
 		.compatible = "rockchip,rk3399-grf",
 		.data = (void *)&rk3399_grf,
+	}, {
+		.compatible = "rockchip,rk3566-pipe-grf",
+		.data = (void *)&rk3566_pipegrf,
 	},
 	{ /* sentinel */ },
 };
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
