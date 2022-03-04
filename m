Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF1AFC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Mar 2022 20:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PHy5/NmvCKoz10Pg4zQczW5SYJecGoJNjarGt4JsflA=; b=eESSVVLIZSZoHY
	DxTbTyOvxads3TZ9RvOuqqrWH4qi60EtAnvl0UIJhAaTYG6UoyaJVbiqXENLTAHgpyLTEypu6LtLd
	n/0X6rPIahkAzuvb2fM0eOca5ilqbhBQkTXZaYLQtaScu4z47AeFMgEx34+q3dqX/rwQsDHJnZN/B
	jWNOo2mK4Dlsp36O6JyuYSdku+k0uqykf3i9eCLr6gKwpJmavCkQlADoivFfFxG+n6ztWuw2xCPJC
	mRGS35ev3lmraWPQwiuNfIwriwt68aXsPA0loeIA0CC9jnjbl+oRLSrenzX/lh7SADmRDTEZnm5si
	LRDIhgpnrGhh8U3IWXRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQEVl-00ByWX-Dv; Fri, 04 Mar 2022 20:26:49 +0000
Received: from mail-oo1-f51.google.com ([209.85.161.51])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQEV3-00By6h-5a; Fri, 04 Mar 2022 20:26:06 +0000
Received: by mail-oo1-f51.google.com with SMTP id
 189-20020a4a03c6000000b003179d7b30d8so10735135ooi.2; 
 Fri, 04 Mar 2022 12:26:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VKUwEbVW5qva5LIGoRYiFCyDMYv3Hk5QudM2GDoBnd0=;
 b=Hhc4ouF7uON3AntJNP1zkSfJ13Qs93HSdfA2vl+SWwEedfkK6KLLIUzhrtDKzTpJpa
 sJu5AAqlv4vGBmfJCFMARe6Ir1Ucu2X8LS5v5fv6kdcvUgu9Vmkxs2XYrcuwtVLLBrnJ
 /wYJMGGqZceIq8W2NG8Z2t1R6OEJ8fS/jLu0ZT1u74NOj3Tl6mYNArS5ZwolAF/cBJW0
 bnm4C9QWHWtXhnOgCD5Pp06Z5+1UsE6erNuI4iX5GmqLCX0SfQqA0V+tavLsV43HsF6K
 y6jP1W9aPciIEMsaM3LSNU6jAu4VBDN318A1Et6FsFxSsqQeWfR1YriYZI25AvqpPogi
 kfYg==
X-Gm-Message-State: AOAM5300HsVj4lns+Q5DlXVmz+KTC0BFfqXdI97UZ5xBmCQz1EDA7AUt
 6CYq2GM0pLHIRSbZ7erjbQ==
X-Google-Smtp-Source: ABdhPJwSBGIHNUpRZ0bfIYe9CuLf2+8hnWW01T2QGbHOl3kTnWhsSEtfc97+93tC1NmqLkzw3HInpg==
X-Received: by 2002:a05:6870:340c:b0:da:b3f:325a with SMTP id
 g12-20020a056870340c00b000da0b3f325amr104907oah.266.1646425563994; 
 Fri, 04 Mar 2022 12:26:03 -0800 (PST)
Received: from xps15.herring.priv (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213]) by smtp.googlemail.com with ESMTPSA id
 s184-20020acaa9c1000000b002d97bda386asm2943377oie.47.2022.03.04.12.26.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Mar 2022 12:26:03 -0800 (PST)
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: firefly: Fix SDIO regulator supply
 properties
Date: Fri,  4 Mar 2022 14:25:58 -0600
Message-Id: <20220304202559.317749-1-robh@kernel.org>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220304_122605_239054_E5C40AE0 
X-CRM114-Status: GOOD (  11.04  )
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

A label reference without brackets is a path string, not a phandle as
intended. Add the missing brackets.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
index c4dd2a6b4836..f81ce3240342 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
@@ -770,8 +770,8 @@ &sdio0 {
 	sd-uhs-sdr104;
 
 	/* Power supply */
-	vqmmc-supply = &vcc1v8_s3;	/* IO line */
-	vmmc-supply = &vcc_sdio;	/* card's power */
+	vqmmc-supply = <&vcc1v8_s3>;	/* IO line */
+	vmmc-supply = <&vcc_sdio>;	/* card's power */
 
 	#address-cells = <1>;
 	#size-cells = <0>;
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
