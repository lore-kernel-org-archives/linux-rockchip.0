Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75C90C25B10
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 May 2024 19:44:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1YAV5VrQQV/jFGUsdtTALAnXiQmMlgFR64SSTmNTviU=; b=bBsVju6hLh54Y0
	U7pjcV+04mh+IHmEMBz/7/qsePk/QbWPEB7fg5CxP4l2HNcUR5JhGJF/GAhireMBHNyYRKEJHYi8/
	ZL6wWEWrE5+BKYk3ENzcngTqmzVaJXOpVD37xu9HO5vGgi74HafmoEoockT1AWEn9cUgZ5iORH8vh
	m3FTbO/OoRK/xqanPgH/bPvhEyTzSKCLCl7RfyrGCud6jT6UeAf3PmAFrWfvKvtl5AlgY8Ed4uXOM
	smrsev5S1GcTBn5M4kZYnxf7ovuT92WSaqXaPduM3cUc9Rfkmc48Rov0oeJa9UyGTripfKVi2XQB4
	ea1OPQ6ynhfvhcUq9Raw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s44GO-00000008YjP-0w8B;
	Mon, 06 May 2024 19:44:40 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s44Fp-00000008YAK-3gZI;
	Mon, 06 May 2024 19:44:08 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-a599af16934so568095666b.1;
        Mon, 06 May 2024 12:44:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715024643; x=1715629443; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cEUTDPQIQ4fyK+f9Y09kmkHPYR/zl3Q/hqRXE0mT1cg=;
        b=mE+gkmV/U3bMycugoZPhASw5AI8RsQhEebktK8T2WfyRvq0NaDZY8uJ359N3kjVPzu
         DQT2RRixQxlNEW4rnGaHraOdEoyWIsWRo3y/B1+Rrng0VD46C3S+/I53iBc7ROXRkeEm
         cOoVCtZhEfo2gQonPzjstOmL2oebwkec8ks7hGLbjAfqNJtQQo/jPDvISs7sz4ljQcPH
         Wv1PvU1FY8JjIVa7Fanx1vw4gm5TZ3tePHsSdEzYRMnWRlHwzuvxddezd5vzdfZ4QM55
         /4sEhxzIevifo/6CryKooIHTzr/4Hgx3u2+l7Mab5m7aQagy3Bw3PAG+0f3i82sM4Ppw
         IRWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715024643; x=1715629443;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cEUTDPQIQ4fyK+f9Y09kmkHPYR/zl3Q/hqRXE0mT1cg=;
        b=TnbiBXvHnsrlDvCPJCArrklwLWyy8D5OTVTc2p736nK1BQiP1Ute/+GqimvdNt1MCB
         PbI9xsCdl7nw3zxMBJGrb2tCEWqJLj9WRwVd6mnvhfEktYZYmidYzDagLpXmhrlFUdUs
         6f9YW9+N6Dt8q25LIgrr9ubsjsVM4ap/b+whgoS+4Od2ZwYgGHjng5PwS+r4TBQNEege
         JOcJY8VcOTEXsnu7NSf1ntRnEcY7A/38AVMMITxXaZouIfbvDWYdY36c891diof4h+7w
         4XDJzYnoFQDDvO11CheSl7Oj0YTVKhLwI80N/NdcOTFljpJQAkq4SfbFq7OxyLGXxeQr
         9Kjg==
X-Forwarded-Encrypted: i=1; AJvYcCVyx9MOaaNUDHyY/Wm1aeUvuTYQPd5/nTaX2amNT2EVPN7d/SOvS8uzcmtaOSEr+fvIcDpxL4ZKq6s7kiOhpM4Eqn791jk//jzAg/quWu75SfV3aMq9DEQ8xG38JQE29+Ikk7ClxSRpisN20OA1NeovxR38EBAhMcU=
X-Gm-Message-State: AOJu0YwSbv/W1cZ+2UhpVjsfkA5Q2XFZ3DL3WbIxmYWs5AMfnDbQM26F
	eM5TB6SSjmVYrLRTykxgiYqgJuWqL4N6DUpXZCZCL+GZ94xWHs4=
X-Google-Smtp-Source: AGHT+IHbkPsuTTfkRPHSR+oNWlUo2rEkFOv/8jNjCTm2kYGpQR0wP36J0oX9tZl1Xf2xBVWgIuha0g==
X-Received: by 2002:a17:907:908f:b0:a59:9edf:14b6 with SMTP id ge15-20020a170907908f00b00a599edf14b6mr5458036ejb.45.1715024642757;
        Mon, 06 May 2024 12:44:02 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:1c62:e77:6753:5729])
        by smtp.gmail.com with ESMTPSA id f13-20020a1709067f8d00b00a59d146f034sm1367321ejr.132.2024.05.06.12.44.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 May 2024 12:44:02 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 6/7] ARM: dts: rockchip: Add DPHY for RK3128
Date: Mon,  6 May 2024 21:43:41 +0200
Message-ID: <20240506194343.282119-7-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240506194343.282119-1-knaerzche@gmail.com>
References: <20240506194343.282119-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_124406_118698_8BFE38DC 
X-CRM114-Status: GOOD (  11.55  )
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

The InnoSilicon DPHY found in RK3128 SoCs supports DSI/LVDS/TTL with a
maximum transfer rate of 1 Gbps per lane. While at it also add the newly
exported PCLK_MIPIPHY clock id to RK3128_PD_VIO powerdomain as the phy is
part of it.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3128.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index fb98873fd94e..d16a9d03ba2b 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -216,6 +216,7 @@ power-domain@RK3128_PD_VIO {
 					 <&cru ACLK_LCDC0>,
 					 <&cru HCLK_LCDC0>,
 					 <&cru PCLK_MIPI>,
+					 <&cru PCLK_MIPIPHY>,
 					 <&cru ACLK_RGA>,
 					 <&cru HCLK_RGA>,
 					 <&cru ACLK_VIO0>,
@@ -496,6 +497,18 @@ hdmi_out: port@1 {
 		};
 	};
 
+	dphy: phy@20038000 {
+		compatible = "rockchip,rk3128-dsi-dphy";
+		reg = <0x20038000 0x4000>;
+		clocks = <&cru SCLK_MIPI_24M>, <&cru PCLK_MIPIPHY>;
+		clock-names = "ref", "pclk";
+		resets = <&cru SRST_MIPIPHY_P>;
+		reset-names = "apb";
+		power-domains = <&power RK3128_PD_VIO>;
+		#phy-cells = <0>;
+		status = "disabled";
+	};
+
 	timer0: timer@20044000 {
 		compatible = "rockchip,rk3128-timer", "rockchip,rk3288-timer";
 		reg = <0x20044000 0x20>;
-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
