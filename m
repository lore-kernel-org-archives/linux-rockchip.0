Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17C17C001CC
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Apr 2024 18:59:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xb8t7kbki0Ugyu9Cbw6mPFz/+2KnRHW7PmIIhu2AXaA=; b=a0bbtpjct8ZriT
	hc9wILOJaSoKhOjWStWjUcfYP5fGTldba4EzaLst6EIdei3x0UYQP3aOjiJMi/SVJz2SZ4XuQO9QM
	moYyXqKoGzHOgrJiLkgdORPJT9n6vdDjBpfNelgg+FHyz/caNezFxvwxO7ti0i1JcG5lxVAS+rhM9
	LdbQgC10qoybHD8GKjKhuKMMj5Odot1N+bU+78TyoiPxZJRHSXTs+eqlDdYRExJL1ffWRNZ9bH87D
	6HrlpunLU/+nVy5o4hAGMHjwXptzgtZ2RipLhGl87tXpaZ+YWgCqgFhJ9hxoVrZ3V/7+Ppj0NYWpP
	f9UjtQskrWXT7iKuXLmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruzdk-0000000DnG4-0nNO;
	Thu, 11 Apr 2024 18:59:16 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruzdf-0000000DnF5-27ns;
	Thu, 11 Apr 2024 18:59:12 +0000
Received: from ip-185-104-138-67.ptr.icomera.net ([185.104.138.67] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ruzdc-0002Dv-NV; Thu, 11 Apr 2024 20:59:08 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-i2c@vger.kernel.org, Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Andi Shyti <andi.shyti@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 13/18] i2c: rk3x: remove printout on handled timeouts
Date: Thu, 11 Apr 2024 20:59:05 +0200
Message-ID: <46619727.fMDQidcC6G@phil>
In-Reply-To: <20240410112418.6400-33-wsa+renesas@sang-engineering.com>
References: <20240410112418.6400-20-wsa+renesas@sang-engineering.com>
 <20240410112418.6400-33-wsa+renesas@sang-engineering.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240411_115911_582555_36AE139F 
X-CRM114-Status: GOOD (  15.71  )
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

Am Mittwoch, 10. April 2024, 13:24:27 CEST schrieb Wolfram Sang:
> I2C and SMBus timeouts are not something the user needs to be informed
> about on controller level. The client driver may know if that really is
> a problem and give more detailed information to the user. The controller
> should just pass this information upwards. Remove the printout.
> 
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Acked-by: Heiko Stuebner <heiko@sntech.de>


> ---
>  drivers/i2c/busses/i2c-rk3x.c | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-rk3x.c b/drivers/i2c/busses/i2c-rk3x.c
> index 086fdf262e7b..8c7367f289d3 100644
> --- a/drivers/i2c/busses/i2c-rk3x.c
> +++ b/drivers/i2c/busses/i2c-rk3x.c
> @@ -1106,9 +1106,6 @@ static int rk3x_i2c_xfer_common(struct i2c_adapter *adap,
>  		spin_lock_irqsave(&i2c->lock, flags);
>  
>  		if (timeout == 0) {
> -			dev_err(i2c->dev, "timeout, ipd: 0x%02x, state: %d\n",
> -				i2c_readl(i2c, REG_IPD), i2c->state);
> -
>  			/* Force a STOP condition without interrupt */
>  			i2c_writel(i2c, 0, REG_IEN);
>  			val = i2c_readl(i2c, REG_CON) & REG_CON_TUNING_MASK;
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
