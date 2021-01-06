Return-Path: <SRS0=uU3o=GJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CBBDC433DB
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Jan 2021 13:46:43 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EB5922311C
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Jan 2021 13:46:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EB5922311C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TU5yI0rEtsvnyW3OrNSNbiYeiFw3a/uK4FRGk9h/haM=; b=jN87hKJ3yHERmd+e6voonhZfMa
	U2Sj8ygDE4MZq2Yp20W1wzEO5PRAFsvUQnCkmCv3k9yUVFTVr+K4cfYYWgEvMLPczBJe9fR58zIvk
	hS4AEn7I55U349zz1exHuOPaMVtGbDpbil+8pKKQDuyDEFKHZksbBbl2PtI2al4JR/i9YGrv7UHHQ
	yZf5aXs8TOQ7jNQhi8HbQXgvviD9LOUR5cs02H+vnGBvoZrHpbIUIGl6dKb9A5fGKqjy03Y+PUYIR
	3yLsXP2OoDWxvFF8UdCEKDwckPmLLu2lhlyxlVVXPbpod7s9x4rzqWUb4UOZuHZ3uwWyEkKPdrZCe
	/nyKHLpw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kx995-0000mU-W5; Wed, 06 Jan 2021 13:46:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kx98t-0000gN-Oe; Wed, 06 Jan 2021 13:46:29 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7D26F22B40;
 Wed,  6 Jan 2021 13:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1609940786;
 bh=dk8pXxau3B7w7pPUwA0RrhUn2p0NPeGc5CfgVN0DmzQ=;
 h=From:To:Cc:Subject:Date:From;
 b=ZGMA2yuUlk3EsCi/TmoRfktBveZSgR6AWjg6xDPQXlUij7RfCRgx9e8sx58aHDA+3
 kbiSLI4QrOEWdxlQY8yXgjziLtc1avxml8f5Nmdyh5AgmuxgCc+wm6iDw8B4CYGeqa
 HAacO9ZaH7lHyEIEbJ5e+PblRveWDce0x7EGc9fiYbgwLR2a9exe6UJDs43ZdZ6XOp
 +6T1M8agU/E85gddh1oArPrKBEUjtID41uWBOmNQ6j9zgjBolzgmqwTgAMJLRQe1c/
 yevsMgzuU4EADGqOEUp45n48k6Y3HyTFqgETNjfc9EGEZBY7Of4cHPT6xsb/1IWKN9
 xuSSRWQNhci/w==
Received: by wens.tw (Postfix, from userid 1000)
 id 5155F5FB6B; Wed,  6 Jan 2021 21:46:24 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v3 0/4] arm64: rockchip: Fix PCIe ep-gpios requirement and Add
 Nanopi M4B
Date: Wed,  6 Jan 2021 21:46:13 +0800
Message-Id: <20210106134617.391-1-wens@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210106_084628_011820_6E3088B5 
X-CRM114-Status: GOOD (  19.03  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Chen-Yu Tsai <wens@csie.org>, Johan Jonker <jbx6244@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

Hi everyone,

This is v3 of my Nanopi M4B series. Changes since v2 include:

  - Replaced dev_err() with dev_err_probe() for gpiod_get_optional() error
  - Added Reviewed-by tag from Robin Murphy for patch 3

Changes since v1 include:

  - Rewrite subject of patch 1 to match existing convention and reference
    'ep-gpios' DT property instead of the 'ep_gpio' field
 
This series mainly adds support for the new Nanopi M4B, which is a newer
variant of the Nanopi M4.

The differences against the original Nanopi M4 that are common with the
other M4V2 revision include:

  - microphone header removed
  - power button added
  - recovery button added

Additional changes specific to the M4B:

  - USB 3.0 hub removed; board now has 2x USB 3.0 type-A ports and 2x
    USB 2.0 ports
  - ADB toggle switch added; this changes the top USB 3.0 host port to
    a peripheral port
  - Type-C port no longer supports data or PD
  - WiFi/Bluetooth combo chip switched to AP6256, which supports BT 5.0
    but only 1T1R (down from 2T2R) for WiFi

While working on this, I found that for the M4 family, the PCIe reset
pin (from the M.2 expansion board) was not wired to the SoC. Only the
NanoPC T4 has this wired. This ended up in patches 1 and 3.

Patch 1 makes ep_gpio in the Rockchip PCIe driver optional. This property
is optional in the DT binding, so this just makes the driver adhere to
the binding.

Patch 2 adds a new compatible string for the new board.

Patch 3 moves the ep-gpios property of the pcie controller from the
common nanopi4.dtsi file to the nanopc-t4.dts file.

Patch 4 adds a new device tree file for the new board. It includes the
original device tree for the M4, and then lists the differences.

Given that patch 3 would make PCIe unusable without patch 1, I suggest
merging patch 1 through the PCI tree as a fix for 5.10, and the rest
for 5.11 through the Rockchip tree.

Please have a look. The changes are mostly trivial.


Regards
ChenYu

Chen-Yu Tsai (4):
  PCI: rockchip: Make 'ep-gpios' DT property optional
  dt-bindings: arm: rockchip: Add FriendlyARM NanoPi M4B
  arm64: dts: rockchip: nanopi4: Move ep-gpios property to nanopc-t4
  arm64: dts: rockchip: rk3399: Add NanoPi M4B

 .../devicetree/bindings/arm/rockchip.yaml     |  1 +
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../boot/dts/rockchip/rk3399-nanopc-t4.dts    |  1 +
 .../boot/dts/rockchip/rk3399-nanopi-m4b.dts   | 52 +++++++++++++++++++
 .../boot/dts/rockchip/rk3399-nanopi4.dtsi     |  1 -
 drivers/pci/controller/pcie-rockchip.c        |  5 +-
 6 files changed, 58 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-nanopi-m4b.dts

-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
