Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D066C46CD2
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Jan 2024 15:23:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XLFczSlBp7blcNXM+g8dwyhNNRhK2GrB6f4rpRkc8N0=; b=ProV9Bj2gktXZf
	ndJYeXms6nft3OJ+7HlGf/B4HkLK7i781M2da25gbxtNEod2frfTFJW9wRW7G9/AYcwfRZ548kZnr
	bMKxdrOglO337hRzVhD8f96Gnh1h8AGyikbRqvMga1yZ5M6za9HOAeCwk/1bbUfsubeiqS7Q3EeOz
	NOro5hFuMTC9QfdbmMEEi0tgA1AbB5CFWM7MyScgyqDEuqdYdIGQ9DKxLjv48+FNn0K1Ljq55zS9F
	fh19eai39C8j9H79H2nGnkd9JMLFCAIcj31VWKPX6xTNEdSInEndy/QadUyNL4Za0XYFThVnPqBfz
	vs8zAUDuyVryLx3K4Zng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNDx9-008eyS-1R;
	Tue, 09 Jan 2024 15:23:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNDx6-008ewq-0J;
	Tue, 09 Jan 2024 15:23:41 +0000
Received: from i53875aaa.versanet.de ([83.135.90.170] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rNDx2-0003rK-TW; Tue, 09 Jan 2024 16:23:36 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Quentin Schulz <foss+kernel@0leil.net>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Quentin Schulz <quentin.schulz@theobroma-systems.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: remove duplicate SPI aliases for
 helios64
Date: Tue, 09 Jan 2024 16:23:35 +0100
Message-ID: <2258938.QZUTf85G27@diego>
In-Reply-To: <103b45c8-3e16-480d-9f39-c677da747090@linaro.org>
References: <20240109-rk3399-spi-aliases-v1-0-2009e44e734a@theobroma-systems.com>
 <20240109-rk3399-spi-aliases-v1-2-2009e44e734a@theobroma-systems.com>
 <103b45c8-3e16-480d-9f39-c677da747090@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240109_072340_159205_3CFF0911 
X-CRM114-Status: GOOD (  14.99  )
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

Am Dienstag, 9. Januar 2024, 16:16:15 CET schrieb Krzysztof Kozlowski:
> On 09/01/2024 14:35, Quentin Schulz wrote:
> > From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> > 
> > An earlier commit defined an alias for all SPI controllers found on the
> > RK3399, so there's no need to duplicate the aliases in helios64's device
> > tree.
> 
> That's not what we want. Boards should define aliases for what is
> available, according to the board labeling.

and the board labeling for spi2 has always been spi2-miso, spi2-miso etc.
In the last 10 years of doing Rockchip stuff, I haven't seen any schematic
doing it differently.



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
