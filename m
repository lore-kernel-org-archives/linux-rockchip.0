Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F857C27C53
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Jun 2024 11:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O4eTzleGVOZgGZJuLSz3gtjUJVnWN/UJlSPTQt1bULA=; b=nuSZtBA3gmzR0a
	XiHZEV3SmGNXM+wi/h1Vhd0doh7jC0tCOul9Mh+/wtCQw5LLMr1t+7O4BLmalf+YWcqaXIbRZufEv
	rQQ6Xm28ZWMIeUouWJnn+ZehOXv0s0tT1rCcCpMej4z566Yw50qlaZB/82wgGh5gx0OiVpQi+lFEw
	q78ZYs5NyhE8EwKET07FVrbkhHtPcXWNg8ap5/SI0zI9xC4jXhHqWsVRCp5k4CUmtdRXuVR+BkNyd
	Q19Bh53UZBJ0JpDtAwNy8n+Nj753RwmZbA5CIkSNM1gCpPjJhMWIR15TXAVcWPf4ZsICgXDWcBt1C
	lYuJqAdT5KNYZm/8nTDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFXYd-0000000DfiC-1gR2;
	Fri, 07 Jun 2024 11:14:55 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFXYb-0000000DfgB-0SI1
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Jun 2024 11:14:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7948D61F44;
	Fri,  7 Jun 2024 11:14:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5281EC4AF09;
	Fri,  7 Jun 2024 11:14:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717758892;
	bh=YBd0KTeYI4LPzEdWB+dde91dnzjhiAIa4BUjAunYhAM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=uGEOQcp5y24etqgOhR5hA7h68TvmWcAynZeBOdCiY/lzcm9nk9UPHqp1sByFT9sxn
	 bvzlQxvZIhXKKUUfWhZcatkpDZ74YEe8hF/8kL1new/Fj3ahYl1FUyRNZaknHjK0SM
	 MzyyPd6RFHsU467WLJcsVDIZrvrUjWeFD+KJrAozhK9mbNYM4N1JRcDeGMZcIa9uCi
	 jww/zGRsYrHUlJkLUaXYwCOmdh4VdHARA3csf1t1aheWuah52PQi8FxqeavKnIR/Q2
	 +joNoIdleKp1JjtkR8yHzQ/I7bDPk4wzi2c9SmceEIk+6zIBF/euxdA6JvcXlqPTHI
	 SNp5gxh3BlMNA==
From: Niklas Cassel <cassel@kernel.org>
Date: Fri, 07 Jun 2024 13:14:25 +0200
Subject: [PATCH v5 05/13] dt-bindings: PCI: rockchip-dw-pcie: Fix
 description of legacy irq
MIME-Version: 1.0
Message-Id: <20240607-rockchip-pcie-ep-v1-v5-5-0a042d6b0049@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2021; i=cassel@kernel.org;
 h=from:subject:message-id; bh=YBd0KTeYI4LPzEdWB+dde91dnzjhiAIa4BUjAunYhAM=;
 b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNKSXk/kaP9wUJ/3zktWh4Zj/eGFBhZ+RldkYzbOuSs9L
 ffEo5XOHaUsDGJcDLJiiiy+P1z2F3e7TzmueMcGZg4rE8gQBi5OAZiIhDgjw+puyRtbmplmNXEm
 p/N4Rkh3f/1uuZw98gjr5ljf7UaHbjP8r+A59zlMsXV3vR2PdJOlz8vow3J+1meZknc+n3isO1C
 ZGwA=
X-Developer-Key: i=cassel@kernel.org; a=openpgp;
 fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240607_041453_309364_20ECC75D 
X-CRM114-Status: UNSURE (   9.48  )
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

The descriptions of the combined interrupt signals (level1) mention
all the lower interrupt signals (level2) for each combined interrupt,
regardless if the lower (level2) signal is RC or EP specific.

E.g. the description of "Combined system interrupt" includes rbar_update,
which is EP specific, and the description of "Combined message interrupt"
includes obff_idle, obff_obff, obff_cpu_active, which are all EP specific.

The only exception is the "Combined legacy interrupt", which for some
reason does not provide an exhaustive list of the lower (level2) signals.

Add the missing lower interrupt signals: tx_inta, tx_intb, tx_intc, and
tx_intd for the "Combined legacy interrupt", as per the rk3568 and rk3588
Technical Reference Manuals, such that the descriptions of the combined
interrupt signals are consistent.

Signed-off-by: Niklas Cassel <cassel@kernel.org>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 Documentation/devicetree/bindings/pci/rockchip-dw-pcie-common.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie-common.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie-common.yaml
index 60d190a77580..ec5e6a3d048e 100644
--- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie-common.yaml
+++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie-common.yaml
@@ -56,7 +56,8 @@ properties:
           pm_pme, pm_to_ack, pm_turnoff, obff_idle, obff_obff, obff_cpu_active
       - description:
           Combined legacy interrupt, which is used to signal the following
-          interrupts - inta, intb, intc, intd
+          interrupts - inta, intb, intc, intd, tx_inta, tx_intb, tx_intc,
+          tx_intd
       - description:
           Combined error interrupt, which is used to signal the following
           interrupts - aer_rc_err, aer_rc_err_msi, rx_cpl_timeout,

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
