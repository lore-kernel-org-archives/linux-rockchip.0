Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B031C83F12
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Aug 2023 17:18:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mXFM5UidyZgalpwHKsRiWgtoBb0tKK8vthT9ikGU7Vo=; b=F8KwS9vkZaBiAC
	uC74RUM+Z1Ct4m1zX0Fpis+B0lCwqHJlLFZ2TOBo3iJ1Il7xsrIjRo6bs1i/uNi1H2gCdBdlQCgGj
	/aUshGcZBwkScmeZbXipVHLyJL98zJjBovD3zu4NgXdwi5T7woFrkGbIOdXK+fOyEVtoAHcNHiw/J
	XrkJptBP1nb7JC1FMK+aYL30VSycyrSPGYyFliDNuPwF0Zx7isuhk99e+oPxl6uILLSUJspni4aDk
	lkvgetDKXwfRvrDpJ7spn0crhOW2V0N2CHm3lICW+6P1o7gFbMayd3ufSkKuxjujof6Ke7tXjJEBZ
	4cK2F92WCwIVrjKkeK2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2M1-00Bw2t-2q;
	Tue, 29 Aug 2023 17:18:13 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2LR-00BvNT-1r;
	Tue, 29 Aug 2023 17:17:38 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-99bfcf4c814so607587866b.0;
        Tue, 29 Aug 2023 10:17:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693329455; x=1693934255;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QBQAx86WvaOm9XdYlFOZiKDZLABoSR2aNslGbzHlpgw=;
        b=YjhSA4kQm+ny80r016Dc472pNmS42pS1nmBOqM6oVPhNBKNJlGfLb1VzG6ozVtCF6x
         Mlyk33197iTKYGWOJtecIgwjpqlPxkQGfI/pRAOpXj485zDfiV/PQZgJDdgUDsifpH6W
         LVPXNmebt4tPML8gXvgpBgcI6wjLHgTdw+3WflobmCdqdL1TbtTLMeahRuWF8LxtlATr
         IKqdPLOqNzQALqccixO4n4ZLiVXScDyHxok1Foj+nS8E2ValnPtuN4jUWiEOK7qKTwIW
         2H4UL/qePX62A4CF+Z9Lw3aAxUzhqpesyFt7Q4G+715YvpCqNSDPku8LQs0jlfjZU5Cx
         fEwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693329455; x=1693934255;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QBQAx86WvaOm9XdYlFOZiKDZLABoSR2aNslGbzHlpgw=;
        b=C/M5Yi/8+vZzDsT6utu3Lr4OE/8JDELXi16Rzsi0cfFrI/OSsV0HMmha2jeWZ1g9fg
         YLmKQdxDPKVjWUBfmH9v7Kd+PkQPfHdJeK+br0n3qZzlh9CzewWhKxH8CITtzHjv4oDE
         GjS5ZXieuP/IGsiBDpnmew8HPYrEviJ/pSJkRwx6a9pabE0kyLn3hyoRUKPmn4l6unj1
         LItAy0RxBpooI/srLe/hZXYC07txNBbRmigUOXZSoHZYCX8He3vUsaJLz3yo4xmT5qeq
         QVUl2YOlNAcZpBNnV7VXXe0f+uYUAiPrBYI6BtdsghVww1FMtz5SIrlbhaMod2AvTAys
         0i4g==
X-Gm-Message-State: AOJu0YzVVmWsNqMK7y+8P6EE/+x6UJnUfNqW4hDQ/65A03/Mq6zEcWoS
	FfVK63sssJoO8auP9S56cQ==
X-Google-Smtp-Source: AGHT+IGriq1g6SBECfoMzn6NHKe8g9e4THTgJ8Zp6YWeIKJEJrAB+LeVhbZzVDvMc9306PK2d3bxNw==
X-Received: by 2002:a17:906:150:b0:9a1:d7cd:602d with SMTP id 16-20020a170906015000b009a1d7cd602dmr14195595ejh.45.1693329455250;
        Tue, 29 Aug 2023 10:17:35 -0700 (PDT)
Received: from U4.lan ([2001:9e8:b958:3410:8e0c:ed68:cd6c:7cb8])
        by smtp.gmail.com with ESMTPSA id a21-20020a1709062b1500b00993cc1242d4sm6115834ejg.151.2023.08.29.10.17.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 10:17:34 -0700 (PDT)
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
Subject: [PATCH 11/31] ARM: dts: rockchip: Add missing arm timer interrupt for RK3128
Date: Tue, 29 Aug 2023 19:16:27 +0200
Message-ID: <20230829171647.187787-12-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230829171647.187787-1-knaerzche@gmail.com>
References: <20230829171647.187787-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_101737_625762_07772DD4 
X-CRM114-Status: GOOD (  11.71  )
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

The Cortex-A7 timer has 4 interrupts.
Add the mssing one.

Fixes: a0201bff6259 ("ARM: dts: rockchip: add rk3128 soc dtsi")
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3128.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index 2e345097b9bd..bf55d4575311 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -64,7 +64,8 @@ timer {
 		compatible = "arm,armv7-timer";
 		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>,
 			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>,
-			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>;
+			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>,
+			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>;
 		arm,cpu-registers-not-fw-configured;
 		clock-frequency = <24000000>;
 	};
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
