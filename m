Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3DEDC10F05
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Dec 2023 15:36:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5m3GMeWD40M23570ivkeZZzwfsEkMN+YRgEeu9t4G2s=; b=FunBJIglRI5sqx
	FZEhhJB15U8hFvMdu1Dm50JBgXARqaQrVzDZ0xMDgjiwXkEKzIOAkXe6MpuMG6KberBS757Dh3zrS
	HdJtZLnSwt6oyNGu52mp6m6vReYLwTwFyZD4sJYF7sLHpBivfHxrbbxQSOuXP3XTc7rJAToR01V6J
	EepwADrV2vORbHqOQXTbZEvLQ4yBqA0MQQgK4nkWDc83MKLMA1jsaDDGI3mE4B85P9/uGZ1wulg9V
	Va2uzJ8c2W24duCwY+grNBAvpydb907jMALK8rEdKSNRb1wKxBWLjCZtvZRwbr/J/o6Y+rfHc4HmB
	QhlDWwe3OTtXZU/VTa7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAAzO-004yRr-3B;
	Mon, 04 Dec 2023 15:36:06 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAAzI-004yNx-2c;
	Mon, 04 Dec 2023 15:36:02 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-50bf898c43cso985283e87.1;
        Mon, 04 Dec 2023 07:35:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701704157; x=1702308957; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q0MUcVwcu9FCifO7HjzlwPMDhi7mDLRFD1pK6+mohtM=;
        b=kdDgwWaY/pEzarfmjlimOLWqSaPIuJXpJXVNq+0GoOmL4yMjyxdpfJZR7PJUGS5PjN
         oXE6aOTxaSDXEHmEO1VnR4D3UYCHUdYnxL7KZiw2U38OJyT5GeHCD6kKb3PEHX/Uwn5Q
         0VCY5aXQ/sXrKW/VryNWV5wdutNqehrqgSIKPdEYvv9w3E3BFgMgbFAcGUvOLShpvMPP
         QJcbCA0lnxIZRd3WaZ4/VsPrCvkkP33//Yj6b8jzjmLdpQ1by+Ka3T3xIp34XtHmCGfM
         lqebk9O1emAuXmUOhB6RBwTbamSWkGCXlPwIl9vEHP7NDDrsC5Ud2EegzkLnhcIKOEzs
         esFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701704157; x=1702308957;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q0MUcVwcu9FCifO7HjzlwPMDhi7mDLRFD1pK6+mohtM=;
        b=NbHccim4qAJLxL4OTpxEsGczVcwTn7A7+eZIQY1yiTTVhfRZtlRXQ2EIGlCsmD6lgS
         XS11jFGRQ0LWuiT/AgmZsIK3SHphMJyLRa1AqU3+i7E92OnE0HW2cYqwipZEwO12WiHD
         wpiG31V46BeVEle8kXFsW4DmfZl+YbovWsZ930FIqrulutNfl0nGrzDJN2qg20TRBufM
         P2ZPDWQjjNzAST6yG1W4x8e+N8pubS3EzLZiI9l5/5iDFP28+wqPg4cvnobj5cx2BhL8
         6GdO0NKkGOUguDcnDtxBuFFMOHR8CxqGrPacL7lyBQKmhSIq0HYhIf7d3Gm03+kfH2UI
         IDsg==
X-Gm-Message-State: AOJu0YwWm+KxeOna1UrDuMgFlQYpTyrmCQUTjrZ6WoQApfPY0pqplKyJ
	IhLPBspyUUhT2C1p/CfXvg==
X-Google-Smtp-Source: AGHT+IF3udiFN47bfrHu8XfBAJHpEV9pshrnM6X3NzNLynr7EilRiSdLH07zmbztsogo8QQSppXbUg==
X-Received: by 2002:a05:6512:281c:b0:50b:f9b2:d00 with SMTP id cf28-20020a056512281c00b0050bf9b20d00mr480709lfb.22.1701704156886;
        Mon, 04 Dec 2023 07:35:56 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:55ff:210b:5393:c9d7])
        by smtp.gmail.com with ESMTPSA id h20-20020a05640250d400b0054c77ac01f4sm693194edb.51.2023.12.04.07.35.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 07:35:56 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v3 3/3] ARM: dts: rockchip: Enable GPU for XPI-3128
Date: Mon,  4 Dec 2023 16:35:47 +0100
Message-ID: <20231204153547.97877-4-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231204153547.97877-1-knaerzche@gmail.com>
References: <20231204153547.97877-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_073600_845713_C2BA44C2 
X-CRM114-Status: GOOD (  10.83  )
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

Add the supply and enable gpu node for XPI-3128 board.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts b/arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts
index e979425f11a0..de497f6e9456 100644
--- a/arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts
+++ b/arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts
@@ -328,6 +328,11 @@ &gpio3 {
 			  "", "", "", "";
 };
 
+&gpu {
+	mali-supply = <&vdd_log>;
+	status = "okay";
+};
+
 &mdio {
 	phy0: ethernet-phy@1 {
 		compatible = "ethernet-phy-ieee802.3-c22";
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
