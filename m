Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D066DC9832A
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2026 14:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K35iWtB6PS9qMsEQq2mauEjwxgN5XxvCCs1lNdG3XBc=; b=Am4G03W9pCgDkC
	fZrYOvVOE6+hsZf6sDPDGeYGN4yKHkSoUjYYl+/aDwXbunqyw+EIQvj+l3ultzU77MP78YNU6rutv
	n5WjhCznFlg0bFcPAbx5vITaHHdeXfpVikhimm5d8v8EJLq7fWkbIfsyXyAupRmP71hWNu3zdkb5L
	xhqVEuTxIuJOoQRWj8uR3rZ9eqpvEF5RUS5NNrnul10uxWoFCm296ASuSMy1S2MjlxkGgScn3vSgG
	Whl4I0c4/m4FGML3pTqkXwHOTQKmzh/DLVlBtIl0u8fjw+F4+PGh3aaE24GumiIV1ATnTRrJ/UNXQ
	hQrO1ic9AlU9Ou/UzjrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBYUA-00000003kLk-3VZm;
	Tue, 29 Sep 2026 14:07:10 +0000
Received: from mail-pz2-x0e.google.com ([2607:f8b0:4864:3b::e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBYU9-00000003kKA-0UVu
	for linux-rockchip@lists.infradead.org;
	Tue, 29 Sep 2026 14:07:10 +0000
Received: by mail-pz2-x0e.google.com with SMTP id d2e1a72fcca58-86dd69a1b15so866422b3a.0
        for <linux-rockchip@lists.infradead.org>; Tue, 29 Sep 2026 07:07:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790690828; x=1791295628; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=FDqj1iQwJZUY/2vPDH4xvwzMNQEpOpP9aM8RQ3PhJ9k=;
        b=AreyUwuM9acNxwCTtRUB7afDR5osKNldWLHCu4jAeo5IK5iGTEwtI1d4eJvCBhFUek
         ttnnXiMSy5znGBLYSNxXYjNAyGx+vZ0JNEi7lreQgwMreKHxf6eCIQR48YCwdwESrnU4
         1EvXCR/lkDrqs/nRMpnGubBxQ/Nhu1hwPYeQDRL5WynNmlNn9wk3quywVlAuLzOmFJpO
         k55YOC+lh1QiRPIzaRxVlvYM5CQDIhJfMdQpzODGBAdaAXm9YFWD7L0Vy/r+KlKccU6e
         M0jMcksDu4MS3CfnMS1pMkAwZMGfXnvIma/ueQ+/hBIE/D5g3Yx+MREOAHDPdCezfIbJ
         kx0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790690828; x=1791295628;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=FDqj1iQwJZUY/2vPDH4xvwzMNQEpOpP9aM8RQ3PhJ9k=;
        b=fhXEIG4FbYJ7TNldLyyyguilLB3jnsB4qmshUiOLAUdCnPgJEBDXiYMuDgCrGjmrTO
         XHD4DhJ4Bptp9ixJ+GHwSDJJHPiH91N4v9x+Z+U8k9BfpfPCeiWEshQg7Wy8BPYeNx2X
         v1WxyOc9/mPCpAe4m30EOERLGDyKPpTDoWYbcoFBnfM/4qpHvJuibJS9TQ01+HfLd0kn
         Pk++GoHvdDYoA01NAeM8OMqNH1MNHFH+7IlAWTPBN5Jp/7Eg1T4jHjJ+NS+O3VuZu0iy
         fLAnatxi3sKsuBn+IRJZkXCZyMjNud5oKGaemAfBWZ2phbRxAmXR0PfS/PH6USPjJoCP
         PXNQ==
X-Forwarded-Encrypted: i=1; AKwUvBzEq9AELcaHPNyU7JXRggka4OKWSzE7+bp0ZJLQamKluABkI4Dlz7LR5jVaMlnQSzcSTyE09SPCaH8TMjg/XQ==@lists.infradead.org
X-Gm-Message-State: AFuF++nceZ9FITF3iOv5mMQQSx3hzhWrmEvw3iEBUklYPMZssGjLIDBe
	6LDoN3ofY8AOs/eCv4d6qZthG6CNdbPHtmY8u+zprZfktgTETqdMRk7/zMNukq4ZUT4Jrg==
X-Gm-Gg: AYBFou3vNxB9zRMEHBKMIi5XhFNiFm8HHZdzO36n25p67wbcIhjcRd/AI8hNhs3O1Z5
	HbAKgv0meVhix5FsztP8opJycrOmnFDaxhoDO3GuOiX15A8vHf4WOfX/IS3FGL8MawbeqHbzimq
	AO+f+KQz5skU6xgvEfOXNvprD69o48E9BC1qj9/Yb8pQ48aPgqnIDQG/Id1WpSZ2Up+/w+4e7V6
	0VFdHEoq+VivutMZEXZjEKqRxuE9qzOzCm17liTTkTsqQo8cvVN1uRzResBfqHZBZW3a+/FCFDO
	/SYPW3ar59uGMfgRdgr42wcjqg1ECWRKNiC29fdZYINwCaZ29rtqIDFxB+9ccvqi0dUq4hNyOdS
	F2JcJDw3GUjfqJ1Q5qp69bqFMfMJ9nyqu4hSe0uqg/27IEY5UTAa9JadiNhwQSu0xfTA7GbTgas
	rcJCgUiPFVXzeaFn7FjYN9PJ3A4cdSWf6QTJlcTDJInLMuZbd6BezOQJ/BPityrlooscH+KZeaG
	D5lsaBb/7w=
X-Received: by 2002:a05:6a21:4d02:b0:3de:5897:ef9d with SMTP id adf61e73a8af0-3de7c889886mr2099166637.0.1790690828140;
        Tue, 29 Sep 2026 07:07:08 -0700 (PDT)
Received: from Aaron-M6 ([188.253.120.162])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cc7b0f4ab05sm3526989a12.29.2026.09.29.07.07.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Sep 2026 07:07:07 -0700 (PDT)
From: Yaozhong Li <yaozhonguwl@gmail.com>
To: Lee Jones <lee@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Zhong <zyw@rock-chips.com>,
	Zhang Qing <zhangqing@rock-chips.com>,
	mfd@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Yaozhong Li <yaozhonguwl@gmail.com>
Subject: [RFC PATCH v3 1/3] dt-bindings: mfd: rk808: add board level power hold GPIOs
Date: Tue, 29 Sep 2026 22:06:46 +0800
Message-ID: <20260929140649.55-2-yaozhonguwl@gmail.com>
X-Mailer: git-send-email 2.55.0.windows.3
In-Reply-To: <20260929140649.55-1-yaozhonguwl@gmail.com>
References: <20260929140649.55-1-yaozhonguwl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260929_070709_182119_BCE33714 
X-CRM114-Status: GOOD (  12.97  )
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

Some boards route "power hold" lines from the SoC into the board's power
circuitry. Those lines have to be held asserted while the system is
running and released before the PMIC shutdown request is written,
otherwise the rails can drop and come back up instead of staying off.

Add power-hold-gpios to describe those lines and power-hold-delay-ms for
the settle time.

The array is bounded at two entries. Firefly's vendor kernel handles
exactly two such lines, pmic,hold-gpio and pmic,stby-gpio, and its board
files use one or both of them.

The lines are released from the PMIC's power-off path, so they are only
meaningful when the PMIC is the system power controller. Require that,
accepting both the current and the deprecated spelling of the property.

Assisted-by: LLM
Signed-off-by: Yaozhong Li <yaozhonguwl@gmail.com>
---
 .../bindings/mfd/rockchip,rk808.yaml          | 27 +++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
index 50dfffa..9120222 100644
--- a/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
@@ -43,6 +43,24 @@ properties:
 
   system-power-controller: true
 
+  power-hold-gpios:
+    minItems: 1
+    maxItems: 2
+    description:
+      Board level power hold lines driven by the SoC. They have to be held
+      asserted while the system is running and released before the PMIC
+      shutdown request is written, otherwise the rails can drop and come
+      back up instead of staying off. Only meaningful when this PMIC is the
+      system power controller, through either system-power-controller or
+      the deprecated rockchip,system-power-controller, as the lines are
+      released as part of its power-off path.
+
+  power-hold-delay-ms:
+    default: 0
+    description:
+      Time to wait after releasing power-hold-gpios before the shutdown
+      request is written, to let the lines settle.
+
   wakeup-source:
     type: boolean
     description:
@@ -113,6 +131,15 @@ properties:
         unevaluatedProperties: false
     unevaluatedProperties: false
 
+dependencies:
+  power-hold-delay-ms: [ power-hold-gpios ]
+
+dependentSchemas:
+  power-hold-gpios:
+    anyOf:
+      - required: [ system-power-controller ]
+      - required: [ 'rockchip,system-power-controller' ]
+
 required:
   - compatible
   - reg
-- 
2.55.0.windows.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
