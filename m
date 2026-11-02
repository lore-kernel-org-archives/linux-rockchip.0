Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42BC1606A337
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2026 01:52:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=rJMQjFtW;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=L8E//mnz
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=H+fUdYDNCZJC0kHFaIB33ijLBeMrQjjur/jWc1BE10w=; b=rJMQjFtWpbP0MWda1H3CiOiwOQ
	4SFl9MzHLwsbEgXvFEhMAzyaOTbX0fhD1H8mw1QqoP2N7Rq4TYpoOCAA0S4e+dDM/yD67FeE2Ds+x
	5hX0V4PmzAJB+8sy5KuJKB5COn2UqAnFoDSFoL+J74GtAk4NcpAHn4JpG7++kR+E5i719qQ9tBPLz
	S/QBOMpZWSeo2mE0/lQt3C7tbsTpfJsz9R5p+kMVTGCZIhaMkgbcE2EOiMo6NcHk0W8510wjSQPRL
	TkTyUhnZyO7DKPJ7yG84F+kIcJDLjOnhthRZsaBA2Y6jTT6bmCBFM3aNbdI92OY2ebpdRjEa0/LJW
	BFaAG5fA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNhEA-0000000FNO1-086U;
	Mon, 02 Nov 2026 01:52:50 +0000
Received: from mail-m25492.xmail.ntesmail.com ([103.129.254.92])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNhE6-0000000FNM6-0BFF;
	Mon, 02 Nov 2026 01:52:48 +0000
Received: from localhost.localdomain (unknown [61.154.14.87])
	by smtp.qiye.163.com (Hmail) with ESMTP id 531ad2652;
	Mon, 2 Nov 2026 09:52:42 +0800 (GMT+08:00)
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
	Diederik de Haas <diederik@cknow-tech.com>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v3 0/2] Support updating the PCIe3 PHY firmware on RK3568
Date: Mon,  2 Nov 2026 09:52:34 +0800
Message-Id: <20261102015236.3844843-1-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.25.1
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-HM-Tid: 0aa199f5736803a4kunm2334e46e3a72b4
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkaS04aVh9CThlJGU5JTB5LT1YVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ0xZV1kWGg8SFR0UWUFZT0tIVUpLSU
	JDQkpVSktLVUtZBg++
DKIM-Signature: a=rsa-sha256;
	b=L8E//mnz6dmP5a7E30ZtaaWC5w1UHiM6YphIilYXKz7V57ft09HkKAGZw1QqtAKZj1ZpQBwf5efcBiI3mZ2re7vObL5pQmVnVp7+4lojvsiZHbo3KiRZ/QJ1XIA/iJZI6IfMDfaGzfe9yRPu5PCe55Pu0n6WTud0I8Pjg28PGKI=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=s/53fzjdKTL1p4UUbauTe1x56R+kaRU23WwKPdP7V0w=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261101_175246_616423_51241BFF 
X-CRM114-Status: GOOD (  12.65  )
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
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
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

  https://lore.kernel.org/linux-rockchip/20261102005129.3745527-1-shawn.lin@rock-chips.com/

The required firmware file is available in the rockchip directory of
the linux-firmware repository:

  https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git

Load firmware during kernel compilation using the extra firmware assignment for quick
test, otherwise rebuilding initramfs or copying firmware into /lib/firmware:

CONFIG_EXTRA_FIRMWARE="rockchip/pcie3-t22-c8g2-1.6.3-202a-p7.fw"
CONFIG_EXTRA_FIRMWARE_DIR="/home/rockchip/linux-firmware"

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

Link-to-v2:
https://lore.kernel.org/linux-rockchip/20261026074003.1169669-1-shawn.lin@rock-chips.com/

Link-to-v1:
https://lore.kernel.org/linux-rockchip/1792466206-127946-1-git-send-email-shawn.lin@rock-chips.com/

Shawn Lin (2):
  dt-bindings: phy: rockchip,pcie3-phy: Document firmware-name
  phy: rockchip: snps-pcie3: Load updated PHY firmware on RK3568

 .../bindings/phy/rockchip,pcie3-phy.yaml      |  7 ++
 .../phy/rockchip/phy-rockchip-snps-pcie3.c    | 90 ++++++++++++++++++-
 2 files changed, 95 insertions(+), 2 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
