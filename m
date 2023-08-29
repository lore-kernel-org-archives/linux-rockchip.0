Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 885D6C83F12
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Aug 2023 20:38:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mDMWm+KjawkWDZ5kF2Lze3R/MeZscp3Cig2cOyPJSXY=; b=ahYumNuLwg5eMT
	GxY+sZCTcy0BB0LSmLpH6ypRmhlw+mJxiBuBOF0Sl4dBprkB2bWTzezjQ4ypkV91NqHvaWJ4L6n5x
	lW8KivXyIKS9g/nDH/NJHbja991xe7FW6aWVCYq1qjpDLd43I7qVIbEn+FjU7j28UNw2xyNaKR6HQ
	TxJNr3wkBVNMZgM1fo94K8d/Ys36zlveMu/j6ky810QPYL73o+AnanAHGvS/BpvIBCnBaxfoY9+nw
	pdVdTnq3mqMzPwGCB8oqFYZ16xPdcXlliowVh+TRTdCTZyEraDrY60cXdATtDJSsm8GKBbGnicb5R
	cQtEOzGvAAx1wFHbetUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb5Tn-00CEH9-0R;
	Tue, 29 Aug 2023 20:38:27 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb5Tk-00CEG2-02;
	Tue, 29 Aug 2023 20:38:25 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-99cce6f7de2so635045766b.3;
        Tue, 29 Aug 2023 13:38:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693341501; x=1693946301; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R9DunujICwW+FdyG9ifMFQMXRh/n/3eNMexEB6m+XBc=;
        b=PapbYEwAevD0rgxn3lSfdMXpqmdn0zygz+HtrN7/MD9t3ChDFLraqRHP9RoJVRgukD
         0K683QfkwxfH4nfhO9t0JBnO1Nmbr/U9DHRKm55su5Z5TiX/gUxTE7hJJEEYmAZcMUuE
         tFhgpJZN5hiyqsTX2Q+jUvpEqJg02fFO8Llss5esLDFPawju9DFbbDs8LoPnndl7KxMf
         tv6wpVsySjwKLU25XmGchMZ9PPvacUd/Goj/KgWM587jlfjt1rZ/Y7YXqRES1g5F2my/
         rQix9HdrlIMWSfZd7VFEJE7JMbehq486XnMOcxFrVJY9xb7SpkliZbNZizevbR2L58Vb
         TJRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693341501; x=1693946301;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R9DunujICwW+FdyG9ifMFQMXRh/n/3eNMexEB6m+XBc=;
        b=XD6EJj+vfWOGzXg+b0h9PqU+0hRo++HlNPRifqVHz/L6KqEquatEQfYv1HpGjGR0xM
         IZ+ozIfwBBHGxW4rn02MUO6jvsrxOzwxgYPgcp7pWztACItQgDINoX7R0s8d8rV+L3Eo
         tBxeKfo18XNJq8k8v8VS+O5SkN5t3B6FYz+Wpg5YzJdjtTKfVa9SPDUZY6dapCcIqphM
         JY7ohgdlTibsp8ff3uXMMZj8ggCszFvgo7P4ZG0MVEJmob+bworY6ktyqI9OTs6H/96S
         K2uKwgK5otFNvHZtARhxnMXH+NAYE9XKaVhUXyG8ENB+AnbPrlAZyv+1hj9S5zOBgql+
         em4A==
X-Gm-Message-State: AOJu0YzG4c5uZpvqyyaR71XgMngyj77J/NbWX6Y07xjxpKUJVB6kb8I4
	YbvyfPvJDsZvnq0B88x8x0Jfj4d1Hg==
X-Google-Smtp-Source: AGHT+IGzovbuvRi/NoA+BSlRDFpWfGddCHO/7MqVFe2h+n0fapdIraX3TlcPIRaGWebC8sszbwVGXQ==
X-Received: by 2002:a17:907:8b8c:b0:99b:de31:6666 with SMTP id tb12-20020a1709078b8c00b0099bde316666mr96013ejc.22.1693341501628;
        Tue, 29 Aug 2023 13:38:21 -0700 (PDT)
Received: from U4.lan ([2001:9e8:b958:3410:8e0c:ed68:cd6c:7cb8])
        by smtp.gmail.com with ESMTPSA id f18-20020a170906825200b0099364d9f0e9sm6301908ejx.102.2023.08.29.13.38.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 13:38:21 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Johan Jonker <jbx6244@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 1/5] ARM: dts: rockchip: Fix i2c0 register address for RK3128
Date: Tue, 29 Aug 2023 22:37:21 +0200
Message-ID: <20230829203721.281455-6-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230829203721.281455-4-knaerzche@gmail.com>
References: <20230829203721.281455-4-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_133824_050578_05D2B1D5 
X-CRM114-Status: GOOD (  12.25  )
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

The register address for i2c0 is missing a 0x to mark it as hex.

Fixes: a0201bff6259 ("ARM: dts: rockchip: add rk3128 soc dtsi")
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3128.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index b63bd4ad3143..2e345097b9bd 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -426,7 +426,7 @@ saradc: saradc@2006c000 {
 
 	i2c0: i2c@20072000 {
 		compatible = "rockchip,rk3128-i2c", "rockchip,rk3288-i2c";
-		reg = <20072000 0x1000>;
+		reg = <0x20072000 0x1000>;
 		interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
 		clock-names = "i2c";
 		clocks = <&cru PCLK_I2C0>;
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
