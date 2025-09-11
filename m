Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87ED0CAC58E
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Sep 2025 15:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DgElsOkP6Y7BCntGp8g/ajDfrjyLIxbSN3ArijXnUSE=; b=2LMw6dyRVdqycy
	qZ6p9I2aVjogfm2G7kvJWUII40cKEJ1+SnXEwo5I6xBSgC/ibC34q5XDVKcWfcz5/yiKsgeQOfaWQ
	5uMRpSbsCNP1EYCag+YKE47GdIyZZ3gefDlTWnOnCmFSikgTZtd1H1uRIKLIcnq2xmZGGByp+Nj5P
	2ye/QNddmvAkg3jerD/IEQnKIGs68MsqWqfEEzK857qnDzGwOXnIaQnOWXRpimEpYFhgYNBBHrXIh
	vxJ1aHIvuKD2dsmrOIrOlvte3MdbSdWP0VpVaW6FOOLmFS8nJieeF8QvPjmYPVAKgBMQFljrloibd
	h+6oa6q9x6pQ+E3BHhAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwj05-00000003nxJ-3MNV;
	Thu, 11 Sep 2025 15:14:17 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwj03-00000003nvU-12zZ;
	Thu, 11 Sep 2025 15:14:16 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1757603611; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Y3TWVD8OQzag4n7vlKhHW5hOxDdlpiKY6usJ9p/Cd7xIJo+Wt+wwGpMU1mwM+/yaTN70Q+HkZEvfU4U5Nye8JRjBACTcEb2BPVgFIvEJfd1jRM0UAHYwJoRphYahJ2NnI6bDe/++mWRFzbzDRVIJNAiXFd2MlhOvUgniihMT4ro=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1757603611; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=bY54AAdDsGJHBRu4VNnRBqaafsYGU+PM+RWfhefn48Q=; 
	b=SDZ70MmO1l08Sec8X99CQjE+6BeOZSjEsYq6rf3CQ8i5apB5Su+nEys4dfRw2Ptfq84xKDgJCcdnRUA2LioqVQ655gfYIGPlmaBf+2EL7LGCc2j0u4AlA0fEjU+8UqvIx7CTDdbnZhWHPXUFvx8JizPAtqUMamd9/AwpOa4Y82U=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=ariel.dalessandro@collabora.com;
	dmarc=pass header.from=<ariel.dalessandro@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1757603610;
	s=zohomail; d=collabora.com; i=ariel.dalessandro@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=bY54AAdDsGJHBRu4VNnRBqaafsYGU+PM+RWfhefn48Q=;
	b=N5QfbwJ900PSelAysTK+1BMVDe9AfBePeRmlJVYGFQn+jbiN9qM/JfZSQQH6pdsq
	CV0/LWZV3dzLQcKLLX3OPZ13viNYqb0CLjUtbjRvarvzuzZ5sbRNrKRXwhRgdtsupdp
	U2ff0D8faKik7RS3sTIgM9M/EVfMY/CFZKSM1iR0=
Received: by mx.zohomail.com with SMTPS id 1757603609772835.2831161402115;
	Thu, 11 Sep 2025 08:13:29 -0700 (PDT)
From: Ariel D'Alessandro <ariel.dalessandro@collabora.com>
To: airlied@gmail.com,
	amergnat@baylibre.com,
	andrew+netdev@lunn.ch,
	andrew-ct.chen@mediatek.com,
	angelogioacchino.delregno@collabora.com,
	ariel.dalessandro@collabora.com,
	broonie@kernel.org,
	chunkuang.hu@kernel.org,
	conor+dt@kernel.org,
	davem@davemloft.net,
	dmitry.torokhov@gmail.com,
	edumazet@google.com,
	flora.fu@mediatek.com,
	heiko@sntech.de,
	houlong.wei@mediatek.com,
	jeesw@melfas.com,
	kernel@collabora.com,
	krzk+dt@kernel.org,
	kuba@kernel.org,
	lgirdwood@gmail.com,
	linus.walleij@linaro.org,
	louisalexis.eyraud@collabora.com,
	luiz.dentz@gmail.com,
	maarten.lankhorst@linux.intel.com,
	marcel@holtmann.org,
	matthias.bgg@gmail.com,
	mchehab@kernel.org,
	minghsiu.tsai@mediatek.com,
	mripard@kernel.org,
	p.zabel@pengutronix.de,
	pabeni@redhat.com,
	robh@kernel.org,
	sean.wang@kernel.org,
	simona@ffwll.ch,
	support.opensource@diasemi.com,
	tiffany.lin@mediatek.com,
	tzimmermann@suse.de,
	yunfei.dong@mediatek.com
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-bluetooth@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-input@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-sound@vger.kernel.org,
	netdev@vger.kernel.org
Subject: [PATCH v2 05/12] dt-bindings: display: mediatek,od: Add mediatek,gce-client-reg property
Date: Thu, 11 Sep 2025 12:09:54 -0300
Message-ID: <20250911151001.108744-6-ariel.dalessandro@collabora.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250911151001.108744-1-ariel.dalessandro@collabora.com>
References: <20250911151001.108744-1-ariel.dalessandro@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250911_081415_342601_A1163FDE 
X-CRM114-Status: GOOD (  10.19  )
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

Currently, users of Mediatek OD (display overdrive) DT bindings set
mediatek,gce-client-reg node property, which is missing from the DT schema.

For example, device tree arch/arm64/boot/dts/mediatek/mt8173.dtsi is
causing the following dtb check error:

```
$ make CHECK_DTBS=y mediatek/mt8173-elm.dtb
   SCHEMA  Documentation/devicetree/bindings/processed-schema.json
   DTC [C] arch/arm64/boot/dts/mediatek/mt8173-elm.dtb
[...]
arch/arm64/boot/dts/mediatek/mt8173-elm.dtb: od@14023000
(mediatek,mt8173-disp-od): 'mediatek,gce-client-reg' does not match
any of the regexes: '^pinctrl-[0-9]+$'
```

This commit adds the missing node property in the DT schema and updates the
example as well.

Signed-off-by: Ariel D'Alessandro <ariel.dalessandro@collabora.com>
---
 .../bindings/display/mediatek/mediatek,od.yaml     | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,od.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,od.yaml
index 71534febd49c6..930c088a722a8 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,od.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,od.yaml
@@ -60,6 +60,18 @@ properties:
       - port@0
       - port@1
 
+  mediatek,gce-client-reg:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description: describes how to locate the GCE client register
+    items:
+      - items:
+          - description: Phandle reference to a Mediatek GCE Mailbox
+          - description:
+              GCE subsys id mapping to a client defined in header
+              include/dt-bindings/gce/<chip>-gce.h.
+          - description: offset for the GCE register offset
+          - description: size of the GCE register offset
+
 required:
   - compatible
   - reg
@@ -70,6 +82,7 @@ additionalProperties: false
 examples:
   - |
     #include <dt-bindings/clock/mt8173-clk.h>
+    #include <dt-bindings/gce/mt8173-gce.h>
 
     soc {
         #address-cells = <2>;
@@ -79,5 +92,6 @@ examples:
             compatible = "mediatek,mt8173-disp-od";
             reg = <0 0x14023000 0 0x1000>;
             clocks = <&mmsys CLK_MM_DISP_OD>;
+            mediatek,gce-client-reg = <&gce SUBSYS_1402XXXX 0x3000 0x1000>;
         };
     };
-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
