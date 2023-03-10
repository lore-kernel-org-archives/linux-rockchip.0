Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A7A9C64EC4
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Mar 2023 08:06:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6uEjdtnXDtJzUEyiwnqrOwbKb5KzT5u3HTdDges7vKg=; b=ArWga6YRFVrXN1
	ZIKxgDTTLn0ldlCSJR3TTP+UCfgENFmIai7pAdJPCGMIwnihMvL7124DCxKqi9EhjF8JjD1EZTsGN
	6VHbY49VsuIbxZACtV0gAvCGHjM+WXrNnARYNkYdRxAzaM9VjVNeuHLps9YO9TNtpCp2+FG6EU5ug
	UoNjXoTGX66YF3unmrOyrK4lRjJOfnNV/rqLexHAzdjDy00PDPHvrjfvdCoGhw5eAKDnXEI2W7gjf
	lqTS4l1OY9hiRTCxFuHX/nRnpiuX/W4Z4A+0QYPjliV1ll4valNANU9JrIgyJ9gS+MvaTqZk686oS
	oubj6gZo1nQsYl6yER5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paXlL-00DWBb-Nx; Fri, 10 Mar 2023 08:06:03 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paXl2-00DW2E-Sy; Fri, 10 Mar 2023 08:05:46 +0000
Received: from cryzen.lan (cpc87451-finc19-2-0-cust61.4-2.cable.virginm.net [82.11.51.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: tanureal)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 0CBA26603055;
	Fri, 10 Mar 2023 08:05:42 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1678435542;
	bh=ctw8Xau90CJVFW0RlRvP3WtEFwDOCAAhoBzXWYLTG04=;
	h=From:To:Cc:Subject:Date:From;
	b=izGcV98nHfD5trsFvC4m1eoN6ru69aCkxCgu/Ix5XerWL2xqID0++Pi6WTJgHj5UI
	 5W7Hb5j4Qv07H5x5pEuJAj+yRwIgXQCzYEIocUy2kpGxl9btqReSn+GnLlXDha0WOH
	 nxKO0zIoN7p0YzqPFjWY75fwf+FuUhXaeE4fG7+/b39pzdD7tx9Lds8keQpsfTz3N0
	 nMRbpbUloQYxwn7PXUpD2MPphW3mUpAZTAP9kJNQTKSAVTV1Tng/CqWM3dCVke8dQz
	 ooNGDMJe5m26oJZ0ao1PqtoyeDXLx54qu7+QUZ6yzPLlJxXZ/K63HhIhd3KwcwKUca
	 omviOhGOZjzUQ==
From: Lucas Tanure <lucas.tanure@collabora.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Marc Zyngier <maz@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof Wilczynski <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>
Cc: Qu Wenruo <wqu@suse.com>,
	Piotr Oniszczuk <piotr.oniszczuk@gmail.com>,
	Peter Geis <pgwipeout@gmail.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	Lucas Tanure <lucas.tanure@collabora.com>,
	kernel@collabora.com
Subject: [PATCH 0/7] Add PCIe2 support for Rockchip Boards
Date: Fri, 10 Mar 2023 08:05:11 +0000
Message-Id: <20230310080518.78054-1-lucas.tanure@collabora.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230310_000545_079347_BB590277 
X-CRM114-Status: UNSURE (   9.58  )
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

I am assisting with PCIe and networking bring-up for Rock Pi 5B (RK3588).
This chip uses the same GICv3 as RK356X but has fixed the previous
limitation of GIC only supporting 32-bit addresses.

We sent this RFC a few weeks back:
https://lore.kernel.org/all/CAMdYzYrmq1ftBaBj1XHVWWXUQ4Prr1VpTpunyNOQ2ha-DkXMjQ@mail.gmail.com/

The big change from that RFC to this patch series is the change from
ITS quirks to a DMA Non-Coherent flag, as sugested by Robin Murphy.

This is work based on prior work from XiaoDong Huang and
Peter Geis fixing this issue specifically for Rockchip 356x.
Plus comments of Robin Murphy about Non-Coherent properties.

Lucas Tanure (7):
  irqchip/gic-v3: Add a DMA Non-Coherent flag
  PCI: rockchip-dwc: Add rk3588 compatible line
  dt-bindings: phy: rockchip: Add rk3588 compatible line
  phy: rockchip: Add naneng combo phy support for RK3588
  arm64: dts: rockchip: Add ITS GIC600 configuration for rk3588s
  arm64: dts: rockchip: Add PCIE2.0x1 lane @fe190000 for RK3588s
  arm64: dts: rockchip: RK3588s: Enable PCIE2.0x1 @fe190000

 .../phy/phy-rockchip-naneng-combphy.yaml      |   1 +
 .../boot/dts/rockchip/rk3588-rock-5b.dts      |  18 ++
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     |  97 +++++++++
 drivers/irqchip/irq-gic-v3-its.c              |  22 +++
 drivers/pci/controller/dwc/pcie-dw-rockchip.c |   1 +
 .../rockchip/phy-rockchip-naneng-combphy.c    | 184 ++++++++++++++++++
 6 files changed, 323 insertions(+)

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
