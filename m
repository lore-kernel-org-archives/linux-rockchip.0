Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F36DBCF9C6B
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Sep 2024 09:39:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=byqbV01DzZR5XtwIdQsce6fkl9pYvMqA9XwNfgnd1zI=; b=XLdjHm/H+AAC12
	fNdp2v0BChqlg3Nn5VgB8BLrNE2VwhtDdB00JDj9qshdSUPPp58rpChoTR8uzjIx/z+D62J2Yz0Kz
	t1pMwgzNPs7Qa5YaU/Rv8ZP3uQeNmprYR4oy5usJiMqQ7b3TVP6AsUv4iI+gDk2D7RLLpsh7Thze1
	gJ74vNPlNIXiGAwgmQJHFV+BBLtJjyXUdF63YO8/eObFLCtCJcghcTLF16oG6ICWK5lz6fGdv+MRi
	d3mMpN+XXBTxUCkVWuz7Tb2G2X2SIA1eTP8J2F5hJNOV58g9SDhrbnu5ctFjUXep/cYRbyZ+KB6Yq
	Fg9SD8ZZYQAQvKnJq0vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1st210-00000001qGa-18jk;
	Tue, 24 Sep 2024 09:39:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1st1tt-00000001oQI-1QUR;
	Tue, 24 Sep 2024 09:32:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=UGv54ZPch4dldjaHLdymCbKvQ0+65iKRTDiB+9dLMKQ=; b=XgMQkuNEPbTmfKL9s1c+A/kV+T
	qKg9bStvD9OtjJQ8qSw+YqR22Eni9tEyVb+xEVgH7smYY+RaGgofr2C9+jG1mqmE/Xpm+p/V7gmre
	RmcYgomIwXxgK3m/I1nxiLAgXZylKpLVDfEjrQ+incAaQ5J/HNrCas1vu1uBikbeut+32DFXpv7FA
	Q2F5Kwklay2l83N8jxkbTgj9r5KoECXAoWYCtV9dgu8x8HnYTEcQhjVPj1E7/Fwgy0HXa70N/NW8Y
	Lw38bETPsCjEMR/L3NETmUNgcpp0dgaRN49/qZ0M9kvSUf2/2kwRCWWH/yl3zkfHxnleb9s91gnX6
	iFbINuvg==;
Received: from 90-177-212-167.rck.o2.cz ([90.177.212.167] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1st1tb-0000eW-6G; Tue, 24 Sep 2024 11:31:47 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Marc Kleine-Budde <mkl@pengutronix.de>, kernel@pengutronix.de,
 Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
 Geert Uytterhoeven <geert+renesas@glider.be>
Cc: "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, linux-can@vger.kernel.org,
 netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH] can: CAN_ROCKCHIP_CANFD should depend on ARCH_ROCKCHIP
Date: Tue, 24 Sep 2024 11:31:45 +0200
Message-ID: <1931378.eGJsNajkDb@phil>
In-Reply-To: <a4b3c8c1cca9515e67adac83af5ba1b1fab2fcbc.1727169288.git.geert+renesas@glider.be>
References: <a4b3c8c1cca9515e67adac83af5ba1b1fab2fcbc.1727169288.git.geert+renesas@glider.be>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240924_023205_448907_D27A054F 
X-CRM114-Status: GOOD (  16.18  )
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

Am Dienstag, 24. September 2024, 11:15:31 CEST schrieb Geert Uytterhoeven:
> The Rockchip CAN-FD controller is only present on Rockchip SoCs.  Hence
> add a dependency on ARCH_ROCKCHIP, to prevent asking the user about this
> driver when configuring a kernel without Rockchip platform support.
> 
> Fixes: ff60bfbaf67f219c ("can: rockchip_canfd: add driver for Rockchip CAN-FD controller")
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

makes a lot of sense, and with the compile-test in, it'll still get
test-build

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  drivers/net/can/rockchip/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/net/can/rockchip/Kconfig b/drivers/net/can/rockchip/Kconfig
> index e029e2a3ca4b04df..fd8d9f5eeaa434ac 100644
> --- a/drivers/net/can/rockchip/Kconfig
> +++ b/drivers/net/can/rockchip/Kconfig
> @@ -3,6 +3,7 @@
>  config CAN_ROCKCHIP_CANFD
>  	tristate "Rockchip CAN-FD controller"
>  	depends on OF || COMPILE_TEST
> +	depends on ARCH_ROCKCHIP || COMPILE_TEST
>  	select CAN_RX_OFFLOAD
>  	help
>  	  Say Y here if you want to use CAN-FD controller found on
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
