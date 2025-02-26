Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E97C2C021B8
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Feb 2025 10:48:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IMLbuRj5VK67g5JKQyU/PsYVj9gIq3T1AA37PKs7MzU=; b=ygafBYsOde2FKF
	SOOLftkiAh/9Xl7Hfjf4Py1dAZAwjJH+g9VyDcjn+jjvNBTlVFPs/6p6AGdRm2azx5IVbg1UGrXDJ
	pXb2kftaH0hafJVt180i5k4dmimGycobq2QP4QqUxyJMLNiCsv740ABrCF3R9TUy9tzpSubohjXd+
	2J5Z5NpmG45tUC2y3eE4Mde6rOtfXP4gx7GDTaAB/Ky8BA48M6Djfm4j/KnF9BIFV3z6q/WmGhw2t
	lLmMcJAgkP3nqAE3aY1bY9In+jmkP5734tAs55D42SynQZT6jckwXgETSYFOBQJmIfD9JWy7MNl7H
	WJ3HEQPALFg1/CHyNPVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnExs-00000003MJn-1X9W;
	Wed, 26 Feb 2025 10:48:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnEm9-00000003Jw2-0ntr;
	Wed, 26 Feb 2025 10:36:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=5Zbay1ioC0/+bEjvO9SEyQuR/lN3aixi3K7fAqyxee0=; b=OQKc7ps1ZWMV5p+31eWYDGJv8j
	TW+v2NagR7K0IUOrHV4xQOW1iUTViKiNJWn2LSwOeNFOZmwInBrLQAiEnIz6OWo8M4pDPFctLlqrX
	MP5Bg1lR7M3D65eegQ3R4tCwUDEbjAcKdew/CuVGrjm6zMLimAxVvY4LBRjHRFZlByqoeebYlJeQR
	jZo3B67UgreeHoUDXrBUXxzicaUYk0y+4mFyuRKpWs906G1pFKRHTUX+gJcDU8uGq74dV7fB6eBSV
	HzlE7HHiTctdqFUIeG7dPRGMjXr166GMcDaPgthAH2pGs+wFLrtjCBX3tO9HZ/IzazMOAd9y9aD7H
	Y2Pm34Bw==;
Received: from i53875b47.versanet.de ([83.135.91.71] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tnElu-0006Y7-6p; Wed, 26 Feb 2025 11:36:10 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org,
 Kever Yang <kever.yang@rock-chips.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Rob Herring <robh@kernel.org>, Simon Xue <xxm@rock-chips.com>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 linux-pci@vger.kernel.org,
 Krzysztof =?UTF-8?B?V2lsY3p5xYRza2k=?= <kw@linux.com>,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 devicetree@vger.kernel.org, Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v8 1/2] dt-bindings: PCI: dw: rockchip: Add rk3576 support
Date: Wed, 26 Feb 2025 11:36:09 +0100
Message-ID: <14510034.lVVuGzaMjS@diego>
In-Reply-To: <20250226095414.2173410-1-kever.yang@rock-chips.com>
References: <20250226095414.2173410-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250226_023625_356468_79AF929F 
X-CRM114-Status: GOOD (  10.66  )
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

Am Mittwoch, 26. Februar 2025, 10:54:13 MEZ schrieb Kever Yang:
> rk3576 is using DWC PCIe controller, with msi interrupt directly to GIC
> instead of using GIC ITS, so
> - no ITS support is required and the 'msi-map' is not required,
> - a new 'msi' interrupt is needed.
> 
> Co-developed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
