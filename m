Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5220C369A0
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Sep 2024 07:02:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y8W5oYgZC+xfaW+mzTQBL819MtHzg8BMckMOokilQJ0=; b=Er4sYzp6Rj+Uqp
	4rToLNt+h3XvMPm9pRiyK0HrD4HTwa/tmk6cJkMjkNxkHz33NyjipbKfNp6EbomEykIwNWc8Mih/l
	RYXjg/uBcHcHOk3zJmqSDIJsYjbJSJQ2RiHCLIRm9uI828dqvREQ5oFQ1Qoa03ydH7CqXqTmp+eE/
	AN/zLd5adCnVnaBYDES9zovYfw5CqLJ9NkxPjgRP4Ie0rVf/MmJJk+MILTUF3EnI3r259lIZU2YYI
	ccvWjzGF0MPtf0R+QcYPHTcZ0S3cHlQyVKRAIi8WhIWFoOu8M1rLGC0g6AZGhOuRqGPAfC75vcI5S
	poIzD//H1Dw/G5wuFn6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stM2M-00000004Fj9-3CZ8;
	Wed, 25 Sep 2024 07:02:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stLzy-00000004FFi-1hvT;
	Wed, 25 Sep 2024 06:59:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=4OHDvy0JbwIo9T9ERJY3XrQ0uyG3wqjaKHFSvcXXFsw=; b=utEltkYfHyzwR+C/bwO7gQuIvm
	OCsXLnaMF0nOUSAoY1NHWyYYEVNsbDaDTqzFdClMIk69dYyHGWRXA5Er+eAkv7xtBWtC8MmhWYUBX
	kltVnupn96hDAgeokDV+Rm+pfm+QQbM41f/AX2Hu/mj81U/rgj7me4CNw7jEJ9qAXDRQ3EhUuGyFX
	/aTFheYa4Yrxr0uA4G+LRg+lNrYawxIweumhAU16ej0tO66lUSDscJ8gSpFHf9QcTYeV5O44GlRPS
	gzR/0wCm4HwoZze+yWHFt0mNvcgNL6mh+kRmFfhqOH/MbCWE9UToh/A0IuB4WvmC+2VD9Pb6q99sn
	1O7py0vw==;
Received: from 90-177-212-167.rck.o2.cz ([90.177.212.167] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1stLzp-0007NK-Jb; Wed, 25 Sep 2024 08:59:33 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, frawang <frawang.cn@gmail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, william.wu@rock-chips.com,
 tim.chen@rock-chips.com, Frank Wang <frank.wang@rock-chips.com>
Subject: Re: [PATCH v2 2/2] phy: rockchip: inno-usb2: Add usb2 phys support for rk3576
Date: Wed, 25 Sep 2024 08:59:33 +0200
Message-ID: <5522095.29KlJPOoH8@phil>
In-Reply-To: <29d80d30-dcbf-4fe1-b7aa-3f8c46fee714@gmail.com>
References: <20240924085510.20863-1-frawang.cn@gmail.com> <15288441.JCcGWNJJiE@phil>
 <29d80d30-dcbf-4fe1-b7aa-3f8c46fee714@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240924_235942_522234_26B198DE 
X-CRM114-Status: GOOD (  21.98  )
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

Hi Frank,

Am Mittwoch, 25. September 2024, 03:42:35 CEST schrieb frawang:
> >> @@ -376,6 +378,7 @@ rockchip_usb2phy_clk480m_register(struct rockchip_usb2phy *rphy)
> >>   {
> >>   	struct device_node *node = rphy->dev->of_node;
> >>   	struct clk_init_data init;
> >> +	struct clk *refclk = of_clk_get_by_name(node, "phyclk");
> > Doesn't this create an imbalance - with the missing put?
> > I think ideally just define clk_bulk_data structs for the
> > 1-clock and 3-clock variant, attach that to the device-data
> > and then use the regular devm_clk_bulk_get ?
> >
> > That way you can then retrieve the clock from that struct?
> 
> How about keep the clk_bulk_data and num_clks member in rockchip_usb2phy 
> structs, and retrieve the clock by "clks.id" here?
> Just like the following codes.
> 
> @@ -378,8 +378,9 @@ rockchip_usb2phy_clk480m_register(struct 
> rockchip_usb2phy *rphy)
>   {
>          struct device_node *node = rphy->dev->of_node;
>          struct clk_init_data init;
> -       struct clk *refclk = of_clk_get_by_name(node, "phyclk");
> +       struct clk *refclk = NULL;
>          const char *clk_name;
> +       int i;
>          int ret = 0;
> 
>          init.flags = 0;
> @@ -389,6 +390,13 @@ rockchip_usb2phy_clk480m_register(struct 
> rockchip_usb2phy *rphy)
>          /* optional override of the clockname */
>          of_property_read_string(node, "clock-output-names", &init.name);
> 
> +       for (i = 0; i < rphy->num_clks; i++) {
> +               if (!strncmp(rphy->clks[i].id, "phyclk", 6)) {
> +                       refclk = rphy->clks[i].clk;
> +                       break;
> +               }
> +       }
> +

this is exactly what I had in mind :-)

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
