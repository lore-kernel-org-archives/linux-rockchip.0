Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A0D7C83F18
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Aug 2023 17:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fF1oAdFi5Kmxv3d1bvOKq/oRmxCksGoKElNv2CdVOEw=; b=21sjLNe5wj1Vu0
	2pwMii1UkxDSBkg8mrC6dUAOnPJ1ytN5pR9L+YezxtbLihsQTPjGuFH6PvYjelY6befkJlvWHyIXZ
	m4iOzeDQcnMmkrkjnEk+B3+hVMSRX1JwsaJmIvCJuf25PdBcSe0xHSua9eYCdJqOPFkDepqlZJJLh
	6U6h82XzqZ4SyXuv7j4kXXCmz9/l5ir1/sMI9RyGsLHX8zwX4R5jF5qMLPZp6t/WFlcnRaUI0xaqq
	OnqwbjwYiout5pPjj9+eUVN4YmH5wcCfhLnPRmi3MJZ6/qwYD22GBFqM/sjAZjCFrgHtjQDnlgZiE
	/acxlg68tcHGrYG/s5sQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2Mf-00BwlE-0Y;
	Tue, 29 Aug 2023 17:18:53 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2LZ-00BvVV-2E;
	Tue, 29 Aug 2023 17:17:48 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-99c1c66876aso600359966b.2;
        Tue, 29 Aug 2023 10:17:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693329464; x=1693934264;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+TRUGa9PL5nV/dnusn+UwSq4N+QNad+BtpjMEE4na6E=;
        b=OZFbsoxBYbtJUhBBQxapgnMGaORPO11QLmwTffX0UwxhOO9s9i5coEpHA085+055+k
         x2iktQWtW72gYg3DJirC4o0W9QCuzVCpCgg1Gq9TYwIcuteNM07twA6BYqfOYdEpO9Io
         alnN55qzVOZz3qYGtXBRHU8IXdI9kiNllXn0qe8Y0YmWO55RgH6+pi4F+ol+JqpXg43t
         LKv+EOx4qMMSIL6Xux72JFIbrawAGnf7QkvbIwIxHzzB57j5vsQdqpoYujPoP79jWn5/
         5gq/p4lZFDf/SOPeI1jh1UaDWIfFIPHyi7l56l85xK4fnVcmf0s7N1wZqxOpeqdKWFO4
         ra7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693329464; x=1693934264;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+TRUGa9PL5nV/dnusn+UwSq4N+QNad+BtpjMEE4na6E=;
        b=Q7pvzHdGdmjRcYKTNTmaIqZGxzeYBBAdWOmjn8GqoX0oXv59trY2Op/m2YKZGJsUeh
         RCWqks/sh0FdsJ50U5m6w0uWpUMQ3Rg/TQiizgvkaJQLNhosmplPnb0qOQJBF+xGAWEs
         rsbdroh56uz406FXZPbBa8FNah9t6nTdMj6FCApK5oYL1DbCiDKVd0659fqYtbH5IJOO
         d4AxMxiaz5BWs6yfglk5aeUgG/ol8L1HMqQO0+jUTwaOIbYtUowADCMcdgSUaganQ2wk
         /CgDcbUZD/7q6pSe2hyo1NNo6F+oAW+210PnYDidqPfJRbnIF9aN2H2bQdwmKqWGdUBz
         gD+g==
X-Gm-Message-State: AOJu0Ywh04hT1uCxIIVeQUB0oKlzKlQnImZeONjfCfY6CFbccHZVNQke
	G/fhz/CWYXK1TnjYa0aEcw==
X-Google-Smtp-Source: AGHT+IHSs6leoLR21rpe27haxf2M/3AjrTL1AjjD92jIJAICN7I5rW7t/aMEMKebF0K+otgr7qN1Ig==
X-Received: by 2002:a17:906:5346:b0:9a2:1ce5:1243 with SMTP id j6-20020a170906534600b009a21ce51243mr12595166ejo.60.1693329464222;
        Tue, 29 Aug 2023 10:17:44 -0700 (PDT)
Received: from U4.lan ([2001:9e8:b958:3410:8e0c:ed68:cd6c:7cb8])
        by smtp.gmail.com with ESMTPSA id a21-20020a1709062b1500b00993cc1242d4sm6115834ejg.151.2023.08.29.10.17.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 10:17:43 -0700 (PDT)
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
Subject: [PATCH 20/31] ARM: dts: rockchip: Add extra CPU voltages for RK3126
Date: Tue, 29 Aug 2023 19:16:36 +0200
Message-ID: <20230829171647.187787-21-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230829171647.187787-1-knaerzche@gmail.com>
References: <20230829171647.187787-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_101745_780509_C36EFEDC 
X-CRM114-Status: GOOD (  11.64  )
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

While RK3126's CPU cores can operate at the same frequencies as RK3128, but
it needs higher voltages.
The values have been taken from vendor's downstream kernel.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3126.dtsi | 27 ++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3126.dtsi b/arch/arm/boot/dts/rockchip/rk3126.dtsi
index 7345bd95d29d..09c40f3d69a8 100644
--- a/arch/arm/boot/dts/rockchip/rk3126.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3126.dtsi
@@ -7,3 +7,30 @@
 / {
 	compatible = "rockchip,rk3126";
 };
+
+&cpu_opp_table {
+	opp-216000000 {
+		opp-microvolt = <1000000 1000000 1425000>;
+	};
+	opp-408000000 {
+		opp-microvolt = <1150000 1150000 1425000>;
+	};
+	opp-600000000 {
+		opp-microvolt = <1150000 1150000 1425000>;
+	};
+	opp-696000000 {
+		opp-microvolt = <1150000 1150000 1425000>;
+	};
+	opp-816000000 {
+		opp-microvolt = <1200000 1200000 1425000>;
+	};
+	opp-816000000 {
+		opp-microvolt = <1200000 1200000 1425000>;
+	};
+	opp-1008000000 {
+		opp-microvolt = <1350000 1350000 1425000>;
+	};
+	opp-1200000000 {
+		opp-microvolt = <1425000 1425000 1425000>;
+	};
+};
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
