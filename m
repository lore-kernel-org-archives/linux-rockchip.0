Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72655EB64DA
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Jun 2023 09:37:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DkHDIoXT+zCCVhUigG2SJwx3nQondhhmHqdorVnWSAo=; b=zo6n8le3190P3/
	dVf2KqQed4dLUtmRN+g80OgMIKFZ0knF05kv/bYtZGKv60EVdpBo4vlI4tmxNHSR2XNs94jOZ/JlT
	Fvw+LEYTRiP/8oR8SDZ/IRwOfCxktgKLqlsDxxFWW/3jlIMqqQG53ZBbqJvUapMuUdNv3M0rt61TF
	iNFDLuu4jxvTu0zxuMJncJcyyUTCz7OWUXcsIOxz/NprOpC1iFBcQt97s+BizBe5CXGvVKxfx2XLV
	Wyv/ZC0k0I9pnC1OFC2drWASIDuKlhPj15nHC9dS+0NU5uW9W59a/2NPLbqsyAR+ZI6TcuPAaiqsh
	OeoNdHjf2keeECx1MC0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qDied-009kTt-1c;
	Mon, 26 Jun 2023 09:37:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qDieZ-009kSM-2p
	for linux-rockchip@lists.infradead.org;
	Mon, 26 Jun 2023 09:37:01 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qDieT-0003on-U0; Mon, 26 Jun 2023 11:36:53 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qDieS-0003FA-RV; Mon, 26 Jun 2023 11:36:52 +0200
Date: Mon, 26 Jun 2023 11:36:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Alibek Omarov <a1ba.omarov@gmail.com>
Cc: linux-rockchip@lists.infradead.org,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
	linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] clk: rockchip: rk3568: Fix PLL rate setting for 78.75MHz
Message-ID: <20230626093652.GR18491@pengutronix.de>
References: <20230614134750.1056293-1-a1ba.omarov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230614134750.1056293-1-a1ba.omarov@gmail.com>
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
X-CRM114-CacheID: sfid-20230626_023659_909404_8D76F487 
X-CRM114-Status: GOOD (  21.92  )
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

On Wed, Jun 14, 2023 at 04:47:50PM +0300, Alibek Omarov wrote:
> PLL rate on RK356x is calculated through the simple formula:
> ((24000000 / _refdiv) * _fbdiv) / (_postdiv1 * _postdiv2)
> 
> The PLL rate setting for 78.75MHz seems to be copied from 96MHz
> so this patch fixes it and configures it properly.
> 
> Signed-off-by: Alibek Omarov <a1ba.omarov@gmail.com>
> Fixes: 842f4cb72639 ("clk: rockchip: Add more PLL rates for rk3568")

Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>

> ---
>  drivers/clk/rockchip/clk-rk3568.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
> index 5dae960af4ce..48b8d06c305c 100644
> --- a/drivers/clk/rockchip/clk-rk3568.c
> +++ b/drivers/clk/rockchip/clk-rk3568.c
> @@ -82,7 +82,7 @@ static struct rockchip_pll_rate_table rk3568_pll_rates[] = {
>  	RK3036_PLL_RATE(101000000, 1, 101, 6, 4, 1, 0),
>  	RK3036_PLL_RATE(100000000, 1, 150, 6, 6, 1, 0),
>  	RK3036_PLL_RATE(96000000, 1, 96, 6, 4, 1, 0),
> -	RK3036_PLL_RATE(78750000, 1, 96, 6, 4, 1, 0),
> +	RK3036_PLL_RATE(78750000, 4, 315, 6, 4, 1, 0),

refdiv = 4
fbdiv = 315
postdiv1 = 6
postdiv2 = 4

((24000000 / 4) * 315) / 6 / 4 = 78750000

LGTM

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
