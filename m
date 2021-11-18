Return-Path: <SRS0=Tpqa=QF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DEC79C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Nov 2021 18:38:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AF33B613DB
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Nov 2021 18:38:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org AF33B613DB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=metanate.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7e26gi6F+LpcnFYcmW7fi7B9tQijGsWGpj3joUcJ+uk=; b=nNVCPNHLsFwdB5
	w0xUeV4+g40UzKVdzHXaFMFjv9nmQ4T+CK3ZRt8FgZ1sI2ZqCJ65bPxn2pzAhT1VoL1KN1QolDU2M
	ArNIv3W805WNxpf5wmVpAq9vFsPfPrvl2jFklCdKY5JfFmWYBWeyGo49fix/D16CXb9Y/1D0Bz6Fs
	8lTLqj2rAX5PCiT6e9yvFpDnsJLtCAqnG5iG5ROUJ4B8QWaZ4F9E0HaZHrn7L9+ExDCUEFVnfndel
	fJYQ1PNnpzY5gCddFm36rOl55aZWdCVzzjRQ+WMVrWsUmCbPknGtfxpAbha1+Q6bgPWTIIC5ekP3Q
	cltrQb59WeeiXm8t/8sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnmIj-008azX-2a; Thu, 18 Nov 2021 18:38:25 +0000
Received: from [2001:8b0:1628:5005::111] (helo=metanate.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnmI1-008alR-6d; Thu, 18 Nov 2021 18:37:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=metanate.com; s=stronger; h=In-Reply-To:Content-Type:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description; bh=NMsSVSlICaw3KxLzwPPUCPeVdNgwg5v8aK2nEdXuhtA=; b=DILZx
 /TB9pZ1072e6u6lM8weFHFpm1OxAnji/1mVME5ECSH4vCffcOLqzZVLl9ABFp1eiHkfUCzM9/B40F
 p0DdAQ4KvHFi0GD2q+1d5twBHNIo4IcyJtFIXmysJ7uhOU9U3XXAGHEFqZ9pJNOP+g9HzavcKLD80
 BQwOrZZasBUwPK1JWN97LcMLNGOlQDEy8vzTah0QqgBwmdoZ98DNRr+1AzoM0YiPrRrgTgbmC1CdP
 A078lmkh22euzzTvJAzI0hqn9qpHoLBc+Ws5DguYxd2tDAVxLEzYrLikydU9V+bw2BMPKBh0dCKwr
 sGusX9DDSrYh9JmSuyaa7f6MEUD2w==;
Received: from [81.174.171.191] (helo=donbot)
 by email.metanate.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <john@metanate.com>)
 id 1mnmHu-0005Py-OZ; Thu, 18 Nov 2021 18:37:34 +0000
Date: Thu, 18 Nov 2021 18:37:33 +0000
From: John Keeping <john@metanate.com>
To: Ondrej Jirman <megous@megous.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Wolfram Sang <wsa@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 "open list:I2C SUBSYSTEM HOST DRIVERS" <linux-i2c@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>
Subject: Re: [RESEND PATCH] i2c: rk3x: Handle a spurious start completion
 interrupt flag
Message-ID: <YZadbTw0q4NA2XWs@donbot>
References: <20210924111528.2924251-1-megous@megous.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210924111528.2924251-1-megous@megous.com>
X-Authenticated: YES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211118_103741_284945_A0ABE1DE 
X-CRM114-Status: GOOD (  19.32  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Fri, Sep 24, 2021 at 01:15:27PM +0200, Ondrej Jirman wrote:
> In a typical read transfer, start completion flag is being set after
> read finishes (notice ipd bit 4 being set):
> 
> trasnfer poll=0
> i2c start
> rk3x-i2c fdd40000.i2c: IRQ: state 1, ipd: 10
> i2c read
> rk3x-i2c fdd40000.i2c: IRQ: state 2, ipd: 1b
> i2c stop
> rk3x-i2c fdd40000.i2c: IRQ: state 4, ipd: 33
> 
> This causes I2C transfer being aborted in polled mode from a stop completion
> handler:
> 
> trasnfer poll=1
> i2c start
> rk3x-i2c fdd40000.i2c: IRQ: state 1, ipd: 10
> i2c read
> rk3x-i2c fdd40000.i2c: IRQ: state 2, ipd: 0
> rk3x-i2c fdd40000.i2c: IRQ: state 2, ipd: 1b
> i2c stop
> rk3x-i2c fdd40000.i2c: IRQ: state 4, ipd: 13
> i2c stop
> rk3x-i2c fdd40000.i2c: unexpected irq in STOP: 0x10
> 
> Clearing the START flag after read fixes the issue without any obvious
> side effects.
> 
> This issue was dicovered on RK3566 when adding support for powering
> off the RK817 PMIC.
> 
> Signed-off-by: Ondrej Jirman <megous@megous.com>
> ---

I haven't seen the issue described here, so I can't test whether this
fix works, but the explanation makes sense, so:

Reviewed-by: John Keeping <john@metanate.com>

>  drivers/i2c/busses/i2c-rk3x.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-rk3x.c b/drivers/i2c/busses/i2c-rk3x.c
> index 819ab4ee517e..02ddb237f69a 100644
> --- a/drivers/i2c/busses/i2c-rk3x.c
> +++ b/drivers/i2c/busses/i2c-rk3x.c
> @@ -423,8 +423,8 @@ static void rk3x_i2c_handle_read(struct rk3x_i2c *i2c, unsigned int ipd)
>  	if (!(ipd & REG_INT_MBRF))
>  		return;
>  
> -	/* ack interrupt */
> -	i2c_writel(i2c, REG_INT_MBRF, REG_IPD);
> +	/* ack interrupt (read also produces a spurious START flag, clear it too) */
> +	i2c_writel(i2c, REG_INT_MBRF | REG_INT_START, REG_IPD);
>  
>  	/* Can only handle a maximum of 32 bytes at a time */
>  	if (len > 32)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
