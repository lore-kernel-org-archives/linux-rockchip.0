Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BA53C27C4F
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Jun 2024 15:33:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8GoppL29sIDrLGITcgl85PV8FHiTXXeAsQWrm0bG0Ho=; b=Wmgz6IX45L9xzT
	VaJqpkgOxcLGrnAfMFNdJpl71PyHIfWXT7NXZ+JAq9mLPTfmZ1rM0EeyM+n3BcgxhpP/XgjytKYyj
	oyDpQM36/MQdOVm1u5/b9yeDEJcEn9/e41otEJL7Z17iIbvW4LjszK5vcaIdhPiDc4SBlsPagWdw6
	itUgIdd+G+OR1kIVW3/c04/f9hx1l2u8L1sIpaodNNPzLUJFhmo6DKFJS3SCMBCox/4sdNP7EV8mq
	ZZ2/bTHzm3RkQPJ1Choaw/Lbjven/HW5gWTDzGqJhx6ESAI8Ih1T+Ai/zBVlrm0Nh9FyZzk5sq1vz
	3P6Ln2sQ4uODEqs38/kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMUe6-00000007Pdw-1NO4;
	Wed, 26 Jun 2024 15:33:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMUdw-00000007Pam-35pW
	for linux-rockchip@lists.infradead.org;
	Wed, 26 Jun 2024 15:33:16 +0000
Received: from i53875b6a.versanet.de ([83.135.91.106] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sMUdf-00058K-69; Wed, 26 Jun 2024 17:32:51 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Simon Xue <xxm@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Arnd Bergmann <arnd@arndb.de>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Damien Le Moal <dlemoal@kernel.org>,
	Jon Lin <jon.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
	Rob Herring <robh@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH v5 00/13] PCI: dw-rockchip: Add endpoint mode support
Date: Wed, 26 Jun 2024 17:32:49 +0200
Message-Id: <171941553475.921128.9467465539299233735.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240607-rockchip-pcie-ep-v1-v5-0-0a042d6b0049@kernel.org>
References: <20240607-rockchip-pcie-ep-v1-v5-0-0a042d6b0049@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240626_083315_307306_845CA563 
X-CRM114-Status: GOOD (  13.22  )
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

On Fri, 07 Jun 2024 13:14:20 +0200, Niklas Cassel wrote:
> This series adds PCIe endpoint mode support for the rockchip rk3588 and
> rk3568 SoCs.
> 
> This series is based on: pci/next
> (git://git.kernel.org/pub/scm/linux/kernel/git/pci/pci.git)
> 
> This series can also be found in git:
> https://github.com/floatious/linux/commits/rockchip-pcie-ep-v5
> 
> [...]

Applied, thanks!

[12/13] arm64: dts: rockchip: Add PCIe endpoint mode support
        commit: 2fe9fe4e54f5763b8b681478dda9ac61fd42ecaf
[13/13] arm64: dts: rockchip: Add rock5b overlays for PCIe endpoint mode
        commit: 41367db58cbf51ecb89ca017b7473688345caa7b

I've dropped the overlay-symbol-enablement for now.
As this creates massive size increases there have actually
been concerns of things like TF-A getting overwhelmed by
the size if I remember correctly.

In any case, right now we don't have an established way on
how to handle overlay symbold for Rockchip boards.

For example broadcom enables symbols for all DTs, Nvidia and TI do
it for select boards only, while for example Mediatek and Freescale
do not handle symbols at all right now.

So I'll just postpone that decision for a bit.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
