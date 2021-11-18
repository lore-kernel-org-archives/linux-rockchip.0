Return-Path: <SRS0=Tpqa=QF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD72C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Nov 2021 18:36:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7C92761526
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Nov 2021 18:36:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7C92761526
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=metanate.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yRwr/6Ie0jwzUutZP15Uv1Wj5McmyuCgRTOSNcbtTXk=; b=rIBe8fhijSmgBk
	BgsiwUeWypbsmNxNpxIIJlDMgIYFVGz1ofJ0OmM42n95l3/O0I/yg1ZJdQxLKoioBLgELXVOLccEM
	tF642DpviZqCjI1ZUh7oTQaOHNlDEVpm9na/qaguOhqUGLUOyapgY9AxZDOwmWUIWGuKBWXUa1Rbk
	0P9WVrRfnJZOlG9SXY3MlofwhBsiZrTDFxKWO2mgr7GHUyrkuihlFmk+XqYP9ThFBw4RR7P6pciNB
	TXYRTxCYlwVwiR/VjJhFfZ1EGs5WfH8XgXh/ZPc+N7Rd41yq0mQ2EfRRIlGy1pGCvcfYnZbMCTgym
	6q97AjxgSMc+SXuTBZHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnmGq-008aPX-56; Thu, 18 Nov 2021 18:36:28 +0000
Received: from [2001:8b0:1628:5005::111] (helo=metanate.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnmGH-008aI2-Om; Thu, 18 Nov 2021 18:35:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=metanate.com; s=stronger; h=In-Reply-To:Content-Type:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description; bh=QKgxJEyKREs5TCvjoyhQ6xe2fnBuo6nhs1/99d9iV9Q=; b=c65u9
 HcBQSG3ZOrz7WhpKNvFBToTxxuOwoB0mdqh3XDrgGoB31WfiXiYY+hQEF/DqIegvpf/8NkwtUTtLK
 lZQ8lNpUNFBl4yJxn+sT3qwMH7/9Eg28IyOHWc/ayLGnOS8ELY3GJopKNuHb5mPyXwO8wP1vUleug
 NR7FFbSpb13IGjWgozLMj2h9wCtDjumWgxlGJisGTKjK/aFnjP9Y71Fr5Dphg6wELmhQFmxiuV4+U
 EuBWHyYgaxeaUc5bBmnDiZoLCPI8/wc5wkXwE8NeVp+k1ZQWFCzd/BUqid272fkfYBqAj25II99gr
 uycuGlr8Raey+Ij0FFKkmo1lVLRjQ==;
Received: from [81.174.171.191] (helo=donbot)
 by email.metanate.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <john@metanate.com>)
 id 1mnmGE-0005PJ-QL; Thu, 18 Nov 2021 18:35:50 +0000
Date: Thu, 18 Nov 2021 18:35:49 +0000
From: John Keeping <john@metanate.com>
To: Tobias Schramm <t.schramm@manjaro.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] i2c: rk3x: disable and reenable I2C after timeouts to
 fix stuck low SDA
Message-ID: <YZadBW3TGhVSEtQP@donbot>
References: <20210826174632.91887-1-t.schramm@manjaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210826174632.91887-1-t.schramm@manjaro.org>
X-Authenticated: YES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211118_103553_861052_F4980D8C 
X-CRM114-Status: GOOD (  16.03  )
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

On Thu, Aug 26, 2021 at 07:46:32PM +0200, Tobias Schramm wrote:
> Previously the SDA line sometimes remained stuck low after timeouts
> rendering the I2C bus unusable. Testing has shown that disabling and
> reenabling the I2C peripheral after sending the stop condition seems to
> unstick SDA reliably.
> Disable and reenable the I2C controller on timeout after sending stop
> condition to unstick SDA.
> 
> Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>

I haven't seen the issue described here, so I can't test whether this
fix works, but the explanation makes sense, so:

Reviewed-by: John Keeping <john@metanate.com>

> ---
>  drivers/i2c/busses/i2c-rk3x.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/drivers/i2c/busses/i2c-rk3x.c b/drivers/i2c/busses/i2c-rk3x.c
> index 819ab4ee517e..fc330cc3686a 100644
> --- a/drivers/i2c/busses/i2c-rk3x.c
> +++ b/drivers/i2c/busses/i2c-rk3x.c
> @@ -1108,6 +1108,16 @@ static int rk3x_i2c_xfer_common(struct i2c_adapter *adap,
>  			val |= REG_CON_EN | REG_CON_STOP;
>  			i2c_writel(i2c, val, REG_CON);
>  
> +			/*
> +			 * Sometimes SDA remains stuck low after timeouts.
> +			 * Disable and reenable the I2C peripheral to unstick
> +			 * SDA.
> +			 */
> +			val &= ~REG_CON_EN;
> +			i2c_writel(i2c, val, REG_CON);
> +			val |= REG_CON_EN;
> +			i2c_writel(i2c, val, REG_CON);
> +
>  			i2c->state = STATE_IDLE;
>  
>  			ret = -ETIMEDOUT;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
