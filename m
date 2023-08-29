Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6C72C83F12
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Aug 2023 17:18:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kabUlrY71Ymglq6QoEkaEY91q9ep50RKUKYwu9riqHc=; b=LQaHtCeX7ZUqHG
	R6hK7T2tuzSOes6HTg/uYF55iQtyzVN7Iq684f/KCqOYfwiGw9IPxrTTO1/iri4NoH6ekR5ygXfgV
	nt30hLV6XzWNFRx+1eKPkv5OdnwsxaHj9Fwl18Bg9UEUczvKObdDY4jfuP3DDLIuhaGuNdENVfy9h
	VGNZZfaCYk0I37EIpUiHoZDSkzWJneuCa1Hk8p4KyFAS8FLmqHX9RhFoNHcoV8XvLnY3I2V4QnF3q
	IOHd0G6LULLpEDl2/UlZK2+mgXK3NyFL+MUCSxwf6V61t8dc5RqoppKwsO4HNFko8eIKc+yWctxaq
	50B70Yf5h3qdPIzdixYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2M0-00Bw1B-27;
	Tue, 29 Aug 2023 17:18:12 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2LR-00BvNx-1J;
	Tue, 29 Aug 2023 17:17:38 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-99bdcade7fbso601508966b.1;
        Tue, 29 Aug 2023 10:17:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693329456; x=1693934256;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0OQ0uMxvObgSXiZXc7XOlyouI6S5o18+qbYKi7xXiJU=;
        b=s6TtVUA4v+M9p7voV9EqzvUO+K5WnHhoucMfikXrOctuv0npQViR9s2C9ZYl8QZg3C
         ha9NhlM5TlfZrKtOKhpdHZuZsg6tAfKrWJUjSQ0TzuuO9FJQK++7NdyOLroBXGGnWFI1
         r3HCGu0t7PYsICfeek6yu93Oic3IKLo3RLzu0aEoV/jip2b+Q/gs2wdc5nvo1NIY/WTq
         5M1n6EdqA3HneC+0V4wldGuWurwlrST09o5836u/s61IX3BEGDbeZj9iMssE8vLrN8tF
         nc1i8u/7WNu8cTuShuhNVGz7xRw3j8scGML0r67kSDE2DNOGjY4nUEdUcuisLn+oEiyv
         v/sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693329456; x=1693934256;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0OQ0uMxvObgSXiZXc7XOlyouI6S5o18+qbYKi7xXiJU=;
        b=AhTT+sxyf3JPQcpIMhTe7baxSBsTjRip89xWKX2mRAqud/MbMJFVesrI+umfCe9yNP
         leoMgmbUlwHmW6JHntLVqNE6C0yukfEAMqViikDeraEbIQXb2+2QYxeSaFQNX/vKRb6V
         cI1Mx0HI/Rq6EYl/lHK3fDIIl3tyoJjNLFhnSLUSOu9J9rQ5wXjjWrhJreHkpV0O+dGT
         FDCFQ8HLWh7o89AmdeY1GMSHGKlVQdRs+kfODh/AXyFGZ7zudJjAJT2RZwaJMkgt8zyZ
         LsR1RMmTjBOctRr7tx8ccNlHS//GZdBflXVq25rEuE6IjNN3tL8VE3DjxdkagNX5U7Wd
         Nz/g==
X-Gm-Message-State: AOJu0YymOVhsONJGbEWbpOW9QodaZyw2aVS45LkNZmV2VJENuRYrdDHe
	0U+GFXUxmAEU4qWAp/ah+g==
X-Google-Smtp-Source: AGHT+IH0+bHTepjEA8hR54kf7EM9Nb5uT+O5JhoqwdO0nyAn5FMjZRDBmEfIMY/Ri8mcEWEggh+wbA==
X-Received: by 2002:a17:906:76d2:b0:9a1:7919:d3d5 with SMTP id q18-20020a17090676d200b009a17919d3d5mr21742168ejn.43.1693329456174;
        Tue, 29 Aug 2023 10:17:36 -0700 (PDT)
Received: from U4.lan ([2001:9e8:b958:3410:8e0c:ed68:cd6c:7cb8])
        by smtp.gmail.com with ESMTPSA id a21-20020a1709062b1500b00993cc1242d4sm6115834ejg.151.2023.08.29.10.17.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 10:17:35 -0700 (PDT)
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
Subject: [PATCH 12/31] ARM: dts: rockchip: Add missing quirk for RK3128's dma engine
Date: Tue, 29 Aug 2023 19:16:28 +0200
Message-ID: <20230829171647.187787-13-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230829171647.187787-1-knaerzche@gmail.com>
References: <20230829171647.187787-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_101737_454595_4F456236 
X-CRM114-Status: GOOD (  11.11  )
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

Like most other Rockchip ARM SoCs, the PL330 needs the
arm,pl330-periph-burst quirk in order to work as expected.
Add it.

Fixes: a0201bff6259 ("ARM: dts: rockchip: add rk3128 soc dtsi")
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3128.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index bf55d4575311..9125bf22e971 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -459,6 +459,7 @@ pdma: dma-controller@20078000 {
 		interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>;
 		arm,pl330-broken-no-flushp;
+		arm,pl330-periph-burst;
 		clocks = <&cru ACLK_DMAC>;
 		clock-names = "apb_pclk";
 		#dma-cells = <1>;
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
