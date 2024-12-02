Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55F51E69E9C
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Dec 2024 23:32:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZRUN8ksW9+3NTVSR1aFjjB7443Fbo6KOXBHzHf4C674=; b=LJD2CiqDMpXbUr
	Hz1AzwGmLTpNGGJtfB1ab60f9vZ0H0NCrbRjjAZrGVLWW4pTmEsKV5j9SpzLtn+f1pPuep0QuMNuz
	crLUvWvHxTXnufIgkLvyTX25CO7wVNCcW/wQIxgPR0GFSqQ+d9TtIMP8YfCAWJnwiNOm13jzNgrmi
	1KOJhLEZk8bJQNm/Cgn9viCI+i1IH6PXDMk/73zKJxABJFKpw1BHwxbOEMdS7X2IuxRWXWhn+Uu97
	g/Yjb2i0JOC6ePcxezx/Ob8dTFDDol13obSrgpPzq5IjkvWhmctL2BHnbIN+lf+7jKZPrQpZKyLJ4
	2n+/tWhBLVqu1Ptk74Qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIFu7-00000007jCH-1TaB;
	Mon, 02 Dec 2024 23:32:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIFrC-00000007iff-12xT;
	Mon, 02 Dec 2024 23:29:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=29fB5kRe7CnPK8fdvqH3jrlWfZQ7tWQhR8QI7YnEq5o=; b=eE0xRWhZiFOHfjubLdvTdKXZKR
	Mz1Ml87vJo0aETOg4TanzKDvVuVgTmKDOtZ+sjyN//FraH/wi2Edjfi7Rienm6PTYpTTAoGCEBJqL
	RdJL4DvD5po1cIdTDUB6ilBLGi0D1WRNMd5khvCx39LhwtWBkbjnwT0KuVHMXB3mUDRbzp3o8CekK
	40fDHvhlcHQ+kkXXr7u6R8ZMoItVCJ3vSzmUQHnJqDxSoaH6/JTTfv/vIhkmFKWlSK79KWvICxA45
	COQVRZLNnw8dOwxqGcZZjsbubfBjSbpp94vE5t55Da7koQxEXQZqUv8hxqOmjUr9ylSHGgopGW95y
	XbKAIG5g==;
Received: from i53875bc4.versanet.de ([83.135.91.196] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tIFr7-0000OB-1l; Tue, 03 Dec 2024 00:29:29 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Niklas Cassel <cassel@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Damien Le Moal <dlemoal@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: enable the mmu600_pcie IOMMU on the rk3588 SoC
Date: Tue,  3 Dec 2024 00:29:15 +0100
Message-ID: <173318214614.1403925.12812225885440711307.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241107123732.1160063-2-cassel@kernel.org>
References: <20241107123732.1160063-2-cassel@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_152934_280391_8822FA32 
X-CRM114-Status: GOOD (  10.89  )
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


On Thu, 07 Nov 2024 13:37:33 +0100, Niklas Cassel wrote:
> Commit cd81d3a0695c ("arm64: dts: rockchip: add rk3588 pcie and php
> IOMMUs") added the rk3588 SoC's pcie IOMMU and php IOMMU as disabled.
> 
> The mmu600_pcie is connected with the five PCIe controllers.
> See 8.2 Block Diagram, in rk3588 TRM (Technical Reference Manual).
> 
> The five PCIe controllers are:
> pcie3x4, pcie3x2, pcie2x1l0, pcie2x1l1, pcie2x1l2.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: enable the mmu600_pcie IOMMU on the rk3588 SoC
      commit: da92d3dfc871e821a1bface3ba5afcf8cda19805

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
