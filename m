Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A341C53209
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Jul 2026 17:27:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=O4P8yZc0Cp30OeJl0KCcCzxXPqn5UZ7NOx1KhOnxVW4=; b=uXNB7fpCgKuqTW
	GCWUEIbNLgeVwLqHvPRaEMOqqAxuEbuUnVj3m0hPueSXXSPYJXgZr4wHfSucHXx3SgsqcdTELpVLK
	B17qXljeGzieuzqGm6clIVg+5C6vtqNQ9MEW+OPK0uaB1i9P8ROW3U5lKwG0M1iXTZFQdXdM4WaSE
	Ah3SLFxMd6co+q6RZKJAhev97WxmK1UcEzvM61lgkXp7szKoFije2TGInCztb+tdouhZU+h31HBp7
	f1OqpWJH+FMvci554rlnAThSmXIJNMMpe4IpNDU2+5DUYzwN5188S4mGvm34TQnGDFOMycUITvsh1
	nl1xFy8mPVwWbEJwY5hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woP6c-00000003W0P-3JF0;
	Mon, 27 Jul 2026 17:27:10 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woP6b-00000003W01-2lGY
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Jul 2026 17:27:09 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 0929B60008;
	Mon, 27 Jul 2026 17:27:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 189491F000E9;
	Mon, 27 Jul 2026 17:27:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785173226;
	bh=QbSmGlcEm+NM7m1xux9Dxpe77Mfj1kdUbl9HaEscqPc=;
	h=From:To:Cc:Subject:Date;
	b=c6XITLriTwJ99KZZyuiBSo+OQmzPWz3e4SykBDe1qn9dxvG9s+5DYPfSLw1Xs+ZrX
	 KbXEaU+cxCVDrNe8DzirbaJZXD7cXHTNNR7QcwtjVG+QU82m7ZaFUEofVl+v3iFd7a
	 IHiJzARV0zwjfU+zXsU/T77Qa7PgLABzxegw39ubqzN5dd1ruai9vSQ9AzgZHXv7WH
	 tCIVYEGbPbEMfjMiNTsQkKzaPOCy7bfYoA388GnnANbkPioV0bcGGwq3tHKwE79qtV
	 vcbro9WMKE+g6Al+IVDhluNU9/jqG3z+sFKbwo3TZrPtpGVagkBhaDUUJVXtG3DoFU
	 mVRE6kQXfdBBg==
From: Niklas Cassel <cassel@kernel.org>
To: Manivannan Sadhasivam <mani@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Shin'ichiro Kawasaki <shinichiro.kawasaki@wdc.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <cassel@kernel.org>
Subject: [PATCH 0/1] PCI: dw-rockchip: Add support to reset Root Port upon link down event
Date: Mon, 27 Jul 2026 19:26:55 +0200
Message-ID: <20260727172654.605988-3-cassel@kernel.org>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1897; i=cassel@kernel.org; h=from:subject; bh=awm+cFW2B4qi6iLTFJxIYgM8fBn09LH5Ju/RY0Em85Y=; b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGLLSp9wLS5O2qthq3SQkuGyPQXRI6ExB3kOKTjPiN952Z D6dpKTUUcrCIMbFICumyOL7w2V/cbf7lOOKd2xg5rAygQxh4OIUgIkY9jL8r37O56v5gNElMy0z YHvr6aNb55e4fL1SY7svf1FOXeXcFkaGh0dXehUJK80NFr8454Iwl9yUk8/8rXIuvNHveDQ1af4 CbgA=
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

This depends on Mani's v8 series with adds a reset_root_port() callback:
https://lore.kernel.org/linux-pci/20260518-pci-port-reset-v8-0-eb5a7d331dfc@oss.qualcomm.com/

Tested by using two Rock 5B boards and simulating a link down by doing:
echo 0 > /sys/kernel/config/pci_ep/controllers/a40000000.pcie-ep/start && \
sleep 0.1 && echo 1 > /sys/kernel/config/pci_ep/controllers/a40000000.pcie-ep/start
on the board running in EP mode.

We can see the root port being recovered on the host side after the link down:
pcieport 0000:00:00.0: Recovering Root Port due to Link Down
rockchip-dw-pcie a40000000.pcie: PCIe Gen.3 x4 link up
pcieport 0000:00:00.0: Root Port has been reset
pcieport 0000:00:00.0: AER: device recovery successful


Both before and after the link down, we get 19 / 23 tests passed when running
the pci_endpoint selftest.

Without this patch, after the link down, all BAR tests and MSI/MSI-X tests fail.



(Side node: When testing this patch on top of Mani's v7 series, MSI/MSI-X
tests still failed. Nice to see that this is no longer the case when testing
on top of v8. I did not do a deep dive to figure out exactly which change
between v7 and v8 that made all tests pass. It is obviously not:
[PATCH v8 1/5] PCI: dwc: ep: Clear MSI iATU mapping in dw_pcie_ep_cleanup()
as pcie-dw-rockchip.c never calls this function.
Thus, it must be some of the other changes between v7 and v8, or some change
in PCI core which now saves the config space during enumeration, which made
MSI/MSI-X work after a link down.)


Kind regards,
Niklas


Wilfred Mallawa (1):
  PCI: dw-rockchip: Add support to reset Root Port upon link down event

 drivers/pci/controller/dwc/Kconfig            |   1 +
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 134 +++++++++++++++++-
 2 files changed, 132 insertions(+), 3 deletions(-)

-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
