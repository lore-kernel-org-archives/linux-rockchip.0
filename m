Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C24DFC02185
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Jan 2025 06:30:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fUMDMW9AMh5Hm4rySBj8LakxI+1hhFpO66tu2Nebx3g=; b=g/9Ohi1YI2xlow
	Qt42o9y7rGUtWK96zb0hlNMtrfnEnyRMU33QlpbZkQ4NcmJsaAKenWmqJXflimQaQWhwTyy/lOVs/
	yTZNMJczdm37HloiJBQqkPLI5D0cUdu7PV5/AgvTSieJocxtIJTtMw8m8uBpartImmdm9N6fRSKV7
	X/jEFWyaDpjldoJAphvkvvM2sFqmDEfJSzPK1XBQAJ8lkee4b1nY4qy3bprUA/C8E/C3B7PrjmZ/i
	EwkZBjDNfnV4G8iR0pwheOg38ydqQTWMZQOVSn1hWpl8q3xyDMSLRbrfyxTNvsuqi8w8E3Xxl38G4
	vip6kMXA+E/lsDJ+u2Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ta7mO-000000070H2-3jeI;
	Tue, 21 Jan 2025 06:30:28 +0000
Received: from mail-m3270.qiye.163.com ([220.197.32.70])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ta7g4-00000006z2p-2aor;
	Tue, 21 Jan 2025 06:23:57 +0000
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 9456a33e;
	Tue, 21 Jan 2025 14:23:51 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v6 5/6] dt-bindings: display: rockchip: Fix label name of hdptxphy for RK3588 HDMI TX Controller
Date: Tue, 21 Jan 2025 14:23:23 +0800
Message-Id: <20250121062324.309592-6-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250121062324.309592-1-damon.ding@rock-chips.com>
References: <20250121062324.309592-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkIeGlZLHkIYGUJPHh0aHh1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a9487881cc303a3kunm9456a33e
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PAw6HCo6ITIUTzQPCRI0DjE6
	PjEwFCpVSlVKTEhMT09LTUhIQ0tLVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKSEtPNwY+
DKIM-Signature: a=rsa-sha256;
	b=V91iRjYEYNTsG5+EeisCMvsya1hW2cc02HeQ2hAlYYpdef6wbOM/6n+B8jJaa/SHNynn8E8jvpZpZP3on455Dwtcge2cE4Cfkff7GtNpF+Hq7UwrqSpdqBIXbUEE4WzB/4ZGvTHSZrfsYOipJpwyU3ht4tS3s48LH83boOLxYaY=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=DsE1WkVNoF+Jwn/u5/eTYNhUxfmsWFSRl9E2p5GwmYk=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250120_222356_854046_ADD20F6E 
X-CRM114-Status: UNSURE (   8.96  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, kever.yang@rock-chips.com, dmitry.baryshkov@linaro.org, vkoul@kernel.org, Damon Ding <damon.ding@rock-chips.com>, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The hdptxphy is a combo transmit-PHY for HDMI2.1 TMDS Link, FRL Link, DP
and eDP Link. Therefore, it is better to name it hdptxphy0 other than
hdptxphy_hdmi0, which will be referenced by both hdmi0 and edp0 nodes.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
---
 .../bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml   | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
index d8e761865f27..7a1ae31cc535 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
@@ -156,7 +156,7 @@ examples:
                      <GIC_SPI 172 IRQ_TYPE_LEVEL_HIGH 0>,
                      <GIC_SPI 360 IRQ_TYPE_LEVEL_HIGH 0>;
         interrupt-names = "avp", "cec", "earc", "main", "hpd";
-        phys = <&hdptxphy_hdmi0>;
+        phys = <&hdptxphy0>;
         power-domains = <&power RK3588_PD_VO1>;
         resets = <&cru SRST_HDMITX0_REF>, <&cru SRST_HDMIHDP0>;
         reset-names = "ref", "hdp";
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
