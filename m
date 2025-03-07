Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EA02C282DE
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Mar 2025 12:49:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Y0V04uwmPkQ7qzESXLXTtkWPVuu8DKvLiFmn5nd482M=; b=wEfXILRGBfzMr0
	Nw6Jy/VlPnRz+H5sK9I86KZju+3iKplj1eqiCHv3cclHDM4HkXki6ozOJ8Bdxhcc89xX6fIfgHxHc
	GgBQ1F1KhDd7qNysGHNbZBOq6cDspNJykFdBXPcZHBOXB9XlPeW99QQIDrnX0najW+Ohl2/ofI4+g
	mvaAmkiDJg4DmUYYbwQbJ4IA593/rDlnwjsgpT6GGE0MihGtzdTgNPDrHPaLHoIFDVtAD0qAW0aYO
	SdRnKE6JgwI4cjHv/AM3xn+suyGEZNNh5WbelXKSLtvpe5DAHs3Cb1snp7oZAwViYlOrNc3UNr0gu
	OrotAqUxIekWarYg1D9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqX8p-0000000EDtn-3FJQ;
	Fri, 07 Mar 2025 12:49:27 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqX7C-0000000EDcx-12Or;
	Fri, 07 Mar 2025 12:47:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A18335C5B74;
	Fri,  7 Mar 2025 12:45:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 161CDC4CED1;
	Fri,  7 Mar 2025 12:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741351665;
	bh=eebdH19nLfGoKUJNH34HZZaZP6NaKX6DEIiCpB3f6Lo=;
	h=From:To:Cc:Subject:Date:From;
	b=u7ViVJrDpqN+mT4mZT+xSYO2ClkyDG9Rl99wfsKlhmViodfOMLWWUHJKtOp67z7nT
	 oaydjmQqP0KikpvOZaSWE0JTQ9S95T+hV8DvWUvEdITFnCe2cucrUxRCzEuVFyvDQY
	 V8rLg8FzZBFUeoKXmJqHvnzjvSHpo7BMXHebAETsmLH4P7Nb0Oo+fTEcz4cv5syV3G
	 mGWqlvXg7ep2XHJr6MqLmpzieiVm8MMCmMfTfmQmVpDCAjiKWDzVuhShSYiQJS+xIt
	 eAEkg5QsmDm5gu5cmJje6w97zEGAL59WjM+eXgx2Ak2W8CGMAOt2krjPR2rWi52U03
	 80BvM/yyeOf1g==
From: Niklas Cassel <cassel@kernel.org>
To: Jingoo Han <jingoohan1@gmail.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
	linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 0/2] PCI: dw-rockchip: hide broken ATS cap in EP-mode
Date: Fri,  7 Mar 2025 13:47:33 +0100
Message-ID: <20250307124732.704375-4-cassel@kernel.org>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=933; i=cassel@kernel.org; h=from:subject; bh=eebdH19nLfGoKUJNH34HZZaZP6NaKX6DEIiCpB3f6Lo=; b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNJPvXpafsFIIHRO3LyM0/ZJLn79s6V+hJ5c/mP+0eq0x OS7z0/f7ihlYRDjYpAVU2Tx/eGyv7jbfcpxxTs2MHNYmUCGMHBxCsBEvGUYGTo19W8/XZPRc6aj 7iLTj3npXuf+hp1Jvx/89vBylrqP0qqMDP2LPSJ+vV737pGQ7IN/b38oL/r19/Xta8azzwdvSwi 7JMEOAA==
X-Developer-Key: i=cassel@kernel.org; a=openpgp; fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250307_044746_337076_82602C79 
X-CRM114-Status: UNSURE (   8.35  )
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

Hello there,

Address Translation Services (ATS) is broken on rk3588 when running the
PCIe controller in Endpoint Mode.

This causes IOTLB invalidation timeout errors on the host side when using
and rk3588 in Endpoint Mode, and you are unable to run pci_endpoint_test.

Solve this by hiding the ATS capability.
With this, we do not get any IOTLB invalidation timeouts, and we can run
pci_endpoint_test successfully.


Changes since v1:
-Created a generic function to hide an extended capability.
-Picked up tags.
-Improved commit message.


Niklas Cassel (2):
  PCI: dwc: ep: Add dw_pcie_ep_hide_ext_capability()
  PCI: dw-rockchip: Hide broken ATS capability

 .../pci/controller/dwc/pcie-designware-ep.c   | 38 +++++++++++++++++++
 drivers/pci/controller/dwc/pcie-designware.h  |  7 ++++
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 27 +++++++++++++
 3 files changed, 72 insertions(+)

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
