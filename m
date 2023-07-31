Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4693C001DC
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Jul 2023 11:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qUj8uLgJzDtiRYZOBuFh8aCjPGrkmj00AcH8R5GDBDA=; b=IrsDJL6+HPJDmw
	Mbo1+BhbCJkb/nmPBfNlmg5HVXV1LxG4ZKScUi2g38/bdDjzhQJbFEUgw2MJ+dFuqcM0OQ66P3N2L
	z5RIFK3zQ/noCr+trYImvRaAvq5ZKHl5XgTmYpwji3xTAiLa+MTzCp4W+wsNWLrwB6tyz/HCAcpsx
	1RYB0hl0Cvz9z8DW2rSbqDpmS57pIRRd0rrILIS7w97F34NjbBR4vNEf6A2yW9E82Su8kkV+S8hYr
	SnXNk/KJCVA4hk4uzPObLHwuWUUD9hHujUf8Vy/lMRvyS47gdmbM834hgBUx553g9cU1duvziKmb4
	6eijBqTDI3bqwO6ZUBZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQds-00FEKw-2Z;
	Mon, 31 Jul 2023 11:00:48 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQdg-00FE49-1z
	for linux-rockchip@lists.infradead.org;
	Mon, 31 Jul 2023 11:00:37 +0000
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-1bb8a89b975so24476065ad.1
        for <linux-rockchip@lists.infradead.org>; Mon, 31 Jul 2023 04:00:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690801236; x=1691406036;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I4uEnTNjW7DC6At6I+F7keaZ1pWy4tIkVTdNrvB8BNw=;
        b=zV5gw6C3xyA/WHxEsCIcVSPSLZWxTUzxsvhoThbjMeA1V4LD2UrrY9V8R5USR+s5Jc
         eVgo/HjWgSmCF7T0VNrh/FpRR6WHj3GmKAmgLw/yYwZRzw3Wwjl3FdvCkRAOUZ2Lkb+e
         dZYEKTD06y5JtYqlBaf8Y/OmWc7Pim3oLRkEUekPlt/WAU03odGpk3r+MtOsSkxPus6e
         G0biZD7M8pEDsmphD1c8eUFyF+bpepq0Pqjq5IVFB6QvYVi/dXncEgkdqTR8wAYv8XGV
         UdQqGiT+XRsl1GSXWQcX+vyRJHgeJL8Ghgr/cqGSIn2xa3u0HqbogvBZSELfGPZQDVZn
         hUkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690801236; x=1691406036;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I4uEnTNjW7DC6At6I+F7keaZ1pWy4tIkVTdNrvB8BNw=;
        b=MHxWWWZQzMFYQbPzvkABj61cPpjQBFz30CTmoS3/D7kMqV7N8FDevL9NqfXY6c7bgA
         mAbmMypMAUQm4hzxe4PZdfhFK8gNprBXMRQrdtONYvNxuXEDXdtmDUlQ+lEQbDI6WOH6
         Lrp4dpapUzcbqo1XyXDiWvh0rBdw9znogDeL1yFzcbtLsWcHvm+NkJ8wsBS1XsvucK/u
         fCPlA0+85YSA3iDEb6pEwgdnv+zFAr6mrHPMBNcEwMmYZDy7Iw+7CxeR4rhKGXT6Rikb
         r5/7rLQQO3JCF2DjQQppb+a2dGz1mtJIYSqee3zXKF/XugaEBwX1YGSp5O1LNRO45mgy
         ht3w==
X-Gm-Message-State: ABy/qLZS8GVc+5JAuIb+DrFLVfZ6DDVcyZzUPy2YI1oIm/1w+hdQGqnP
	3d9QOPgv9FAk9ttc1WkHuV/H3w==
X-Google-Smtp-Source: APBJJlGh2CjJmtS8ElOHin6W05yAAXDLyJnsJQ7MGRvk40VznbrPl4qQ2XBb59SJp+Yy+eV2039zJQ==
X-Received: by 2002:a17:902:e88f:b0:1b8:b433:7fa with SMTP id w15-20020a170902e88f00b001b8b43307famr9743171plg.13.1690801236080;
        Mon, 31 Jul 2023 04:00:36 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id t14-20020a1709028c8e00b001b1a2c14a4asm8281096plo.38.2023.07.31.04.00.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 04:00:35 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Jagan Teki <jagan@edgeble.ai>,
	linux-phy@lists.infradead.org,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Subject: [PATCH 04/14] phy: rockchip: inno-dsidphy: Add rv1126 support
Date: Mon, 31 Jul 2023 16:30:02 +0530
Message-Id: <20230731110012.2913742-5-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230731110012.2913742-1-jagan@edgeble.ai>
References: <20230731110012.2913742-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_040036_653984_62D667D9 
X-CRM114-Status: GOOD (  11.17  )
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

Add support for Rockchip RV1126 DSI-DPHY.

The existing 2.5GHz phy timing table added for RK3568 is working
as it is for RV1126 as well.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Cc: linux-phy@lists.infradead.org
Cc: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>

 drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c b/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
index c879ec69bfd6..6405943a2676 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
@@ -770,6 +770,9 @@ static const struct of_device_id inno_dsidphy_of_match[] = {
 	}, {
 		.compatible = "rockchip,rk3568-dsi-dphy",
 		.data = &max_2_5ghz_video_phy_plat_data,
+	}, {
+		.compatible = "rockchip,rv1126-dsi-dphy",
+		.data = &max_2_5ghz_video_phy_plat_data,
 	},
 	{}
 };
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
