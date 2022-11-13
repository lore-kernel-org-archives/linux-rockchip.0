Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFC87C4332F
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Nov 2022 08:48:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CnKUF1Y+b4mYXFLGOO4bpfwgCzsl+GLLUZBzpNhZkCk=; b=i849P/vh4zwlxh
	K5konJZcsHhwLohPCCtjUTzRy8Hczmn1Mb9+zU06+fR+F1dJgGP9xUmLq0qj+I7OMtGoH2sK/j7Rw
	Eriln+J3BsJEYJajbr+fpTGJDXvRcp/qBAw0+lKCLWjpo0PbnQ5ojWQdZooRKY5asdOdhbstm06JT
	/UF8UOBMoJa0mYX10qG5Bltz1Vj4xR3CkUJ3TyNQ5hPi2+pWl7Hg9x0ytX4H7iFnukshzLvrF1Xs8
	7rNppEh5bIp591tc+/Ma4RnFDSQYnD0sWlu4gH448D5Dm8L2Av8B/Z6Y+tJFxPP6DQ89r7KRfQNUh
	DyfdLAPyOosq1vuLA9yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ou8fO-00ASq5-UH; Sun, 13 Nov 2022 08:48:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ou8fE-00ASo4-JL; Sun, 13 Nov 2022 08:48:29 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ou8f6-0001bW-7E; Sun, 13 Nov 2022 09:48:20 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Luca Ceresoli <luca.ceresoli@bootlin.com>, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, Jerome Brunet <jbrunet@baylibre.com>, Kevin Hilman <khilman@baylibre.com>, Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Cc: linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org, Christophe JAILLET <christophe.jaillet@wanadoo.fr>, linux-clk@vger.kernel.org, linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] clk: Remove a useless include
Date: Sun, 13 Nov 2022 09:48:19 +0100
Message-ID: <3166437.e9J7NaK4W3@diego>
In-Reply-To: <12dd5cb49efa7714f8e0389e4c7b3bc829e8a90e.1668289299.git.christophe.jaillet@wanadoo.fr>
References: <12dd5cb49efa7714f8e0389e4c7b3bc829e8a90e.1668289299.git.christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221113_004828_685989_B4667630 
X-CRM114-Status: GOOD (  14.26  )
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

Am Samstag, 12. November 2022, 22:43:03 CET schrieb Christophe JAILLET:
> <linux/rational.h> is not needed for these drivers. Remove the
> corresponding #include.
> 
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> ---
>  drivers/clk/clk-versaclock5.c | 1 -
>  drivers/clk/meson/clk-pll.c   | 1 -
>  drivers/clk/rockchip/clk.c    | 1 -

Clock-trees for soc families normally have different sub-maintainers,
so depending on how we want to merge this, you might need to split
this into 3 patches.

But at least for the Rockchip part, I'm also fine with the patch going
in as a whole, so (for the Rockchip part):

Acked-by: Heiko Stuebner <heiko@sntech.de>


Heiko

>  3 files changed, 3 deletions(-)
> 

[...]

> diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
> index e63d4f20b479..398c427b8e81 100644
> --- a/drivers/clk/rockchip/clk.c
> +++ b/drivers/clk/rockchip/clk.c
> @@ -21,7 +21,6 @@
>  #include <linux/mfd/syscon.h>
>  #include <linux/regmap.h>
>  #include <linux/reboot.h>
> -#include <linux/rational.h>
>  
>  #include "../clk-fractional-divider.h"
>  #include "clk.h"
> 




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
