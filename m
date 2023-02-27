Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A4DDC7EE23
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Feb 2023 16:30:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3+IKuq8Bw0Y/7oStvIwkHPUlWcmZLzn15wmJnJFCMO4=; b=R42Dbm1yviD7V6
	8QFg7EhQ84CEazVVm1HX3oxJAmGGBXt91uAi1WJVyECDRIBqwWFigi1pIIfWglsxSrtcpx67kXx0J
	kOeH9h3KGeFdf/PPC++WhM5C5nZZvVxBiob0TSJyUbZEBMvAwEvIEWLOhBTMxeWhQ85+cx8xm3AnW
	wwOuvdHjeWOaGRiTCEQrqY2TbWesCKlZyXiTGbY3cKthUZlwqsAuVF0UTy9T87zYgGNQngjZrtVYZ
	gfVvHcbauGQJG/Sxrwomektgh5gWm7TTqUB+y4kf56Pttn+JLHBhdoPu/RQ1Xc/MBN/F6uhvuxGi7
	pboay5+GkZkecCnhPyzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWgOe-00AMvw-P3; Mon, 27 Feb 2023 16:30:40 +0000
Received: from mail-oi1-x235.google.com ([2607:f8b0:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWgOZ-00AMtI-Sc
	for linux-rockchip@lists.infradead.org; Mon, 27 Feb 2023 16:30:37 +0000
Received: by mail-oi1-x235.google.com with SMTP id bp19so2879372oib.4
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Feb 2023 08:30:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2f/vVHxyRFoilKJr+B3hBhPHEkdjVLFye93UcIisf+c=;
        b=RcvKZUMoYJ2UB+3CEB+mhjFJASl07ag2QH9ah4cXsrUvhc0fwcYK+oiDGDzJ9RDJ+i
         GWngexc4RuRt7BeyT2k/46+2fviAQAQ8tvcghoGk+YFkv4kmHw7W9mnod1AFXVC49qqG
         FMol9a0wjzel7wDm0b7G3H2XOmkHwV4CHJYBHFpOsnYIDbIXsfTv0ReM96XlVFY0JQV7
         pwl8aNtTHsoNyQequ3khtST88Per5eIXAmgItuffjGqIeKuuQ/UDneTRtQ9BENLTqe9S
         in6e/JEkC7SjmYR5nWp/tj7j9NsWi6aWDcRImaaVRZQcno+dqI+NgduJGNb1jI7d5xF6
         ET1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2f/vVHxyRFoilKJr+B3hBhPHEkdjVLFye93UcIisf+c=;
        b=1l8iAzyDObMCsxhrwBdOnIEMiZGuCZI/cWTGWI5ezo3VpNT869hARsXG9VqOrCZ0b9
         tT7zU1TEgxoOz7j7Ej4wKDFFBJJBexvYcjkxjC2Z31HpxTbcKbYjHx63Kast+5FjpxeW
         xxd8N2T2YoUDgG4IAJMqAkqG+Bf1/eoMIAGR5Od+SFTewlkGyOLDMNoJodsh2v3k4oxn
         aCtNJqSxiYxyWlYlM5oejuS4XNx/ExPvWefPAzX6T+0tWeu7gV2v0EMSq3WZN66zKGVK
         eir82lFgk3hdC0bW6kye7d99qQMNMpJECggMDoLT5y3+3Ep9iyK63v3i2b4YMfel0Vna
         05Dw==
X-Gm-Message-State: AO0yUKWu6wwZ97dYv8qKZ9zdAzljvEZoNO/vH2Kv0g5l/UW0XYDxLZyW
	iGVNae1Y0LmxWCK57S+Ceu0=
X-Google-Smtp-Source: AK7set+Ye/eJbK6v4B8x0QSXQJ6t+HwZprvGQgxn5y0nvuWH3AOFlsvrzk26r7CGMXwlB5hFusX40g==
X-Received: by 2002:a05:6808:293:b0:384:a13:9516 with SMTP id z19-20020a056808029300b003840a139516mr5524507oic.30.1677515434370;
        Mon, 27 Feb 2023 08:30:34 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id ex16-20020a056808299000b0037fcc1fd34bsm3267713oib.13.2023.02.27.08.30.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Feb 2023 08:30:34 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-bluetooth@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	alistair@alistair23.me,
	anarsoul@gmail.com,
	luiz.dentz@gmail.com,
	johan.hedberg@gmail.com,
	marcel@holtmann.org,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 3/3 V3] arm64: dts: rockchip: Update compatible for bluetooth
Date: Mon, 27 Feb 2023 10:30:27 -0600
Message-Id: <20230227163027.130292-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230227163027.130292-1-macroalpha82@gmail.com>
References: <20230227163027.130292-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230227_083035_942684_AAB8DF63 
X-CRM114-Status: GOOD (  10.56  )
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

Update the compatible for the Realtek RTL8821CS bluetooth node.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
index 41262a69d33e..8fadd8afb190 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
@@ -716,7 +716,7 @@ &uart1 {
 	status = "okay";
 
 	bluetooth {
-		compatible = "realtek,rtl8821cs-bt";
+		compatible = "realtek,rtl8821cs-bt", "realtek,rtl8822cs-bt";
 		device-wake-gpios = <&gpio4 4 GPIO_ACTIVE_HIGH>;
 		enable-gpios = <&gpio4 3 GPIO_ACTIVE_HIGH>;
 		host-wake-gpios = <&gpio4 5 GPIO_ACTIVE_HIGH>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
