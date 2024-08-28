Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9643BC54FA6
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 12:42:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IrJGWgif1GcWd5QfPu2Pll7xzjoV3GzMMfNi4CUrC5Y=; b=qyqH7hxikFfNc1
	AqV2W6dGAKRmgz9Fu3sbxtEysRt94lZrCj89SN2Iq4/2gfl8vSQosB3v6HyZE0J1pDytJLYSTgLnC
	q6RlAgJFF4tVTSiK+2Fy2cjf1p0YhavJ1qi3cKTJt2YTjeU9jOVz2ankUe42JuTVsXdM7rgXu+I7s
	U10r1aqv82zKLrVBtH7N851C/wIkmpHPSyCmf5n0IKKL8QruFPqY1PVeTOLDaj7/DeZJqSuQJg7+2
	h2gSohaIMLh7TA2IuVAD+WW+8iCn2U4CGz8vmFfw3Da9ePGljaIYdY5wregZCnxFGPyf6XcLgXixj
	AVTtIG807m+TpFnb9JDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjI0i-0000000FMbg-0IV2;
	Wed, 28 Aug 2024 12:42:52 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjHyj-0000000FLzw-0w0r;
	Wed, 28 Aug 2024 12:40:50 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1724848842; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Fj8QCPMlTuhAhciY9yA8jYfRYlrFS5TTRIOUaAw6zpEqpja1/dkFycefmRCiZexgZMiPrcWmeRWVu7m/3F4roNOsEBrrbaMwdleASrG9xQzh/n9LcK7c+gGSnopvjnR1HmUlMoRAdGPr16Dd7f3evC/M80QhsOAgypOh/BtCQUE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1724848842; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=1xNtIytLwgeU6cjbUOfYF1MZAIhmIBCrj4xmGawRSRY=; 
	b=ECvRlOebMrLEjkJ7621Cwl6D9LIqpbZJoK5CuoXVyrPUbq9WnWa6mlVBnicoVavRIWSs/sGfvpe2hcXcOJhaWR/tX+jFHaUn4LWWOFbRDnOEe0tUVZtruyWQ7Y9Rln1YDZBj3f6kBVRILzXKsKPLvxh0xKEf8sssUtF/rqY2lUc=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=cristian.ciocaltea@collabora.com;
	dmarc=pass header.from=<cristian.ciocaltea@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1724848842;
	s=zohomail; d=collabora.com; i=cristian.ciocaltea@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=1xNtIytLwgeU6cjbUOfYF1MZAIhmIBCrj4xmGawRSRY=;
	b=FEPyz775lC9vPTSgjU37j8PYzwZWYZ55Zx/aI5QPakvO9P6EkQrYsxNPwEHIRuqv
	vIb9ABmlQxqqRlju/zaciaVz1YDd8TQLV7/+Wh5fqks8j6lCVpoGxirGIMLn4LyVq/m
	bcCgGmQru8pvlF4rxDpYDm758dtsZxZ1txcv0PII=
Received: by mx.zohomail.com with SMTPS id 1724848840222821.6532213316729;
	Wed, 28 Aug 2024 05:40:40 -0700 (PDT)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Wed, 28 Aug 2024 15:40:08 +0300
Subject: [PATCH v2 1/2] dt-bindings: soc: rockchip: Fix compatibles for
 RK3588 VO{0,1}_GRF
MIME-Version: 1.0
Message-Id: <20240828-rk3588-vo-grf-compat-v2-1-4db2f791593f@collabora.com>
References: <20240828-rk3588-vo-grf-compat-v2-0-4db2f791593f@collabora.com>
In-Reply-To: <20240828-rk3588-vo-grf-compat-v2-0-4db2f791593f@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Conor Dooley <conor@kernel.org>
X-Mailer: b4 0.14.1
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_054049_345088_64BFCCEF 
X-CRM114-Status: UNSURE (   9.90  )
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

According to RK3588 TRM, VO0_GRF and VO1_GRF have a similar layout, but
definitely not an identical one, therefore sharing the compatible is not
really justified.

Since currently there is no user of this, hence no ABI break, let's fix
it by providing dedicated compatibles while deprecating the old one.

Reported-by: Conor Dooley <conor@kernel.org>
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 78c6d5b64138..35b20e53b513 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -31,10 +31,16 @@ properties:
               - rockchip,rk3588-pcie3-pipe-grf
               - rockchip,rk3588-usb-grf
               - rockchip,rk3588-usbdpphy-grf
-              - rockchip,rk3588-vo-grf
+              - rockchip,rk3588-vo0-grf
+              - rockchip,rk3588-vo1-grf
               - rockchip,rk3588-vop-grf
               - rockchip,rv1108-usbgrf
           - const: syscon
+      - items:
+          - const: rockchip,rk3588-vo-grf
+          - const: syscon
+        deprecated: true
+        description: Use rockchip,rk3588-vo{0,1}-grf instead.
       - items:
           - enum:
               - rockchip,px30-grf
@@ -262,6 +268,8 @@ allOf:
           contains:
             enum:
               - rockchip,rk3588-vo-grf
+              - rockchip,rk3588-vo0-grf
+              - rockchip,rk3588-vo1-grf
 
     then:
       required:

-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
