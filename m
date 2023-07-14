Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA9E2C0015E
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Jul 2023 17:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9tTNUgjys1IGEQ0ALbk2xm3uzizHvdluxBtHpOHYZOw=; b=kVYtbMjXQZfHrO
	tSR8AASrGcZW3sr1TjZ2qRqDlDhgyEXH6X8JwilZRUDDd8QERiopuvYH0AWvaPIH/k+wPo6tFU5Yv
	Go5UrxBbeNiexCx7/xn80kHRaVOLb3Kg20NKMtAW7QwRJvT7KLBzQUHhHDqgXcvRgsEZosl8WGmXN
	ic/GgohLmLJV/gRnPXaDL/ucnWw5isyVqZOxQIUsdtf+5UoASclxSo5PgPA/TvpBSyPn2WNC0NYSZ
	QvVcsrPCgUUqCIdJD91fLvC6QVlV8OILyaFjmJxaCZMZaKNTqtzxu6dV285eb3oQz0Bxb8LZwTMKp
	YfWqmsxs7Z0OGdKKLfyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qKMzP-006tWN-19;
	Fri, 14 Jul 2023 17:53:59 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qKMzK-006tQj-0C;
	Fri, 14 Jul 2023 17:53:55 +0000
Received: from jupiter.universe (dyndsl-091-248-208-179.ewe-ip-backbone.de [91.248.208.179])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 53ACE660705D;
	Fri, 14 Jul 2023 18:53:46 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1689357226;
	bh=FczUiEAzzQBtsoR9lRmrYRZD3J3QEHCfLQl3HWDnUwQ=;
	h=From:To:Cc:Subject:Date:From;
	b=Wy1bcYH9MbPGBu4PRaxJWzSZljL9LaYiO7taf2v9yJttJucxlOoUBVr9L3YW067dj
	 cohcOyDK/L7T2W19rwR4Xd66NmcIFSTiXT4nIk+Cpx4flkVVIQZ4L6kWo4wMyJKk9F
	 DWrDCps4s9zVD59p6wQdYWND3LbvOEMLoNK9GBrTD44Nne41CSwA74N4GWdGTUKku5
	 yaqpGKGs49qxsSszQnrXZfAGaqv8N4YgC+uITs8FTVhjSHlYzERfBs3oWaDONmDQq7
	 1xQkfDCK++rkEjfhsd3hMf3mdw07BVXHEFKTFf6+hRuGvqubOVWodpvL7LF7ma0WR6
	 QrKR3owvuhqHA==
Received: by jupiter.universe (Postfix, from userid 1000)
	id C01224805A0; Fri, 14 Jul 2023 19:53:43 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Serge Semin <fancer.lancer@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>,
	John Clark <inindev@gmail.com>,
	Qu Wenruo <wqu@suse.com>,
	devicetree@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v1 0/2] RK3588 PCIe3 support
Date: Fri, 14 Jul 2023 19:53:29 +0200
Message-Id: <20230714175331.112923-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230714_105354_292473_C5522BBF 
X-CRM114-Status: GOOD (  10.38  )
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

Hi,

This adds PCIe v3 support for RK3588. The series has been tested with
Rockchip RK3588 EVB1 and a PCIe wlan card, I will also test Rock 5B
next week. The series depends on the PCIe v2 series [0].

Note, that the PCIe3 PHY driver is currently missing bifurcation
support for RK3588. Thus after this series only PCIe3x4 is usable
(in aggregated x4 mode) without adding support for the PHY's
"rockchip,pcie30-phymode" DT property, which allows configuring
how the lanes are distributed. Apparently this seems to be the
most common configuration. Both EVB1 and Rock 5B use it, so I
cannot test anything else anyways.

[0] https://lore.kernel.org/all/20230713171851.73052-1-sebastian.reichel@collabora.com/

-- Sebastian

Sebastian Reichel (2):
  dt-bindings: phy: rockchip: add RK3588 PCIe v3 phy
  arm64: dts: rockchip: rk3588: add PCIe3 support

 .../bindings/phy/rockchip,pcie3-phy.yaml      |  33 ++++-
 arch/arm64/boot/dts/rockchip/rk3588.dtsi      | 128 ++++++++++++++++++
 2 files changed, 156 insertions(+), 5 deletions(-)

-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
