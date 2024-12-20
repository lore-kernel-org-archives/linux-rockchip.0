Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90F57E7718B
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Dec 2024 11:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rybaJYmKve4fWNIgQrNtFL+e1Spw78MMy9NkhUJKS7A=; b=T81QNhRBk916FT
	tO221TAzlraS4O0Sr1yvCKnB6BFMzdGI3XKujhpzwhGYkFvH0yeah+UbWYMM+OnuJDbfub/vcw9zB
	EIdx4BAsuEVmLqbvkOrOs5VwD9YHPPF3u28+W5fBaA2fRMpeJaSj5IZM8kINE1EDEgpNHeW+PVmZ+
	0vfA8T3mP3tNgEqIyD/V3VWQCo3XnuI/XIfRzQTYAtSh3DSOJoE6hN7qSmpeg9Oqo13VuSaDQVdaS
	pw08TTdW0oVjjgJ6tY3zbYExMHZyWHqOoWIQVdWjyzrojaUROLfHXJbBpp9dxcXZMnbDkvqB4wHbQ
	rgQxmEcygk4cPfPfLGWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOayF-00000004jQj-1unx;
	Fri, 20 Dec 2024 11:15:03 +0000
Received: from mail-m15597.qiye.163.com ([101.71.155.97])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOapl-00000004fFm-32qN
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Dec 2024 11:06:18 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 657291f6;
	Fri, 20 Dec 2024 19:06:14 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>
Subject: [PATCH 20/38] dt-bindings: phy: rockchip,inno-usb2phy: add rk3562
Date: Fri, 20 Dec 2024 19:05:40 +0800
Message-Id: <20241220110558.3511994-11-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241220110558.3511994-1-kever.yang@rock-chips.com>
References: <20241220103825.3509421-1-kever.yang@rock-chips.com>
 <20241220110558.3511994-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0pCQlZPH0lNSU0ZHkhNTB5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a93e3bf245703afkunm657291f6
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Nxw6Lyo6CzIUNggKCEoDSA1L
	Q1EKCQJVSlVKTEhPTUJJTExOTU1KVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKSExPNwY+
DKIM-Signature: a=rsa-sha256;
	b=hG/v46CPCrhT2pCFdhtRtaV1Bf3+WfFeT3dfrcqpDkoLK6xwCRt4uqzenDw3CdNC79w+Ll4/AAEFxo0Y4ucqRw7Wye/mOnXyE95nyNLNugbSCo5TkcsQ78P05bNuF8j6pDmQ5UM8+CqKfaVdqwgMRVirwkF4kOQAxTfel8jD8j0=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=l4sS4jdc6mI0+Llv9QtpAg8NbLOEBMveI73kPmorKsY=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241220_030617_938082_4D3B4CD6 
X-CRM114-Status: UNSURE (   6.04  )
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

Add compatible for the USB2 phy in the Rockchip RK3562 SoC.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

 .../devicetree/bindings/phy/rockchip,inno-usb2phy.yaml         | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
index 6a7ef556414c..367297f6f8b5 100644
--- a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
@@ -19,6 +19,7 @@ properties:
       - rockchip,rk3328-usb2phy
       - rockchip,rk3366-usb2phy
       - rockchip,rk3399-usb2phy
+      - rockchip,rk3562-usb2phy
       - rockchip,rk3568-usb2phy
       - rockchip,rk3576-usb2phy
       - rockchip,rk3588-usb2phy
@@ -150,7 +151,6 @@ allOf:
             enum:
               - rockchip,rk3568-usb2phy
               - rockchip,rk3588-usb2phy
-
     then:
       properties:
         host-port:
@@ -190,6 +190,7 @@ allOf:
               - rockchip,rk3328-usb2phy
               - rockchip,rk3366-usb2phy
               - rockchip,rk3399-usb2phy
+              - rockchip,rk3562-usb2phy
               - rockchip,rk3568-usb2phy
               - rockchip,rk3588-usb2phy
               - rockchip,rv1108-usb2phy
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
