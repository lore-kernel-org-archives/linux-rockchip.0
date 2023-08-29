Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A95DC83F18
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Aug 2023 17:18:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N3ADapGYN3c3JL3eU92cf/5ZhDAxLpZa+2kNaniqkPo=; b=4j/O5zR3g+MKAR
	iez4AhZKGOWso7mRKTbAP0vx4zLOmqpTJXMvKXxdsXaTIdc/DmEO2SSsxzWnEyzBxPe4PYcr4YsBc
	BdJqbCn9+4rmM6bzA0BExLOwHn7YJx6ktrqElNPCQNLUlMRjlDmywomVzwsJ2DUL5ncpCDh3+ckXI
	q21cE3ooc+rKdEsNXk5MX6bYWPNlQ0G0/jOkfFbnDJEBiBNXV0zSe7WPGeDcoQ7dijURUXmzxAsNj
	MDn8oIrXAn2Zu+xb+QM0iPUU8piAUQvcSGcrApA1lUOENPwHie0wwKrq4Efk7TMTWpxpXpzEZq1ei
	qaI/8kEN7tcr34dmtN0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2MS-00BwWl-2R;
	Tue, 29 Aug 2023 17:18:40 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2LT-00BvPU-1a;
	Tue, 29 Aug 2023 17:17:40 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-9a2a4a5472dso987243366b.1;
        Tue, 29 Aug 2023 10:17:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693329458; x=1693934258; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NPphieGb8xL4eR5mTMzLTUQW79Ts5+jV8h+GajjCpv8=;
        b=InbELv+mFlwgz/lxSaXJS6jqmwwcTz5VyI0OxEgH9Hdr66uiZVN3Hpfv6YIglXT0HJ
         C9FVMInZyLPeZrom2xz2FFUbv35pzTjcJy2UErvnuPvBFoKPuj3Z6rmawjsbaIaOp4ya
         cyzhiTgcF+00p22pLTRfyR7u4oxV9pbN9kfyJCl+06DYxYJlicLDsT4hGs+8BDF30vAx
         3QJKltK3pglaXxEmGsRwQFVn6+0YP7HHNaLdcCyHGqJo9c/nQRGhl+D4sRHYS2BfFH1c
         uROCnJdx803rQIzbnpQGpbxYmONafVEih7Pq4FZd2iMSFg8OiDBUmpmUdMPfeBIy4MRa
         hDYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693329458; x=1693934258;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NPphieGb8xL4eR5mTMzLTUQW79Ts5+jV8h+GajjCpv8=;
        b=LUeTlSSOBckzZqVENFbx5r0r5Eyiu0SJLcUb66b2F2F33AWZLr62FYaxbMTYkX/UuE
         ANTU+MoOScXx8drYfSi4rSufQ8MiHiyOKvl2i8LIR3eLhRk460IPdSWACce2qmmdWjN2
         Db1UOEsJ5fJyGXABfPVHBr2dIuQAsm+pCv/QxeIZzEc7RNX9XHA4g9juoH2qSSp3fvJp
         kHj4ZlyqLiGWDo5r9bNuFVwxVCpLiquumQDeNZCuXmg5RhgAcpAEh6EAv1DFsFKWIdSi
         nfnWJAYVJJNKaSxu4Yv8awWCVRLQboy46kTAntMt8F4/FFq621Gaky6KjWufNJBMvDSy
         Kkrw==
X-Gm-Message-State: AOJu0YxQ47XT5NRzbhXma6EoO3VFHU4q7Toq6y3uREywyROZamodL5HL
	YWjGKefjl6yb0PQCHbwszg==
X-Google-Smtp-Source: AGHT+IGSTrK9d7vStZC0bzy2T16uTrrd34R83QYESq2KKcyDTtiuTq+EZyCdPP7zwxTKL8JMYzopcA==
X-Received: by 2002:a17:907:d1e:b0:9a5:b247:3ab with SMTP id gn30-20020a1709070d1e00b009a5b24703abmr3596972ejc.19.1693329458114;
        Tue, 29 Aug 2023 10:17:38 -0700 (PDT)
Received: from U4.lan ([2001:9e8:b958:3410:8e0c:ed68:cd6c:7cb8])
        by smtp.gmail.com with ESMTPSA id a21-20020a1709062b1500b00993cc1242d4sm6115834ejg.151.2023.08.29.10.17.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 10:17:37 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Lee Jones <lee@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
	Johan Jonker <jbx6244@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	alsa-devel@alsa-project.org,
	linux-clk@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 14/31] ARM: dts: rockchip: Disable non-required timers for RK3128
Date: Tue, 29 Aug 2023 19:16:30 +0200
Message-ID: <20230829171647.187787-15-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230829171647.187787-1-knaerzche@gmail.com>
References: <20230829171647.187787-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_101739_539442_F61289BC 
X-CRM114-Status: GOOD (  12.84  )
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

The Rockchip timer linux driver can handle a maximum of 2 timers and will
get confused if more of them exist.
RK3128 only needs timer0, timer1 and timer5. The latter is the source
for the arm-timer and its clock is prevented from being disabled in the
clock driver so it can get disabled in the device tree, too.

Fixes: a0201bff6259 ("ARM: dts: rockchip: add rk3128 soc dtsi")
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3128.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index 88a4b0d6d928..f3f0788195d2 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -252,6 +252,7 @@ timer2: timer@20044040 {
 		interrupts = <GIC_SPI 59 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru PCLK_TIMER>, <&cru SCLK_TIMER2>;
 		clock-names = "pclk", "timer";
+		status = "disabled";
 	};
 
 	timer3: timer@20044060 {
@@ -260,6 +261,7 @@ timer3: timer@20044060 {
 		interrupts = <GIC_SPI 60 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru PCLK_TIMER>, <&cru SCLK_TIMER3>;
 		clock-names = "pclk", "timer";
+		status = "disabled";
 	};
 
 	timer4: timer@20044080 {
@@ -268,6 +270,7 @@ timer4: timer@20044080 {
 		interrupts = <GIC_SPI 61 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru PCLK_TIMER>, <&cru SCLK_TIMER4>;
 		clock-names = "pclk", "timer";
+		status = "disabled";
 	};
 
 	timer5: timer@200440a0 {
@@ -276,6 +279,7 @@ timer5: timer@200440a0 {
 		interrupts = <GIC_SPI 62 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru PCLK_TIMER>, <&cru SCLK_TIMER5>;
 		clock-names = "pclk", "timer";
+		status = "disabled";
 	};
 
 	watchdog: watchdog@2004c000 {
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
