Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 593EEC6FA8F
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Aug 2023 17:17:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xpgDQweu55Jd6AfiW91EpBKiaPR/K5OEOLuXSRK4kLU=; b=lxc3rrXoifQjBb
	hyQXsSVaW7guevOWCf0djKYIAavx9uUUSiK3vtqW6Jkudc5Fwv0p016QMB84YoL4J/3dcBueTyxUq
	aXMCPUDEq4xEeZG6bHOF7SJamD91BkZyemxd5jzvXb60FmJwLuJDmgAqsrt6iVQ8SD5HwcXz6I+t7
	/jwJLWZPomys68dUfgBymDgu2C3q+WW5PaiL0Ze9LA+F/4aw5dgdrGVyaP/ETvf1D/XnjwDmXy0cR
	m2HJrgARA+pxVOAB3Lf0D9FKfti1xsfP7kyA7bpANE4nc8bCaVQNEoGzMB9L7rchNKVdH0Mb5vGsT
	VQbXD3Nb+8TDrHWBHpuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2LX-00BvTE-00;
	Tue, 29 Aug 2023 17:17:43 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2LI-00BvGT-0D;
	Tue, 29 Aug 2023 17:17:29 +0000
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2bcc187e0b5so71463501fa.1;
        Tue, 29 Aug 2023 10:17:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693329446; x=1693934246;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FenEPRzkF+fCLIr+dUsskF7AjB/E9ox5j4UlAbRUoQo=;
        b=Yo/oKwwdBrMUMDkG5wvtSq8crhNn4CVhpsSAkfHlafXQiHFiaNCwXonEMR1ZDxCS5m
         8YMbkPO77M/H+V8eGgHCiLqFyL8qhL3LoN424+kSeFvcy4Iw6OTRIVTpSCSdd9tCwDyf
         wK/8ORLWL2an1MTEX9kBbYFORB1c6srfOFu6kASEukKSZlOVd+rDH0qqXHzVYYUbjidp
         vAaJcoC5HbbSkmGx74F2zL0RGWprs9ssIYNMNeCUn3cIqf34INO4z4cFqNir0FJsujPG
         QLxlsOanjUlDMPVQsbzFmL8MlsHmUnyQ97SW1Iqn7dN1mY4qZODbo9MMtiCx+VK0783S
         3AIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693329446; x=1693934246;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FenEPRzkF+fCLIr+dUsskF7AjB/E9ox5j4UlAbRUoQo=;
        b=HBhKuVzkHXE2YToHmXzBNqyPxxFLz+flElYK34mkB0LoTplLrFPqMLAN11RwyYH8qv
         pn1CNo4CFeNXY1rl09jfhbnM68/GSYF/smOnNKIWl+xzaQAw5Lu37m7Wb0CwWcysCm+t
         icGJF4oXgIg6yqnqHCpCJn2KCgnrbP458g2ymguGTADrCWctDIuQOvaD7MBtNBIEF0yb
         wVRw5xK7S0uAZjvIPAn6FAHyoMWNMhlSJXrkRlmEe78DmdxQBSVGCZILHs0Npq8Lolud
         IgaGNFWSX55avgR5RIsQRSNAgsQEMnGJ8uGBYvLaeR75GNelGW8JLZzzRL8oELnsxTih
         KaQA==
X-Gm-Message-State: AOJu0Yx1eYOTT1VJgxblEm7YAbmIfieAge11Rmqho5YFUmWdf6cKiYeq
	vSipWdhgBG94t5DdwxatjA==
X-Google-Smtp-Source: AGHT+IHBPt21/CoYA6gAD1CvzSK0qv2qopqh1SeqIwu0FZaxDbZLhuYzC+CMcy5Il7uIpCQK4RaODA==
X-Received: by 2002:a05:651c:1315:b0:2bd:1394:583f with SMTP id u21-20020a05651c131500b002bd1394583fmr3610948lja.3.1693329446179;
        Tue, 29 Aug 2023 10:17:26 -0700 (PDT)
Received: from U4.lan ([2001:9e8:b958:3410:8e0c:ed68:cd6c:7cb8])
        by smtp.gmail.com with ESMTPSA id a21-20020a1709062b1500b00993cc1242d4sm6115834ejg.151.2023.08.29.10.17.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 10:17:25 -0700 (PDT)
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
Subject: [PATCH 02/31] dt-bindings: gpu: mali-utgard: Add Rockchip RK3128 compatible
Date: Tue, 29 Aug 2023 19:16:18 +0200
Message-ID: <20230829171647.187787-3-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230829171647.187787-1-knaerzche@gmail.com>
References: <20230829171647.187787-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_101728_102149_42F4A50C 
X-CRM114-Status: GOOD (  10.04  )
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

Rockchip RK312x SoC family has a Mali400 MP2.
Add a compatible for it.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml
index 0fae1ef013be..abd4aa335fbc 100644
--- a/Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml
+++ b/Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml
@@ -29,6 +29,7 @@ properties:
               - allwinner,sun50i-a64-mali
               - rockchip,rk3036-mali
               - rockchip,rk3066-mali
+              - rockchip,rk3128-mali
               - rockchip,rk3188-mali
               - rockchip,rk3228-mali
               - samsung,exynos4210-mali
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
