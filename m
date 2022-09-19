Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BF41ECAAD3
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Sep 2022 16:46:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KH9GSFRmAu8o5ZSOreSZ8XJDnZgRyyhwbd7lJHSg3Kw=; b=Wsf8ko3ddgHmCu
	2uNXWhR8T97dYH5T7RTWUr/1Tu6UX1b23Wu42fjifLS7aFftf64qk2N1c2oFXZo/WkwGAg16jqwUs
	FKytqcg1xjruBYt7Jz/xtOxWoL2tyQ26BRdQHcf+XUu3L6xJPZXnTlbLiQ1JDtCoCh8C/NeGslss8
	U5/ZeILJ0NjCLhLmF1dhttsPk7gEZ93YrNyiq4MaHzENa5zrUQR+E3Przjks+XQCXT3jkgQQlVv3+
	T5HP8cr4NJmHz+UiLtWFA2vMuYGq7kB/EV/G4Hj+LkuyIceooo/JCRR19YmMxtV79alY7zsUWRw3g
	pF8HwTAtRoW3VB9IOZFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaJuc-00Cycl-Un; Mon, 19 Sep 2022 16:46:27 +0000
Received: from mail-oa1-x34.google.com ([2001:4860:4864:20::34])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaJuZ-00CyYJ-UK; Mon, 19 Sep 2022 16:46:25 +0000
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-127dca21a7dso177150fac.12;
        Mon, 19 Sep 2022 09:46:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=/ahDqGGSHn1fbR6JYXP2YTpJsA0sQ8WptbQeeX8LyoE=;
        b=bGAa5ry3jbeJzV0CCXNdwALLHeaUite3bB/Fh8UqCc/lh+z/3KqrQwBguYy0/ZzmCm
         d9k0w81Ai6rHKA2ag3DPfG15EFYyEUC+3lveIhCejPPccY1DjTI9hYY4mJP3JfeFRpTD
         EE8Al4X8brCmltxJ4qdhINYzTmjmWUI45LjqoVZPKu5okk2xEPs4KktUNviVeCv1G/vc
         g3bpC278UkGGTbKgCegI7eVTp2N2bBnsbsRToNRn4QUxB+KsfxcrVyPa0spEcaFjzZq9
         3qTK64RpGV0MvBDIRYTkCj6b2vtk6RiGPrxFY3I7YlPqRaXzKoCfJDL/5z8P3YjP6wCe
         yheg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=/ahDqGGSHn1fbR6JYXP2YTpJsA0sQ8WptbQeeX8LyoE=;
        b=z2P3iO1c0wcD1GUe+kj+xO0SutrLVvlIroMw8eM+HDzhn/ulr9r3KyBPSp9XvfQr/o
         2eRVGA5Hb8xmnNX5LF3x8+w0qerQjUYsDNHdHmQlbI/TGgx/7hCYv3C+BIex02gKrM5K
         DE/0qOP7KkY+/1NxiOVK5/96AbNJN2OSsl8T0LCpz5mGvEf2lfhi/34szsCy2DLoHiUb
         S6meiMr37d61ZV2/hnif1/5dOh5edMlMNtwPQApHH/eTaaX8NuPtjBjqHwjJOGELNBvq
         uemuOSkDJgiJBLaZQK3rrwGuZ4hMRH61gEsNLTktsFMTMARGW9FZIvPioZooWdmrBwwZ
         Esog==
X-Gm-Message-State: ACgBeo3rzNxVU2l9bB8hoeb01jzJZ3ae/DwS81SZKE1De9PgCJcTqefv
	HLz9ihamfDvNXcpCVrcIf0YowGmELSw=
X-Google-Smtp-Source: AA6agR6ZJb6i/TMmPB53pvo6fX5TLRPP/OHrDPArq4pYLsDTgXA4JsngOviB7XDpUCP7sWR80nxgJA==
X-Received: by 2002:a05:6870:3392:b0:128:828:5ec4 with SMTP id w18-20020a056870339200b0012808285ec4mr16001302oae.99.1663605978735;
        Mon, 19 Sep 2022 09:46:18 -0700 (PDT)
Received: from wintermute.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id t184-20020a4a54c1000000b0044b0465bd07sm12501610ooa.20.2022.09.19.09.46.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Sep 2022 09:46:18 -0700 (PDT)
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
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v4 0/3] rockchip-dsi for rk3568
Date: Mon, 19 Sep 2022 11:46:13 -0500
Message-Id: <20220919164616.12492-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_094624_001972_BD5BFA01 
X-CRM114-Status: GOOD (  13.13  )
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

This series adds support for the dsi and dphy controllers on the
Rockchip RK3568.

Tested on an Anbernic RG503, Anbernic RG353P, and Odroid Go Advance.

Changes since V3:
 - Added labels to bindings in rk356x.dtsi file to make it easier to
   reference in board dts files.

Changes since V2:
 - Removed dsi controller patches, as those have been merged upstream.
 - Removed notes about rolling back clock drivers. If I set the parent
   clock of the VOP port I'm using to VPLL and set the clock rate of
   PLL_VPLL to 500MHz this series works correctly for my panels without
   rolling anything back (per Heiko this is the correct way).
 - Added additional details about refactoring DPHY driver to add
   2.5GHz for rk356x. All other devices still have a max speed of 1GHz.
 - Notified Heiko that the BIT(5) for both PLL_POST_DIV_ENABLE and
   PLL_POST_DIV_ENABLE_MASK is deliberate, because of how the
   phy_update_bits() works.

Changes since RFCv1:
 - Identified cause of image shift (clock changes).
 - Noted that driver works now.
 - Added devicetree nodes for rk356x.dtsi.

Chris Morgan (3):
  dt-bindings: phy-rockchip-inno-dsidphy: add compatible  for rk3568
  phy/rockchip: inno-dsidphy: Add support for rk3568
  arm64: dts: rockchip: Add DSI and DSI-DPHY nodes to  rk356x

 .../bindings/phy/rockchip,px30-dsi-dphy.yaml  |   1 +
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      |  80 +++++++
 .../phy/rockchip/phy-rockchip-inno-dsidphy.c  | 204 ++++++++++++++----
 3 files changed, 239 insertions(+), 46 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
