Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 430C5F327D0
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Apr 2026 09:45:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VM6fSKobapc5pdKPg6UfQqEBCm7eo3MZ1A0mA5t/3eA=; b=Jl2KAgYj6fd2uH
	Brfw4KtXRLzLZwsHchs2lANZiRbtdW1vKJTGOv8iKsD2vqGzlfnWpNXYoUuiA9juzQCzJj0ZQJ44v
	WnAStbKjrWlwGypAbtOApeowTL21gpNSSNLtm+6R1a/OmL7ZzlA0r9donbpuxY18JEQkkIW1TYKRb
	BL7cuEmuA+0W8LEGzFRwj2cRIAdoN93Fo8s2nbPoeNpf0iEXfUwgeZmhEQDL8HPjohTg690aUwkmi
	sJb8RvmfW5fuklwpXL8EMXKxGQtWqpA8yVLbNRLH3UOP0sp5KE8JWeumTELZM/vEbEMgY4cTIo7Gg
	NrT/uaI0EugUCqSMdyHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wF7fm-00000008M89-3vYT;
	Tue, 21 Apr 2026 09:45:39 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wF7fl-00000008M6U-2DZn
	for linux-rockchip@bombadil.infradead.org;
	Tue, 21 Apr 2026 09:45:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=kIVgKNfgffVMWOXygW28hZLiTs45qb7bepzWyDmIFWE=; b=O9hhEa9xFFXluIhY1pOmvdCjLq
	XAZNIWE31GZs/9ExSUD+SREeynuuq6feX81uZkImgQYICbRLh0l4I9TuW6fuokzOqTHRyexAH50+t
	k/2CmN+zyNtyVeIDVgLjVvObHuTVHs1ENAXvEKym531dR8rDkst+6d/Yi65sfVoG1OVkRLU0g1hAS
	R5Zr5/uSY2+3lOEb9Y5HID+SbJxlV9pjh8HRm4rWsiBc3WgK6ctREZ+Vn6ymbh9+UfKoqaNiCe+hv
	xus11YPTx5+QjqXvNoJMu/w6WdERGmNqrbYNrQ0NsUKORKbCvTptGPR/SHMJNe48nDL9KQQ2qoJkQ
	56KGhm8A==;
Received: from smtp-190f.mail.infomaniak.ch ([2001:1600:7:10::190f])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wF7fc-00000009Val-1lEP
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Apr 2026 09:45:32 +0000
Received: from smtp-4-0000.mail.infomaniak.ch (smtp-4-0000.mail.infomaniak.ch [10.7.10.107])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4g0HXL1FVbzZgZ;
	Tue, 21 Apr 2026 11:45:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0leil.net;
	s=20231125; t=1776764721;
	bh=kIVgKNfgffVMWOXygW28hZLiTs45qb7bepzWyDmIFWE=;
	h=From:Subject:Date:To:Cc:From;
	b=JHJycwIXX42FlfTd+u4A59doxw/P/8wi7aixczLnYwx8rPbJEKMk/ee5UOgb/sfM+
	 HcRSNQebL02r9z6JsNllBFBpeBJyMq2AZ5ynFjou5Y9z4RaTM/lFkZiFj54HuEALDe
	 4Cza9BPIM13DNIE3MIK/nhcc9GaX2v9pZxGnh0dhX8+Z7KlqfqKKFao3WGRibTujCN
	 BX2C/BDJt7qsImvlfW48kUJQGIOiIOTyUpke7j7ecN9ybKR+VyCby6YH5V8M3gTUwP
	 57PLkL1Fb9m+mBUcmMGB+UNQxAXd95vcurSXc7KaeEiI/AvFxditWLZiQU41mM4jl+
	 bn95jv4y4u28g==
Received: from unknown by smtp-4-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4g0HXH6wHbzZxF;
	Tue, 21 Apr 2026 11:45:19 +0200 (CEST)
From: Quentin Schulz <foss+kernel@0leil.net>
Subject: [PATCH v2 0/2] arm64: dts: rockchip: fix Ethernet PHY on Theobroma
 PX30 devices
Date: Tue, 21 Apr 2026 11:45:04 +0200
Message-Id: <20260421-px30-eth-phy-v2-0-68c375b120fd@cherry.de>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/1WMOw7CMBAFrxJtjZHXgeVTcQ+UIiRr7Cax7MiKF
 fnuLKGiGWme9GaDxNFzgnuzQeTsk58nEXNoYHD99GblR3Ew2pDGVquwCnhxKrii6EK2xysyIoF
 cQmTr1z337MSdT8scy17P+F1/IcF/KKMSsS2dX0ynmzGPwXGM5TgydLXWD6P5EimoAAAA
X-Change-ID: 20260130-px30-eth-phy-676fa181e116
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Andrew Lunn <andrew@lunn.ch>, Heiko Stuebner <heiko.stuebner@cherry.de>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>, stable@vger.kernel.org
X-Mailer: b4 0.15-dev-47773
X-Infomaniak-Routing: alpha
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260421_104530_172552_A30745E0 
X-CRM114-Status: GOOD (  18.25  )
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

This removes the reliance on the bootloader setting up the Ethernet PHY
for the Linux kernel to be able to use Ethernet.

This is due to the HW default of the PHY reset line being active and the
MDIO auto-detection mechanism not controlling a PHY's reset line such
that we need to hardcode the PHY ID in the compatible property for it to
be usable by the kernel, regardless of what the bootloader is doing.

We only ever had one PHY (DP83825) for both devices, so it's fine to
hardcode this way.

As discussed in v1[1][2], even though they suffer from the same
limitation, only the patch for Ringneck is targeted for stable releases.

Ethernet is currently broken if the bootloader is built without Ethernet
support for those two boards. Cobra is a product for which the software
stack can only be replaced or updated by Cherry. Ringneck is a SoM
supported since kernel 6.1, the user is likely going to write their own
bootloader support based on the motherboard they attach the SoM to. They
may disable Ethernet support in the bootloader if they don't need to
(e.g. to reduce the attack surface or have an easier time certifying a
 device when arguing with an audit company).

Ethernet-less bootloader was supported until commit e463625af7f9
("arm64: dts: rockchip: move reset to dedicated eth-phy node on
ringneck") for Ringneck. Because I do not control what our users have
made with Ringneck, and that it used to work before commit e463625af7f9,
the patch fixing the issue on Ringneck is a candidate for backporting to
stable.

Cobra never supported it due to its support in the kernel being added 
with this (unknown at the time) limitation. Moreover, Cherry controls
the whole software stack so this is already patched downstream whenever
required. Therefore, the patch fixing the issue on Cobra is not marked
as a candidate for backporting to stable (but if it ends up being
backported, it's fine as well).

[1] https://lore.kernel.org/linux-rockchip/38452338-6e65-47ad-a696-b90c02ac42f0@lunn.ch/
[2] https://lore.kernel.org/linux-rockchip/b2f12140-ee3d-45bc-864e-d51317c83b8d@cherry.de/

Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
Changes in v2:
- removed Cc stable on Cobra's patch,
- Link to v1: https://patch.msgid.link/20260202-px30-eth-phy-v1-0-ef365be64922@cherry.de

---
Quentin Schulz (2):
      arm64: dts: rockchip: fix Ethernet PHY not found on PX30 Cobra
      arm64: dts: rockchip: fix Ethernet PHY not found on PX30 Ringneck

 arch/arm64/boot/dts/rockchip/px30-cobra.dtsi    | 2 +-
 arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)
---
base-commit: c1f49dea2b8f335813d3b348fd39117fb8efb428
change-id: 20260130-px30-eth-phy-676fa181e116

Best regards,
--  
Quentin Schulz <quentin.schulz@cherry.de>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
