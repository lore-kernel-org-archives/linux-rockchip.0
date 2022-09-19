Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02E28ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Sep 2022 16:46:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2otbm/hysEXGKh5nQEIafKmX3RHyn9WSTgWJdXFis+Q=; b=bNGcgbfFe5y3Ob
	XBCF91P2qZN5c9jxN7ywyG1HHi/lv+10D74ZloqKG64+Uc/eQ5caADt3w8vdk0WA1PYhFmezxBIBR
	409l9MQLWWsbG+mg61Ldx5M2Cv/nFX0nt+89h+UCq1OOoVulO7OVQbB06JIGEBIfYu3hJoxeZ346Y
	oD80vyIde36TK6WzM+uhOGTrDwFL1uLU0CtlowhxILvJZ8rL+RhAexZMx+29S+1aPATT5gZIzc086
	M8feUr3jvls/1ueg1ieDscoJ4dGCdjxgdnPMzMhCcq5+e9njbgA+G2xhCoIxjqhTqKgEem7NEET3u
	EeBxbu1H2HzjS1QMJnIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaJue-00CydB-Dm; Mon, 19 Sep 2022 16:46:28 +0000
Received: from mail-oa1-x36.google.com ([2001:4860:4864:20::36])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaJua-00CyYT-Qk; Mon, 19 Sep 2022 16:46:26 +0000
Received: by mail-oa1-x36.google.com with SMTP id 586e51a60fabf-127d10b4f19so203187fac.9;
        Mon, 19 Sep 2022 09:46:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=yFsRMGoJfFzIx0hmtF+SSRSGsw8tVqOwTpmksCelJN0=;
        b=SOwHdsAQqmfIn/VuDC1q546N/NgHU6hwqqf9pJHyxbHPrs514bYV0MaM64XUr7V3by
         r5yet+mfNeIGfoVdGM1SwzvoDvsupZDykCEX4Gau+ZtW2X+waMpgfXzQwd9abqWnQbDR
         1PZGw0NEqTSyZVUIixpfMitrJBEwbcS0SU4vbeA82Tf+hw96qaaPMveyX6jfztoYBWOF
         ULZa/6Nt/PNXJSW9znEqVEG5ERL9MTwZltIh+iqHdRm3VYFNPYKH5EedT0xAWq0bOdcw
         lbnUQMA23Cp50THHijA8lCbarHKeWDHKSI3ZyYl206irRLNj92q2qa+QImga1i4uJHM2
         SSRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=yFsRMGoJfFzIx0hmtF+SSRSGsw8tVqOwTpmksCelJN0=;
        b=PO/60Njzs40MwOyqc1tPtvSzQDgdyu8Y0DxAPtD25Gfaimg1Clxv33Afg3u8VU1qgI
         JnHZWiofhpHH3I20Got7FTw+uuC/taN//75gSjzYs2qKxWoC2wbf9QuhZ9LGNCfmP3Ir
         bY+WDOt4LYbqsujGA5Z1WQ36Fnps/cO6wnt8ZH6WczEMB2+ClMPWAH62He6sBMCBnCGZ
         ugwY8r+J5vLxutkOyPkmO4PXS4OSxYQdSWP8IfHDcc573jgBlmJIL4bgwOrmY7FI7COE
         x+vJ3u6hfvozK1bh95wUToQX4AGosQ5pjW27ic1FECuP00G7wtXEgcvc/ddt+kZdWfAa
         wbFg==
X-Gm-Message-State: ACgBeo3wpqeAtZ/pDNCXbhC9aWuoxJas5BlxyvDiyhq7y18T3hzuvem8
	KDDnCRmw3FL1mvcr0rlpAVX8D08pOxI=
X-Google-Smtp-Source: AA6agR7onvRJQhlRVZYN9O9jiqJvROQY7UDh6W3pUi6p1YR6JvFs3gmB6uJB9R25Plb6DJbJ8lCxAA==
X-Received: by 2002:a05:6870:c1d4:b0:127:ad2c:3d74 with SMTP id i20-20020a056870c1d400b00127ad2c3d74mr16136667oad.205.1663605980047;
        Mon, 19 Sep 2022 09:46:20 -0700 (PDT)
Received: from wintermute.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id t184-20020a4a54c1000000b0044b0465bd07sm12501610ooa.20.2022.09.19.09.46.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Sep 2022 09:46:19 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	jbx6244@gmail.com,
	cl@rock-chips.com,
	frank-w@public-files.de,
	s.hauer@pengutronix.de,
	michael.riesch@wolfvision.net,
	pgwipeout@gmail.com,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	vkoul@kernel.org,
	kishon@ti.com,
	Chris Morgan <macromorgan@hotmail.com>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH V4 1/3] dt-bindings: phy-rockchip-inno-dsidphy: add compatible  for rk3568
Date: Mon, 19 Sep 2022 11:46:14 -0500
Message-Id: <20220919164616.12492-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220919164616.12492-1-macroalpha82@gmail.com>
References: <20220919164616.12492-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_094624_910231_07BED17B 
X-CRM114-Status: UNSURE (   8.58  )
X-CRM114-Notice: Please train this message.
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

From: Chris Morgan <macromorgan@hotmail.com>

Add a compatible string for the rk3568 dsi-dphy.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Rob Herring <robh@kernel.org>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
---
 .../devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml          | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
index 8a3032a3bd73..5c35e5ceec0b 100644
--- a/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
@@ -18,6 +18,7 @@ properties:
       - rockchip,px30-dsi-dphy
       - rockchip,rk3128-dsi-dphy
       - rockchip,rk3368-dsi-dphy
+      - rockchip,rk3568-dsi-dphy
 
   reg:
     maxItems: 1
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
