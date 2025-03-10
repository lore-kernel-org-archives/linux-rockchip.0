Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72CA0C28B30
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Mar 2025 10:50:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=umxLhNctD7SHb6LxaAW6FFYucOBRi2v8HJ8YDv9fc0k=; b=XzzvlCNr+UYYWz
	FNCQYCcJIZC1e2fUNoROHq98HrGdZGKyV5d/bB4CUUa8QDIm/gXtXJjtyvF4sITVsP5V/8aYfwa4L
	yeRSFL4SnfE9paES/chb2nPRnsFH7WsZvqMSd7m61iSX4hnOLRcryeqDA7TiPpcYT8UgP5m0FuVM8
	UEKAC/VnfCTkMM0Gi98ZffgxDrrEZI8YoECtOYs9XdJsFTnDzUWVjSGMLXxoQbsfYmBwh4nE0osiK
	wheESjWCoOI61mbDajLupCaKCDyOf/4wPBG+IcDodRpMvwV+xrYl3u5OJfE3rXLTa1WPZtUZdWFpJ
	+uqLtO3Cb5nIg2yjmm9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1traiF-00000002JYd-2YsI;
	Mon, 10 Mar 2025 10:50:23 +0000
Received: from mail-m19731116.qiye.163.com ([220.197.31.116])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1traaL-00000002HiW-3xBg;
	Mon, 10 Mar 2025 10:42:15 +0000
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id dc18825e;
	Mon, 10 Mar 2025 18:42:08 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v8 04/13] dt-bindings: display: rockchip: analogix-dp: Add support to get panel from the DP AUX bus
Date: Mon, 10 Mar 2025 18:41:05 +0800
Message-Id: <20250310104114.2608063-5-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250310104114.2608063-1-damon.ding@rock-chips.com>
References: <20250310104114.2608063-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0sZTFZJT0kfHR8YSUpITEtWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCS0
	NVSktLVUpCWQY+
X-HM-Tid: 0a957fa5d22703a3kunmdc18825e
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Pgw6Hio*IzIBTSMIIzo3PS0t
	TBoaCw9VSlVKTE9KTUtISEhLTEpDVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKSkpINwY+
DKIM-Signature: a=rsa-sha256;
	b=V0t69bDtUofCXFl9NUeSycvv3bm4JooxgM8eTr8UERMsGAd2BsT2W1H3fjCr1zowcQwGLwEL64vJtwNGyxLJQ8gi4N/bhYvnq3ofM0vqPnEeq51NyZrZQnrjlhZWj2JkfLkCD7JTKxCxQqNi2PFIvfD/6zT7EccqJKKoPJFudQk=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=MCo0uAKS6QHvo55swHDZpLkV/TNxwwhILy3rryJVjxs=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250310_034214_152754_8BF7B77F 
X-CRM114-Status: UNSURE (   7.69  )
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
Cc: dri-devel@lists.freedesktop.org, dianders@chromium.org, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, rfoss@kernel.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, maarten.lankhorst@linux.intel.com, mripard@kernel.org, dmitry.baryshkov@linaro.org, Damon Ding <damon.ding@rock-chips.com>, linux-arm-kernel@lists.infradead.org, neil.armstrong@linaro.org, hjc@rock-chips.com, linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, boris.brezillon@collabora.com, tzimmermann@suse.de, andy.yan@rock-chips.com, krzk+dt@kernel.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

According to Documentation/devicetree/bindings/display/dp-aux-bus.yaml,
it is a good way to get panel through the DP AUX bus.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Damon Ding <damon.ding@rock-chips.com>

---

Changes in v4:
- Move the dt-bindings commit before related driver commits

Changes in v5:
- Remove the unexpected change logs in commit message
---
 .../bindings/display/rockchip/rockchip,analogix-dp.yaml        | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
index 60dedf9b2be7..eaf4e67e232e 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
@@ -41,6 +41,9 @@ properties:
     description:
       This SoC makes use of GRF regs.
 
+  aux-bus:
+    $ref: /schemas/display/dp-aux-bus.yaml#
+
 required:
   - compatible
   - clocks
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
