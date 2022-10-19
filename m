Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9988C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Oct 2022 16:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nMxWIcVacmeFGQhB2AmaOwtPFXPchchnjHl2ABbkS/4=; b=wsvg8XTjT1ayZm
	ZkPnZewo36Zpc7M8W4K2sR5cAO7F7s9R5XfBmgA2Y35ky3HQeMQtWeaCpXz0NTQ9936CEzzMUasPB
	Gf8uvD4Hm5zs7emDBksrlZ+QVu+dqRKGmIqT2nso5MpVeIBWOxZHzthTXw+K03/E//Z+Wi0f1zvp5
	50gP8yTBnJ0KpInHqaxtDuyzJImp8wDGHbhOGAQXLSi5dbngPhkVMgYd084pW/uD7aS2ah3XTN+lQ
	5WDEqhcuyDLMamMnh0n541oBvWviFwbGuf99MQbXkzspkYrlPq67ESPQgey7q+MQMBk0xAVz72Adp
	p+/hU4x1hS0xojf5udKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olCEw-004RB5-4Z; Wed, 19 Oct 2022 16:48:22 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olCEl-004R8t-68; Wed, 19 Oct 2022 16:48:12 +0000
Received: by mail-ej1-x62c.google.com with SMTP id bj12so41314444ejb.13;
        Wed, 19 Oct 2022 09:48:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NPE1WLTtmzYEcWs1OXz6Ce7ZBqPhhjbzmP6J9QZciy0=;
        b=G4GNgHZftQkToFnlexhVY1LW6r7JEdJwDvyl+5e5xD584J/U05N+4MlSp4m4jcjFiu
         uulqP11i+wDg4uc+ZJ+llJKgLAOc60GuWbf45VOUO0xB+WRQ2KOJVm7RIEDU6J7tS7Jq
         GpFSaim3gozuh9F+DHlm84+OaxzrQmt5oi3skTA7eB8MkBOo9mcmy3vfYBNkqX/mxhjp
         6NLQiXfsDF8vICoTYuZX/bZp57LmCfVoMU/TKTMe/Q1tg1JVYn50+pGGdtns8BFIm4Gs
         AhbhvBSV5EIqtZpC2ggv1FXxpp/D6Cq4ANx/KORaqFQkdktIo3WLB4OkoU/x0FskVZ4N
         JOtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NPE1WLTtmzYEcWs1OXz6Ce7ZBqPhhjbzmP6J9QZciy0=;
        b=VVswoXBTYZysP/hAbHF0VRgVVOtMJL+HgOAQgIG103IcTaE/cU9vLMp6CeBhzkAQXL
         4qMncaECmiA1QeKb0/2Q8mKRHJ86bX5GXV2QaDm3rJevsrFydfpa+ig2/uiUv209EiS0
         xEtpRpvznLkS8pVZDx6A9e7PQL3o8QBw1C/OgQKO+YDwzEbmnPag5yELQdNeJfG89DUY
         GZ3JlR5I4mmHprrX3bOq96K8Zmsu7/9ynbVN2ZfQLQUxAtaQYMaI2DTqQCqZOHbQQ+zf
         oBtSbouuQu1jVYP8TwsIU7+vr/xByWmdlvvSU72wxw/djnZFQ4mcJoGNSRXcai81xF1F
         BuNA==
X-Gm-Message-State: ACrzQf0tVyHRXc/+YO8Ul61GnRvC8b2XE24NL1T7mzqFk93J1+qK861g
	PLXvWPwT7kC3pw5gpi2E0IRllGiKVg0iAQ==
X-Google-Smtp-Source: AMsMyM4gcob5NLEjLSha74eHg1JG59rPuxxKsjcpE7czaRcravYnSuNImb81uyqqn4ivI9zUWCupNg==
X-Received: by 2002:a17:906:9746:b0:78e:11cc:3bb3 with SMTP id o6-20020a170906974600b0078e11cc3bb3mr7583026ejy.379.1666198086046;
        Wed, 19 Oct 2022 09:48:06 -0700 (PDT)
Received: from deskilmich.example.net (2-236-113-220.ip233.fastwebnet.it. [2.236.113.220])
        by smtp.gmail.com with ESMTPSA id rp7-20020a170906d96700b00730bfe6adc4sm9209984ejb.37.2022.10.19.09.48.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Oct 2022 09:48:05 -0700 (PDT)
Date: Wed, 19 Oct 2022 18:47:02 +0200
From: Michele =?iso-8859-1?Q?Zuccal=E0?= <ardutu@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH] arm: dts: rockchip: add crypto node for RK322x
Message-ID: <Y1AqBnPSyu7PpiwP@deskilmich.example.net>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221019_094811_248762_23C23B8C 
X-CRM114-Status: GOOD (  11.09  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The cryptographic hardware of the rk322x is compatible with the one present=
 in the rk3288.

Add the respective node to the device tree.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
Signed-off-by: Michele Zuccal=E0 <ardutu@gmail.com>
---
 arch/arm/boot/dts/rk322x.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index ffc16d6b9..b381fc2a0 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -132,6 +132,17 @@ display_subsystem: display-subsystem {
 		ports =3D <&vop_out>;
 	};
 =

+	crypto: crypto@100a0000 {
+		compatible =3D "rockchip,rk3288-crypto";
+		reg =3D <0x100a0000 0x4000>;
+		interrupts =3D <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
+		clocks =3D <&cru HCLK_M_CRYPTO>, <&cru HCLK_S_CRYPTO>,
+			 <&cru SCLK_CRYPTO>, <&cru ACLK_DMAC>;
+		clock-names =3D "aclk", "hclk", "sclk", "apb_pclk";
+		resets =3D <&cru SRST_CRYPTO>;
+		reset-names =3D "crypto-rst";
+	};
+
 	i2s1: i2s1@100b0000 {
 		compatible =3D "rockchip,rk3228-i2s", "rockchip,rk3066-i2s";
 		reg =3D <0x100b0000 0x4000>;
-- =

2.35.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
