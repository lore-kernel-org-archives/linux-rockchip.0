Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B7D2C43458
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Jul 2026 16:46:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ebhpdSZrl/9BMYosdsE8BdSFo6bD0fP+Mb4zEb0NhgI=; b=mNxZj60Z9szI+K
	4BYSAXmsz5/1khKK995B5q8+/oJDpYKftErmc/yzue1ACV/ntBjFQLXHi/iQi3jHVizqzHPHql3mT
	/jXxFa3RHJ4NlUZl7vEHQez3HboxYJ9giA6FgSBAEea0tPIqWzpCHzGkFI1+I0V1XLvoeHi1p6FiT
	qvjLdPa82XM45rn8YTzr6zyK9ZLgoTHendqFljDeDSWGso36HSvpedB+L+0Pjnd/iytSH9L052dGP
	/V6FuZR7IN7KfMQ6JZ4P8Hs7G/wEbkw8gIBRBl8EWmum7Jp0OE39DEgGijJj393sBiUFrgXfhCWBb
	8l1TD0QBbGW8xLDE9sKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wey56-00000002Zel-2gcs;
	Wed, 01 Jul 2026 16:46:36 +0000
Received: from mail-pj2-x01.google.com ([2607:f8b0:4864:39::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wey54-00000002Ze2-3fNQ
	for linux-rockchip@lists.infradead.org;
	Wed, 01 Jul 2026 16:46:36 +0000
Received: by mail-pj2-x01.google.com with SMTP id d9443c01a7336-2c9afadd78eso2759975ad.1
        for <linux-rockchip@lists.infradead.org>; Wed, 01 Jul 2026 09:46:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782924394; x=1783529194; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BH3aXRPDtZZz9bN5AoHSMjbqzIj/NyvWxAh/Zcap9hc=;
        b=a2wKkcyPCVPnEOUyzQOP6lM9GnxOh8dr1jwbJ+au9h7vmYvHerl19o9f76H16okzbF
         f1h1gbvIQP0TPVfRXmMmE4Slwc0EBolX8U92GEEYUkGIULYffgsuPfLKuj+imcKenpIi
         gVXrwb1ub8S81DkEkIKBS7psHazV32rJ1K37h6xhaCZODmVkWFD7zVNRbP/8jIMFgI8b
         QwF4mGA7jcQ0/LhVcP3HfF8FM1+8lfUya6ioA9znEtjBgcBFMefsClimPIXBAQYD+wOo
         YSEOqk5dQXGlAk5f2oHJw+N3mqh1P3YG61OLpYgl/QtlmPoIYIsFO1ahXBtkMuVZOLhY
         Dq+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782924394; x=1783529194;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BH3aXRPDtZZz9bN5AoHSMjbqzIj/NyvWxAh/Zcap9hc=;
        b=KqKKT8G8D2geUo30ou3jad5GeTGJj2rlsOoVeoV+0MvUroOdqDzb8dO9TNr7EJbH6R
         vjGbGET8/VIrajerQEVQoNAtZnScLuP5wkdYv75MLPPaWBndXnNgbH78wCSvoLCfaaKa
         teS8HhLd3jW/L25yKq0jR9xz0UdI6CgSA1aSxQbcyNCYi//RflhocF2zzDvuddFyVWeD
         Tkv2is/UvlicmntfLUnd2EOJVAJ3l/MQAqXprYBPz3IQ6DXNlwUgZScgzQmNlvSB0ALu
         o3HKgqlabflTrlUmiINtlqt5zo4tHdHWRtQ8lrUTLLv2IdNLvh0un1jL2mGrgr8MRzWE
         S0Lg==
X-Forwarded-Encrypted: i=1; AHgh+RqOtooYM0+eCZEcPPicSDNOtG+duAjQSZfnAHEoslFhkT5PxqLc8EAqR8LKuuraqZtQ0ThkUWWbSA+JF6Cy4w==@lists.infradead.org
X-Gm-Message-State: AOJu0YxGRIvCXD2WoJr75ya5+BJJryHGijL5I8Yq/pEcjwtW8ZN4NCLd
	DtCD/rGN6VKE/h3iYBDJ9jXRDZVaQWTTrK41c9yej2bAWv3MubpYN/09JDxXDNlzSrN0sA==
X-Gm-Gg: AfdE7cmZAowDWTO1121c4M7lUozloiVzYqrJls+vI9rHAGhbdqzK70bBRtaK5GGXWa5
	OJ2NGLMkrLrGaZxS9GwmKG0teqn7z4kN8JVDwn//+jW6nWgqRAgzEkl8NdAZPhnJlrNMzOJlz6v
	1P6KZyKgjkiXr9Avi389KUByZ6RnBU1TlEzGGfirE9Z9eLmqaBoLDUVadPnB3sfEKSJTazSfjEY
	9TS4ov7QjaDRs0gRTNpObQRWjxQ7DGuS04lyocjpcioL/0Zf2X1rGeINLQQTf+gGGJeVYqe9vlI
	WVoy8wveXQukESlKV2Nr9u3zqbhyaoUxkivyYQ0B5C/+hyydPvR9Pv1eBWV+tWOLmbnP0TQ4Ao/
	Em51ni9pP3ti9CTlw/J5W7mZaxXulst/5ny+QQIudR32Sy4q4kgRDRg5NRAdHiXSxbcwZfjTGyv
	nJUlxdPwhr1rU=
X-Received: by 2002:a17:903:19ed:b0:2ca:594f:feb8 with SMTP id d9443c01a7336-2ca7e942459mr25214065ad.47.1782924393632;
        Wed, 01 Jul 2026 09:46:33 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ca9a911f4csm985015ad.29.2026.07.01.09.46.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jul 2026 09:46:33 -0700 (PDT)
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
Subject: [PATCH v3 0/3] Add devicetree for the Graperain G3568 v2
Date: Thu,  2 Jul 2026 00:45:41 +0800
Message-ID: <20260701164543.3967388-3-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_094634_910665_D5B173B1 
X-CRM114-Status: GOOD (  11.44  )
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
- Add the Bluetooth UART child node.

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
 .../rockchip/rk3568-graperain-g3568-v2.dts    | 931 ++++++++++++++++++
 4 files changed, 940 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-graperain-g3568-v2.dts

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
