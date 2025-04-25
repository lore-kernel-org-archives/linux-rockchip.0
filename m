Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3921DC369C2
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Apr 2025 16:30:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PWM4wlFas1ZHiqnfoVLFSkoiydLF/4Kn3YcADfTlF7E=; b=qHNCaH2z4WSlvT
	o6JQuoGbNiSyESH3505dJBgz2qKsNYjZiZSAmFQfCijcPAa031FRiSd5zhzqcesQybriqqXek7mu/
	cHiC3sNs42tQrbIOYHKWWv9+hOph7IGzfdCBGKZit7aKN6CWZVfdx0jfSLW7B9RMFRuvdh3JlN/m4
	nHd5qnae8CwFnHmw5hg5lQ/ANgG7KlAjyNlLXSgSUQ14TAMAXzc4yTO+w7c9qgEhM4hido6/I83fQ
	2kT0E2ErX6/NYB1zhpkoKKbi3BbTNQHAY1NL8lzdCp8ZiTU0TcZLABFAU7PPFCok0g8SL1E2FBWoJ
	LRZY8u/3Bkm7cBR4rhQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8Lwf-00000000E4W-3wVR;
	Fri, 25 Apr 2025 16:30:33 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8KpE-00000000146-4AlC
	for linux-rockchip@lists.infradead.org;
	Fri, 25 Apr 2025 15:18:50 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-acb615228a4so595312866b.0
        for <linux-rockchip@lists.infradead.org>; Fri, 25 Apr 2025 08:18:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thaumatec-com.20230601.gappssmtp.com; s=20230601; t=1745594327; x=1746199127; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PGhABSDncyCkqMF1m9WG+uwjNnjeaT93SjRTLfv5Zno=;
        b=JpgYq5Jqq+rqhNyo4YNNRsuCU0kc/71ug705O+ClNtyA01OAtGoZb/2w4ZPrZZu00D
         +IykjqTC0ofkxA8RbDDDlOdES+LcJ6r3iEISTKDF22XyE8ammS+6WA+zdXuBGn+XqA3L
         0kDzpDVtquhehFqKXQVAADYKtJZKUWKw433aX/xNvbCXuuf2WPKDCRar9whqAh3kr/XW
         iZBvYjql5LIoEOqtC5vJuin5gcybi3wMXIcyJNGBgj30HBUss6Cq7jxglwMYcxLSenbr
         pouOOu+f6FMzkmLtt8haxOevyW/yBv40MYNhFYF3eBlzDGOLrjU/lQRh8G5CfxwTWHqU
         LbjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745594327; x=1746199127;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PGhABSDncyCkqMF1m9WG+uwjNnjeaT93SjRTLfv5Zno=;
        b=Yk1IvcUzCNv92B3Q2ts+OaHdSRyMu/ExhVZlFuwyp3uCw59wzIyz9heYz9t9Hzs6Eh
         lFCXXrsQdUs9HeUfLsC6+ZxrU0mtl31xzyfXQZce7olQwG3ix+SAoJJWGDe9gW7CFo6J
         7XYy026QLpm6acVxx6QU4x5lb1BzyfbXH9REaR7ck8i8lriXI0bIx0Po7dhL9boTL5vN
         mj9JPouMLAkTEjqZnKOoUiP0z6aEdmvity7QyoZGD0/P2JPFyeJhwhKid3AnwaeTmmuK
         xFh59HqfkQBOygYxoIWazOWWZlJjUsVShVc+W4ui+TVf4nNJjyaJKZbmKrwi38qI6dZ5
         rtGw==
X-Forwarded-Encrypted: i=1; AJvYcCVk8/JWEQJmWoludnZh/zMsY+KlJsg0npyhfewG/hKDx1/X/2tJo/Dqyn+1jv9xu3g3qKEcK3Az4eQYgbJ6PA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw+2p9dltcVkMfYBn3QXfy1UCJjgOB6TanNfPLa03A7e8/YtsUQ
	xwLY9QCY+Q8bnIxjUpcqRjTlzY2TyVbJCijwAeezr8gFzUUIhPmKYbHd+242A2s=
X-Gm-Gg: ASbGncvti8zMIfqYLohnLZXrltPDEOMd7uTLmLSfFVKv30VqH1XVHdp9weR01dMjJxk
	nO19a9xgnfWZdBK7RS2WAPVHk5GnhYJL5Kp5rz+/7/fjnkPn5njGzzmKO6hxjRuyyQIQ6Ht9qPV
	oq2uBZcvEj9aO1GbETF/Iyl/RUPJx/J7Zxqo1xezsTuHE51mZtbNvhA+H/CJ9WjoQ6fZPTsrYmQ
	1NaNQGUP2TwNgJQeVFsPnwjZ2rR0RSbh/IwS8sE89sC4QQA40ad2rumi54FkvOuTzPXsNSQfUm9
	5UrA/MT6QKq8JnjhuJU/ekou2y3srDrPO7kCckeaU9u0nFq26WJCjhcTYUzDvKybXUYj
X-Google-Smtp-Source: AGHT+IHtzafs1U3OlDFbdl1EHKhqDpSLv5FVfv0SchkozUHNmBnUPWs9GEdrQlZ8/5oMkLAgq6/HDw==
X-Received: by 2002:a17:907:72d0:b0:ac7:e4b5:4827 with SMTP id a640c23a62f3a-ace5a484e6dmr564732266b.28.1745594327250;
        Fri, 25 Apr 2025 08:18:47 -0700 (PDT)
Received: from [127.0.1.1] ([185.164.142.188])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6e59649fsm151099766b.85.2025.04.25.08.18.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 08:18:46 -0700 (PDT)
From: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
Date: Fri, 25 Apr 2025 17:18:07 +0200
Subject: [PATCH v2 2/5] dt-bindings: usb: cypress,hx3: Add support for all
 variants
MIME-Version: 1.0
Message-Id: <20250425-onboard_usb_dev-v2-2-4a76a474a010@thaumatec.com>
References: <20250425-onboard_usb_dev-v2-0-4a76a474a010@thaumatec.com>
In-Reply-To: <20250425-onboard_usb_dev-v2-0-4a76a474a010@thaumatec.com>
To: Matthias Kaehlcke <mka@chromium.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Benjamin Bara <benjamin.bara@skidata.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Klaus Goger <klaus.goger@theobroma-systems.com>
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Lukasz Czechowski <lukasz.czechowski@thaumatec.com>, stable@vger.kernel.org
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250425_081849_028366_91F5A619 
X-CRM114-Status: GOOD (  11.37  )
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

The Cypress HX3 hubs use different default PID value depending
on the variant. Update compatibles list.
Becasuse all hub variants use the same driver data, allow the
dt node to have two compatibles: leftmost which matches the HW
exactly, and the second one as fallback.

Fixes: 1eca51f58a10 ("dt-bindings: usb: Add binding for Cypress HX3 USB 3.0 family")
Cc: stable@vger.kernel.org # 6.6
Cc: stable@vger.kernel.org # Backport of the patch ("dt-bindings: usb: usb-device: relax compatible pattern to a contains") from list: https://lore.kernel.org/linux-usb/20250418-dt-binding-usb-device-compatibles-v2-1-b3029f14e800@cherry.de/
Cc: stable@vger.kernel.org # Backport of the patch in this series fixing product ID in onboard_dev_id_table in drivers/usb/misc/onboard_usb_dev.c driver
Signed-off-by: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
---
 .../devicetree/bindings/usb/cypress,hx3.yaml          | 19 ++++++++++++++++---
 1 file changed, 16 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/usb/cypress,hx3.yaml b/Documentation/devicetree/bindings/usb/cypress,hx3.yaml
index 1033b7a4b8f953424cc3d31d561992c17f3594b2..d6eac1213228d2acb50ebc959d1ff15134c5a91c 100644
--- a/Documentation/devicetree/bindings/usb/cypress,hx3.yaml
+++ b/Documentation/devicetree/bindings/usb/cypress,hx3.yaml
@@ -14,9 +14,22 @@ allOf:
 
 properties:
   compatible:
-    enum:
-      - usb4b4,6504
-      - usb4b4,6506
+    oneOf:
+      - enum:
+          - usb4b4,6504
+          - usb4b4,6506
+      - items:
+          - enum:
+              - usb4b4,6500
+              - usb4b4,6508
+          - const: usb4b4,6504
+      - items:
+          - enum:
+              - usb4b4,6502
+              - usb4b4,6503
+              - usb4b4,6507
+              - usb4b4,650a
+          - const: usb4b4,6506
 
   reg: true
 

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
