Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB087C8303C
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jul 2025 17:28:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zx6Sleak5T/AT+NcNtGrK1g19OqNXwD/Yq2cycz4Ky0=; b=O+/GEHYWMsFwP5
	VAPBioofwOtSDGKPHLBQVP80QdonR+lsP1XenhX/o/6NRcvXBCn37KKddmao8O7b5jhQn/gFkdmIf
	VWUihZJiEhlj/fYrHtK9NunSiJ7yz9bABeuyZhXDc1YZwgI1qAS7bPz9byhaQb4KtXIsjeGVS7Eio
	f4/xuA+Y9/+HH4b+QcHACzGWfz0HL5N0yqpBK07/GNDwdJ8tIi8kICIOkXzVmjnlJnxvO5rKad0L1
	SsIHB8CHxJbRoFpavcsAP49qdIYoNtprcZPJcBldGBr1S4dXmFJvERw2/Twa96nu8WxZmgvYaSrHU
	Kjw+WDtG+9ZF84Ir5rBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYpdv-00000003Aeb-1kkG;
	Mon, 07 Jul 2025 17:28:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYp2I-000000033tL-1Yxs;
	Mon, 07 Jul 2025 16:49:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type;
	bh=z3oo4jp/mWDXJM4loc/Z9mF5O/3QC0Xa5p4jSoWlt2w=; b=yWuK4Eyl5vZRgqKAYAhhf5a2V2
	YlX0Lw/Wa+sVwk/B4wvKfqvE8w+bOUD34xSSmYZuyU8sOqi5nRT+hINz0n1t8yzFGR0MqP3z/7HNu
	e9R8o3Fno1t8YK6atx1BeLyYAX60Dd/5oLfDwuPATN7z2bXqHI/sfs3ayd+uhPiMDWII9ySdIOhi9
	9o1yw4343jaz2Ww6Ls3Adlbn42d3HnYgofQc2mCB6VB6xa0c8BPEi6+FbvIjGiw+COVFiEv9n1Str
	iFMwmDlj5hlBO57U8/27o98u3pFzWrl0vamF83rE9yPF0ItjoFVCAC/qPyuJV1I8D5jzWxKEhsW2/
	So/tIGJw==;
Received: from i53875bf5.versanet.de ([83.135.91.245] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uYp1s-0004yl-Ea; Mon, 07 Jul 2025 18:49:20 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Subject: [PATCH 05/13] dt-bindings: display: ili9881c: Add Bestar BSD1218-A101KL68 LCD panel
Date: Mon,  7 Jul 2025 18:48:58 +0200
Message-ID: <20250707164906.1445288-6-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250707164906.1445288-1-heiko@sntech.de>
References: <20250707164906.1445288-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250707_094946_429550_00467CD1 
X-CRM114-Status: UNSURE (   9.88  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, linux-kernel@vger.kernel.org, maarten.lankhorst@linux.intel.com, hjc@rock-chips.com, mripard@kernel.org, andyshrk@163.com, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, tzimmermann@suse.de, andy.yan@rock-chips.com, quic_jesszhan@quicinc.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Document the compatible value for Bestar BSD1218-A101KL68 LCD panels
that are based around the ili9881c controller.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 .../devicetree/bindings/display/panel/ilitek,ili9881c.yaml       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/panel/ilitek,ili9881c.yaml b/Documentation/devicetree/bindings/display/panel/ilitek,ili9881c.yaml
index baf5dfe5f5eb..79064f9dde23 100644
--- a/Documentation/devicetree/bindings/display/panel/ilitek,ili9881c.yaml
+++ b/Documentation/devicetree/bindings/display/panel/ilitek,ili9881c.yaml
@@ -18,6 +18,7 @@ properties:
       - enum:
           - ampire,am8001280g
           - bananapi,lhr050h41
+          - bestar,bsd1218-a101kl68
           - feixin,k101-im2byl02
           - startek,kd050hdfia020
           - tdo,tl050hdv35
-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
