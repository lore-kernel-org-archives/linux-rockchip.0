Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1102DC83F0A
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Jul 2025 15:30:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gFbWEIYdn1cID5yXKN6n8fuhz0YFhWQx8RPRJiS7ns4=; b=akRFal3i3EmVbQ
	ZMyre9MmpUKGKLTIhg4+wkADDMKwuyWryJTjUmq+QaThDUT0kdIjxMymuaW5QabvtmupsQfI2F77Y
	WpqUjO8jyVc3qfI1ha/RJUqX9pvEKwhp2t89VdlbyyuG7rgV7SDsGpnClkqa8O7BF+IoUaeM4IsBo
	be/Ctkkm/zpSzDQ+kawlly1LuO3wGXVA5mxD3L1fFDjFDQvUScxFckP4+AR8yEVRKlY0m49HwAcG2
	oEv9SiqLucrFOfGe1HeVg0SO6b58o/GP2zzggzhGESz7P9MgqT21hkUUXEyH1/MiER7NMkVoPutB7
	1JP8e+ewUhyGlx9JxvYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZWkd-00000009Apb-18w8;
	Wed, 09 Jul 2025 15:30:27 +0000
Received: from out-170.mta0.migadu.com ([2001:41d0:1004:224b::aa])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZUlt-00000008lqQ-2NDy
	for linux-rockchip@lists.infradead.org;
	Wed, 09 Jul 2025 13:23:38 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1752067415;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CGiINAVxrmdGU1PCrP23FZvlTFaK01obSa4XqumrYhM=;
	b=lKsKQ2q4ZBk/za6pTF38bYIbjhaJTuEUqYP6d+q0rAxowzY/zJDyxEt2L5TdKnHcMaXE7/
	jiVohHfPVk7niMVYyXZWc4bo+oUS7tv5khIaTeA8q+Bwjrqwu8H4NsbFmy+p/TN6Zia3OW
	6KD7KrEoXrwNZA7mBXNMc/dH51UOZI9QRLNDJ4fNcdz9AeAT7c1vIP0/fhW1YAQbEv30o0
	QFrmDWPX4QK6jsQJNltcFyUdbh4F1EfQy6xS8B+bz/ONJE9BK1nXqiRDdj9XC0NMbNGUDW
	mXRp+Svipuu3SGgsN+752Q2p3XLlA//r2kT/L4fDosTa6qKG8b+/nlRJFZ0ghg==
From: Diederik de Haas <didi.debian@cknow.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Dragan Simic <dsimic@manjaro.org>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Johan Jonker <jbx6244@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH v4 03/10] dt-bindings: display: rockchip,dw-mipi-dsi: Drop address/size cells
Date: Wed,  9 Jul 2025 15:15:16 +0200
Message-ID: <20250709132323.128757-4-didi.debian@cknow.org>
In-Reply-To: <20250709132323.128757-1-didi.debian@cknow.org>
References: <20250709132323.128757-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250709_062337_754952_64A52110 
X-CRM114-Status: UNSURE (   4.94  )
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

The "rockchip,dw-mipi-dsi" binding has allOf "snps,dw-mipi-dsi.yaml"
which has allOf "dsi-controller.yaml", which already has #address-cells
and #size-cells defined as '1' and '0' respectively.
So drop this re-definition.

Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
 .../bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml     | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml
index ccd71c5324af..0881e82deb11 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml
@@ -58,12 +58,6 @@ properties:
   power-domains:
     maxItems: 1
 
-  "#address-cells":
-    const: 1
-
-  "#size-cells":
-    const: 0
-
 required:
   - compatible
   - clocks
-- 
2.50.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
