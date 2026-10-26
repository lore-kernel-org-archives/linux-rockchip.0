Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13259606A31A
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Oct 2026 07:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=SVd2tj5C;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=E7owXOQf
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=QO2mZRQmycKS65cV0imVRWIP1b8rwZphivMte7gamKE=; b=SVd2tj5Cvb8m2Xakvny5LC9+6s
	TTD2jhIirzVX9peu5Bv8DprS4vs7NFm0Kx671q0itK0gfIQ01rGPWMsTXGGjBT2M13mm120stgB5z
	6aAKCwYhy4lqwaoOmuUUowsoswPoEAzED03vr3WUKV1JcmzqIUSCINMfStpx65zRB2LpDPR4eDnkj
	bMhNw9ZsXvfnFMFIc+gmQASFUOepAvc4UtWNW+Yrcq09KEg/jH7pB7zrRLimSiXTWpBEz87A804bY
	aNuewAa30lLJ5Sro4lTbgz9bpRmpvqKEiEzkypNER6PEBQ2WvVzcyB+s7KHZpxxt9X+ULaQojckaG
	PG1o4afw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLFJZ-00000001qvu-2gAS;
	Mon, 26 Oct 2026 07:40:17 +0000
Received: from mail-m10248.netease.com ([154.81.10.248])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLFJV-00000001qv7-2VWq;
	Mon, 26 Oct 2026 07:40:15 +0000
Received: from localhost.localdomain (unknown [61.154.14.87])
	by smtp.qiye.163.com (Hmail) with ESMTP id 5257abb9b;
	Mon, 26 Oct 2026 15:40:09 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Vinod Koul <vkoul@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org,
	Manivannan Sadhasivam <mani@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	devicetree@vger.kernel.org,
	Samuel Holland <samuel@sholland.org>,
	Coia Prant <coiaprant@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2 0/2] Support updating the PCIe3 PHY firmware on RK3568
Date: Mon, 26 Oct 2026 15:40:01 +0800
Message-Id: <20261026074003.1169669-1-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.25.1
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-HM-Tid: 0aa17727082d03aakunmbf670e0d2f0006
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCH04YVkhISk1DTB8ZTBkdGVYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ0xZV1kWGg8SFR0UWUFZT0tIVUpLSU
	JDQkpVSktLVUtZBg++
DKIM-Signature: a=rsa-sha256;
	b=E7owXOQf/AHjGzE/RSaaZce+yZqO9cBhcQ251wLnTdZ7qgUe7qH0OzISDJM+QpPYL3/P8Dx0lOMXVSILRaqOinuTdAMEbqot08Zt8hdJYfSY3BgvHu90bhR/nfismEWVYzUtWIx0/UTZKhINmFmKA2I9iRhytKK/SgtSaK2vJwA=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=AmqmBNt3ibSYXW3i4m+4Vz6EYbDyVbmWSd6OxJ7YNoE=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_004014_172470_775FFF2E 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The RK3568 PCIe3 PHY contains a small controller that runs microcode
from an internal SRAM. The microcode present in the PHY is not always
the latest one; with a stale version the PHY may fail to establish a
stable link or come up with other issues that are otherwise very hard
to diagnose from the host side.

The firmware stays optional: when firmware-name is not described in DT
(older DTBs) or the file cannot be requested, the driver keeps the
existing behaviour and runs with the microcode already present in the
PHY, so there is no new hard dependency for existing boards.

Patch 2 for the PHY driver depends on a pending patch that fixes another
issue if anyone wants to apply this series for test:

  lore.kernel.org/linux-rockchip/1792286036-208067-1-git-send-email-shawn.lin@rock-chips.com/

The required firmware file is available in the rockchip directory of
the linux-firmware repository:

  https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git

Load firmware during kernel compilation using the extra firmware assignment:

  CONFIG_EXTRA_FIRMWARE="rockchip/pcie3-t22-c8g2-1.6.3-202a-p7.fw"
  CONFIG_EXTRA_FIRMWARE_DIR="/home/lt/linux-firmware"

Tested on a RK3568 EVB1 with a PCIe3 x2 NVMe SSD, the firmware is loaded
and the link comes up:

  phy phy-fe8c0000.phy.0: lane number 0, val 1
  rockchip-snps-pcie3-phy fe8c0000.phy: loaded PHY firmware rockchip/pcie3-t22-c8g2-1.6.3-202a-p7.fw, size 16384
  rockchip-dw-pcie 3c0800000.pcie: host bridge /pcie@fe280000 ranges:
  ...
  pci 0002:21:00.0: [1e0f:0009] type 00 class 0x010802 PCIe Endpoint
  pci 0002:21:00.0: BAR 0 [mem 0x00000000-0x00003fff 64bit]
  pci 0002:21:00.0: 15.752 Gb/s available PCIe bandwidth, limited by 8.0 GT/s PCIe x2 link at 0002:20:00.0 (capable of 31.504 Gb/s with 8.0 GT/s PCIe x4 link)
  pci 0002:21:00.0: ASPM: default states L1

Shawn Lin (2):
  dt-bindings: phy: rockchip,pcie3-phy: Document firmware-name
  phy: rockchip: snps-pcie3: Load updated PHY firmware on RK3568

 .../devicetree/bindings/phy/rockchip,pcie3-phy.yaml  |   7 ++
 drivers/phy/rockchip/phy-rockchip-snps-pcie3.c       | 101 +++++++++++++++++++-
 2 files changed, 106 insertions(+), 2 deletions(-)

-- 
2.7.4

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
