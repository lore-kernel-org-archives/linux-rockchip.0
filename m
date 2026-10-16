Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 278CACCA464
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2026 10:30:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=98aMJW8A9C1OY961ysiKPLYbPDG2m1QXZMg4i274BGk=; b=rttmElgd0Jtzs0
	Vf+lNIPiOTcz10Fe5+gDfKo/z6C+1iWvqMqKDoZtXrTTJ9YGsL4AqMUlCYzBvztp7e0LZ1jsGX/ji
	L/FT2K7rd34ZY94HmfbXSdT2LYMMrgB0Op+1OkIFg56ATtLrW9rgp/BXRMkx/kS74bPKD17AqGv3l
	3HddrCi4EElms5H8pqgVat5Q0wP7/Bl5mAYlI3ZNAokS2mVs5NS/OmLmZOnL/mEg7t2jowwgCFh2l
	PUvrkE2ZFrSb9eZT8FJX7sMzWZlyjRwMglsguM/7Q8k8d/UMOPTNtIgoUN8PnAC8JHULJrcJgASmT
	+MCxvgYpWs+3Yo3M3iIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHfCu-00000002chG-3QCD;
	Fri, 16 Oct 2026 10:30:36 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHfCs-00000002cel-3j8i
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Oct 2026 10:30:35 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-6b1aa27963eso1330645a12.1
        for <linux-rockchip@lists.infradead.org>; Fri, 16 Oct 2026 03:30:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792146633; x=1792751433; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=2bKjwQPxfej5CEalIEgEN/iRfsSwjtHzCvEmFIdw6Pg=;
        b=LJYqzQ92KWqyTTNDl0hkVts4MOv7tJ3OPwaQjOaCvJsj7ScYqOAlIM2ZswUuax83VT
         jNhmf2X5CBvTmMpzUSnSEwC9G2dmX+eQX56TqzfqZtyUYYqGG5WHl6mj31C23VFi04Ke
         zPXlbO9O7WKa0dpAXNXTqaHn2RDp91dPOm5cPD9baCQO61IhxAuZSlsq1wAqFw92UH3G
         p7JTl4TQoZ/52fuPPRU9gkKp9FUPOyEQ9HjfnR+MgbNxlCkzQFb5REIzQAdHHamnSbMP
         tk0qEAQJL1Vwm9jzOVt7SYGjZF4Esu8X7eWr0XnhYEB1crTNfBgnwG7tPgI5El/BzYc0
         ve8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792146633; x=1792751433;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=2bKjwQPxfej5CEalIEgEN/iRfsSwjtHzCvEmFIdw6Pg=;
        b=o/csJswV4li2LuVsf0TVMf06pCZHlZMz5FQ2qq1GTlGkBiLzskT9M9/ixGzcillwo0
         M9TvmNaS+iIk8QC8PK48risIla2kZZXqkn+cviTN45jsw1/4h4SWPpteZvd/dL7s0GHy
         2pmZK5lCfCpvdMzsL8qWtTvSI/NwVrBOy6vA4cDqER1gSFtZ2oI0tQbFdISdmiQkOue2
         Lcczi3kjkjglDs6urCtfhQ77WtpVHJD4KUdU1U6jOyMpYvCrBr7xPV+nCsoeOLEITjG0
         E6etma9IiH+i4htgS3HfaBMS84cwXknDkypVNSrtaSHpSU+7yX0MurXsnHh0qKd2z4I6
         kFdA==
X-Forwarded-Encrypted: i=1; AKwUvBxgvtU9Vw7gAbT1HqyAsz/bc/UaueDhuoyeLpPxRO/kcK7rgoROkOIOR3DC/ls5fWJQdYfwFWUSJs/31irjCA==@lists.infradead.org
X-Gm-Message-State: AFq9FYKQsZb425rtoipBg9CK50wCK4FpkU/rRmF6zcuKh7QzL0resXre
	NgUTtOx17arNjTlL/32mjXmhnGshV+9W+mKnRketYS8mLuI8jMV1AfYE
X-Gm-Gg: AYBFou2Xm50G36OmD1KgNkcceAi/iW+WY9PVoRQeKw8PDo+Pd7jvcoNOdhUK1TEn/Ue
	QnWyJBAO/CrbRz2PfScAOs/rP/kUq+Svf2DwILJr5eZf5gGVDrPZ1/ebjFziMCMfUAcWq/eY8xp
	f+zu1ejvfkP7ZMN4m74mZRhIRicERj8Fss07gNKVLCXWel/IC5yTwGxCHq1dxh5mKMLozqOlCk5
	FpFA915HGU8zh+D36stiQeBoM7oevyPflsmgwK8kJMMYCaImT1pec+mR5fGOrBqkqqWJIrwXbwx
	ztOVxn9tjAyIT74qwVIkIfqSLauy26HRmqqd+P9sQ82W/Re/2AvRqz5UZDOJFnLN4jagD6+E8Vi
	InhmZ8j+9DHuQal7U2ulQJV4Gm4IXQxWU4e8bsURT3uImTyHOCDK0pcdvawZpK0T7DN5vfBOTqq
	zOsTwb1n+2uOuDFbiPXEIpi6l60W/6DE3EBH2RyUqFNqNt8rqIhI7WqLP56E+v6dOVPWC1q0jv+
	qNPtSeMWeCW
X-Received: by 2002:a17:907:86a3:b0:c31:6fda:52b7 with SMTP id a640c23a62f3a-c4020eedba8mr234447766b.21.1792146632831;
        Fri, 16 Oct 2026 03:30:32 -0700 (PDT)
Received: from localhost.localdomain ([193.107.16.241])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c40912ce133sm60613866b.31.2026.10.16.03.30.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2026 03:30:32 -0700 (PDT)
From: Dmitry Yashin <dmt.yashin@gmail.com>
Date: Fri, 16 Oct 2026 15:29:33 +0500
Subject: [PATCH v2 1/5] dt-bindings: net: rfkill-gpio: document reset-gpios
 property
MIME-Version: 1.0
Message-Id: <20261016-ok3568-c-v2-1-068d68430e6d@gmail.com>
References: <20261016-ok3568-c-v2-0-068d68430e6d@gmail.com>
In-Reply-To: <20261016-ok3568-c-v2-0-068d68430e6d@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Johannes Berg <johannes@sipsolutions.net>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Dmitry Yashin <dmt.yashin@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792146625; l=1639;
 i=dmt.yashin@gmail.com; s=20260930; h=from:subject:message-id;
 bh=gxIq6ifytR/JAI05/Wxbb2mz24KshSEfWdEtAzkQt6Y=;
 b=VbqmIKE9xA/W/LJMZES0LcVcRSUOVVY2CefAm9neUM3UYLCdrjlwuk7AeZQMIAGrmt7q54X5W
 UzhAtJ28ZoIBby0Ort5ufWzrkitHUI6oxTUyh4O2Fn91/s2EoQEi5Y9
X-Developer-Key: i=dmt.yashin@gmail.com; a=ed25519;
 pk=vBe9jaaOEH5bQEvfzb1tWOlz3AMIcXCu/GL/CdlwJco=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_033034_947678_3A1386D3 
X-CRM114-Status: GOOD (  10.14  )
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

rfkill-gpio driver requiers at-least one of the gpios to be defined:
shutdown-gpios or reset-gpios. Document missing reset-gpios property.
Also add example for wwan with both gpios.

Signed-off-by: Dmitry Yashin <dmt.yashin@gmail.com>
---
 .../devicetree/bindings/net/rfkill-gpio.yaml       | 23 +++++++++++++++++++++-
 1 file changed, 22 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/net/rfkill-gpio.yaml b/Documentation/devicetree/bindings/net/rfkill-gpio.yaml
index 4a706a41ab38..66f6ad2872ff 100644
--- a/Documentation/devicetree/bindings/net/rfkill-gpio.yaml
+++ b/Documentation/devicetree/bindings/net/rfkill-gpio.yaml
@@ -29,7 +29,12 @@ properties:
       - wlan
       - wwan
 
+  reset-gpios:
+    description: GPIO connected to device's reset pin (RESET#)
+    maxItems: 1
+
   shutdown-gpios:
+    description: GPIO connected to device's shutdown pin (W_DISABLE1#, etc.)
     maxItems: 1
 
   default-blocked:
@@ -39,7 +44,12 @@ properties:
 required:
   - compatible
   - radio-type
-  - shutdown-gpios
+
+anyOf:
+  - required:
+      - reset-gpios
+  - required:
+      - shutdown-gpios
 
 additionalProperties: false
 
@@ -54,3 +64,14 @@ examples:
         shutdown-gpios = <&gpio2 25 GPIO_ACTIVE_HIGH>;
         default-blocked;
     };
+
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    rfkill-wwan {
+        compatible = "rfkill-gpio";
+        label = "m2 usb wwan";
+        radio-type = "wwan";
+        reset-gpios = <&gpio2 23 GPIO_ACTIVE_HIGH>;
+        shutdown-gpios = <&gpio2 25 GPIO_ACTIVE_HIGH>;
+    };

-- 
2.56.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
