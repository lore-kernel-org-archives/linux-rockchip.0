Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41FBFC43458
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Jul 2026 20:46:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KzIPXhAyJW3tk8pdm2Tliig+tmMI8XVs5yJIIpFjWZA=; b=X84GIX7U4QxClH
	31rlf0J2drMx9N+xxz8eE1a9jxlu3WmafZDwGTtb7HaMjrItoHoT7PpZf/TKYMjHkGs9AzVRhxeRd
	7nmCCSXEBf+1kbVc8NYlLmAiCOkgfRniVt9TZMgFqgpONPPVJ4i83VFp08HAcX9gkFGAjywvIjghn
	r4sEzu/IQLIXZ1dKEvnRTplBFwv6fJQDnTdr/O2Lgpf0FQwkPjmXtoEea6fIPzClkXRKuh9B8b7v2
	IW6ooCZX8zLrAIgd9BdgQym01xE0oQbhjPQjuXZI8YkxxZzBxi88pcWgyF+v5F4TGl4SEzzRJq26r
	ZLX6bgdN6kCGG1x2ZVyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfOJ4-00000005TC8-151c;
	Thu, 02 Jul 2026 20:46:46 +0000
Received: from mail-pj2-x00.google.com ([2607:f8b0:4864:39::])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfOJ1-00000005TB2-3fbH
	for linux-rockchip@lists.infradead.org;
	Thu, 02 Jul 2026 20:46:45 +0000
Received: by mail-pj2-x00.google.com with SMTP id d9443c01a7336-2c9dbd2e24cso13229755ad.1
        for <linux-rockchip@lists.infradead.org>; Thu, 02 Jul 2026 13:46:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783025203; x=1783630003; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TFYk67kGMBIa4rE++VISe9W7bx9jplGS28C7isZgneA=;
        b=MP/Sa5XY0y5a9HckpAOKuWVwCJEQMXohPSyaQOUXGDWk0YmAHO1wywRiTQx44BKHBd
         wsBWk75Wg7ae//52Wx0LEfIosmPBH2EUo1l8A2iBeOJzJCLBhnoqMw9sXc5RQsBKC8ki
         f456UNHEKumJlq902l/0RZ4Exou/b2GlAPgD45JnNFotbm+AZnUVhmPlSyvUV7/e6LyG
         DJZnJL0tV/suGhe7zPQX5qTRYHCsmWvBXrAZE6W0UyQzX1kY2Q9r8SpxNxWp2LTUsvFB
         9xAX/UrX8uH7sWb5/iiL77JF7SQZ+gaRaH9S1lVPsJ48xacuRafGMSO1QYz4nt5XI0Fy
         5jLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783025203; x=1783630003;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TFYk67kGMBIa4rE++VISe9W7bx9jplGS28C7isZgneA=;
        b=P+K2tEWtiR43FfnPyRBeThajbDEdWzslVXlGJ4bQszixusHMn8VoNwymULSjGup/tG
         LTQJBp4fz+W3I1JHOg5eXOR8UzZAcWhii+iexX7h4eFoyvWwFHy/4d8FQ2VbR6fz0+Nj
         yxE0I10RuG+YE1fH4Q8GmNvMbPDOOFzxRQPz5u8HVrVzLBYXkdn3iQhnLFMigBvFVG+d
         2W4BeUy/VqjaI86n705tEzQL04MIj20qjkWxC6p5ql/JW6cT+huy9wGZspu/tnOQvLbS
         qBiEMHt2ZOHW4cf1UOwnqt79w6P7ywhcaLOY6lb00bpUp7OBaNfJnySR5tL7X1oFDr5A
         r3lQ==
X-Forwarded-Encrypted: i=1; AHgh+Rqz55CkY/Df8USw9Uco5KS/WmXzDx2akHKWd2vePGKA8y8dmXUmVpiVTuXp4wOfJkJ1xJXfT4uitI96MKScKQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxXiLFty86IdudMq3cBcjhxRUiuYi8tCWqa1TbRmDpXyYZGZxpR
	NyPpecGK9aStusaYPkM3WPrimymS8VI0qY9EUUL21DSZxKmm2m9u4zAv
X-Gm-Gg: AfdE7clVlUwmmmt/JDgoURcsC+rMgTC45tStdSbXEAXYRwJzMEhfFsgRkqFDs++4a+U
	6BIjU+gNMilmJErGlqKkUQYHGV7Nsm9B/guQr/NbTD3q6xwZlo3Bzp1qqFPEa59dnupFQggI2hx
	nWkFQ5m1VylQ4mtc1sRaZL/MICeTDAqguH+4q12+8AzZ/mViS5nWCnA0p49j0Oj0+BQCsG06HPe
	OjjxnZEpTSaPH5tNtGWpNdyzhSbYHjsBWTbRkVfp8VqQfjdlM/XXkX/3fkrpi2YqPQNMejSkcCD
	ziHbIWgB7a9pB6cwZf842IPuBBgJVvf9b1kiEgpkQorb9kbQvg9/jKd8rTY6srSVPpaN/LxAZNv
	siCsL6jKbJv1ln/iWzkHpmbB1CjKSPsWf2NpV2R+ikUhoyZkMBH/lNj1XJhfgPAAV5VEmBstwx1
	FaQM67L9mj8C0=
X-Received: by 2002:a17:902:ce02:b0:2ca:62e:cc4f with SMTP id d9443c01a7336-2ca7e7645d1mr85023165ad.23.1783025202765;
        Thu, 02 Jul 2026 13:46:42 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ca9a9004c1sm18654065ad.21.2026.07.02.13.46.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2026 13:46:42 -0700 (PDT)
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
Subject: [PATCH v5 0/3] Add devicetree for the Graperain G3568 v2
Date: Fri,  3 Jul 2026 04:46:26 +0800
Message-ID: <20260702204628.2407308-2-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_134643_946144_9FE76A9B 
X-CRM114-Status: GOOD (  10.72  )
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

Changes in v5:
- Fix incorrect WiFi interrupts.

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
