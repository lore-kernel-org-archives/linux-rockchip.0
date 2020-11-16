Return-Path: <SRS0=vJNw=EW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD67EC55ABD
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2020 07:55:46 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7A87B2227F
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2020 07:55:46 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="TK+n0Avp";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qbn9UBRP"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7A87B2227F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ef38wMyX+yUbsjoA/ka6oUm/AqNj9XdPlq/Pjqbhfbk=; b=TK+n0AvpYLIKJ6T0dROoyInGIA
	6So0V4wL2eVj6RIic4cCJWdNC/g6EodiuhpGB+xM0F6NuhCQUW/kiD8mvvZvIDBJF1hycmTJ0hyNG
	AuqOSEHdrBrb3pUksrHG/zzna8eQDeYxzEoZOrjLwWrLsPJV1uF03W6wdezGEhLxJn2lxu1Qz9hoK
	rCDeEgzbggcv3t6ZAwzg1NKrsrrI3QgthwKgFCmS4Npop1OqsJ1fb5ChP8yee3Rq2hkKN8LTYmmR0
	ZqQf2//3BB5zy6+8ezoA9azY5Mx34iBT15/gYN2srGnb9r9ATEYEVrcfpX5wxBR9xy1b7Fftg6Mvu
	dY+Kb9nw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1keZMP-0006im-0Z; Mon, 16 Nov 2020 07:55:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1keZLg-0006Rr-EQ; Mon, 16 Nov 2020 07:54:55 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9422C2225E;
 Mon, 16 Nov 2020 07:54:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1605513290;
 bh=czyoJqy67io6xDK6xDxmuvRYsZ4+i8k33nA8cdA7Agw=;
 h=From:To:Cc:Subject:Date:From;
 b=Qbn9UBRPBKJn5/ziEhFz/IuKSor6U/KqTWJqrzzHzgnWWFZHVytmTflEDNoSrcAHB
 xkG1fq/ZxlerNDV6Z4APKfT3ZSsZkRk7RRzCrKxmjzWrvLszt2rFCWl2TN1H68GO88
 jMjNOmeBzYevYbBqshcPGNXSPbbOGE9Fc4t/mZX8=
Received: by wens.tw (Postfix, from userid 1000)
 id 7A1ED5FD44; Mon, 16 Nov 2020 15:54:47 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 0/4] arm64: rockchip: Fix PCIe ep-gpios requirement and Add
 Nanopi M4B
Date: Mon, 16 Nov 2020 15:52:11 +0800
Message-Id: <20201116075215.15303-1-wens@kernel.org>
X-Mailer: git-send-email 2.29.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201116_025452_843470_110FEB9C 
X-CRM114-Status: GOOD (  20.80  )
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
  PCI: rockchip: make ep_gpio optional
  dt-bindings: arm: rockchip: Add FriendlyARM NanoPi M4B
  arm64: dts: rockchip: nanopi4: Move ep-gpios property to nanopc-t4
  arm64: dts: rockchip: rk3399: Add NanoPi M4B

 .../devicetree/bindings/arm/rockchip.yaml     |  1 +
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../boot/dts/rockchip/rk3399-nanopc-t4.dts    |  1 +
 .../boot/dts/rockchip/rk3399-nanopi-m4b.dts   | 52 +++++++++++++++++++
 .../boot/dts/rockchip/rk3399-nanopi4.dtsi     |  1 -
 drivers/pci/controller/pcie-rockchip.c        |  2 +-
 6 files changed, 56 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-nanopi-m4b.dts

-- 
2.29.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
