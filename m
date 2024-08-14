Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C378EC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Aug 2024 22:31:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UQtvufc1AEDVj7qt5Zx3iSEkwf+brgOTHIXYQyUInZ8=; b=RCLN7HoP70pki9
	ZY0kHbrElT0nvpo/Sn7/KvrpsMmyJf+cJu0tLzva8NiLWysf3tndFnt5Ulf/tYr32VaCnr6MN5rkk
	r4O/evtEHdexM1FGgtgvyHynTcg0rKrKhLssdoZYfGOXaU353glTLrJrkC1l+zzyJw4ocP+067ga8
	wdN6q9YaXY5ZD3H8YcBMovYX/7Q+2MxL2y/aHWhtDSUYb7HyK8vet2GRRicypuC53WfD1v7DIVRCi
	3i+YP0S3c9EjlwDDFLsMWMgVXbI5XQZ2iIAc/XIrK5/EYJtlIckEq2J8Rv7C78sHgSXFQca21kEyX
	Oh3qZdZiBN21k1tSH3KQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seMWJ-00000008SZ6-0mlw;
	Wed, 14 Aug 2024 22:31:07 +0000
Received: from sender4-op-o14.zoho.com ([136.143.188.14])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seMWC-00000008SVT-1NUS;
	Wed, 14 Aug 2024 22:31:04 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1723674653; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=UJWTp9K/chRZxpc+TSA+6am4dSx4burbqNeAw/K9wCEpyUdoIrPLbOK87Em4wf4SL3H8J+2Xy4la2Vd3KhEeVKgjOpPi1YMZPqFLYm/y1Ac/mArl+ETrfDE+uIl4vxqBu4Z4RiEPQTjcqDFY1cZJWyMgV5bWlWHK5ALYZQi+7Ho=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1723674653; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=IM1nIq8ajzs3qmZL6201DXzMYw58RTONKzqd0ALKxCA=; 
	b=flkuKwRgZUwCmnGz3lwlKRR425R54zEX3h5p0zoBD/0TPt5v6GzzCdM4++TzDXw9TN0k/zwqhGQBabQYZTf2VtocwBE1H8pxORDn5AmWb4eQE+6xjutzbrzlweuZsW3PYiOk6GY78gDdci7rqzIuse7a6wWgW4bQmRj0QMMnaa0=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1723674653;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=IM1nIq8ajzs3qmZL6201DXzMYw58RTONKzqd0ALKxCA=;
	b=W6c/IiDH7yNtgeK+oDtlTJpqlUSo5VEqYKZsTuWCTB77SV7ch4tWbIATHhjPmjFj
	/+PrNY88KoUmK/H1L/toCFmafDJMssOzfm/OkJz7WlacGEs+1AbfDHgILyEZKw7t/FP
	vO6h8IJHaE6f1paad0djFW9XB0s9TF6xE3CrJYiI=
Received: by mx.zohomail.com with SMTPS id 172367465195192.05996995891837;
	Wed, 14 Aug 2024 15:30:51 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: [PATCH v3 1/2] dt-bindings: pinctrl: Add rk3576 pinctrl bindings
Date: Wed, 14 Aug 2024 18:30:38 -0400
Message-ID: <20240814223217.3498-2-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240814223217.3498-1-detlev.casanova@collabora.com>
References: <20240814223217.3498-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_153100_435410_308C973A 
X-CRM114-Status: GOOD (  10.20  )
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

Add the compatible string as well as the rockchip,sys-grf field which is
only used on this SoC.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 .../bindings/pinctrl/rockchip,pinctrl.yaml     | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
index 20e806dce1ecb..28f8dc412cf92 100644
--- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
@@ -45,6 +45,7 @@ properties:
       - rockchip,rk3368-pinctrl
       - rockchip,rk3399-pinctrl
       - rockchip,rk3568-pinctrl
+      - rockchip,rk3576-pinctrl
       - rockchip,rk3588-pinctrl
       - rockchip,rv1108-pinctrl
       - rockchip,rv1126-pinctrl
@@ -62,6 +63,12 @@ properties:
       Required for at least rk3188 and rk3288. On the rk3368 this should
       point to the PMUGRF syscon.
 
+  rockchip,sys-grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      The phandle of the syscon node for the SYS GRF registers.
+      It is used on rk3576 for i3c software controlled weak pull-up.
+
   "#address-cells":
     enum: [1, 2]
 
@@ -72,6 +79,17 @@ properties:
 
 allOf:
   - $ref: pinctrl.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3576-pinctrl
+    then:
+      required:
+        - rockchip,sys-grf
+    else:
+      properties:
+        rockchip,sys-grf: false
 
 required:
   - compatible
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
