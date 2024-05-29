Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 525E1C25B7E
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 May 2024 08:29:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=frkhBZnwh/oBNU6y+gNBXvXUtXvMP8RMHzeMSO7d8bM=; b=Z9Is+is39mVQVE
	dZuHlv7TubRexnjOUvChMU4o26OhDL0taxcN3dK4GCOlF+iY3gbOsQ/puk8F50zjv2h/BLTyFJ208
	cZIeZ83EPfF9TFrS5PcP5mMWZs5OfB/A9hp4fRjoXVOZeKoH1Bdg6u3w96lXdabhubsuZhwIsZa/i
	pdrKZC9051u7AhGgi468PzdFLZR+xrobG25YAon6FfDDrVA6wcpiHAuVobwUMrMYwuqvDKLII8CbV
	VytA5GqOcp51Ayqi1/lk3Y2N0lWzbYGKienx4LTUGP78UokMG7sEV3g1S0VVNnF9Yo02FgkOVLApk
	EIWsZTDGsaeOmeRHtVqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCEgo-00000003Ocw-09Hy;
	Wed, 29 May 2024 08:29:42 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCEgj-00000003OXF-0ie5
	for linux-rockchip@lists.infradead.org;
	Wed, 29 May 2024 08:29:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 85AC3CE16FC;
	Wed, 29 May 2024 08:29:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E9A56C2BD10;
	Wed, 29 May 2024 08:29:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716971374;
	bh=DgDwrueIemNRUbe/G47rptzZcqdtSi36/c0CqD/3bpc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=lvPQdGTUaVlg1aqniVj6oGLXetp4BruksxRNlzdqZhWsTycgI43tlsgfYsWEJslbj
	 uZb/1QwyF2o91i4ZfK7bU7qZmuUqSP9G9fjt2AQ25W49F50qhrApiVV82LNSllGKA7
	 0q3BEvK8qSNHaPPxmxClcCimaM3Ig9pm5pJL7P78Io/a1sCqW+I1zqp2t9rEhZ9KGl
	 tvqBqG7jK8M4jO491Ev9C0mcz/NV9NCbjQVvSbgfqUJMXrr3NTlPac3yb0ydK2Ad41
	 OYBktfPb0/Ma77o7VwXNlZwj6GOOsYTv2cO17kCdyJ2lLQ1MRkErq7eQ/cYYtLxg4r
	 ueNsvzrkbAH7w==
From: Niklas Cassel <cassel@kernel.org>
Date: Wed, 29 May 2024 10:28:59 +0200
Subject: [PATCH v4 05/13] dt-bindings: PCI: rockchip-dw-pcie: Fix
 description of legacy irq
MIME-Version: 1.0
Message-Id: <20240529-rockchip-pcie-ep-v1-v4-5-3dc00fe21a78@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1950; i=cassel@kernel.org;
 h=from:subject:message-id; bh=DgDwrueIemNRUbe/G47rptzZcqdtSi36/c0CqD/3bpc=;
 b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNLCnofyPD2dFfy2tyLyxpPX9s3lddundb7ydDrQ3WTWf
 KdI74Z7RykLgxgXg6yYIovvD5f9xd3uU44r3rGBmcPKBDKEgYtTACZS4sLwv9hs4aovpT8M32wW
 2qrXJLHnv/TVVx7bZQ8dU0oqtZmr0crwV0Su3Vedx+1EWVbGS+UbP/a7GDWp3VE+mbY54ZaHptk
 6dgA=
X-Developer-Key: i=cassel@kernel.org; a=openpgp;
 fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240529_012937_713953_7BD756B0 
X-CRM114-Status: GOOD (  10.19  )
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
2.45.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
