Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4927C001DC
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Jul 2023 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ktCoRscOHZtwgYu8Lx71N5JVtBoKObNpI987uLiuClc=; b=DDmlvdo8+cCCby
	1EJc10uG0Lu4cLeES6O8vznvEy+1BWxL4qVo9gsZycCb1JBK0CL2DQ2NeEE3JtfTaC6o5ieIFFEPc
	DcAJgHtwCM829nktyJr7mNeDeaU9cvbRtXl4E6oZ+nPCbG8kxx70Lu1Sg/QaZsMyJHuIzc7RKZaju
	vFXbWot03zaFzQX8tHFzl/IBtkFA3htIFpNAF5/DBWKHjyPfKqWrhloxw8iQSxz2l1+TgSskvl9B6
	lxkBsZ/ELEC/7DvoH3wEZm+1YEudniKOx3Pw2VzjmkWBd8pHkvAjLPujV6C07kEO2nd28HNJIeCkd
	XhTCsIugpUpvGDtifAPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQdW-00FE1C-2H;
	Mon, 31 Jul 2023 11:00:26 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQdT-00FDyz-2k
	for linux-rockchip@lists.infradead.org;
	Mon, 31 Jul 2023 11:00:25 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-1b8b4749013so34498305ad.2
        for <linux-rockchip@lists.infradead.org>; Mon, 31 Jul 2023 04:00:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690801222; x=1691406022;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mOcSvu1R55PqqqT6iqN9InS4YnF7+8QV33Yi9OEJyX8=;
        b=2I1VHA77Zd90CK10ZKkXWxFFkrLXCVA7S//pOpj+ZaoBX4yVbojiUDAtv5nwywlDyP
         cIZcN+i74bL/mjJ8Y3FJbqkC4RDS9tq67fx6v/z2Mmqw8m/Jrjvbst4PErFxkhaSaIij
         JKUY04N4yfEvcmqb8fgazxXqvr7mUIayvNS9fZgBubncHeH6mDm7ARIYV+dHsoLlqaAu
         e6SstdVF+C4EoZkGIwGH5k15otxqLvxD4l+ByhuJ7irloeTS2Fy599RkyerWZxJvrm4M
         Xpgf/CagLoDLkrXVt6weixzP149mdJz7+CW4kRSphQopHI1QtMwfkSkaU0Z2/N9apezj
         zPWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690801222; x=1691406022;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mOcSvu1R55PqqqT6iqN9InS4YnF7+8QV33Yi9OEJyX8=;
        b=KOfFoV6lV2wI2whd3LEPYkU6T4xMgdQBfolQA3HNRxFp1vKm/4o0kED+fkobyNoibU
         e2RcuD/UR8Yf5O59q56BPMUAwwS3sdvtoCBAisanj9y23/+AbCk5JHOFH0fcYyIA8wnr
         cVkztjwUGSkKcHD1O/eYHZ+1xhaSyOR8vR7uKLhe661z+zowM7qdwAVZPFRUtrrlWOO3
         yP1fwn2WQzCU0cBudpqMT1zGwP1sGjvTH5DrhIzUf6XAiduVecKp1/Ean0sjIz3itO8S
         uTecw0sZYs5AQ9BQwL9c1hohwjfCzhil3xyhM92fjChNxPMACbzgw+Ri4aZLLPL/R32C
         qJBg==
X-Gm-Message-State: ABy/qLZDWszMlnf31IkbKZuw+EpLJy2E/DpnlGazLShH56kBIPRzTfB7
	1XYAnK+T1yJ1cjOliwsZuMZ2CdtgG2L876gBDnD5nw==
X-Google-Smtp-Source: APBJJlF2E7hDaEA3RnIzNcJxowrJ2ofXWRl9VS08ZyfY5Zvbv1h3OphmVHw7koK/RWCbJc094wgyaQ==
X-Received: by 2002:a17:902:bd4b:b0:1b8:8af0:416f with SMTP id b11-20020a170902bd4b00b001b88af0416fmr9090667plx.1.1690801221880;
        Mon, 31 Jul 2023 04:00:21 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id t14-20020a1709028c8e00b001b1a2c14a4asm8281096plo.38.2023.07.31.04.00.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 04:00:21 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 00/14] drm: rockchip: Add RV1126 Display (MIPI DSI) support
Date: Mon, 31 Jul 2023 16:29:58 +0530
Message-Id: <20230731110012.2913742-1-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_040023_890684_9232181C 
X-CRM114-Status: GOOD (  10.25  )
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

Rockchip RV1126 has VOP_LITE Display engine which can route
RGB and MIPI DSI display interfaces.

This patchset adds MIPI-DSI pipeline support for RV1126.

Any inputs?
Jagan.

Jagan Teki (14):
  genpd: rockchip: Add PD_VO entry for rv1126
  clk: rockchip: rv1126: Add PD_VO clock tree
  dt-bindings: phy: rockchip-inno-dsidphy: Document rv1126
  phy: rockchip: inno-dsidphy: Add rv1126 support
  dt-bindings: display: rockchip-vop: Document rv1126 vop
  drm/rockchip: vop: Add rv1126 vop_lite support
  dt-bindings: display: rockchip-dw-mipi-dsi: Document rv1126 DSI
  drm/rockchip: dsi: Add rv1126 MIPI DSI support
  ARM: dts: rockchip: rv1126: Add PD_VO entry
  ARM: dts: rockchip: rv1126: Add VOP_LITE support
  ARM: dts: rockchip: rv1126: Add MIPI DSI pipeline
  ARM: dts: rockchip: rv1126: Add Edgeble Neu2 IO DSI overlay
  ARM: dts: rockchip: Add Radxa Display 10HD overlay
  ARM: dts: rockchip: Add Radxa Display 8HD overlay

 .../rockchip/rockchip,dw-mipi-dsi.yaml        |   2 +
 .../display/rockchip/rockchip-vop.yaml        |   1 +
 .../bindings/phy/rockchip,px30-dsi-dphy.yaml  |   1 +
 arch/arm/boot/dts/rockchip/Makefile           |   3 +
 .../boot/dts/rockchip/radxa-display-10hd.dtso |  14 ++
 .../boot/dts/rockchip/radxa-display-8hd.dtso  |  14 ++
 .../rockchip/rv1126-edgeble-neu2-io-dsi.dtso  | 112 +++++++++++++++
 arch/arm/boot/dts/rockchip/rv1126.dtsi        | 130 ++++++++++++++++++
 drivers/clk/rockchip/clk-rv1126.c             |  59 ++++++++
 drivers/genpd/rockchip/pm-domains.c           |   1 +
 .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   |  20 +++
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c   |  55 ++++++++
 .../phy/rockchip/phy-rockchip-inno-dsidphy.c  |   3 +
 13 files changed, 415 insertions(+)
 create mode 100644 arch/arm/boot/dts/rockchip/radxa-display-10hd.dtso
 create mode 100644 arch/arm/boot/dts/rockchip/radxa-display-8hd.dtso
 create mode 100644 arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io-dsi.dtso

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
