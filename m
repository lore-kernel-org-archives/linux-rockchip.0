Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57917C71136
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Jun 2025 13:20:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sh2MM1kCfX9Dm0/5xHl8qtwaT8Z/s5aLjgFTIN+MFME=; b=A/99X2QvD+uqul
	U42pwr0ff3FH9lwe5eP/NoJvatBEs4OrqPBIXjp29U3V4EwqS48wl5Yh5qSkjdSaFoVbchHg6hX+h
	5AkF8GIhcXPmIA8g4KdsOJlH93QdLKQlvaFxhu1wWFFxZ8/dPa9bkEKF0GFb6KQD6XvOv/m0p5a50
	2bU9pgWWlUr8gQkff9wlcq4ayMsOGzERSNYtptwtCqgR67BZcx2X2wzpiekiE64ncQJOa480wKTMa
	h9vPxI98YFle+lUmeUZkM3QTdj+K2FqZZdKDj4A+AGkAm5+oMm5L/z3+GP8N0S3TfIfeHQodGiRCJ
	skvbHt2Y7VVE2vaaB6uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPhqW-0000000DOFd-1B7m;
	Thu, 12 Jun 2025 13:19:56 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPgRJ-0000000DBhN-10mi;
	Thu, 12 Jun 2025 11:49:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 72B47A51C34;
	Thu, 12 Jun 2025 11:49:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 61258C4CEEA;
	Thu, 12 Jun 2025 11:49:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749728988;
	bh=njIe3vfl/yf5a86Ak2CvrAcNRqdijy5GYXgG3V1TR/Q=;
	h=From:To:Cc:Subject:Date:From;
	b=aR2f9CzX4sSdrcF01pGjRWKZr3p5X2TCpNofdfzPk+Whcf3aQIjbaVvLHASzaA8VR
	 Ahg5SQQTsjzoYwwndIrmsZJ6bhIVUH8WWsSBUgKyeN3lIabuKC4Tf7K74Ioqk1471x
	 AOw6553PZud0t0e23XIFz4uJujc1WAvGx1pkz6nIHaP2SvG3xBXUQqbVWZFP7Rq/a5
	 UCTpG3aw8C4bbWTW/CaHPTMHIKX9ngyp1qN9Y6PSYhQSLi8VM+duuZBcVuhJtRB5E7
	 FQ3ce7GO/0If2ta0VEmtQx/XLCTfgdXwisiGIqvB8xldCdqGEvTqUmOReDhv6MQCCp
	 cEhVg2r91nWoQ==
From: Niklas Cassel <cassel@kernel.org>
To: Jingoo Han <jingoohan1@gmail.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>,
	Stanimir Varbanov <svarbanov@mm-sol.com>
Cc: Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Laszlo Fiat <laszlo.fiat@proton.me>,
	Niklas Cassel <cassel@kernel.org>,
	linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-msm@vger.kernel.org
Subject: [PATCH v2 0/5] PCI: dwc: Do not enumerate bus before endpoint devices are ready
Date: Thu, 12 Jun 2025 13:49:23 +0200
Message-ID: <20250612114923.2074895-7-cassel@kernel.org>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1672; i=cassel@kernel.org; h=from:subject; bh=njIe3vfl/yf5a86Ak2CvrAcNRqdijy5GYXgG3V1TR/Q=; b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGDK89h3m2vVR+7+JaGj15ilvzx6Pt/HZqLl0zfpvcXVTK 76sln64raOUhUGMi0FWTJHF94fL/uJu9ynHFe/YwMxhZQIZwsDFKQAT2cLB8JutaP6tsqf56uE9 wuVTp1tNPtR5+TjbPw+7z1/Xs+9c5fqf4b/rVptpMlkFh7W2Wa4/pV9cHFEqwLR0+iI12RXOHJ/ /zWUDAA==
X-Developer-Key: i=cassel@kernel.org; a=openpgp; fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250612_044949_348116_5DBEC96D 
X-CRM114-Status: UNSURE (   8.10  )
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

Hello all,

The DWC PCIe controller driver currently does not follow the PCIe
specification with regards to the delays after link training, before
sending out configuration requests. This series fixes this.

At the same time, PATCH 1/4 addresses a regression where a Plextor
NVMe drive fails to be configured correctly. With this series, the
Plextor NVMe drive works once again.


Kind regards,
Niklas


Changes since v1:
-Put msleep() before the dev_dbg() that says "Enumerating bus" (Damien)
-Rewrite comment above LINK_WAIT_MAX_RETRIES / LINK_WAIT_SLEEP_MS (Damien)
-Remove comments above PCIE_RESET_CONFIG_DEVICE_WAIT_MS (Bjorn)
-Use different Fixes-tags (Bjorn)
-Shamelessly took Bjorn's commit message for patch 1 and 2 (Bjorn)
-Use PCIE_RESET_CONFIG_DEVICE_WAIT_MS rather than PCIE_T_RRS_READY_MS
-Add new patch (5/5) that drops PCIE_T_RRS_READY_MS


Niklas Cassel (5):
  PCI: dw-rockchip: Wait PCIE_RESET_CONFIG_DEVICE_WAIT_MS after link-up
    IRQ
  PCI: qcom: Wait PCIE_RESET_CONFIG_DEVICE_WAIT_MS after link-up IRQ
  PCI: dwc: Ensure that dw_pcie_wait_for_link() waits 100 ms after link
    up
  PCI: dwc: Reduce LINK_WAIT_SLEEP_MS
  PCI: rockchip-host: Use macro PCIE_RESET_CONFIG_DEVICE_WAIT_MS

 drivers/pci/controller/dwc/pcie-designware.c  | 13 ++++++++++++-
 drivers/pci/controller/dwc/pcie-designware.h  | 13 +++++++++----
 drivers/pci/controller/dwc/pcie-dw-rockchip.c |  1 +
 drivers/pci/controller/dwc/pcie-qcom.c        |  1 +
 drivers/pci/controller/pcie-rockchip-host.c   |  2 +-
 drivers/pci/pci.h                             |  7 -------
 6 files changed, 24 insertions(+), 13 deletions(-)

-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
