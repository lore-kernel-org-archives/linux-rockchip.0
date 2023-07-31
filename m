Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D5E2C001DE
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Jul 2023 10:36:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pRPqYd+vDBnOrSAkqEaO5hp5YZJneUh72x3s0kv281I=; b=lrIuOl4Qt+7Bw8
	W2EuzF2KOxNsd52KdZSBHsrxXOnvNBSVdGpD1AdQzsq1e6Oxk4HPknbqouVK//wFcy/f5h+cQLfPl
	ihM2rHa/DfTy2w3gKjDOPfV4bH9l3ERa/D8pjSgcE53zC9xwNidH/9clZuDN9GXmBJp6Ug2f02bCQ
	jWBMdNoyOcCGoh4uE5YThOhCbqFv3QJrqdN3CuHQm/b5tNwgUU5ncdwjGAM0uA7dYD2FNAiWTvVQ8
	0KmFYG4rLW/BEKrXBrXiCHI4XtWWCEYEdVLICV4ncxHclK+jzOix2TQ+eudgvzHVUaOyRGiMs5HH5
	oB4KsYkR8op+papIiWMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQFz-00F6oF-2j;
	Mon, 31 Jul 2023 10:36:07 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQFr-00F6g0-2L
	for linux-rockchip@lists.infradead.org;
	Mon, 31 Jul 2023 10:36:00 +0000
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-68336d06620so4351364b3a.1
        for <linux-rockchip@lists.infradead.org>; Mon, 31 Jul 2023 03:35:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690799759; x=1691404559;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+O9dYEGO+3efs918Dk1CzskP1TNbA7Ik4keIJN4wpYU=;
        b=GiePduPFZZxf0/2j+BJZ8M0wuIYR4ZWGFA7AcOR9HCTO4voUyPO56W+4WFYCJjaoN+
         IxobaZZRDZkxONBjmJbx62U5jzSfns8x6T2cKGLswdR/a7matrvTO1JTSxpa9HxrU/E9
         +r7RVCp4Q1W2/h4W7V1YGc2MHAo89libGXZVYSExHNE4uy7oRLzEQ2HQ+ButZD1XfyTa
         gSUsUbl+vcTkYBj5cQnAJXBbJrlkMQHfxfmFxbG+GnJsLOyQGUhI5R8koanw74gh2WEf
         VKEWMXqKqUdMcIQ89z87YYwHvX/HSHNkhUDO7wbXJHq/Yy2vhVeoD0RX29vzX8aa9nef
         nxnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690799759; x=1691404559;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+O9dYEGO+3efs918Dk1CzskP1TNbA7Ik4keIJN4wpYU=;
        b=jebqcCx8GNzaWV9GXD+S4bdR9k0G5OifoKKjo6eRisKqsRPOhLE9cU3enoRNLs9zcU
         gbiBTus+1IlyhtUh8e+ddggEixBR6tn0Ilb119HpB5zGdZuJfx4OPPhbW6Ke1IO2l8yz
         jIyE2/fR0QrGZYfOF52p98t7N68bsdemh3Dq67KlPWUVIjRpmT+y7kvQBup0ZKBh7a5h
         5k/I1KskLAJRDcWKXBLeNqR1RN+I0FnxHKqmWMVistr8V3QNDtUPfcgivwDKv7KcV/L7
         9g7k0KDNquRqhsynVPhuwFUysQqlJ0zxLZzbEPHZa4kavRn83DMo8rhd7XEwhIxhpxMF
         fqUg==
X-Gm-Message-State: ABy/qLZH5nWw0FPgNav27SUT7gYdfXXCrm4aqKLE58uLspEVnryWWFDl
	dz3lHu9LquDNHvDkCzpowpAVgg==
X-Google-Smtp-Source: APBJJlFF1Q475xyZdOQMQKP+0nskvGn40nAkMvD4OPxmTctCjhUxFOpdq6GPn3w8Q2kjBox2LUWo1w==
X-Received: by 2002:a05:6a00:c86:b0:682:5a68:9846 with SMTP id a6-20020a056a000c8600b006825a689846mr11581653pfv.16.1690799759234;
        Mon, 31 Jul 2023 03:35:59 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id c13-20020aa7880d000000b00640f51801e6sm5906115pfo.159.2023.07.31.03.35.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 03:35:58 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 03/13] ARM: dts: rockchip: rv1126: Add pwm2 node
Date: Mon, 31 Jul 2023 16:05:08 +0530
Message-Id: <20230731103518.2906147-4-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230731103518.2906147-1-jagan@edgeble.ai>
References: <20230731103518.2906147-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_033559_766004_E2CAA936 
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

Add PWM2 node for Rockchip RV1126.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm/boot/dts/rockchip/rv1126.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1126.dtsi b/arch/arm/boot/dts/rockchip/rv1126.dtsi
index 1f07d0a4fa73..931a1ffc22e8 100644
--- a/arch/arm/boot/dts/rockchip/rv1126.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126.dtsi
@@ -203,6 +203,17 @@ uart1: serial@ff410000 {
 		status = "disabled";
 	};
 
+	pwm2: pwm@ff430020 {
+		compatible = "rockchip,rv1126-pwm", "rockchip,rk3328-pwm";
+		reg = <0xff430020 0x10>;
+		clock-names = "pwm", "pclk";
+		clocks = <&pmucru CLK_PWM0>, <&pmucru PCLK_PWM0>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pwm2m0_pins>;
+		#pwm-cells = <3>;
+		status = "disabled";
+	};
+
 	pmucru: clock-controller@ff480000 {
 		compatible = "rockchip,rv1126-pmucru";
 		reg = <0xff480000 0x1000>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
