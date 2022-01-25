Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCAF9C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Jan 2022 17:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0/Avq/pylYODaWNDd2QTmRq21+D2t2V9ILAJQRem7Xk=; b=QpNabhgBU3dI/D
	/NJdO2h4pvDYllo/rtkQ61MK8k8H/gf+97PQ6048vVKKwphcbe4M5+RsllwVb6jcDe8FE28HTjemq
	zl1/74w5AXFTbACRTAMDzeey9kGcskNPz4Plbjs97W6vrGOkbfrtrUYA1MygrPlRry3HvKgptOyRj
	+y7VAplq9/IiYthZWEI+PqBVj7OufRvurdt4kOydU1RucZE8WlhgMir9NteytSYNdqhOyUOH2jP+G
	zXF+X+UZUCQVOvcP/VBV3bb78k+vNIwvYfWRSPvgMgNnC7c4QZPaqqO1hGCsqP+q0SqrKBWEccHnY
	tXu40ON/QPOYViRzA0rA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCPQe-008v9s-2p; Tue, 25 Jan 2022 17:16:24 +0000
Received: from mail-il1-x129.google.com ([2607:f8b0:4864:20::129])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCPMn-008tE7-AS; Tue, 25 Jan 2022 17:12:27 +0000
Received: by mail-il1-x129.google.com with SMTP id e8so17395143ilm.13;
 Tue, 25 Jan 2022 09:12:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WrtH5ghaKPN4zPq0sPHDAur3BisSAdvDShbVq3dIejA=;
 b=qfiSSeIxefWvWW91HY1bM17R0N/s6o0+Yjh0p4BV/GcxYzIkNnorxVtPITTcwXvpI9
 TLcDMfDF+wuNR5qhQUpsq2OOvaJ3QX+ase3dO7BliS2YLsm//qPllzUxk1yGEbhooRhO
 i5U3KuLFBMsUzdAmQeMyD3aBKR/oaCtzEXjdcCwYf/zjkcyzDfZjLrnBnqtnlzwv0/Hy
 AF0d+nV/lEjuL2TtWvolLPHu/Kt70emVwZQ2nmvHSTrvlzbt62kqHevDG5RHvfXTG8F3
 Bp+FyZRL79jGpWuBhI6bp02kkU5zwaNlAA/fxQ/7+iw/TDCGgd5BIokiJwShQ1jDX1nB
 exbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WrtH5ghaKPN4zPq0sPHDAur3BisSAdvDShbVq3dIejA=;
 b=xjRly00yge5+Y0cJSSFavOZLZcmmaoxeDBSd93gc/A05Z/AO9SbkRUVuBVQKyb51aL
 EUvjIpobzwhnu4+fpsg3UfUIwzy0zw73JpJE7qpj5QtEJorO+Zg6hllG8vu0p9BT6Xz9
 hzvWe7s6yIDE30dVOgIJye7Qbn2LHDcatqMoQrNKm7E83EToTjMhgnC6cGESKcSCSUPF
 vC658Z6z/hA4/0O6N9dL9YcWvFfUx9C7N1bOh4lF7EklPK2XrxB9iBV0cKoKRVVt3cWu
 j/Gn62V8UN5vow7GzeWCSkrCTyk/Eh5XyHxY3BsyzR+jqMA3QKilFhjOpZMdqJuszxtv
 rvmg==
X-Gm-Message-State: AOAM531Y+VB874nvrPvlOy6t2NJ+tUmR6BAwfS9R4UbOK9B1vhj8yrPa
 n0wHViXvF1XVbspqtOGIMmQ=
X-Google-Smtp-Source: ABdhPJzkxyIibb1FGTbKN+rTHBAFQa3lU1Qx2tprXS7p7+K9mSBL7V22s7wjlfzr5Avd5Q1iORjH7A==
X-Received: by 2002:a05:6e02:12ca:: with SMTP id
 i10mr11495329ilm.284.1643130743930; 
 Tue, 25 Jan 2022 09:12:23 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:6592:b6fe:71b1:9f4c])
 by smtp.gmail.com with ESMTPSA id m14sm8090291iov.0.2022.01.25.09.12.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Jan 2022 09:12:22 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: aford@beaconembedded.com, cphealy@gmail.com,
 Adam Ford <aford173@gmail.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lucas Stach <l.stach@pengutronix.de>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev
Subject: [PATCH V4 01/11] arm64: dts: imx8mq-tqma8mq: Remove redundant vpu
 reference
Date: Tue, 25 Jan 2022 11:11:18 -0600
Message-Id: <20220125171129.472775-2-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220125171129.472775-1-aford173@gmail.com>
References: <20220125171129.472775-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220125_091225_406253_AAF8B7A2 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
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

The vpu is enabled by default, so there is no need to manually
enable it.

Signed-off-by: Adam Ford <aford173@gmail.com>

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi
index 8aedcddfeab8..38ffcd145b33 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi
@@ -272,10 +272,6 @@ &usdhc1 {
 	status = "okay";
 };
 
-&vpu {
-	status = "okay";
-};
-
 /* Attention: wdog reset forcing POR needs baseboard support */
 &wdog1 {
 	status = "okay";
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
