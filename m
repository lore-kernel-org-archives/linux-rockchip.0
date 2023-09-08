Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDDB5EE801D
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Sep 2023 16:42:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qds5HxpzUivJyb2eIe4yYSRJ282zE1qQmEz5g8YUUU4=; b=aI4Xm8Dn3Pw56T
	hUc9ctaItSGP/LeDkTPYxdQOlaVpB8T0Jg0k9TnjnViyLwV7q5jEgV/92GGq8HIqmqCoxTxxauBuq
	D9P9T4saukTmHy/i5mfqMnBsGtZFTLIMCZMKdzwvehABGwdKKlvurzyTtcPFTYD0Y8K0HBZtvGdWG
	KzlLrqa/oY+g/KuzNbpoCUbHJB8CnrfQC5Jc1MqY9qZwJ3rkCE6DJMy2/GaWXaII3vkTkUBvEGDGW
	WMsbPA1ThJdJxgq9vbiQVAwnpEIGKwLPPnecrCR+9UZjCEj9HtPgLKOClM+LHIagflfXEAv3043Ok
	0UcaCowB6DgMPUby4vNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qeeYf-00E6F8-0a;
	Fri, 08 Sep 2023 16:42:13 +0000
Received: from mail-oi1-x234.google.com ([2607:f8b0:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qeeYb-00E6D8-38
	for linux-rockchip@lists.infradead.org;
	Fri, 08 Sep 2023 16:42:11 +0000
Received: by mail-oi1-x234.google.com with SMTP id 5614622812f47-3a5a7e7cd61so1168306b6e.0
        for <linux-rockchip@lists.infradead.org>; Fri, 08 Sep 2023 09:42:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694191325; x=1694796125; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=23RWTA42oeiWyX/+9q0UPnX5CmGzLdzzX40DGM4ZYYo=;
        b=AaFbexzgDk+nJdkUc0x2qqz8Kz92NLhoSwBonZzlCD92hLeaanmlY2J8F/Yz/f9+u/
         NtFgEvtgVv/b2FMkvVgvWxxf4n1Edc27C1L0ir7efKegNAaNG+Ht+6AIngjBBhbAw0FA
         uLTfiGGVCaU4qR/C+oja31oyH5BXZmItg19zcsEm572XSJwMeQ5i/O6k0op47EUjvU0V
         U16ws5wnl39kRr+HGLfsDiy+0B5eUo28qzMbUbRdZuxRf3esgZsEo0crSEZs+dnmeZCi
         NXKE7BoJThL72T3sSz4W6oOELXh0FKQ+Rjf7dyBy4bspvB+2ctdneuBP6SgAzPgdA4b/
         30TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694191325; x=1694796125;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=23RWTA42oeiWyX/+9q0UPnX5CmGzLdzzX40DGM4ZYYo=;
        b=e5N/sXii0+XOBacdhD2pKgqy15SzV/D7f6HUnatkQo5GVOzwUJOL84aECNR1QCVaZ1
         jaJgVsMVqpJmFRG1pOxECtnwpzpjT/dXhgXbX7sTwoeA6zo/j3OoN83msx5JpQNt/VOm
         ncsZdukYyVwd9muTNMzKiA4NS8QEeEj+W7GbnehzGAJNXCC2J+pvvwcJCiPYitq3/uPW
         EbONc5U6NbBJGIKxntKgIK5WTAUgk+NbPzSH5RGOB77Ptd23g9DjSb5chYNZ58xjOwx7
         MIQYOtVJWcOYpojv/n1ydQXH11e7kC+mUgYoPM3CPSIVmJ/5KPr5T68lLVKTvixDvf0D
         v7Qw==
X-Gm-Message-State: AOJu0Yz3SAQNlqMKf7wIxjQggmEVEsZUE33endLizs5dVbUmx4o/p/Rj
	oBF4zEGnIuAhkNOzGc+R0QU=
X-Google-Smtp-Source: AGHT+IF6Lpd+NS4yfIzJuWjERArKjnYsYK+0QZitLPztEyoOHyum17h8Irht+MCMyWQc4JRyZ3htig==
X-Received: by 2002:a05:6808:152b:b0:3ab:7142:a5f2 with SMTP id u43-20020a056808152b00b003ab7142a5f2mr949103oiw.25.1694191325406;
        Fri, 08 Sep 2023 09:42:05 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id d14-20020a05683018ee00b006b8c277be12sm839485otf.8.2023.09.08.09.42.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Sep 2023 09:42:05 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	jagan@edgeble.ai,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/3] arm64: dts: rockchip: add USB2 to rk3588s-indiedroid
Date: Fri,  8 Sep 2023 11:41:55 -0500
Message-Id: <20230908164156.2846-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230908164156.2846-1-macroalpha82@gmail.com>
References: <20230908164156.2846-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230908_094210_008839_6B7A70F4 
X-CRM114-Status: GOOD (  11.88  )
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

Enable USB2 (EHCI and OCHI mode) support for the Indiedroid Nova. This
adds support for USB for the 4 full size USB-A ports. Note that USB 3
(the two blue full-size USB-A ports) is still outstanding, as is
support for USB on the USB-C ports. The controller is not yet supported
for these ports.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index 646f49cc9e53..1e2336d3065b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -751,6 +751,24 @@ &tsadc {
 	status = "okay";
 };
 
+&u2phy2 {
+	status = "okay";
+};
+
+&u2phy2_host {
+	phy-supply = <&vcc5v0_usb>;
+	status = "okay";
+};
+
+&u2phy3 {
+	status = "okay";
+};
+
+&u2phy3_host {
+	phy-supply = <&vcc5v0_usb>;
+	status = "okay";
+};
+
 &uart2 {
 	pinctrl-0 = <&uart2m0_xfer>;
 	status = "okay";
@@ -775,3 +793,19 @@ bluetooth {
 		pinctrl-names = "default";
 	};
 };
+
+&usb_host0_ehci {
+	status = "okay";
+};
+
+&usb_host0_ohci {
+	status = "okay";
+};
+
+&usb_host1_ehci {
+	status = "okay";
+};
+
+&usb_host1_ohci {
+	status = "okay";
+};
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
