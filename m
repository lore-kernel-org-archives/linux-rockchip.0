Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F3B4C83F14
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Aug 2023 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ouDa3ijy4wt9AwDWGN+a2lwt6HwbSHk8NxrrlJNNbB8=; b=PcM05ff4Ux6dHA
	aLbfcv452C7Ll7jmSbRyRCLAh5YNg5iD0tIpapnLu2F6lvDhSvGnF0WFiYg3UYt4GTw6Kn9SyjpTF
	2txt3pqEIkRGf0JC3lS/GnRafaqWVUOSxjo1LyzK3sFmWtFhkFy3Yu2S+IUO0Ao5+94eczuagHNEa
	0UsDfz6Rz3BJF1Fs7RV3IT+1OOWiIIJWTNJcvF+aeRl0C3/5pm4Kw4f2Y+ZiIXWyBLAr0d9iJAfSu
	0PsZedK5nozg7kpNu3rLPudcOl2vsEC0eG9+W9st4a7VzTd+IEP7lBcq7mFpufYoKqyFNVuS1klad
	m5d6Ob1voScf9+6WNGVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2NN-00BxT0-36;
	Tue, 29 Aug 2023 17:19:38 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2Le-00BvaQ-0L;
	Tue, 29 Aug 2023 17:17:52 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-52bcb8b199aso1972086a12.3;
        Tue, 29 Aug 2023 10:17:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693329468; x=1693934268;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rxQ4tL3N96YVekC9Q3F0L/yW2/LZMHRKh1BzDPVBfDY=;
        b=W/Ba6mCAi3EsvONs3oStI9qe3lO+rjKO8eqd6OeC8WOC74KB45sAbS9gwOsR0+B1ZB
         PwL13BHOhzqel1D0V2oej1RVUSQf5DoDYJYciJbLHJvwSoNC+cFkvwhDSfHRmcPMZII1
         neyUEn6Ja2qOg4YUvTVZ7Qm5OnlDoGd4gaQoZ9OeHUAkmF3iXPTA0HVdbNjvlrlGBGtR
         5eNVr3wvN+laOQRMTLthwwYCoQMvNZkMJW65SUwC9uk1SqiX2ZbtwK00+7SLfSJmr8hY
         cUiUL63YWqF2ZNiaqWzuoT8C5DWWgLL5LEenq3unErWmHO6zR0MxN11SwAIWSEILorFr
         OfeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693329468; x=1693934268;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rxQ4tL3N96YVekC9Q3F0L/yW2/LZMHRKh1BzDPVBfDY=;
        b=LNa4ntPkWw6iNKsiGH1zYT4zgvY3yGqPFOsmrsETujEToglfGCzHbe/kdvnWrMJYu8
         K20FYRK+l4aAE3CI0g3JtwijF0Ow/7zBxogv4MiV7pGH8u8CCsZ1rSro0mcBzVCqnhd5
         Sgw6ToR2VE7LJYGxv3f/eNnvek40h7P9jIjYG97AHN6q6sEguE52lHrfNsPy+ZP40N3x
         jClPaxz8HmqodLWoBCgGo5TP3jM6NVvOjd7MBQkigS/XIkmFKTt4hE9bDKEHWie5x5XC
         HcXGnWal5zN9WhPATaSIi4LZ+9psYX9xrGii209id5lb2ePIQnAnGtJzfuFFeyienvdE
         UCKQ==
X-Gm-Message-State: AOJu0YyN2ciFEKrxK00rED/CnkxBy6qda+Gm19rjQ2ezkC6X1++XQ2/y
	22d+34HmuFSyT3DVNNPnAw==
X-Google-Smtp-Source: AGHT+IEP+Kiln5uLUvH0vUDxEPIVhi+RtKwR8SCN3T7Y1jAiZqj1OOnREaOOEVkkHwHkpcNqHLAI6A==
X-Received: by 2002:a17:906:18c:b0:9a2:1e03:1571 with SMTP id 12-20020a170906018c00b009a21e031571mr12264491ejb.15.1693329468081;
        Tue, 29 Aug 2023 10:17:48 -0700 (PDT)
Received: from U4.lan ([2001:9e8:b958:3410:8e0c:ed68:cd6c:7cb8])
        by smtp.gmail.com with ESMTPSA id a21-20020a1709062b1500b00993cc1242d4sm6115834ejg.151.2023.08.29.10.17.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 10:17:47 -0700 (PDT)
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
Subject: [PATCH 24/31] ARM: dts: rockchip: Add 8-channel I2S for RK3128
Date: Tue, 29 Aug 2023 19:16:40 +0200
Message-ID: <20230829171647.187787-25-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230829171647.187787-1-knaerzche@gmail.com>
References: <20230829171647.187787-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_101750_195553_01CFBC13 
X-CRM114-Status: GOOD (  11.21  )
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

RK3128 has a second I2S block with 8 playback channels.
It's internally hard-wired to the HDMI-TX, thus only usable with it.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3128.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index 4c5c9728179e..2339232ae2d7 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -7,6 +7,20 @@
 / {
 	compatible = "rockchip,rk3128";
 
+	i2s_8ch: i2s@10200000 {
+		compatible = "rockchip,rk3128-i2s", "rockchip,rk3066-i2s";
+		reg = <0x10200000 0x1000>;
+		interrupts = <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru SCLK_I2S0>, <&cru HCLK_I2S_8CH>;
+		clock-names = "i2s_clk", "i2s_hclk";
+		dmas = <&pdma 14>, <&pdma 15>;
+		dma-names = "tx", "rx";
+		rockchip,playback-channels = <8>;
+		rockchip,capture-channels = <2>;
+		#sound-dai-cells = <0>;
+		status = "disabled";
+	};
+
 	i2c3: i2c@2005e000 {
 		compatible = "rockchip,rk3128-i2c", "rockchip,rk3288-i2c";
 		reg = <0x2005e000 0x1000>;
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
