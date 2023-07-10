Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA4FDEB64D9
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Jul 2023 11:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TlrUMXN7Nx+6n+C75b+zGiHn3wD5YuOjyHGwQJQi1ow=; b=BaGw/PG+b8L1cS
	7JxkhFz4IfhtQJeV5Qwo8M/YLK+wBke5uyE55KtSdyJt3N38Gy5BYKvBx9ctqS5099EUzY8PJbaxa
	4qEdRSE1+ceFOXD7vuIBzd47mpQbAAgXZCh+N3dNzv39OFiiYpRf528Bw55TRNyBFGRbBUoIvXr3n
	cfY48Fc4us9g4r0z9sPZBDE6c3BHsAj94jinWRUS664ELpz9KP2bP3BrCTmQ3VslvR2ppNgW95Dyh
	Wqm21TBJt0pmHuYHVfjw4RTVfMDnbN0BEGv8R6g0ZgQOLC7BfeREMnlVL6Y/+eZg1RN+sX63GKJD+
	OgbUEac1yN2dLPwV5wLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIoid-00BQih-04;
	Mon, 10 Jul 2023 11:06:15 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIoia-00BQh6-00;
	Mon, 10 Jul 2023 11:06:13 +0000
Received: from i53875a50.versanet.de ([83.135.90.80] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qIoi8-0000CZ-7Z; Mon, 10 Jul 2023 13:05:44 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: "Rafael J. Wysocki" <rafael@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Amit Kucheria <amitk@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, Yangtao Li <frank.li@vivo.com>
Cc: Yangtao Li <frank.li@vivo.com>, Thomas Gleixner <tglx@linutronix.de>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 12/21] thermal/drivers/rockchip: convert to use
 devm_request*_irq_probe()
Date: Mon, 10 Jul 2023 13:05:42 +0200
Message-ID: <2114204.OBFZWjSADL@phil>
In-Reply-To: <20230710095926.15614-12-frank.li@vivo.com>
References: <20230710095926.15614-1-frank.li@vivo.com>
 <20230710095926.15614-12-frank.li@vivo.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_040612_040954_7FBB4DD0 
X-CRM114-Status: GOOD (  20.50  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Montag, 10. Juli 2023, 11:59:16 CEST schrieb Yangtao Li:
> There are more than 700 calls to devm_request_threaded_irq method and
> more than 1000 calls to devm_request_irq method. Most drivers only
> request one interrupt resource, and these error messages are basically
> the same. If error messages are printed everywhere, more than 2000 lines
> of code can be saved by removing the msg in the driver.
> =

> And tglx point out that:
> =

>   If we actually look at the call sites of
>   devm_request_threaded_irq() then the vast majority of them print more or
>   less lousy error messages. A quick grep/sed/awk/sort/uniq revealed
> =

>      519 messages total (there are probably more)
> =

>      352 unique messages
> =

>      323 unique messages after lower casing
> =

>          Those 323 are mostly just variants of the same patterns with
>          slight modifications in formatting and information provided.
> =

>      186 of these messages do not deliver any useful information,
>          e.g. "no irq", "
> =

>      The most useful one of all is: "could request wakeup irq: %d"
> =

>   So there is certainly an argument to be made that this particular
>   function should print a well formatted and informative error message.
> =

>   It's not a general allocator like kmalloc(). It's specialized and in the
>   vast majority of cases failing to request the interrupt causes the
>   device probe to fail. So having proper and consistent information why
>   the device cannot be used _is_ useful.
> =

> So convert to use devm_request*_irq_probe() API, which ensure that all
> error handling branches print error information.
> =

> In this way, when this function fails, the upper-layer functions can
> directly return an error code without missing debugging information.
> Otherwise, the error message will be printed redundantly or missing.
> =

> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Krzysztof Kozlowski <krzk@kernel.org>
> Cc: "Uwe Kleine-K=F6nig" <u.kleine-koenig@pengutronix.de>
> Cc: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
> Cc: AngeloGioacchino Del Regno  <angelogioacchino.delregno@collabora.com>
> Signed-off-by: Yangtao Li <frank.li@vivo.com>

Acked-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
