Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91520CD6E6D
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jun 2026 13:53:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DOGF7AobX5yOAbClhSn1KJk7dSitofpHD8FoalGBnRQ=; b=QBgi/ieCSN4A4u
	TNvF/Ct2w+6FEBRDaJ7we0eyjsZ1ywOQdsSFD+nXxfNAzBi68t7UwqkJLICd9lXc6iyPdcZ6/9ecC
	evSCjoZHXah0yGT3xh/hTP9bHzI0AGEZbV3F1kA5fC+xF3CU/HVjmp3xVpmTnDaod+Y07+T9Vhv7t
	IvBlOKMZJhChlEvFV8Og6wWo3ZVKHEEUVMZDOCuEp7nK1lpI1dKeMbJghYgpdo3tccGgysCNqHWtY
	JA8wN0H/5dS6N7lJbUFjMbOZHoUaSWt0yEMp/sNr6tofB399kpI3AgaFbk/6TucV/vMieTc2ChwRe
	yqiTC+rdcuHYVir+VUIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV8VT-0000000Gpx6-2OEf;
	Thu, 04 Jun 2026 13:53:11 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV8VP-0000000GpnH-2NXA
	for linux-rockchip@bombadil.infradead.org;
	Thu, 04 Jun 2026 13:53:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=WLUAaZps1w8Jl8h4U5vkB2L5GVDJaAP0Yeaa4HLYIr8=; b=VgMcGZeWaq4KHLXbzad1ndS9+J
	5r7IBZ9+MB7dewegLMB7Xanebawq6kseSN8KNJJLcwoiWvhCTw4hCR3dnVvIKdU2Bv6V8X2/ZbdJ7
	FIKAL/oTijc6sO10ZcDIqWEaLouIPFGffjRxstw1jA3CJG1etd9U321CmrByEjzkz++cIibVlYwO6
	ljSz99C4GQT09Hs4QH3Dk46IetsHOLs4vM37jhzdhaj5u4ZlZx66F0heFgdnG54uwX2qv1t9+4QIO
	A2Zr5L0fLIBxjC2RtdxbIl0KNiFqeISMtUS1hGhFgSCJ4IKP/mcNu1lFAerWrqIXGhIFxlO4dGFKD
	A5fpXyPQ==;
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wV8VM-0000000EOtD-2WgR
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Jun 2026 13:53:06 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-45efa80e0afso629958f8f.2
        for <linux-rockchip@lists.infradead.org>; Thu, 04 Jun 2026 06:53:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780581183; x=1781185983; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WLUAaZps1w8Jl8h4U5vkB2L5GVDJaAP0Yeaa4HLYIr8=;
        b=hYxBYHGF4Ztr2aF4EgtKRGS21eNaPZMRY2ABklSuYwI0D5VhmqfgBvkyIqvfG2/9Or
         l2rmejNxQXrUam7RfCeGui7mb+rTLr3ChERghkJ6NdZndDemT6b3Zp4063j6571HjbbQ
         KoAGbChHzN/vp2UihrpCGVQv4gKaDRnFqERRUeUi2rUDbOJx/fI0oGf45158L1saj0Jx
         OjPzDDapzbbDP3YXLaaxj4fXB8Ry7ssLkYO3JOIztKFE+vMUjIfS6HLvQ2I5PxRq16Ff
         ab3+2JHGhHpnWXg1v45dm2jWAbbHlPiDHFTjfkIID0hLaHpGFOxdDtMOjRCtk2og1jMH
         pIfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780581183; x=1781185983;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WLUAaZps1w8Jl8h4U5vkB2L5GVDJaAP0Yeaa4HLYIr8=;
        b=FtHTohdKHLgrzq0qtZ+G1/WIbHnedH58nFcO892gfELQsaMcDSOSJiYtO289+H4/5y
         vQVhZIL7hBmtpJpWb5R0ETINzakkTmliHKs3WHbwf/7ETHc7WwuHrOWBTI3J175x+wez
         mtUWDW6HLsY6QpqF7J7yG7OT30D99W5YFVy/H8BINkO8oM7gLlsQ3vqBvB4pyyTwcuKv
         I0sJZ55u2V9YN9/xcWsIelqOTWl6fuZfnwqpI82cImfn0EWcaIc2M3Wb/1w+QCNyP46m
         m0RqI+DqQ2iGj3UvoWk07f0gVZGtCzodkJfzdBrA/fwAmZd+aVWDSnXjQ3d4+9QGTv1f
         /jUw==
X-Forwarded-Encrypted: i=1; AFNElJ/fagHSncx6zUB9GxD6G2G6PWu5XwKLfVQvTHz3NTOHT4KCR0HN+lxnAPNnrJISa0ASxCYWya0SmWb9jk26yg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxc8tJ+EF35YFriNqF0tj0fJK0Co6Kthy7suq+TreNarJWS8TSz
	6jTOccd7poGtCfFf1cUC/JRM0MTZyU+Wa6frWd4wk3VcpwPVwzdB1n1H
X-Gm-Gg: Acq92OGemzrrp1UbPrVnUQCV88IbOtNcAf6w+jWbnhD+wHSAtI1B7/6uWcSAiFiMvtN
	FxUuQwfG/2+qqbmB6ClNu16afV/qMJnGkSJEoBGeV+EUsmZi/bVaHnJodvYaWjAG1dHU1iIDG7f
	pmjnYZr1nw6oJaxMXVDr2vyJZ1VclAwEyaGb3XGdH5rdYTD9NziUuRBeUwP6PakSIburPJfxOy9
	G9YzkoAD0v5oarifhOwfLRuIbyi4cucSqzZcMiyCeor4T/x+uA6M7CVN8D4KI75Fy9kH9SBpG9G
	TBGTYub72eYUUGk4qG6VJxM9so09+SzgBo+kEcsFVbfNlXe3KrsqdIUnWWZJFFHxt/y9VALsX6X
	Eejk7/CEYf1TiyoGkzTls+yH1CCgu0y3ypFkP4vThdZpJLvvnUtgctDeQCrrjbJMqmgdSWveft0
	DG7lIwMz92kIEcUOuuM+Ykj+VSRVS57cY7XEqYU3V9RJdMhICECzRgkZVVEpTkILY=
X-Received: by 2002:a05:6000:982:b0:460:2d57:fcf2 with SMTP id ffacd0b85a97d-4602d58034emr3094425f8f.10.1780581182959;
        Thu, 04 Jun 2026 06:53:02 -0700 (PDT)
Received: from compiler-rock3b.tailb81abf.ts.net ([2a01:e0a:104a:4d80:be24:11ff:fe12:2776])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4601f0a43e9sm16661068f8f.0.2026.06.04.06.53.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 06:53:02 -0700 (PDT)
From: Midgy BALON <midgy971@gmail.com>
To: tomeu@tomeuvizoso.net,
	ogabbay@kernel.org,
	heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	joro@8bytes.org,
	will@kernel.org
Cc: robin.murphy@arm.com,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	iommu@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [RFC PATCH v3 7/9] dt-bindings: npu: rockchip,rk3588-rknn-core: Add RK3568
Date: Thu,  4 Jun 2026 13:52:53 +0000
Message-Id: <20260604135255.62682-8-midgy971@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20260604135255.62682-1-midgy971@gmail.com>
References: <20260604135255.62682-1-midgy971@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_145304_736520_054A34DE 
X-CRM114-Status: UNSURE (   9.05  )
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

The RK3568 carries a single core of the same NVDLA-derived NPU IP as the
RK3588.  Add its compatible.

On RK3568 the NPU NOC bus-idle and power gating are controlled through the
system PMU rather than a dedicated register block, so add a rockchip,pmu
phandle to that syscon.  The RK3568 NPU has no dedicated SRAM rail, so
sram-supply is required only on RK3588.

Signed-off-by: Midgy BALON <midgy971@gmail.com>
---
 .../npu/rockchip,rk3588-rknn-core.yaml         | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/npu/rockchip,rk3588-rknn-core.yaml b/Documentation/devicetree/bindings/npu/rockchip,rk3588-rknn-core.yaml
index caca2a4903cd1..af9936b32e9fe 100644
--- a/Documentation/devicetree/bindings/npu/rockchip,rk3588-rknn-core.yaml
+++ b/Documentation/devicetree/bindings/npu/rockchip,rk3588-rknn-core.yaml
@@ -21,6 +21,7 @@ properties:
 
   compatible:
     enum:
+      - rockchip,rk3568-rknn-core
       - rockchip,rk3588-rknn-core
 
   reg:
@@ -50,6 +51,13 @@ properties:
 
   npu-supply: true
 
+  rockchip,pmu:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to the PMU syscon.  On RK3568 the NPU's NOC bus-idle and
+      power gating are controlled through the PMU; this points to that
+      syscon so those registers can be reached.
+
   power-domains:
     maxItems: 1
 
@@ -75,7 +83,15 @@ required:
   - resets
   - reset-names
   - npu-supply
-  - sram-supply
+
+if:
+  properties:
+    compatible:
+      contains:
+        const: rockchip,rk3588-rknn-core
+then:
+  required:
+    - sram-supply
 
 additionalProperties: false
 
-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
