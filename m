Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BCC1C677C4
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jun 2025 14:53:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=quM3Pyrw21XhCTVFmUMBlkScDLeSdzBUhqloYULr0IQ=; b=LRTjsH6OPxiLgA
	VAcK5Wy9RtOW4g+ZtJEMQHiG/+0IsPvbTnbyU9xbojJ3I7OIcQqFlEFkdXRsbrR7l7ix7LNnaf6/T
	KtS99IWGmhSPclYSAqMTCyuc7BNVayBMvgEaPtIPmi/oSzAUi+KbF8TT3/FpuSRASR5k1Ln2K7o/Y
	mKK6qQ4RoH3K5alRZHNTKhiqegctlYif+YtX3Ws9gUSEpj4g3utQ8SMvS9tBUv1e7cK6Nw/65vfp1
	j0xtjh19of75Lz+h7f2I/QZE+ogeWZnk9Wqi3X8qyklpwElqxn7QkiQWtKzbzAq6it7ZNUSut9XjJ
	84zWjECXe2r2sP3eQMBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPMp1-0000000AGUT-3Lj7;
	Wed, 11 Jun 2025 14:52:59 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPJ3h-00000009fjw-0H3j;
	Wed, 11 Jun 2025 10:51:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 63BD5629C0;
	Wed, 11 Jun 2025 10:51:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D312BC4CEEE;
	Wed, 11 Jun 2025 10:51:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749639112;
	bh=z0f/Wl+RIL7QWDaLPnNb/sYLDEt+cxVqTNutC/oQKZ8=;
	h=From:To:Cc:Subject:Date:From;
	b=rNmCopHTHN4je/LVKOBaApYhwDFxkotPQAy76zchHZCEZ2c/Prph0G1CfR7hCkpoZ
	 lvnXKfkUZfarXm2zOY6F3DXBge++Ih5a4uHUr6pYySjdmDMYE0VXBOIQbKutFgbK+5
	 t4LemLolrVwRPQR+Ery6bhgFDjbz/RMBua/9JpQBIyLQw1gsuJR2cGlYHLJ9gXWocl
	 TDKFmDTmXtsmSS5PyxkwrRP2Ok9LC+gE8znzFMVFRvTDxBfIiYuzjUe37T9gBnRBla
	 d4u/+RGOqe9TfxmGy2HrXO2QPWQ5szxGbGuWFO466TPp6IteWh/ffnWXrIAszz85RB
	 DSR5602ZZsKYw==
From: Niklas Cassel <cassel@kernel.org>
To: Jingoo Han <jingoohan1@gmail.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Niklas Cassel <cassel@kernel.org>,
	Krishna chaitanya chundru <quic_krichai@quicinc.com>
Cc: Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Laszlo Fiat <laszlo.fiat@proton.me>,
	linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-msm@vger.kernel.org
Subject: [PATCH 0/4] PCI: dwc: Do not enumerate bus before endpoint devices are ready
Date: Wed, 11 Jun 2025 12:51:41 +0200
Message-ID: <20250611105140.1639031-6-cassel@kernel.org>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1032; i=cassel@kernel.org; h=from:subject; bh=z0f/Wl+RIL7QWDaLPnNb/sYLDEt+cxVqTNutC/oQKZ8=; b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGDI84/d8v9pfETT/yp57mUp7fxjsW6J4bssB9hdKjzTWR 9jxGLdP6ChlYRDjYpAVU2Tx/eGyv7jbfcpxxTs2MHNYmUCGMHBxCsBEhOUYGabv4/c+wnz8l8L/ HbM1DvyP52Sv0Lvwz/e0fP//hxNYNNkZGW5ulbV69i1ps5B1cLWNSOK+P3ySC1hFZ3xncDWIe3/ WmhkA
X-Developer-Key: i=cassel@kernel.org; a=openpgp; fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
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

Hello all,

The DWC PCIe controller driver currently does not follow the PCIe
specification with regards to the delays after link training, before
sending out configuration requests. This series fixes this.

At the same time, PATCH 1/4 addresses a regression where a Plextor
NVMe drive fails to be configured correctly. With this series, the
Plextor NVMe drive works once again.


Kind regards,
Niklas


Niklas Cassel (4):
  PCI: dw-rockchip: Do not enumerate bus before endpoint devices are
    ready
  PCI: qcom: Do not enumerate bus before endpoint devices are ready
  PCI: dwc: Ensure that dw_pcie_wait_for_link() waits 100 ms after link
    up
  PCI: dwc: Reduce LINK_WAIT_SLEEP_MS

 drivers/pci/controller/dwc/pcie-designware.c  | 13 ++++++++++++-
 drivers/pci/controller/dwc/pcie-designware.h  | 11 ++++++++---
 drivers/pci/controller/dwc/pcie-dw-rockchip.c |  7 +++++++
 drivers/pci/controller/dwc/pcie-qcom.c        |  7 +++++++
 4 files changed, 34 insertions(+), 4 deletions(-)

-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
