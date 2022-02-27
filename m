Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 817FDC433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Feb 2022 15:31:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JRkPQF7v61GWxXL5/2dFiMZ6hWzTK+JZLAey/E+5aog=; b=Qr2eeciscVbnjc
	OarrM7uNbdVKzip/ATkBjHoQNVZWFlAZNKEXPHqPAsmyqC4dtU6N14IK0dbOUyCfSu72YM2ufIuC5
	NH1wfdjkTpTQPNyrc0KQFb5mS1oOyiAXUFcJRf+AoZeLbsj3wRtJcEOk0PnCKFcFGDyAdvH0HioP5
	f6YfRh8y2Szz5J2RMgLy/b/+SpdhAttFC/f65JS1RicU8zyVleD8pNta9OiOjP9a6tkE3MvkdImSp
	V3Y/3tcMuqt3WUB3Fs/23v9gtSNTaiyrv443S5ORLmupregaP6EdAMtSU1jgsN7opvrAgxVuyMHzN
	3/EsAuYFSYz0xV2ocYlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOLVn-009ZWb-7H; Sun, 27 Feb 2022 15:31:03 +0000
Received: from mail-qv1-xf35.google.com ([2607:f8b0:4864:20::f35])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOLV8-009ZBT-SA; Sun, 27 Feb 2022 15:30:24 +0000
Received: by mail-qv1-xf35.google.com with SMTP id g23so10596887qvb.4;
 Sun, 27 Feb 2022 07:30:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZtUJySmbIWUCXkZt6OYhMWHmPcZgwTz+ISBAU3SmGDQ=;
 b=N/u0A+od7mnhmo0ttIWI5u7uH+VOP2c9hsLk6Rwvuq64MmCYpSUikT2vIoUFHRLRqZ
 r/nNbb8nJEuaxvG+lwFVbHdMAaQl/aHXMKgUdPnrkmU+p6mF368niIveTyT44NZgNbiD
 tcgSoRjSqUIzc7UVGKPrdhLRbYZTSwbLWPtMMg5jip9EVZcXGFzbq73HndfBS/zzneLB
 gYg25f3GfePVUS7hxy422+gIp8HxHACeAQnlOrvGgMawRq8Fs3+WI5Cu7O1z+qe3xFDn
 wZFVVRZFXTDRH8kl3hBXtCXDrMjskt7w1Spo7ZR1FzxXqr8G/gWpntJNbmCr36MltT2t
 ARKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZtUJySmbIWUCXkZt6OYhMWHmPcZgwTz+ISBAU3SmGDQ=;
 b=n0iMSgc63LvizljvH5ZEHtw9A+aivEJiYiqaOBBCFvC6VkoJNMAU06guWPJzq3XR6I
 fqdqX+hE90AlPjEfP4YAFpqTIuz2WvamlcSW1u6ACnp+AfiKgL4ga3PRHJ1S1IeLthQ/
 85rXhnnDCKwMDDZKU7GzaWDWScLa7FIWwptHjjXmmvWXFhesFNg8Qm2N5F6iYD4xJ44W
 DVo95IUKifzfTAraTxwFQI3/7JJgMVekmvFaoKUrQ53MuFmz/DxxFX8Z+6TlG//3hFHr
 nhxR4e3fFEsGdJPW+OwzuCvPUMdeQCpKgKYBjLbrV2tAKJDwoCq6r3eAGtgW1VHdEDS2
 GA0A==
X-Gm-Message-State: AOAM532hbK+SAgykmYrTvPYs5++T1LG3VST2DXQupree++VMB0/ngyQ+
 62QGgiIwYao31OIstu4rU3A=
X-Google-Smtp-Source: ABdhPJwwGqnRp4WZw5csveWAlg4LO4iYmZynP772sOMTPLXz4bRnXBhnjOE5u7jMT9BtKP+KiczALw==
X-Received: by 2002:ad4:5b89:0:b0:432:e725:2594 with SMTP id
 9-20020ad45b89000000b00432e7252594mr5004735qvp.84.1645975821762; 
 Sun, 27 Feb 2022 07:30:21 -0800 (PST)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 s10-20020a05620a080a00b0062ce6f3f5d7sm3845767qks.16.2022.02.27.07.30.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Feb 2022 07:30:21 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, michael.riesch@wolfvision.net,
 jbx6244@gmail.com, Peter Geis <pgwipeout@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 3/7] soc: rockchip: set dwc3 clock for rk3566
Date: Sun, 27 Feb 2022 10:30:12 -0500
Message-Id: <20220227153016.950473-4-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220227153016.950473-1-pgwipeout@gmail.com>
References: <20220227153016.950473-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220227_073022_934913_D55877EC 
X-CRM114-Status: GOOD (  12.49  )
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
