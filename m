Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C425C001DE
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Jul 2023 10:36:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N14UOrVty99GJbjLKXyWEEH0JRxXoR5wd6Xz8VQJhBg=; b=1DRPBRNrGE2tLg
	ennfCuB3LOXbcXgui9TsumY/mI/HvGsXPy8cwfc8i40yu/VaXU2632rubcciRJGwZ6sUXS/UPpRXP
	UX3csMVJg0HUelrq7EnxGVmgwfgJkBVTmwT7Vx+fJlV4IfNpadxVtQ5pLpmb4FuFgcQsw386CE/S0
	xBkS3GBh8o5VdzKI0oHH5RwFBidimB1j/z1x60CXuIRhuFgaU6uTbhoE8wP9PhoEJDW/W1PT8Ubox
	c4bXfrG+VYRxC+Pu7W/WPov058/oSWLb8xuTT2iYw4nKuZLeHzvmjaDhoSpajkhamDW7riRJARUGr
	+LFz3kLiWbuR6v3X7yMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQGM-00F7CZ-2v;
	Mon, 31 Jul 2023 10:36:30 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQFy-00F6mF-2j
	for linux-rockchip@lists.infradead.org;
	Mon, 31 Jul 2023 10:36:08 +0000
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-68336d06620so4351433b3a.1
        for <linux-rockchip@lists.infradead.org>; Mon, 31 Jul 2023 03:36:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690799765; x=1691404565;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yrIzfE/+T06YP4U9ycEtCcYbxfWBj9va9apqP3C9yKE=;
        b=hm+TeSbGb0Erqsxs3Q0BY4hXxMD1VYtzsUTT5BwVSqEWzIE84/OpTQrMFGCHReUcQC
         XBk2QH09nmz1CCxBaalKSminOc7qTi9f7gZLcwDErrxj1eHxYprCajr+z7FeGdL9XFs9
         zdW8VhfPJfl2KFpfjqW8AZaVKICYRIPufog4OxpUaHRIX9Mdqg9y/7KhV3F8fYtCcd67
         MT6bw1s3Fk3o4+cdYJSSmpgsZvk+f0N23yZmr6HkQmdQT7RjVWTn+JXuVnY6Sl0cgg2Y
         fwzZ1XM7+ww5ejyRy+kpofF58jbU+yRj8r3O0vg/bvrY3N3TuEgMsIb5mR+mxoklUd5z
         6Hqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690799765; x=1691404565;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yrIzfE/+T06YP4U9ycEtCcYbxfWBj9va9apqP3C9yKE=;
        b=W2jbryAoRoEQ8tYUJMI05HrPN/6B716girOWJvLnbE2r4dOkigaHW7L4kQZUkAhwdo
         BIbdNLJRqE0gKH9wvfuh2DRRTmpPZpYDj629YTfSJtooNHBTUatuxZu2v5ZC0azyXdj+
         oO/bfR5cXqxV5Gj7ItGg3NRjWsKlZ67TgND2CTMZ/efEysRbfoPuzraYupQXkp+U17VJ
         ZdeuGftjApBzWHRtG/oM5ts/uto0tfauY5uGk8nTy75cSGdAuMxriHgrYi2v/hiqvWjC
         /N6WSiVmx0be0XP/33l5xvHRtCzSltfPFy9ZjTdjUuBmMPkQ/dvFTDcB8+pG4FAILHaD
         bJpg==
X-Gm-Message-State: ABy/qLblgTVvqvm9SAgnF5qHp5pzuPiy4rI/7wHxvGnCmIIZ1KtTpQgV
	QOJH5tVZAzIH/Nq1ThHs2FIIGg==
X-Google-Smtp-Source: APBJJlF06xRyhUt1idVUt7T/VvOLRcrKNRXCFjz2EjL0+G0yxZGyv+XaT6zyxvMivggGygosC3ewsw==
X-Received: by 2002:a05:6a21:7896:b0:138:aa5:51ec with SMTP id bf22-20020a056a21789600b001380aa551ecmr11954504pzc.46.1690799765707;
        Mon, 31 Jul 2023 03:36:05 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id c13-20020aa7880d000000b00640f51801e6sm5906115pfo.159.2023.07.31.03.36.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 03:36:05 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 05/13] ARM: dts: rockchip: rv1126: Add pwm11 node
Date: Mon, 31 Jul 2023 16:05:10 +0530
Message-Id: <20230731103518.2906147-6-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230731103518.2906147-1-jagan@edgeble.ai>
References: <20230731103518.2906147-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_033606_890340_73333E82 
X-CRM114-Status: GOOD (  10.94  )
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

Add pwm11 node for Rockchip RV1126.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm/boot/dts/rockchip/rv1126.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1126.dtsi b/arch/arm/boot/dts/rockchip/rv1126.dtsi
index 931a1ffc22e8..86b560dc3b64 100644
--- a/arch/arm/boot/dts/rockchip/rv1126.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126.dtsi
@@ -243,6 +243,17 @@ dmac: dma-controller@ff4e0000 {
 		clock-names = "apb_pclk";
 	};
 
+	pwm11: pwm@ff550030 {
+		compatible = "rockchip,rv1126-pwm", "rockchip,rk3328-pwm";
+		reg = <0xff550030 0x10>;
+		clock-names = "pwm", "pclk";
+		clocks = <&cru CLK_PWM2>, <&cru PCLK_PWM2>;
+		pinctrl-0 = <&pwm11m0_pins>;
+		pinctrl-names = "default";
+		#pwm-cells = <3>;
+		status = "disabled";
+	};
+
 	uart0: serial@ff560000 {
 		compatible = "rockchip,rv1126-uart", "snps,dw-apb-uart";
 		reg = <0xff560000 0x100>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
