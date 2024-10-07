Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7AC1CFB440
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Oct 2024 04:12:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NAcU77MfBLJeHBUFDFUoHOberFLYc48sTFdp4m5vtpk=; b=p/OKXg+u0vYwcf
	2u9+YTUOhNrz7ifEAEQ6lzPZZ3SqRtqhlinVxpJxlvJMl20DMtDR10HVkSaCiDspFjTjPL4um/nJD
	xQ4OPEHJgHp7ZjrOhAxOAhCF/SvdzwcUHC864dj+3GF5YgbeUz5FNMRtg/K0IQLasjXtsUjkN9Epe
	7n0NgqYNWFlwLZmKtsJa5AsWS0t+D0bn7cb87xZqzlLQFgMLOBS9jUH8QCi7v9TF7vVchFenTGF97
	RMkll8jX0Y5TFecmfGUBceubCKPEbEqPegiIriKBR1UiG4TSdPyKdMpW4ZbhAB7Ow+FfO/idgqNxS
	IbEPnZG9NmlAgundowig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxf6o-00000001D0o-1JFU;
	Mon, 07 Oct 2024 04:12:34 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxf6l-00000001CyL-3XtA
	for linux-rockchip@lists.infradead.org;
	Mon, 07 Oct 2024 04:12:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1FBC35C5A76;
	Mon,  7 Oct 2024 04:12:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 33DA9C4CED0;
	Mon,  7 Oct 2024 04:12:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728274351;
	bh=zktM0WskKmnp+ZKqC5RGFOFYiXLFR0gT3RgJ3fgJtgw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ucjKKuO++3JQEC0ULvO6hFfjlamLaP8cmEOOiLPwNkzBBpF4gRvuRE6DkQKBE5GdY
	 YSMJaZkWIbPfMKVEmmQUI2I+++P6TQJjid4Faa8N+yLZk8vyqDKdMeyNhK02lu08J8
	 69/WnS4Y6+SUZpbqvPs/OB/D9Owd3I0xA+63rGV45iXrdrxbf5h4XoOxkDyvGW2LIv
	 7/CqsvCLo77L/WltZ1NXgsO8wsHiKssxEA3CUPVv2j81Lkxk+u3gRyn3e+NVXAU5v9
	 fbjFMa3V1FyXMNTNDAtZmyukrLKul2TmGLp9uh2RWdDlDT3LCh5wgtshOSVAl0WPIZ
	 omn2eDi4ZF4hg==
From: Damien Le Moal <dlemoal@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: [PATCH v3 04/12] PCI: rockchip-ep: Improve rockchip_pcie_ep_map_addr()
Date: Mon,  7 Oct 2024 13:12:10 +0900
Message-ID: <20241007041218.157516-5-dlemoal@kernel.org>
X-Mailer: git-send-email 2.46.2
In-Reply-To: <20241007041218.157516-1-dlemoal@kernel.org>
References: <20241007041218.157516-1-dlemoal@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241006_211231_949078_84FD3C71 
X-CRM114-Status: UNSURE (   9.25  )
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

Add a check to verify that the outbound region to be used for mapping an
address is not already in use.

Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
---
 drivers/pci/controller/pcie-rockchip-ep.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index 89ebdf3e4737..edb84fb1ba39 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -243,6 +243,9 @@ static int rockchip_pcie_ep_map_addr(struct pci_epc *epc, u8 fn, u8 vfn,
 	struct rockchip_pcie *pcie = &ep->rockchip;
 	u32 r = rockchip_ob_region(addr);
 
+	if (test_bit(r, &ep->ob_region_map))
+		return -EBUSY;
+
 	rockchip_pcie_prog_ep_ob_atu(pcie, fn, r, addr, pci_addr, size);
 
 	set_bit(r, &ep->ob_region_map);
-- 
2.46.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
