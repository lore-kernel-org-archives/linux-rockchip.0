Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BF73C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Nov 2022 11:55:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JxSbyxIaAnqJz9+ICdp98Oqx6NL7pRT96EQOBmL7D2M=; b=AfePvLrDTwbk6s
	hvFrQYIHy7x1S/22zyNifjArF1XnTncMhKQFkV4YHkH7OvGpUX4YpycsrAm7BttiNKyAstP0m/QIq
	Z1evIKcgkRW0MzdLoM6O9niNUeBFF5h+kUCwyo3WU8OuMdNUdZ0lVrij0438e4EwoXcUCukeiMxYv
	BsJ8nK6++KrStzXATQ1yyeyHhKgPDSg7W6x8Uvsjvs1bBKN5efjurqt3QR7djf7sAIySbPCQi3awW
	YO8wglEGAhog9naf6HBMvwLwrKEcIswk4UntF8WuCVx+6wjwwLjx7LS4gythbqmplhi4Cit0zBAsD
	FKHCkjYfIPan1rQU6yyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovH0Z-003AXx-1w; Wed, 16 Nov 2022 11:55:11 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovGzo-003A7W-Dl; Wed, 16 Nov 2022 11:54:25 +0000
Received: by mail-wr1-x429.google.com with SMTP id cl5so29510513wrb.9;
        Wed, 16 Nov 2022 03:54:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v/dBHYiGQPfAOm44gb83u9eMqNEioC2JWlqqtjsfn40=;
        b=a3aw3UPpNjZYuOPdLBZxItd3w790hbGJN/DvfhkqGk9KhEVo12unbG2lFJUff7dRHZ
         TwC217MOVOAI0HelX2P03q0WtrV3R3hpZGVoJRX2otppAmqS9KjH8O+xB+2OJPtpiWcw
         uujhiIC/eYWpVZZz3BD9ZjyUylJlneJv6T/adPrH0PkCSWsARQSrUnrWKFLddr0R8J//
         NITRfzqSD85sIAuX5yI/JWYV3QISWVpZ+tGI9tsEUk4Mim+zZqlPP4KwIKKkwxHToAqz
         +F8j1krcoZhAxwsKZIYCSSgoNIa6eYgPMyeXGXXMoID+v0wletc5fKd1CG5EbCp92ixG
         HUAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v/dBHYiGQPfAOm44gb83u9eMqNEioC2JWlqqtjsfn40=;
        b=D7yBneKriAnKd8ptIKQtNJ3NRMuydQn8iGpBjDZgDrhK9g2YeKJsLkOdUR/yut5hU+
         xBKHYtYaY/ldsUD7OPkA5yY8+qQHpJK+gtTIOlhW3baFrSnd7V45h6sCvmJtwHEEsf8b
         HURX6NO4GU0TEVI/Tca+ynjRLQbxIommvzVmhQRfNcTqzIlgRutKYXJmpBvawwzRRxhT
         2vI2EcSbY8JaYtHy/C+qb2yitUNGiL9LfuH0uwGTMYm7QcogIFHQHuN4zQlRQuiT8usR
         RcIVv9XuLZfFv4O6FNvuftzJhzEXCadi1WwZWCWrKXuHlkYJfknbGZJhulDuHwR7W6sh
         0i1g==
X-Gm-Message-State: ANoB5pkrseFvRbcUAEK05qO8J3moQALCi8+qUjcQsc7wdWVmwDgYnvvc
	yZ8Vnz6DLGL5+B+awHP9yI0=
X-Google-Smtp-Source: AA0mqf4HNoBld+9R6flEzkP53/yY0U9fFtHEiwUYhci3bW7R+qr/rXHLZecXAVM3iUDwlL25mhgWiQ==
X-Received: by 2002:a05:6000:12cd:b0:241:9b26:d18e with SMTP id l13-20020a05600012cd00b002419b26d18emr4706556wrx.548.1668599659900;
        Wed, 16 Nov 2022 03:54:19 -0800 (PST)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id bt14-20020a056000080e00b002417e7f0685sm14576047wrb.9.2022.11.16.03.54.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 03:54:19 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 3/4] dt-bindings: arm: rockchip: Add SOQuartz Model A
Date: Wed, 16 Nov 2022 12:53:36 +0100
Message-Id: <20221116115337.541601-4-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221116115337.541601-1-frattaroli.nicolas@gmail.com>
References: <20221116115337.541601-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221116_035424_517638_BB649859 
X-CRM114-Status: GOOD (  11.08  )
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

The SOQuartz Model A base board is a carrier board for the CM4
form factor, designed around the PINE64 SOQuartz CM4 SoM.

The board sports "Model A" dimensions like the Quartz64 Model A,
but is not to be confused with that.

As for I/O, it features USB 2 ports, Gigabit Ethernet, a PCIe 2
x1 slot, HDMI, a 40-pin GPIO header, CSI/DSI connectors, an eDP
flat-flex cable connector, a 12V DC barrel jack for power input
and power/reset buttons as well as a microSD card slot.

Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 19797aca1fa0..1eff0afc19a1 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -580,6 +580,7 @@ properties:
           - enum:
               - pine64,soquartz-blade
               - pine64,soquartz-cm4io
+              - pine64,soquartz-model-a
           - const: pine64,soquartz
           - const: rockchip,rk3566
 
-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
