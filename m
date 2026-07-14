Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A977C4450A
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jul 2026 19:26:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9O2PhNiqZhj24O74OIiYVjCn2puaQZ7Rd5aLNF7erpQ=; b=3mvXFHtsN3puLZ
	kflW0Dh22aai4swqYWev9jz4GMyg7I0aKAdPQP4WpsFaYW98Awb8qr5BpvORUtBZI+bUOVk++17Un
	q7RdvLPrE3s7PQtSIKlhBlx7GsCjKTItJABm46HfCL2wWcEulCxLghXSokHgjK0n47U52sJat1LeE
	Qt9HFjmqBycp/f5mFkGpM4zEu6WCpsNwvd1hBZbHk4db23UbRqByvvIbYp8/TNY6UPh8+i+3fpxmC
	92o8qESeaU1wxvNc/kL4KLUR3NENCecl9cHkNFhvTYdHNwgrTC+m5rQYwGiZnHeo0E/Pn7X6CDO/T
	/xhNrswIIOjO9OO2p/3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjilW-0000000D2ZQ-0P2C;
	Tue, 14 Jul 2026 19:26:02 +0000
Received: from mail-oa1-x31.google.com ([2001:4860:4864:20::31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjilP-0000000D2VM-2sRK
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Jul 2026 19:25:56 +0000
Received: by mail-oa1-x31.google.com with SMTP id 586e51a60fabf-44868d6a066so1383805fac.3
        for <linux-rockchip@lists.infradead.org>; Tue, 14 Jul 2026 12:25:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1784057154; x=1784661954; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=QETVa7/EiIqTvvn2j77guxH/5vJlcjsNxn4OMO5PoXE=;
        b=d/PzqeK2b8ENogVrDObWtu5xu7oXz6U3KSdyTXxtNrv7IgkDtaC7UaOcGM1/+rM1NS
         Oa6j/MQTFov1lSOhHpKlsDrEAVMRUHDJOKQTeC4VBJFoy+JUYl6107R/0QBf8hkPnmlk
         t30zI3oTDpNhFGvYi/9+8JWZuTV2N4GoiIc5w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784057154; x=1784661954;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=QETVa7/EiIqTvvn2j77guxH/5vJlcjsNxn4OMO5PoXE=;
        b=mhB5ZUklZam0sB/mpSn0w4mx1JPL75UiP1wtubJumukzhBofkcN34zkWpNxpK8ZG3/
         h11MGQs7PbaLYYB00um7iyESOWEAbPFrOWYWMfcR9NdNb4oXDG5aHSGDuyfYcDB5bAMt
         4zzTi9CvvC57qJjmxtbnoYtX9NLCnnxZJtL7hOtUbz4knGfllxW+E17q4qJ5ImzP4H0m
         h2vwYImY59oy9VBbheHA4UvJWvb7z+gyHzNmasvLxlFTFZyHU5hb9fB2c6GmVDj33n6N
         UrxjzAlNlc/P6ZNffnGtYSd3rjRr8bqRbLPeX3M71TjvKqatpC1b34WfRc//yZbZmSYg
         N5Tw==
X-Forwarded-Encrypted: i=1; AHgh+RrLP7ouS7Kg86ikykmyX+DHXrvnfn+VCjKQge3W0vXif+fkCgjSLmCA/OANjYzUy2XeYiFRXXnDd6QDN0hAOA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzip24I525+IVbnSo4HQHKsTNsldARS9ZA3JHXJ8ySbmBRbfToJ
	+Xl2vjZa65ac8F/kOBALTgoizTY7jLc4Oy57OtlGYFNSIv2bltVItQxpf+M/P9KPPg==
X-Gm-Gg: AfdE7cmt1oAiLt1uc+3lqjQ9gd2at9zmcys3TfI7h/Onp3O2yv5aRWHKu1VrQz2wW3I
	HEF8i0RPI/iKHCjA5q2G3kS26vxzlNgUrCPrnJT5PwCdp5chn/Z8jj2OxYiWgi4cclgD8gB4ceB
	M4vya4z78X+uqUCvSs2wqnEE5VCdZsywsv+NZr3gEqp876b+pkDVhyIQ9+6bJ9BSguLnBqJjaUp
	YgUyKgOSXcnR6tjXErj8+lAJZtU2GVVQfJdlGtXw/RmdnD7QmOOsHZUlIh65qShcfpmFmi4unSt
	XsDjVWx49JNf5pHSvSjuSw5boaSDcq8pVqQM4TPQrSSu0rAM3O+/3oht99sEBs3yZ+5X5x8y3MM
	L8Wo9vORI8tmPVrJZ9/w72/T3hM3m7wmgU9NAc3PWhvhiJooY0TUpnGJ/kdYPevWZ7PgiqGLvED
	bm46V1vDU=
X-Received: by 2002:a05:6870:171c:b0:456:550:95b1 with SMTP id 586e51a60fabf-4562b891d4dmr44356fac.28.1784057154639;
        Tue, 14 Jul 2026 12:25:54 -0700 (PDT)
Received: from chromium.org ([174.51.25.52])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4519d89f7desm15759043fac.7.2026.07.14.12.25.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2026 12:25:53 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: Linus Walleij <linusw@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-gpio@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Simon Glass <sjg@chromium.org>,
	Bartosz Golaszewski <brgl@kernel.org>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/3] dt-bindings: gpio: rockchip,gpio-bank: Add rockchip,grf property
Date: Tue, 14 Jul 2026 13:25:29 -0600
Message-ID: <20260714132531.v2.1.d04a89a3849323a0dcee2c701cba43adbb0523b2@changeid>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260714192535.2082729-1-sjg@chromium.org>
References: <20260714192535.2082729-1-sjg@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260714_122555_728553_1479920A 
X-CRM114-Status: UNSURE (   9.72  )
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

Some Rockchip SoCs, such as the RV1106, give each GPIO bank its own
IO control (IOC) register block rather than grouping the registers of
all banks into a shared GRF region. Add an optional rockchip,grf
property to the gpio-bank binding so that each bank node can reference
the syscon for its own IOC block.

Signed-off-by: Simon Glass <sjg@chromium.org>
---

Changes in v2:
- Add new patch for the per-bank IOC reference

 .../devicetree/bindings/gpio/rockchip,gpio-bank.yaml       | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
index bdd83f42615c..774e9c7de606 100644
--- a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
+++ b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
@@ -44,6 +44,13 @@ properties:
   power-domains:
     maxItems: 1
 
+  rockchip,grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      The phandle of the syscon node managing the IO control registers
+      of this bank, on SoCs such as the RV1106 where each GPIO bank has
+      its own IOC block.
+
 patternProperties:
   "^.+-hog(-[0-9]+)?$":
     type: object
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
