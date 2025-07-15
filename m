Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F536C83F1D
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jul 2025 11:08:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZcaPAvNg0wWzvWXQXKsp5NFiX6DYMtMf/6E2rXnPMQc=; b=i7GFJZXBoc3CTo
	XjuOyjpll5IQN1uokNcPsXWWCGQDzmFq7KIVVnttEDsg8tXVOKAEox7tyB06QRQf+QAwP+jJ1OwBl
	ctf5bOAcgWVfCLcwwWDET1+YNczOR3gFtxZqmUDAKp8VrviFDfxw7ve6+XWW3vPoNkyN5WS3eFH/m
	tebobsNrusqg69uINn95xGqY/7ZB52A4TDlheMu7uyGL69+ItxOXPaP0FKQWzbgu0T7/82bXXKSOm
	47Vt0Knm0dhcCylOhTn0SvSgaWG2W85XzuOjaZqCw0x7fLZyEP+wve+k6b39DXVyA0pi1FWWO3W7B
	89ha1Hz5qu4+IzeVichw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubdWA-00000004u4l-0292;
	Tue, 15 Jul 2025 11:08:14 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubdRs-00000004t8q-30zI;
	Tue, 15 Jul 2025 11:03:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=pEqVl7UTU3h8kIn5gNcr2TqpCsHuRyehsMYidQ99ptk=; b=wyWkt5FS+IPee6aBG5i6+WSE9Y
	hfqG4TkExza4sbE8Pdeb+WY6+o+b5r0OhUFePlSFGQCFTDeN6Or6qrzt4N2ZgMlH2PTgsA8vctxqF
	g9aa4GE2dK32gpVqQi8qvGUNL1YgDIuDx3qbXkjGyjXvqneYr5qzP+7L52ifCCAM3ZnZF2KUgpw0J
	pbKn6DF5rLazeeE5jwi1z8yP8Axkf+umkvkH80xggIQg1KNHvwMbcs4Wr/pnxDWW1hDnKjrBQfJ1K
	yqufcjGTfSKtA6nA3Z3PvtyRfHQ4RZRKC9cFYPe+rVKJYEe1Jz5WBZfqeleacV6xENmzNAtrN4TeD
	mqZhWf4g==;
Received: from [194.95.143.137] (helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ubdRd-0000L2-2C; Tue, 15 Jul 2025 13:03:33 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Diederik de Haas <didi.debian@cknow.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Johan Jonker <jbx6244@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v4 00/10] rockchip: Fix several DTB validation issues
Date: Tue, 15 Jul 2025 13:03:23 +0200
Message-ID: <175257739695.2521784.1985937428277626271.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250709132323.128757-1-didi.debian@cknow.org>
References: <20250709132323.128757-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250715_040348_754020_A35B6002 
X-CRM114-Status: GOOD (  10.53  )
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


On Wed, 09 Jul 2025 15:15:13 +0200, Diederik de Haas wrote:
> This patch set fixes several DTB validation issues and consists of 2
> parts:
> 1) dsi refactoring
> 2) various low-hanging fruit
> 
> ad 1) The display/rockchip/rockchip,dw-mipi-dsi.yaml binding had:
> - #address-cells
> - #size-cells
> 
> [...]

Applied, thanks!

[03/10] dt-bindings: display: rockchip,dw-mipi-dsi: Drop address/size cells
        commit: fd5fde69fd413b03e25fb3b8e2ce375c02e74b0d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
