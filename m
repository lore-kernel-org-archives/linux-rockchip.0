Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 945DEC4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Apr 2024 15:39:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4p48NJg1z5sBAhYfaln4+Ejpcg0RDt0AvmqGjBl2knI=; b=YTmRt2jEu9o7aV
	aANn78+p0oJuAjrmoA6wgtf2UKBvrPy3tFN6SUJnyVxqRCDvLPy0Se5kkPzNzXcN0M0iXcrQVZS7M
	RyFqKbCBNEfsFTyb/jMsnwJzZZooH2WzrbweB8U0xCfDrrp2fGIOIN0d5SXbMRGvG7JL9ysgi/5Ck
	/6/g3qArTfCIXhGlmMqdthkjxaKQLhldkHsnpwC5Mk0i6wTqZCKNp75UhG/R2DxXXcO53PyzRp5x1
	d8F+9PaGjw0VDB9BHTRyS2kO65GBjakesTRovjJqloLk1wYIxwjkx3PBQKDsfc5nUt1d8BKchhMTc
	tsqAi8v1XxXCIbdRdPCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzIEu-00000000ZJ9-3cVO;
	Tue, 23 Apr 2024 15:39:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzIEq-00000000ZHW-1pd5;
	Tue, 23 Apr 2024 15:39:22 +0000
Received: from i5e861d9e.versanet.de ([94.134.29.158] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rzIEn-0007h9-G7; Tue, 23 Apr 2024 17:39:17 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: quentin.schulz@theobroma-systems.com,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 0/3] Add support for the dual-role dwc3 controllers on rk3588-tiger
Date: Tue, 23 Apr 2024 17:39:14 +0200
Message-Id: <171388674746.2655666.4254972955805866845.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240422163951.2604273-1-heiko@sntech.de>
References: <20240422163951.2604273-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_083920_527625_78D16C10 
X-CRM114-Status: GOOD (  11.71  )
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

On Mon, 22 Apr 2024 18:39:48 +0200, Heiko Stuebner wrote:
> A comment fix and then the addition of the nodes for the dwc3 controllers
> using the newly merged usbdp phys.
> 
> changes in v2:
> - split out extcon addition into separate patch
> - fix comments in patch1 to cover all affected controllers
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: rockchip: fix comment for upper usb3 port
      commit: 3482efee1144262dc839792103e6a9e29defecbc
[2/3] arm64: dts: rockchip: add usb-id extcon on rk3588 tiger
      commit: eabb53f5dacfd643b5255f35bad30b8f914decdc
[3/3] arm64: dts: rockchip: add dual-role usb3 hosts to rk3588 Tiger-Haikou
      commit: d7b83921d098bd76623381f75f5cd2296f1315cc

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
