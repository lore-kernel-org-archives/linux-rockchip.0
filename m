Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3389C4345F
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Apr 2024 21:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Sh6QepMbdxcTJg3Mn+0/wOqU2g02Iqj5EH26fRxDDN8=; b=O37+tk4bWYcQR6Za+OLCuiMOkU
	jC+WmmhX/ZeWMes3UUz0uMvNKGemYzCnNLCqJS2049KxCyWVzR6sRccCcsPv8cJ3Iu08ltWCCZOWk
	FhbzmHVDn+NrGrxRrLxt0GQd3/9lkFgi/onNttBJnjV6XsySXLBa44qd8aEr1kfGaVAHHTJ+On87h
	jvUklBYS3Q2b1Km3ROVKQ5ZZiW/og4e/LWgxDIZf34pfZ+/KC1+4ZXMa+GV146J/USs83rgK6oCmW
	XXVLtELZZtpN+fobBxo0tB0A6al4Z7Oq6FBw414/VmQ3pmzSYBY/svilSAcwEb/m03FzgBcUjiLL3
	P6lUMw9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvOCc-00000001LBs-3b96;
	Fri, 12 Apr 2024 21:12:54 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvOCY-00000001L9N-1YUK;
	Fri, 12 Apr 2024 21:12:52 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1712956364;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+Eex/96Clk4YEe9dDCjud+Kr7GJR8Rpozk+rMxf9QX4=;
	b=gJkPvnYVlzJVUbumqPTbD5rM2Qx+xmj9iyFfp9rnQtwduvxqrnGP0VT/rn7hKtf1/VD4kH
	MrsjsQhnPG15tKJlqtE4lwPnEKHWDeYUpQIyBzNGgxiqyAfwXopy3SS28sqf3qdEb6zsdc
	V9KveXmSS6fCL3e50Y62+p1XvM+rv+hIthnHtqwdHtMcoENrMgZSiHXmIIwrO4WrvTFRGy
	4ItJhBKdefJvH5wP9Zj/D0Ngbik+ILf4m4PXv8R0MQCWqUP298ixzYyylV/LWVGvKVwfcH
	WdnPLSnUkYtFVz7JkPXdueYmCn9wMmET+ClBbGGHHNOSoK4tLJee695/XW+cDQ==
Date: Fri, 12 Apr 2024 23:12:44 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-i2c@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, Andi Shyti
 <andi.shyti@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 13/18] i2c: rk3x: remove printout on handled timeouts
In-Reply-To: <20240410112418.6400-33-wsa+renesas@sang-engineering.com>
References: <20240410112418.6400-20-wsa+renesas@sang-engineering.com>
 <20240410112418.6400-33-wsa+renesas@sang-engineering.com>
Message-ID: <4bcd397ec377a4932c34d62c85ef28ed@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_141250_968052_D97C0766 
X-CRM114-Status: GOOD (  13.65  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Wolfram,

On 2024-04-10 13:24, Wolfram Sang wrote:
> I2C and SMBus timeouts are not something the user needs to be informed
> about on controller level. The client driver may know if that really is
> a problem and give more detailed information to the user. The 
> controller
> should just pass this information upwards. Remove the printout.

Maybe it would be good to turn it into a debug message, instead of
simply removing it?  Maybe not all client drivers handle it correctly,
in which case having an easy way for debugging would be beneficial.

> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> ---
>  drivers/i2c/busses/i2c-rk3x.c | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-rk3x.c 
> b/drivers/i2c/busses/i2c-rk3x.c
> index 086fdf262e7b..8c7367f289d3 100644
> --- a/drivers/i2c/busses/i2c-rk3x.c
> +++ b/drivers/i2c/busses/i2c-rk3x.c
> @@ -1106,9 +1106,6 @@ static int rk3x_i2c_xfer_common(struct 
> i2c_adapter *adap,
>  		spin_lock_irqsave(&i2c->lock, flags);
> 
>  		if (timeout == 0) {
> -			dev_err(i2c->dev, "timeout, ipd: 0x%02x, state: %d\n",
> -				i2c_readl(i2c, REG_IPD), i2c->state);
> -
>  			/* Force a STOP condition without interrupt */
>  			i2c_writel(i2c, 0, REG_IEN);
>  			val = i2c_readl(i2c, REG_CON) & REG_CON_TUNING_MASK;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
