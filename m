Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77366C10F16
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 May 2024 11:38:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zt2nsUOBN/KjY4DX6OeFFeLcz9K9km66Xt8W+8fRQP0=; b=pue2FjPsg8YavW
	zOw6z3kcRFHXxFQ/T2XzFtQIpkGluqJnL6mnuB6FJ7gJrz3CASlMhy8gUBWI3fbYLaNHbCz2vWSPj
	+k2p9rhaUKQVxVgAcTcOV4kBwygulxwe7ii8KW4A+U5lGDDlti/RBff8OnuhW9wgapVz+Z3UyAfUw
	WNweaU/OV/aeBH2ziBDZszsVGn21f0ScKIt1ohCq4woKk5dubyM+eQ7tYDVPOh+U6SLnqFYKdV8Gp
	iGHruD9qFKhlfbP9tSfi43U7PJxCkiAFbbyJLzFrMq93layMGbmXeOtNEZDMStFU5D4d3EUnHCiun
	qowbA8loy97MXetoLtqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2rFY-0000000GHQc-182I;
	Fri, 03 May 2024 11:38:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2rFU-0000000GHMP-3Fjm;
	Fri, 03 May 2024 11:38:46 +0000
Received: from [213.70.33.226] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1s2rFR-0000Tc-7n; Fri, 03 May 2024 13:38:41 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Niklas Cassel <cassel@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org,
	Damien Le Moal <dlemoal@kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: add rk3588 IOMMUs
Date: Fri,  3 May 2024 13:38:22 +0200
Message-Id: <171473602991.3469033.4644447036108011842.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240502140231.477049-2-cassel@kernel.org>
References: <20240502140231.477049-2-cassel@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_043844_837135_D2E317BE 
X-CRM114-Status: GOOD (  10.61  )
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

On Thu, 2 May 2024 16:02:32 +0200, Niklas Cassel wrote:
> The mmu600_pcie is connected with the five PCIe controllers.
> The mmu600_php is connected with the USB3 controller, the GMAC
> controllers, and the SATA controllers.
> 
> See 8.2 Block Diagram, in rk3588 TRM (Technical Reference Manual).
> 
> The IOMMUs are disabled by default, as further patches are needed to
> program the SID/SSIDs in to the IOMMUs.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: add rk3588 IOMMUs
      commit: cd81d3a0695cc54ad6ac0ef4bbb67a7c8f55d592

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
