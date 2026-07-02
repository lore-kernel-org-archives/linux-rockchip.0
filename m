Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68CB8C43458
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Jul 2026 19:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AYcTV4Sf18WrnUj5Psr0TxsPC4BMU2mxu93vAt5uglk=; b=NspHSCx8gP2VUI
	rewOuZ0jGvNSU5Y13CSzt7JzdQq984QqgBNf2KXPp+9Mnncqin6kF4co67teCMh5e7uRBVsEc4t1Z
	LBFf21kj55BHYhrK8K7F5EROsho+EQgKd11TEOVaeWB9cU/h450pxFZl7M3Urpyt6/MMFc0BWNajS
	g9UB2KcqVA6D1G8A4D+cMwH4KqOIPi537IB7WwgL5kDbJSg+Es002m21mQSXjIOf/0R2uj+RECFUO
	H+28xcMIiH9W41UTGoVTnpfXYARBC7NobvAydcqeQ16iXJlzJ0xZ53Sv0AfMv1pgFctGyKFVdMImK
	lxuKuP/pLjYliqZooakg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfNCT-00000005N5d-3vHG;
	Thu, 02 Jul 2026 19:35:53 +0000
Received: from mail-pz2-x01.google.com ([2607:f8b0:4864:3b::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfNCP-00000005N3j-0WmN
	for linux-rockchip@lists.infradead.org;
	Thu, 02 Jul 2026 19:35:51 +0000
Received: by mail-pz2-x01.google.com with SMTP id 41be03b00d2f7-c888c2cff99so949384a12.1
        for <linux-rockchip@lists.infradead.org>; Thu, 02 Jul 2026 12:35:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783020947; x=1783625747; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=KYRqu3lVUIKqJWn4tGQNNX03TQN1RZDYmju+H+bQTEI=;
        b=f8iucxvO7DUjSexS4uWUWS+YdGTuojsi10AnlQOPbzcAfH1aie1ao5y+T2k5COOS6e
         YOicu2309Y6qUlAPWZnba16dAkNsDQgT0GfkcK90xOvRsit1arwowam0qA+1HAqV3bbp
         wIQlw+YFw+zGyNeIStAK8F3m3HVu7CqHq9P3jizMW2RXmtH2rSpxBr9zmJ9Mu3b6QQmS
         UUq3Ls7ytGu8q+sWqQ3k2P9Z3DPM9u6cbp/NW8bx79ngoadXfFgE1GXVfEd69hP5rjp1
         mTv4dxYPexBL/E+BJWEG8Rn1LBjq84X9A/zBEN2QFKH3zRBXq7l287+WM1pVHtprv3h5
         1kBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783020947; x=1783625747;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=KYRqu3lVUIKqJWn4tGQNNX03TQN1RZDYmju+H+bQTEI=;
        b=UY6gVHxpakluXmLDfAM+6IhXJpfxi4Buqxqy89F5uQ8buSVifwXY/oSTeiXGZwEA0q
         2AaZ8nlopHEh36YFKm3pWLZn95Q3XimS4WImVVljUvoBKqGuNTo08HkwQf2KWlxKll5b
         M5Y8INR/9vU7+6mZLFhMY9f5J0VjQpHhuH4qXidaJhA43ISnulvpw+UbFRD/jFuuz+i4
         ABkXlCt5wMr96zC/FFgjGGJQycnWn6jbyUe2MAThaU9h9HVGx9rWtRrbp5BwMaufhueb
         7Si8mQ0iUZBvALmRZjFC0OsFg4gLFfJtSShHok/tYb1V/afA7UmHjZxuMQilHudDm5lz
         BH5g==
X-Forwarded-Encrypted: i=1; AFNElJ/ajFlJjunAqnwg/qXae0DB92kBgGE3nmLc2bLI7CQY/BM50AdTmz5mtUdzixTGrxj3oqFmeeR6VcnpdIyIjw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxLmrx0eDGbdrIbScDCOBd7l3WmL4Q20j99COp1oKS1WNZUTNTF
	uY3OwBdXNfyidd648eEvcuuoNidG4k//gWpuWLrgji7dDBgpGjwcWzOe
X-Gm-Gg: AfdE7cnVaJvhHuAjwO6U3f8L4KeYOvX6+FtjqWFJIUx0y4TgPhuMp5VvPfEwUf5o9TJ
	XWHedG31PKr2K9aZr1p2ZAj5eu8V6tBdmxFJ7Dixj4O2RdDcfe2JnmIfZMfXzEBCntxx+34u7PO
	qYAohX8wVKyPA60V8/aA6Wk6dElqFR3mWkLK2RbooEL5ur4GHPkd5UFwyW4lrwvv10gKaswDVrx
	Xyh9VH/Z1GYuLBeVnV/Jf8Tk+GrhDu4ujMytBEy7VdS2MYSHufyrU4UzQYH4cDenC+mFFQGKzxX
	dUJ5751Bba5Z+15O0bTbe7UZOrcXlPzA2XxKjooRGwgotIjEiuALhl7i+2FrUJu7yqXDw/uwl8b
	klqy1KDPwD49u/EYdG1hpFCHM3wSYmDRk55ebRNA3XoOuKCzbiCDrGTbgaUIqT/ttiIQfNcnK10
	mXMMS5WjKJh04=
X-Received: by 2002:a05:6a00:139c:b0:842:55b6:f5a1 with SMTP id d2e1a72fcca58-847c4fc29b2mr6697327b3a.6.1783020947157;
        Thu, 02 Jul 2026 12:35:47 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-847cb6dc188sm1844249b3a.4.2026.07.02.12.35.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2026 12:35:46 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH v4 0/3] Add devicetree for the Graperain G3568 v2
Date: Fri,  3 Jul 2026 03:35:35 +0800
Message-ID: <20260702193538.2195973-1-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_123549_163375_57234545 
X-CRM114-Status: GOOD (  10.82  )
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

Changes in v2:
- Fix trailing whitespaces and other formatting issues.

Changes in v3:
- Picked up Acked-by tag for patch 1.
- Fixed text wrapping in the commit message of patch 2.
- Replace the legacy 'gpio' label with 'gpios'.
- Add the basic WiFi child node.
- Add the Bluetooth UART child node.

Changes in v4:
- Fix incorrect pinctrl bluetooth node name.
- Disable bluetooth sound since rk3568-codec-digital unavailable.
- Add WiFi fallback compatible string.
- Add WiFi host wake interrupt.

Notes/Unchanged from v1:
- ADC keys have been verified with evtest and works fine; kept unchanged.
- The 'regulator-off-in-suspend' property for vqmmc-supply is retained.
  This is a known issue shared by most similar boards and should be
  addressed globally later.
---
Coia Prant (3):
  dt-bindings: vendor-prefixes: Add graperain
  dt-bindings: arm: rockchip: Add Graperain G3568 series
  arm64: dts: rockchip: Add devicetree for the Graperain G3568 v2

 .../devicetree/bindings/arm/rockchip.yaml     |   6 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../rockchip/rk3568-graperain-g3568-v2.dts    | 943 ++++++++++++++++++
 4 files changed, 952 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-graperain-g3568-v2.dts

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
