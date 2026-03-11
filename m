Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D368E1125851
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Mar 2026 16:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xkrCfMH/p78aBU3KbZqdCQUwrml2KPJAAhLG9gmFkmk=; b=42X93JiPPOmAqH
	O1p1ZuFfw4+lnbwIFGCDszL737J6isQ0KiSXulN9XSF25Lhc8SHLh8pMPnQWJcAZUBUejEMFZeGuH
	CoYNu5+SYnSlDcRroGaj3hzHv7Pmuu9Gfb4B6N4rHIwl0JGKSqDQfQ9vCy7pTRO4nIYCT7OAPn6M1
	4AmcaqTmkUaVROfqvLF6rQ1fPhWhtLBB7qrOi5/U4J1OjcH3Ct/Mgkjlh3zIz3Ln9geFOV8Gq/e8D
	vNNmwp4PKKT9lucyHgcY8zsm7JK7rSfKnc9r30sKos0DwRoTkV0uHWbvhOkDDb8fibhJGo36b4Gdt
	+M/cvAaaXdT/dmqmwXQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0MIx-0000000BuWt-33XK;
	Wed, 11 Mar 2026 16:21:03 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0MIs-0000000BuTY-3Ljj
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Mar 2026 16:21:01 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-439f5abc829so53765f8f.3
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Mar 2026 09:20:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773246057; x=1773850857; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Bzi3XIcBxTFWoz5//DP6Xpv7izpmnkI/JfV1bUZEMJo=;
        b=oOmt9SE6MZYPVzWvHzvGhNYRhwxi6hjCFr5pm1RUtxhd4z1G9XpsE3YkQbo+KWFEvD
         Q/bqc8lzvd0X9LrIW3A9G9jKYfSfU+3tbWy8zLsepmDWdvXvyf3EoLZSEihQuwCK772Q
         x5Z2R+jx8n5I8e3fa/m7OC4bq7NAvip9HeUp+wn7JZ2FKvDSIeRKZ3mwTPakK8D1NQ34
         ID44QAEtCM9aKdtp9hXxFEiX0OJQ3QLyxWig8lOBs/l8iHkxgYaGF/k+esNfrbmt4GTZ
         Pjw+vGaPkHZwCwqfQkZ+wCaqLAl4mKCv3NGJ8jMT9iSX1okGNEs0sTy9iro1MfWOTAsS
         qxaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773246057; x=1773850857;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Bzi3XIcBxTFWoz5//DP6Xpv7izpmnkI/JfV1bUZEMJo=;
        b=JdO5v82Q3nMegekzTeLg7RKpG4NlCVOVS/gVg8Ucgwwm7o55/ZPFjj81ix1uOA4ESO
         LwYzR7XnnTm7J4LJgS+UMna0OXvpm6McV/6pvmcu0zgP16PDgDG6F4cBjz57KqcrXOsN
         sM2fJjNn6Eq3RVMiA7siMUg4NJ3p4qm7Spb7AyGJIBbSiiZbp/4MYi0G9JtK5jZQZsm/
         k6Z0MsMi2CBusO9UcQaWI/dmzidu5xy+Lq6SzJykx9r51SB/rjWvk8bkZ5T0ohBYNYOg
         SMPAlAqaerVgSRbN1AP7nQs8dNn0PAGWQSu+phH85QUIIHggKPFEwUg5S79BGV0PoKV/
         ow2Q==
X-Forwarded-Encrypted: i=1; AJvYcCXuEplHOa9dtmssXu9D5MyEZhY0tKqmbU7bsS1N1K9wYJiIRa4Fi6BBtx4gQYTwvBx0I9S/xr73HBzgO2O1WQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyyNEGkc7aGuOV/ABUItCzeAhiEQ+v2n+qrGUGWMoZoa2tj8hsD
	QWUgo91qpJmBjqGSgI2v7gEOUvIQfSKaHh4KGe4W+ZJ/NI0Y8um6PMsbm6R7rnxNIxc=
X-Gm-Gg: ATEYQzy04Y0q8LMP0AWDkvYHuvrNK3vI2lnzEWDNLewj5QoySRwAdaRcY15TZu21uHc
	nSKpNeX0CdBGjZaw4C/NUlOPjuiUVnoDk1WyGhFScvTreZPIGDoO9MDGAYLZNUa5lm3WSMrV7Tn
	seQOyneor5dv1HUDJmmiKynvfG/op+zkqD65EARedT0GbMn6iL440J2ZDk9QRZK3IVQm0VyEk+j
	mdyMpm5UTTRswWtR7EEu+4AzsaJGDswAJXk3RnDRSzgp+nH4uucHOmz7SYULd9ZydltuSJxONvA
	AdzhVYmws72nHVmJZDq9Vsvk4ydgffrIqbPPVOG/RvG9pcRGK7zFCgmjjgIgrDHkXrsUbz6uYfw
	j9iZFHrCA9C6FnHdr5czilfszqLHMPmnwivdclqBM0/Qe2oFWV6aW5hckquVC3jhZbbkXZNWpMm
	UNHsqbxYd6/mmhE3tiaVC/qxaZTN22neBawAFVrO2xIBQ9ceiJpeOWBnOmKBCs5AcsvKloZ8G8a
	7l+fA==
X-Received: by 2002:a05:6000:4201:b0:439:c78b:cbef with SMTP id ffacd0b85a97d-439f81f272cmr6543942f8f.25.1773246056849;
        Wed, 11 Mar 2026 09:20:56 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-86-98-192-109.alshamil.net.ae. [86.98.192.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe20b899sm283952f8f.23.2026.03.11.09.20.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 09:20:56 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 11 Mar 2026 20:20:44 +0400
Subject: [PATCH 1/4] dt-bindings: vendor-prefixes: Add Hynetek
 Semiconductor Co., Ltd.
MIME-Version: 1.0
Message-Id: <20260311-husb311-v1-1-f25bcb58cff7@flipper.net>
References: <20260311-husb311-v1-0-f25bcb58cff7@flipper.net>
In-Reply-To: <20260311-husb311-v1-0-f25bcb58cff7@flipper.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Gene Chen <gene_chen@richtek.com>, Heiko Stuebner <heiko@sntech.de>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=957; i=alchark@flipper.net;
 h=from:subject:message-id; bh=KSJSNgctAT7J2Xo5Q/xEeeommaFbrWm35Z3cp49EY7E=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWRunJa8jPnruenhO4qty3d46i/c4Za8Xlp1wd9Dwl9Cy
 9Ljxdee7JjIwiDGxWAppsgy99sS26lGfLN2eXh8hZnDygQyRFqkgQEIWBj4chPzSo10jPRMtQ31
 DA11jHWMGLg4BWCqn21lZJiWauzu4HTcXMNidtGSk6x2WkHGOgHr3worfSmJMbtXe4bhr/iENRY
 LX+S1lX45u0SDvXlB4IVylspZEVNenpZ7EVJtxgMA
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260311_092058_886889_DEF46975 
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

Hynetek Semiconductor Co., Ltd. focuses on intelligent energy control
technology, mainly for the intelligent fast charging and digital energy
fields.

Link: https://en.hynetek.com/
Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 04b7d1aaaef1..f1e6b1d03839 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -745,6 +745,8 @@ patternProperties:
     description: Hycon Technology Corp.
   "^hydis,.*":
     description: Hydis Technologies
+  "^hynetek,.*":
+    description: Hynetek Semiconductor Co., Ltd.
   "^hynitron,.*":
     description: Shanghai Hynitron Microelectronics Co. Ltd.
   "^hynix,.*":

-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
