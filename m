Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CE1DC4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Apr 2024 15:16:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S7Y1RcrYdnhc8jjNhwOMYzwy2NUf07n6Tnqz1SGh9P4=; b=CUS0Ps5Bk5F1hY
	YfJRsJ++9wsbBmZ2EEeNfEQN+ketgMjIfthuU33G3gZUZF4PGjnivWmHZbVfQ8c/bxc2Dki7v78gs
	1Ko4reRWJyTzrY9b43peyBWj2LitQcid4rU0Ta4tBeS0IQrmWDPKRnrJTp8ORuu+iQ3kC/Uro2m8N
	D3D41ZgPIGsx5cFN4UU8V/ZvcF9hPU1TS9X/uLjcJ67czjoOd48h0Y9jhdOe5qZBOICLfFyHg4Vdq
	Yt2DhKSGE8MBK+09zfQD4hM6TrKOr3o0RplYzPPXBwHGOuSaBf0bbb52u1zlmoO9ZUphJj4NF2gXD
	JQNa1RuMreJ/82+2R9XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzHsX-00000000TME-27kL;
	Tue, 23 Apr 2024 15:16:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzHry-00000000SzB-1Xnd;
	Tue, 23 Apr 2024 15:15:45 +0000
Received: from i5e861d9e.versanet.de ([94.134.29.158] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rzHrw-0007PZ-Q3; Tue, 23 Apr 2024 17:15:40 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: quentin.schulz@theobroma-systems.com,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: Re: [PATCH v2] arm64: dts: rockchip: move uart2 pinmux to dtsi on rk3588-tiger
Date: Tue, 23 Apr 2024 17:15:34 +0200
Message-Id: <171388532516.2652222.6081857561844972520.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240422143356.2596414-1-heiko@sntech.de>
References: <20240422143356.2596414-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_081542_472069_B8D447E0 
X-CRM114-Status: GOOD (  10.24  )
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

On Mon, 22 Apr 2024 16:33:56 +0200, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@cherry.de>
> 
> The association of uart2 to the q7-uart pins is part of the module
> itself and not the baseboard used. Therefore move the pinctrl over
> to the tiger dtsi.
> 
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: move uart2 pinmux to dtsi on rk3588-tiger
      commit: 5adbad5c464a708a87cf5ade1bfe2ca947bb2f82

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
