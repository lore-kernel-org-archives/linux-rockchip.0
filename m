Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AFD7C2BB9A
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jun 2024 21:56:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EHvEa1oBLwVnU7MeqmkKCyLPgi+ZIgBitJvJJpYxVm8=; b=GG3sXKHMGQ1ot5
	1la2VB46zdooY4d+ZGSsvK76HqiFQaXhrla+tIh8uzVUU5jSNYTjTSLm+QuL9sVrkuS1HAdMrahUl
	vPMn3fEFyVPwNvp4FhVmCN3+Wax4Ia0otnab/GzHxCHhaZtfItDVHMdny0dob7fSYlnQS3hfhQXSk
	fzQ32Dtg9fBShOAywD9GpRSq+jNo++MKblZNymPBNfI6gQIOuOSujY4+5bOm37k3RrRLN2mxz1+YS
	Sx6WzgBG/rzJR7vO251coNk/CGS+qTAr3MvN8+KEXLZwFLHDg+cb8fGzI+xIxVEolilqRbkgJ+6Ls
	k3t4QwMGoKu16JqmkfuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJKLG-0000000Cjh7-31EK;
	Mon, 17 Jun 2024 21:56:46 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJKKy-0000000CjWV-2gTE;
	Mon, 17 Jun 2024 21:56:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718661387;
	bh=oYgR1S1ZbdlSr6B4Z6CKaYoTqnd5McG8fHjnbcOE9s8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Zt6N2DclEpY+u/2/RjfNArjCioQ31CCkl7pliv8zBdKsYiGjt4eBqsziad5afe9Sq
	 kE3deFxnucIKPvHSMWNB6mn9O3XGX3rrAYLL8lccCYY9CP7rn+PSROlGP9dhdEVx6K
	 SoiIYcnb0XGwvr4ONVVwwBXuMYxTTK/DybwvIyVAgCZswlQ1CrDL04WQb9e5ssxft+
	 mKmYFimsfe+UbCMmd4NAdwCI6gePGYtLgkRXdu1XvePhDCWpK5p5/hnZsaNpH9sj23
	 yczJq/eidDR+BpVazO5rk39wMxy/atkH5Zd05iY6hyqmT1aWC3skMwMPgG0HVszhzR
	 g0QWRxOsEzOIA==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 27ACF3782176;
	Mon, 17 Jun 2024 21:56:27 +0000 (UTC)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Tue, 18 Jun 2024 00:48:11 +0300
Subject: [PATCH 3/4] dt-bindings: phy: rockchip,rk3588-hdptx-phy: Add
 #clock-cells
MIME-Version: 1.0
Message-Id: <20240618-rk3588-hdmiphy-clkprov-v1-3-80e4aa12177e@collabora.com>
References: <20240618-rk3588-hdmiphy-clkprov-v1-0-80e4aa12177e@collabora.com>
In-Reply-To: <20240618-rk3588-hdmiphy-clkprov-v1-0-80e4aa12177e@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
X-Mailer: b4 0.14-dev-f7c49
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_145628_876132_B3EBE0C9 
X-CRM114-Status: UNSURE (   7.31  )
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

The HDMI PHY can be used as a clock provider on RK3588 SoC, hence add
the necessary '#clock-cells' property.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 Documentation/devicetree/bindings/phy/rockchip,rk3588-hdptx-phy.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/rockchip,rk3588-hdptx-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,rk3588-hdptx-phy.yaml
index 54e822c715f3..84fe59dbcf48 100644
--- a/Documentation/devicetree/bindings/phy/rockchip,rk3588-hdptx-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip,rk3588-hdptx-phy.yaml
@@ -27,6 +27,9 @@ properties:
       - const: ref
       - const: apb
 
+  "#clock-cells":
+    const: 0
+
   "#phy-cells":
     const: 0
 

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
