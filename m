Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C259C4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Apr 2024 12:02:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4iCHbWGwy0bt2Ljt4KQogrh6n16XqEgDNb7xsvlus7I=; b=xrY88SuuiEdel1
	BcTWMTYfr6P5Hzoi4M8izeO854INwR3PfxUQIc67uJS6YxRzPE8VVBFS+BBAInQHr8bemAAB0yXgZ
	VpMV+jvBCv8kc4tpiD3VBfZESojKKout+nWMzyjiYJAPp4zJmQCCvY/SW13GSYETEmJFmQqolR6M+
	LlF/Xz9dwR4T7curdRJob2eJ3RjAXbHq1IvlMS2ccflkHsiWCe7N37bYpRKafcswFvpkJBhotdiDD
	UZV5LN0FpLGuNk1dh0A+jlOUNZNzyKvFIHRBrdRhZfeVgnI+fdbIZLXYX0cEDxkB2kLnQ7z7czhmY
	umoZ92CObYKqhcrxgPpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1mBn-00000006Glb-0buq;
	Tue, 30 Apr 2024 12:02:27 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1mBk-00000006Giu-2gPM
	for linux-rockchip@bombadil.infradead.org;
	Tue, 30 Apr 2024 12:02:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=ER1xXZFolpnR0VGnTVgmMbuPeSBEt77ZPA+ZNaqgLdo=; b=pddiRFuAIS0y/+lQ6b0i6Q4z9J
	n+LoVhKerL/W1WIVbAnxG88qltXzI+J2Z4+imZ0mpPw+BKY3toPS/OrcNEULPAD2DYLd7FclMybW7
	j+bEnRm7x8nGMbTBBLjHb6bN5SfxgK13agwoOfsDYNj8AGgn9McMQ+WC8FAVPDyHhIEQ4kO40lr7j
	ovMQxm1iH2audCQMveDSAergEL9WN3WJOQEQjP6J23nBoknsZb9ppsjBS/YgnR0CfgADFsnw/EzGh
	SwsnZ/I6Z7F4wXudidd/A+79vAzCyiYDi57k0nIeCBtrLqX95lLFIGaGFTvekuj0VlAHbat4ahSzY
	AXWB7REw==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1mBg-0000000Gw0B-0vVE
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Apr 2024 12:02:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D9AE7614FD;
	Tue, 30 Apr 2024 12:02:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6D3A1C4AF18;
	Tue, 30 Apr 2024 12:02:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714478538;
	bh=SXHxPE8zdJjZdXXAcX4rmqThuC0XgqJgg4dqgMQmx28=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=jcfFiRxp5K7LfbIMniYp++vMuQbnDaFXF0YR0h5thqTf9lraoZA1Y/Eyv0yNcpQ4B
	 ZyjF0pW6E6uCtmuUmRSmUxQv4yhNP2VHl8MMsaIHzUhwruFscnYx5SIeRw2MHvUEdX
	 iQE5rGBZR7fWh8eMo05TmvrEaAr+7zYDWF0pnKBFBQjTAel+GbLy2eDpKcCTDCAGez
	 6qhUIM2lgG0PsERpLlibUovx99bOmrmPv6wY2cp/MoCyw9UVzLIayHN3QzLUBf1ud8
	 GTs6/5es9P/Y3VL1ibb9DXXgjYVdqVTuEpxAFcgGQ+RwK/0NZ+E4OQuuqXN7pyTR6l
	 jKcOcqEI2Rq2A==
From: Niklas Cassel <cassel@kernel.org>
Date: Tue, 30 Apr 2024 14:01:02 +0200
Subject: [PATCH v2 05/14] dt-bindings: PCI: rockchip-dw-pcie: Fix
 description of legacy irq
MIME-Version: 1.0
Message-Id: <20240430-rockchip-pcie-ep-v1-v2-5-a0f5ee2a77b6@kernel.org>
References: <20240430-rockchip-pcie-ep-v1-v2-0-a0f5ee2a77b6@kernel.org>
In-Reply-To: <20240430-rockchip-pcie-ep-v1-v2-0-a0f5ee2a77b6@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1900; i=cassel@kernel.org;
 h=from:subject:message-id; bh=SXHxPE8zdJjZdXXAcX4rmqThuC0XgqJgg4dqgMQmx28=;
 b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNIM7m441tzTf77xz82K1Zr9X+013sfoxBo0de7ceEPkz
 wSnu2fLOkpZGMS4GGTFFFl8f7jsL+52n3Jc8Y4NzBxWJpAhDFycAjARXmdGhiUMygeTJisba9x3
 neDwdPECtyONrOd2Hrsja2hoU7VAxILhn33z8w+HQvlCzOxsZ5XzPqipX5bNc6h8TZrXHPv9GY6
 CHAA=
X-Developer-Key: i=cassel@kernel.org; a=openpgp;
 fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_130220_725263_0512AAA4 
X-CRM114-Status: GOOD (  10.14  )
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
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
