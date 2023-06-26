Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 918AFEB64D7
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Jun 2023 09:39:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YgLaYumDJHDemfGPFXMjSw0MOcRWyKtida/zLc+SoUo=; b=aritDYNtZgpdzo
	WyrnD5LADsUwGKJw3nVYFiHRh1r+/zwWVnUxHQEVDJgyeBLT4kMSocg8pH8R+A+S3/lHFauOrjvdk
	7ayZcQWAeLrRKxVoc1EhE02BIychf79WoUwvdlUX+IoSVUEXmccPVM1JW71gmAl+8/2qTGhO4nTMa
	tfpltyHEezUbVdenjbqyhU63ta/MTZOdzrWhQK/8lc2dynOndOqKiq68D4u3oFx4ow+C7aQQQJ5U5
	nTsBsxz3CTBKyc1DSp+gB0KstWNlzW+3MqL/7JzysyL6T9Q30aswLeX2KG1I1JvmomMWNjbvTg9Sc
	xon/rz64awQj9ZUezDFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qDiga-009kgj-1a;
	Mon, 26 Jun 2023 09:39:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qDigY-009kgN-0U
	for linux-rockchip@lists.infradead.org;
	Mon, 26 Jun 2023 09:39:03 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qDigW-0003tJ-09; Mon, 26 Jun 2023 11:39:00 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qDigV-0003GL-Gg; Mon, 26 Jun 2023 11:38:59 +0200
Date: Mon, 26 Jun 2023 11:38:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Alibek Omarov <a1ba.omarov@gmail.com>
Cc: linux-rockchip@lists.infradead.org,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
	linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] clk: rockchip: rk3568: Add PLL rate for 101MHz
Message-ID: <20230626093859.GS18491@pengutronix.de>
References: <20230614134716.1055862-1-a1ba.omarov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230614134716.1055862-1-a1ba.omarov@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230626_023902_211873_100836FC 
X-CRM114-Status: GOOD (  21.25  )
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

On Wed, Jun 14, 2023 at 04:47:16PM +0300, Alibek Omarov wrote:
> This patch adds PLL setting for not so common resolution as 1920x720-50.00,
> which can be set using 2500 horizontal signals and 808 vertical.
> 
> Signed-off-by: Alibek Omarov <a1ba.omarov@gmail.com>

Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>


> ---
>  drivers/clk/rockchip/clk-rk3568.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
> index f85902e2590c..5dae960af4ce 100644
> --- a/drivers/clk/rockchip/clk-rk3568.c
> +++ b/drivers/clk/rockchip/clk-rk3568.c
> @@ -79,6 +79,7 @@ static struct rockchip_pll_rate_table rk3568_pll_rates[] = {
>  	RK3036_PLL_RATE(135000000, 2, 45, 4, 1, 1, 0),
>  	RK3036_PLL_RATE(119000000, 3, 119, 4, 2, 1, 0),
>  	RK3036_PLL_RATE(108000000, 2, 45, 5, 1, 1, 0),
> +	RK3036_PLL_RATE(101000000, 1, 101, 6, 4, 1, 0),

refdiv = 1
fbdiv = 101
postdiv1 = 6
postdiv2 = 4

((24000000/1)*101)/6/4 = 101000000

Ok.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
