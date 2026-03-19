Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4671108E1E2
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Mar 2026 10:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zunuEwCqyRc3cQTjaw52TPGZTFsgfxIvOMunXwCDY+M=; b=y1GTpHTNbei65X
	udBjeQPJDKz6/C3IGUe7V/VsGCDkbHmxJHPQqj2jyeCmpNFsmlXZk39crxW8RvjNu73pFWGdjKLvf
	kBjtMj3EuaIaXtuqh41nnjIEp5Yffh+gL6BMygRuoLzsvGf6j+ue3yVfW0J1uwsmv7tFS4kuwULLf
	t9XMpngRh+CzMB3liTS0LsHmoKLtfwB5si61W6+2qhoF+D6u1I3jAE+T57vKCl0QuHVx6V5Bb6myc
	QZHUdEDOz2hLeTpOppHEdlQ6tXc3PUFb+P/U4R+XA5a7zTMEfbeNwyIuYeonvP8yzrVrYsr/afVfu
	kLNfi18cf7tmyRU4Uf7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3AoM-0000000ARF4-2KX9;
	Thu, 19 Mar 2026 10:41:06 +0000
Received: from mail-m1973173.qiye.163.com ([220.197.31.73])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3Ao6-0000000AQzS-1jyH;
	Thu, 19 Mar 2026 10:40:52 +0000
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3790344d6;
	Thu, 19 Mar 2026 18:40:45 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: hjc@rock-chips.com,
	heiko@sntech.de,
	andy.yan@rock-chips.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
	rfoss@kernel.org
Subject: [PATCH v2 5/9] dt-bindings: display: rockchip: analogix-dp: Add support for RK3576
Date: Thu, 19 Mar 2026 18:40:27 +0800
Message-Id: <20260319104031.1986946-6-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260319104031.1986946-1-damon.ding@rock-chips.com>
References: <20260319104031.1986946-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-HM-Tid: 0a9d05aef64b03a3kunm32a99f093bee97
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0JMSlZJSx9KSh5PGh5DShlWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=GYZoaAuBzqn6GdAgfo6TO+vd8DuODLV9NI1MmcTidokT29Wx0prvPUJntBVFVs9quQ0Qa8BtIaLbMIN8DJng9MWVmQvs59cgt5hTSSvwNVDE3UIrAltdkAM2dH48qc5vfcQe01Gm8NOPj5gREVsXF7B0XOCDXcm2uvoRaq6yRLo=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=pA9Sy2EAgPYpFjeefliRHszClhXQUBAWtHbPWCwsZjI=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_034050_652732_15D08B95 
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
Cc: kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, amadeus@jmu.edu.cn, Laurent.pinchart@ideasonboard.com, m.szyprowski@samsung.com, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, luca.ceresoli@bootlin.com, devicetree@vger.kernel.org, jonas@kwiboo.se, heiko.stuebner@cherry.de, Damon Ding <damon.ding@rock-chips.com>, linux-arm-kernel@lists.infradead.org, dmitry.baryshkov@oss.qualcomm.com, dianders@chromium.org, alchark@gmail.com, michael.riesch@collabora.com, didi.debian@cknow.org, nicolas.frattaroli@collabora.com, tomeu@tomeuvizoso.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The eDP TX controller on RK3576 is the same as that on RK3588.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>

-----

Changes in v2:
- Split out a separate patch to add the "hclk" clock reference.
---
 .../bindings/display/rockchip/rockchip,analogix-dp.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
index d2bc8636b626..4496a43881f9 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
@@ -15,6 +15,7 @@ properties:
     enum:
       - rockchip,rk3288-dp
       - rockchip,rk3399-edp
+      - rockchip,rk3576-edp
       - rockchip,rk3588-edp
 
   clocks:
@@ -67,6 +68,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - rockchip,rk3576-edp
               - rockchip,rk3588-edp
     then:
       properties:
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
