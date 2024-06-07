Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C11BC27C5F
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Jun 2024 11:15:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g+D6GOGA9eZfIT8dFDLZCX4xR+LmlbpDQOIgqUMndEc=; b=B6idX/8WUfDRG7
	Qa9nMnzdnJ8/d5+ctGy9RSg+kpv6WItecyqO3FsmvN/fn8q4ZfwEiM//57HDqZYA7Kc4AudIXwM5q
	m7AHWFdJH62By2ciwSvC0WcxUP8e82+QGHMuHOOofokmVXtDZ+D66y5D4CJU88bEvzgNBjuMLXFnc
	EH7SFTSIQupHMi8AWdMMWxX8/ITy/804tZHRXUnqbrLTRbnWrZAA80O6/mPKRfYTH6qODilK9YLc/
	lNiS8bao/g0ozQ4N2fKQN6nxQqUjIchrG0aMC98Paa4zn/lkhMEkkk7fbTrnXYHVl4ybYR0uf5oM9
	i5RwEW3VSN0jBnwuDzOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFXYm-0000000DfoT-1xua;
	Fri, 07 Jun 2024 11:15:04 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFXYk-0000000Dflm-06sd
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Jun 2024 11:15:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 2403D6023F;
	Fri,  7 Jun 2024 11:15:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F0D24C32786;
	Fri,  7 Jun 2024 11:14:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717758900;
	bh=HF1cT1n/j3H272zD21vdJUmtNKwy4TQb7n0YJPDctKQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=nVR9V6aJ51pUgq4zgYLaHTdrUaDbfoGQ/hsu9wKodvIhtorz1BUVH7gt9nbNs4ouJ
	 /c59uE4IdekYYJXUjpGlP0hgfG1dGH1fmVU8kWSUvnatiTeGLGyvlcwIlElmtoeIVb
	 XA749jNMAhHuVFfVps2aKTXk1Jg23DnuLN9LiR6EhcMJvHvpcGnZZJSF/IDROamJqV
	 q+1k6kzFFMkWOmkFjr/cT23/p9+QSEWklEhcL9jbHRiQhx9R5c2JC/kpPqr7s1PQKv
	 NIBHSHqomC+sRjdhB2slzsbQ0sxnTUTv3uzvK9Ohc3QQ3qhDIbk49UVRGsngponCPu
	 ncfWo86n1U9ew==
From: Niklas Cassel <cassel@kernel.org>
Date: Fri, 07 Jun 2024 13:14:27 +0200
Subject: [PATCH v5 07/13] PCI: dw-rockchip: Fix weird indentation
MIME-Version: 1.0
Message-Id: <20240607-rockchip-pcie-ep-v1-v5-7-0a042d6b0049@kernel.org>
References: <20240607-rockchip-pcie-ep-v1-v5-0-0a042d6b0049@kernel.org>
In-Reply-To: <20240607-rockchip-pcie-ep-v1-v5-0-0a042d6b0049@kernel.org>
To: Jingoo Han <jingoohan1@gmail.com>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Niklas Cassel <cassel@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
 Damien Le Moal <dlemoal@kernel.org>, Jon Lin <jon.lin@rock-chips.com>, 
 Shawn Lin <shawn.lin@rock-chips.com>, Simon Xue <xxm@rock-chips.com>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-rockchip@lists.infradead.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1187; i=cassel@kernel.org;
 h=from:subject:message-id; bh=HF1cT1n/j3H272zD21vdJUmtNKwy4TQb7n0YJPDctKQ=;
 b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNKSXk/aFXN7u2O/Q9Oahz57K6K5YhiXF5XNeRJqqf6ho
 sr3/CrxjlIWBjEuBlkxRRbfHy77i7vdpxxXvGMDM4eVCWQIAxenAEzk0HpGhkdszgmN6fPkHsny
 xOfGCL+tidjLv69bVCMy1+Te8bkc3IwM7e/+cml9lb51bKGRcUjYR42s3xGJC1/dLkrt1Oq6Oom
 LFwA=
X-Developer-Key: i=cassel@kernel.org; a=openpgp;
 fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240607_041502_330995_6B86C031 
X-CRM114-Status: UNSURE (   8.72  )
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

Fix the indentation of rockchip_pcie_{readl,writel}_apb() parameters to
match the opening parenthesis.

Signed-off-by: Niklas Cassel <cassel@kernel.org>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index 61b1acba7182..3dfed08ef456 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -60,14 +60,13 @@ struct rockchip_pcie {
 	struct irq_domain		*irq_domain;
 };
 
-static int rockchip_pcie_readl_apb(struct rockchip_pcie *rockchip,
-					     u32 reg)
+static int rockchip_pcie_readl_apb(struct rockchip_pcie *rockchip, u32 reg)
 {
 	return readl_relaxed(rockchip->apb_base + reg);
 }
 
-static void rockchip_pcie_writel_apb(struct rockchip_pcie *rockchip,
-						u32 val, u32 reg)
+static void rockchip_pcie_writel_apb(struct rockchip_pcie *rockchip, u32 val,
+				     u32 reg)
 {
 	writel_relaxed(val, rockchip->apb_base + reg);
 }

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
