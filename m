Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76E83C61DD6
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2026 15:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qSgAWy/kNN3MOk3x4BlhXKM+nH0ki6yqkq3ynIQCzeY=; b=JFoZUB7WovoQyM
	oL04PIwHZIyBH7z7C98hGQ5DRp73X8+6LpwOQ9OM56Y1qd6nJKyGOo0z7HERbQ53RGF10xo0+c4Jk
	cEWhfM/EEY7kFDo3J49suRa6zem2Vjh7XR+VJpHEf7Q8dj7MflFRXUSVwOFlhGbCpugXONU87aqlw
	/YV5FoBtpWMxPS2mMjSIKPpHgrJ9FUIqhrk+2LJCB2eebMQjlweuoA9rAiRybQ0NR8XjR9i7bvMDD
	rPe/XjD00YlyQ1H2E2bEZyZ58h5SJ4ZSQIi1KPw76XsdDAo2lVbCJlqGpM7kdgoSqjAcZixUB6iCN
	UscC9hngbirLagUT8dVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1QUM-0000000CVix-0TAF;
	Tue, 01 Sep 2026 15:33:30 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1QUI-0000000CVhA-1Flz
	for linux-rockchip@lists.infradead.org;
	Tue, 01 Sep 2026 15:33:28 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-4953e04ef16so10235185e9.2
        for <linux-rockchip@lists.infradead.org>; Tue, 01 Sep 2026 08:33:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1788276803; x=1788881603; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=KFq2GkDfRXlsOR078AWttqIDotbtBYpQKPjXjcs2jO4=;
        b=yb6GcQZVDGkthYejuHzs5745ymf7TPYfmJpMyzKGMjbkApz9aomvgKoNf5DMgejUSt
         h6pIM16Ave/3o7JrMqDkbCpmW3q/JwkyHIR4956nT4FG/P7nIkIN+K8Vr2Z5Ga8Dmgea
         Ij7Cf8kBa5Tc7Hu9frlfCwms95tKU1VkQw5X7OQ4OmnTu2yhpeSDpKFTp0BVENswxVbq
         T7pPkgg78R4ts2YobjveQYUZrEtgCEdsJx2PmHOICt/Twxs2+ojc9k5skHVucrjCS0Ot
         Zk5Ky1fouuO0sc2PMZSSRyLvySRJXkwvGDxNs5hNfH87HY0loQ0eGvt9KCi5iL3irKpH
         RuRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788276803; x=1788881603;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=KFq2GkDfRXlsOR078AWttqIDotbtBYpQKPjXjcs2jO4=;
        b=X6Ttv7ZTlXtxTIomoYf19GWUgb/madn8NNdiZ5FIoAQi9jMlF0gCkm6UI67pVwgoi8
         oHq5gaUTC3z29sUTof39aq5gl7zNqQhEpoFXBT3WlXn6RCpBYP9NvrEPZegxj2qKPTcf
         MEdnJuGkO/PwNAtxkEiAEFATlqRcMxWVl968gcS4qinpPrZ3H7Ogch15PoSSDhEbreZQ
         cNfbr156CGqgDZoFBBbDux/xBKW896ACwsyvOgaNpEXgwQGWTD28/iKpwrnu7HNjPB6U
         XpVzkjy3ze7KUDIoI57E6ghq2N8JvaF9qz0CaUOik/Ie2LLlla/T992FrhuTMYstXf68
         HquA==
X-Forwarded-Encrypted: i=1; AHgh+RrwvGlHXh2GeLb24fl8UIGWvX184GEvA0t63nIgcSQyg8jfOyeoUll+jzcGsFOn2wTwo8AbxwWaI6ibe+zwnw==@lists.infradead.org
X-Gm-Message-State: AFuF++n521d4VQu3KQoO8oV2ocQ67MksG21xtyOM6gJX7OZLE+NmNBq+
	NE5m84wzkM+2NcRb1L997WanlrDvbE2x2beY5n2TKICuKhVNqiY+eO/pJYcQj7cgZws=
X-Gm-Gg: AR+sD11xhsvilsvvv8ukSldCREWfLMVRKq+wxB1lnI1FIkh/+DSCi7YKsvV54fBvPrR
	ZpsXUxOE7MNzK8YA5H1byP3LmhYqE71B7WHpF/FgBEfetaV2j4lf1PMEBF4apRljZ826j//7Ewc
	a6yoQO9OgF0B8bDs6j60d3e/3xm3dRyyr8Syo7sYXH/ClWoR/9hxbd4yDfV6NJ4dNDLg7Icxd8b
	fiiQ8QAFU4Y0o0+mWc+JcARScr995Z9b+RJZl5z5fhE/oHiqLJXy+ltLgxkXLa24v4+2DQrZg4d
	aLgVKqMw496KYD0s6+7sCvezYwDDb93ZgzM/IR9Ml0xwW2Q5+d4/wenrwF2DF3HHM8wqvigN8hc
	glTJUr8N+pcKUJ+jPBms4sSHq+0zkpemenL7Or+rutI2goZlvamh3DbEjNPaH/pzQ/TEYedOsTX
	Y/+pMf7RXnXVeRv1hFZ7Yg+xKiWItLNqxmhqWXH2zTNiyDTqqCghL8Cgpn50llO3GJnnQ7EzR1t
	DFowQ/2xZff/nvUOV6UJATKM2W8ZA+w+Ur11YCr
X-Received: by 2002:a05:600c:4445:b0:499:900c:9c69 with SMTP id 5b1f17b1804b1-49b91c44fbfmr487364265e9.9.1788276801577;
        Tue, 01 Sep 2026 08:33:21 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-2-51-220-108.alshamil.net.ae. [2.51.220.108])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49b91c5790csm314541845e9.0.2026.09.01.08.33.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2026 08:33:20 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Subject: [PATCH 0/4] nvmem: Derive Rockchip MAC addresses from the OTP CPU
 ID
Date: Tue, 01 Sep 2026 19:33:10 +0400
Message-Id: <20260901-rk3576-otp-cpuid-mac-v1-0-ea9135270fc2@flipper.net>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMQQ6CMBBA0auQWTvJ0CKCVyEscDrCaISmBWJCu
 DtFl2/x/wZRgkqEe7ZBkFWjTmNCfsmAh27sBdUlgyFTUk05hre93kqcZo/sF3X46Rgt12QK66i
 qCkipD/LU72/btH/H5fESns8X7PsBL2E1JXgAAAA=
X-Change-ID: 20260901-rk3576-otp-cpuid-mac-3c90243d0884
To: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Michael Walle <michael@walle.cc>, Miquel Raynal <miquel.raynal@bootlin.com>, 
 Finley Xiao <finley.xiao@rock-chips.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 Alexey Charkov <alchark@flipper.net>, stable@vger.kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2718; i=alchark@flipper.net;
 h=from:subject:message-id; bh=265EXKY1LpSnh+xYZaVde+XE9Ub2EQ+extj0SjJz2p8=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWRN+2DnU7Gh6/4Mn5hdmn/laj6bZar7X7yrwmsYVtp9/
 JG/1cKujoksDGJcDJZiiixzvy2xnWrEN2uXh8dXmDmsTCBDpEUaGICAhYEvNzGv1EjHSM9U21DP
 0EjHWMeIgYtTAKaaK5Lhf+m3u0Wrlz8oMrOT3VPHc+n2ojDpS7MyCstc1CsldpW2uzAy3A/u0Lg
 +/+CNNxViTpySi7QueS68sTeWTV8pb6vMZcYsNgA=
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_083326_374239_04C1B9C8 
X-CRM114-Status: GOOD (  17.64  )
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

Rockchip SoCs are shipped with a unique CPU ID in their internal OTP
memory, and Rockchip bootloaders use it to give boards which have no
dedicated storage for a MAC address a stable one anyway: they hash the CPU
ID and patch the resulting addresses into the device tree they hand over.

Kernels started without that fixup, e.g. straight from the SPL in Falcon
mode or by any other loader which does not implement Rockchip's derivation,
fall back to random MAC addresses which change on every boot.

Formalize the derivation in the DT binding and add a Linux kernel driver
implementing it, so that a Linux image can use the same stable addresses
regardless of the boot flow.

Only RK3576 is wired up here, that being the SoC I can test on. Other
Rockchip SoCs keep the same CPU ID at a different OTP offset - 0x7 rather
than 0xa on RK3588, for instance - which makes supporting them a two-line
addition to the driver's match table plus the layout node.

Patch 1 is a prerequisite fix. The OTP hardware has its own internal state
machine which only works correctly with serial access, but the current
driver serializes nothing, which results in timeouts and/or corrupted
reads (e.g. returning splicing a TSADC trim value into the buffer of a
caller asking for the CPU ID, or mixing up trim values of different TSADC
callers). Hence the Fixes: tag and Cc: stable.

Cross-checked on an RK3576 board: the addresses fixed up into the FDT by
U-Boot match the ones derived by the new driver, and the driver correctly
assigns them to the network interfaces when the kernel is booted without
U-Boot proper at all (via Falcon mode).

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
Alexey Charkov (4):
      nvmem: rockchip-otp: Serialize reads
      dt-bindings: nvmem: layouts: Add Rockchip OTP CPUID layout
      nvmem: layouts: Add Rockchip OTP CPUID layout driver
      arm64: dts: rockchip: Derive GMAC MAC addresses from OTP on RK3576

 .../bindings/nvmem/layouts/nvmem-layout.yaml       |   1 +
 .../nvmem/layouts/rockchip,rk3576-otp-cpuid.yaml   |  73 +++++++++++++
 MAINTAINERS                                        |   7 ++
 arch/arm64/boot/dts/rockchip/rk3576.dtsi           |  12 +++
 drivers/nvmem/layouts/Kconfig                      |  13 +++
 drivers/nvmem/layouts/Makefile                     |   1 +
 drivers/nvmem/layouts/rockchip-otp-cpuid.c         | 119 +++++++++++++++++++++
 drivers/nvmem/rockchip-otp.c                       |  10 ++
 8 files changed, 236 insertions(+)
---
base-commit: 89c07d98716a13454ec3fd9f97689e812cc71bd4
change-id: 20260901-rk3576-otp-cpuid-mac-3c90243d0884

Best regards,
--  
Alexey Charkov <alchark@flipper.net>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
