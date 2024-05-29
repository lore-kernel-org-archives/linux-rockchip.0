Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F31E7C25B75
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 May 2024 08:29:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kuu1EincVhfArC24yw9NP2q+5r+JuuNL2wgX4VZDpcg=; b=eP9dH0Z3JyS6Ms
	XekPMfVWTcYc6ph84kFYZeCK3nXDdBCrgZUIsrxWX7VgBmZX/cZuYx2iFeG7V+txMJOVa1fb42MB2
	4KKjFjGwSb/CLrNM4ucsQP5EYrUeGpBKC0lFJYL4Ka/3KtwTWT3qOpZjg+gD0SCuqma3HceR2Jj4m
	Jp23d9Is3X6fR68HVjYRGzd8yp5OO7LCGCCxRQ0NdHlNck5fRPcoK4wArTroaf85tuLn9yZ4tO/dv
	irwU/nnp4wF4Fd4N8gr/texpXqLqeMofyu0PREVEQimroTFLKHb6ahpBi5BxyyvFTYXAmY9uUZ0VH
	MxAmr/pYh7xIPHZtr4CQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCEgw-00000003Oi2-1I2q;
	Wed, 29 May 2024 08:29:50 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCEgr-00000003OeB-04oe
	for linux-rockchip@lists.infradead.org;
	Wed, 29 May 2024 08:29:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 3820C626FC;
	Wed, 29 May 2024 08:29:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3BD3EC4AF0A;
	Wed, 29 May 2024 08:29:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716971382;
	bh=j29Odjmid02gVXIY5mRFCi+Esy8gIr9tXG/wl62J2qI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=RFGVC93vi/1w7P/FWNhVdBwm1mpeCcOFUviLios9IyLqeoSSHA/D/z8wlYXVys4RC
	 F4H2umpX32USOj8b8AaoyvuAUzuhVOs4EnxXq6mXZo6ajpluMp6KKy7+NTD+XM6pWd
	 78doFhIvyx7GooTRDiKxhhP0zIvqf2J9YNyuFzVJIoNyDr9pbYAlIx0maZmv9B7/Xe
	 Pkf+RumNOZ0Ln1Q4e0Wna0FoHdkFRwjUdAjj82jaYTKOy5SDZkOk18JS3A2Cew64Ed
	 xFFtFothCeXw/QV1IEwlgoveIsLvWSMGZYMX3mzLagQeLZIE3RtEM9xRDYgqr2mMZb
	 Q91twdZtTvpgw==
From: Niklas Cassel <cassel@kernel.org>
Date: Wed, 29 May 2024 10:29:01 +0200
Subject: [PATCH v4 07/13] PCI: dw-rockchip: Fix weird indentation
MIME-Version: 1.0
Message-Id: <20240529-rockchip-pcie-ep-v1-v4-7-3dc00fe21a78@kernel.org>
References: <20240529-rockchip-pcie-ep-v1-v4-0-3dc00fe21a78@kernel.org>
In-Reply-To: <20240529-rockchip-pcie-ep-v1-v4-0-3dc00fe21a78@kernel.org>
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
 h=from:subject:message-id; bh=j29Odjmid02gVXIY5mRFCi+Esy8gIr9tXG/wl62J2qI=;
 b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNLCnoeevvBM8P2lxolLF685d/3q2VuF7AclEhxTXOI9J
 0ozdVyL6ChlYRDjYpAVU2Tx/eGyv7jbfcpxxTs2MHNYmUCGMHBxCsBEeBMY/mcIV9clmN7Mlnz5
 stO+wPLI1YdXIq9Lvz83xaXnhrnNRX2Gv2JOG7ccyfHr1q2M5bmarJO2ZemkHSvnX5utb5JXLSD
 UwwYA
X-Developer-Key: i=cassel@kernel.org; a=openpgp;
 fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240529_012946_977507_359FB235 
X-CRM114-Status: UNSURE (   9.22  )
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
2.45.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
