Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA111CFD378
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Oct 2024 12:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8+U/qphQca8YkG1NuSDbgcWK1JDaD+fzsw+0j4eupXM=; b=ohPWGboE1uKOet
	VoAmCL9nZGDkUI4rXtMNaX2CoCJuXX6woFAQfus940Juxz5BkC9fsGPF1PutZFXNH8SuYnqqWHjq5
	LrC1Qe6OQa2nV1c8yslhNmOs5emKflzsckJmgFaCj+0t8lODnS8F41+OIpSv1qvGK35j7RjK9jUbn
	dqPzHKe4GDZ5VgGYHDm8uwuBoZo1AZ24sRYhqIc1AWoJ+TSYs0ziDCXFyFuIpcrH3rQblZKKC5yOK
	H/G94GKgCTegl3eLvCiGMEbCMWu45LTOWTSd42DdaKtS8Yp+wnFgtR5xu4X37la1VMMBcnkQHY7Mw
	POxCp3WxIsv1lZA33Ajw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szEhd-0000000GHsi-39uB;
	Fri, 11 Oct 2024 12:25:05 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szEXF-0000000GFpf-37Oa
	for linux-rockchip@lists.infradead.org;
	Fri, 11 Oct 2024 12:14:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 32251A43E87;
	Fri, 11 Oct 2024 12:14:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1CA2C4CECD;
	Fri, 11 Oct 2024 12:14:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728648860;
	bh=fQ5LGyIBaK46oPYJY75HQ+s1l6zSxG5jS7LECMmdORg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=G5zgAa5CrOc9lo3nDI25cqkuu2ZncQ5zNPwL3Ia4OAPYD8aBDQCaXzF8Z+juq0ob3
	 6vx2/sk3kvkJuFXDoNwddtZI9CBZMc0jYHyeYE81T2jv46n7+6P7QvgVrTq7E+Lo90
	 7p72g/sIniO7yrq9UPdN/4mnebNVn43A5nNJTlDYN3iwsKDnr+ghnUbGky2UadeA9Z
	 ribttT+rSBnsPpN6nFPQvWiRTFW9KGEDV8FD0ikY9SK1iSrNwLVorhEABAdJvMwf+c
	 0LBZpeMuZaT8ONUBltIXEKiHHxrl/+aQQ0yvfyMBsRl66bPRdvALLSsH3iatnNvMup
	 06WPKSkIUcG9Q==
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
	Niklas Cassel <cassel@kernel.org>
Subject: [PATCH v4 04/12] PCI: rockchip-ep: Improve rockchip_pcie_ep_map_addr()
Date: Fri, 11 Oct 2024 21:14:00 +0900
Message-ID: <20241011121408.89890-5-dlemoal@kernel.org>
X-Mailer: git-send-email 2.46.2
In-Reply-To: <20241011121408.89890-1-dlemoal@kernel.org>
References: <20241011121408.89890-1-dlemoal@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241011_051421_920346_52F35CF1 
X-CRM114-Status: UNSURE (   8.91  )
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
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
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
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
