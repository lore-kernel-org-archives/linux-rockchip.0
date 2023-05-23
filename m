Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77DEBC7EE23
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 May 2023 21:38:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WDEYHpV5m8EwvUFeNLO9dSS6rNE3asXTShzayelgBW0=; b=iX1IPakGzbd3Pz
	c+bGwrH8+lhqoIPN9D/JwF6JQGnZajlFvCNm8vQ4DAMvbSolpUnrVPOZzwMxZwkneoHRBzujAUq1r
	fYoSLLYCNiSuYG2pnpu6ZvqOyPAhL/jLRiS/9q0oJWXkXSEWc5vIh/yGElUstqrRw7cbphntqG/TL
	42Ql7cBrhXLXjq28By9rVotpfNu6RyBkCOtXh71FcWaiX2joTOtD5xU/Q/IQfXZEsW8wyJ/D6bPDu
	jnjIiakOGJF7Mf34r2ii8yBxRYyAktbo4LF+d+lQExuENx205zQL+YqWLKks/e/QMW6sIc2myv7A1
	ZrmofwViCt3h7PPvSjbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1ZiJ-00BVSb-0G;
	Tue, 23 May 2023 21:38:39 +0000
Received: from mail-oi1-x22a.google.com ([2607:f8b0:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1ZiG-00BVP8-11
	for linux-rockchip@lists.infradead.org;
	Tue, 23 May 2023 21:38:37 +0000
Received: by mail-oi1-x22a.google.com with SMTP id 5614622812f47-39446801cf1so199118b6e.2
        for <linux-rockchip@lists.infradead.org>; Tue, 23 May 2023 14:38:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684877914; x=1687469914;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0Mgi1xCWZGOa//ARDGoMV+dgV7iPjlGc+gvDlG8j5pY=;
        b=hXs8XQ+VsM0uKKwxB8QRLNQNK78Qca3/YA7XW2GEi+5SxI1BvHOMq29cvWlDDyWCRx
         LQMPDyJicTszBjUZFqQyb8dBZSRpecRDiOFuHGbfBALS3FpsWm/qn0i8U0+sb2ugQiaN
         Vv0EFEe1LsPAVWJn/ZvOxE5NGXNnhhLg8+ZW61HWZD/lfitjOcL8lAx9rcHrS39YkMek
         OT/pvEmzZ7UiwrzhchcRME1csW3c6bfihfCgAS0D6GGK48WYYcwk8jR6U40GO1xuTxwo
         QwWzLRpHI1F3C1g50tKvyelhXzCwSq63TCB6ACBIZ/w5MQa29W26kACfzo0c7lXYY3oz
         mgXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684877914; x=1687469914;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0Mgi1xCWZGOa//ARDGoMV+dgV7iPjlGc+gvDlG8j5pY=;
        b=V/uN9M2YWS6DoNOVhqtSQVdaW1B47kyOPI0SXjL8xyeTPh0EpxQ8NzOpYZ2jxFNauW
         wx55uqFE1TEUFvde0Uc94WHWTSCspxj0jXGR9FIGXJC11tG0dx1Hod+EqG19KlNrNpE2
         F+J6S3nCzgMGnvIqBx/ySrl2FkINVeCQcqD5EMWgmlXqzwQP3MvXGEzA4we45NE0BEBG
         kFDC0GgEMP60SiXTanwg8COrw/UA+M7+s9qakUr7d+UPY+LowMeKIvVkwDPiqKoZYu5f
         EFbgYMlwmDlHTY+R9l+XKkeZqQMvXCYXjp1xMVuyWaNc6LzBYBxW4mDlXa323T4ju/Q7
         nrJQ==
X-Gm-Message-State: AC+VfDyJg/BN8NG7EQkF7Him9tuWd+eGj+9kokid818Bb5flFXFgIixu
	OANbcFmeeWWOlg5iyRrFGHEvUaEv+ipveg==
X-Google-Smtp-Source: ACHHUZ5j0wmMDzm4NXi9K7ZqQmj6d+e/UrUvMChhWlONqjQFtk+tG5LyXBhsF5o/9phbxLMt9cM1iA==
X-Received: by 2002:a05:6808:4c4:b0:394:2868:d51f with SMTP id a4-20020a05680804c400b003942868d51fmr7767223oie.4.1684877914232;
        Tue, 23 May 2023 14:38:34 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id y83-20020acae156000000b0037832f60518sm4442359oig.14.2023.05.23.14.38.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 May 2023 14:38:33 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org,
	zyw@rock-chips.com,
	sebastian.reichel@collabora.com,
	andyshrk@163.com,
	jagan@amarulasolutions.com,
	broonie@kernel.org,
	perex@perex.cz,
	tiwai@suse.com,
	lgirdwood@gmail.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 3/6] arm64: dts: rockchip: Add sdio node to rk3588
Date: Tue, 23 May 2023 16:38:22 -0500
Message-Id: <20230523213825.120077-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230523213825.120077-1-macroalpha82@gmail.com>
References: <20230523213825.120077-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_143836_359444_D25B9484 
X-CRM114-Status: GOOD (  10.01  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

From: Chris Morgan <macromorgan@hotmail.com>

Add SDIO node for rk3588/rk3588s.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 571cdec24a66..6335d5648bc3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -1176,6 +1176,21 @@ sdmmc: mmc@fe2c0000 {
 		status = "disabled";
 	};
 
+	sdio: mmc@fe2d0000 {
+		compatible = "rockchip,rk3588-dw-mshc", "rockchip,rk3288-dw-mshc";
+		reg = <0x00 0xfe2d0000 0x00 0x4000>;
+		interrupts = <GIC_SPI 204 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru HCLK_SDIO>, <&cru CCLK_SRC_SDIO>,
+			 <&cru SCLK_SDIO_DRV>, <&cru SCLK_SDIO_SAMPLE>;
+		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
+		fifo-depth = <0x100>;
+		max-frequency = <200000000>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&sdiom1_pins>;
+		power-domains = <&power RK3588_PD_SDIO>;
+		status = "disabled";
+	};
+
 	sdhci: mmc@fe2e0000 {
 		compatible = "rockchip,rk3588-dwcmshc";
 		reg = <0x0 0xfe2e0000 0x0 0x10000>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
