Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 454E9CA0EEB
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Aug 2025 14:19:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mKneXcAlS+oR9Dembm4VPjQUhxct0wP6cAwj/uO8/c0=; b=uK2zo6v40k1ali
	jsKoilxPXjBfEmPRzwbWo/5cVbiohFTH038FLrIewQCKAxtqM+/hJtE05tWE7SH9QFbWk2iKm5mdS
	5lFmlopLEujD71J8aFGSk5TPiYJILAYfI80drBc8aMlHw+jm0/7OWA7pPEv343EZSHzk8rPSCjDMC
	2Pc8fR8mr5/YfvMj39FygCWRcq3T1L2HLL959Hmx60o4GJdh6nZLqpn9d2zlwsT7z7bcA0/pgKPti
	hL9g/oVJ0MXX4YOHqT7brAHkNvqn2AUfUeOXvmx819Mc7pbGN3anph/NEh7J40CDvsSAT6XK6PiUG
	qK9QcXSlq6MGqiM1oKTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upSbe-00000002lFl-2rcY;
	Fri, 22 Aug 2025 14:19:02 +0000
Received: from m16.mail.163.com ([117.135.210.3])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upLS8-00000001iKQ-2J4S;
	Fri, 22 Aug 2025 06:40:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-ID:MIME-Version; bh=tP
	y4GqAOn9NjYCgd7E8mSk+A/Y65Vwnn+Qoudmsz9DA=; b=EIoPWMMvjCX2csB6LR
	DakDX+jLnKlOqmFiczf4GNsbb7WBHVSO0H7ETd0JRr2r6Uc1dJ2537iYMJSbbEIY
	N01aIcttvLsyAsPbmgVePsoBhlkh8jIsXYXDpsav9RQbjdaPusV8dKTXBXVFwAck
	cFdZOtB2ZDdsKiLUZF2JDjKrk=
Received: from ProDesk.. (unknown [])
	by gzsmtp3 (Coremail) with SMTP id PigvCgAn9_zCEKhoYtibAA--.23257S6;
	Fri, 22 Aug 2025 14:40:20 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: dmitry.baryshkov@oss.qualcomm.com,
	heiko@sntech.de
Subject: [PATCH v7 04/10] MAINTAINERS: Add entry for DW DPTX Controller bridge
Date: Fri, 22 Aug 2025 14:39:48 +0800
Message-ID: <20250822063959.692098-5-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250822063959.692098-1-andyshrk@163.com>
References: <20250822063959.692098-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: PigvCgAn9_zCEKhoYtibAA--.23257S6
X-Coremail-Antispam: 1Uf129KBjvdXoWrZrW5JF4DZry8Gw43CFWktFb_yoWkCrc_C3
	WxZ3yxXr4rGF90krZ7Aan3Ga4Sya1IgFsxu3Wkt392yasYyrWUtFWvkryxGw15CF1fCFWD
	ua4fXFyakrnxujkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU8N_-PUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0gqxXmioDHlwywABs4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_234044_958890_DDFCC598 
X-CRM114-Status: UNSURE (   8.35  )
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
Cc: neil.armstrong@linaro.org, sebastian.reichel@collabora.com, stephen@radxa.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, mripard@kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, yubing.zhang@rock-chips.com, naoki@radxa.com, Laurent.pinchart@ideasonboard.com, Andy Yan <andy.yan@rock-chips.com>, krzk+dt@kernel.org, robh@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Andy Yan <andy.yan@rock-chips.com>

Add an entry for the DW DPTX Controller bridge driver.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

---

(no changes since v5)

Changes in v5:
- First included in this version.

 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index cfa28b3470ab6..0ae7d13c2b3c5 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -7999,6 +7999,14 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/display/panel/synaptics,r63353.yaml
 F:	drivers/gpu/drm/panel/panel-synaptics-r63353.c
 
+DRM DRIVER FOR SYNOPSYS DESIGNWARE DISPLAYPORT BRIDGE
+M:	Andy Yan <andy.yan@rock-chips.com>
+S:	Maintained
+T:	git https://gitlab.freedesktop.org/drm/misc/kernel.git
+F:	Documentation/devicetree/bindings/display/rockchip/rockchip,dw-dp.yaml
+F:	drivers/gpu/drm/bridge/synopsys/dw-dp.c
+F:	include/drm/bridge/dw_dp.h
+
 DRM DRIVER FOR TI DLPC3433 MIPI DSI TO DMD BRIDGE
 M:	Jagan Teki <jagan@amarulasolutions.com>
 S:	Maintained
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
