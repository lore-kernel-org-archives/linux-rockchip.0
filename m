Return-Path: <SRS0=PymM=KP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB25CC433ED
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 May 2021 21:53:26 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C965A61004
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 May 2021 21:53:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C965A61004
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ePlIyIJVY1Hu7iQIBoGMzyqBKyailMROn2uhgX5ZHfc=; b=hoYC2mpTvcudupON64wYUUsw1J
	ER2kzjcAvp2m6xU3eybWW2KkVpvUjkvjaiaQ/2AFEZrJsIecccmdAsU9Kh9KaX12Ws+Z0+HCD9M2a
	rlQWKdp4yUBgzh8T+eyM1A8dAKomteVegZk9sn62eTvc4TXomYBCt3m4dBAHiepxUSwyzIf7WDCXe
	TpzNQYeS3xyY7ybsCElLUoiTycRX9yOzhk03HREuTezNfKbGVxlDLMsmSTvvyANvVgJUAHKTUV+L3
	mf63j6xwsnoECa0gjz8Ol25vHGFJiF3h9BUv3pWP6ZMYhahHkgTJJevKJlrwrZU8DNAzo33ssl+Wd
	axem/BbA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ljqbA-002qIg-Ij; Thu, 20 May 2021 21:52:56 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ljqaq-002qGP-28; Thu, 20 May 2021 21:52:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:
 Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
 :Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=Ptj1PoVtXqAn4keZah8JOHttV0Yw2cDVtRI8RAJWe94=; b=3QbNDCi5sFKVM/MER35cXRYr4A
 IbH0emHhLBfWRmdi5vuaAZUCVUdgGUFJySVT+TNjz0xF3wfADydakd8Ic2iSfJYAHI5+jKcy35ZCS
 kTZdr6vwS8IbkPOmDtRX/GSyTMZCBMyFC1topt2J+tzDD7lka1bo5Jx3wRaQMv34HNGPE34jqw55/
 fSQBf3Y5czQ6g3wUvmrsvbgk+tVmQFFfAWXJBHy7NjCJrjtlbkmcMlHJFrTepDjtD2S9owcV55ftl
 0FYSo1jCUZgYzBT6Yc0MhoAmApxOHqbJSiohrcxG8W3c3Jv+QpN9UMzdO/VCsu7bt06G8z8f8w/3C
 6rqpXdwQ==;
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljqan-00GgFu-B1; Thu, 20 May 2021 21:52:34 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1ljqah-0001n2-4H; Thu, 20 May 2021 23:52:27 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: lee.jones@linaro.org, Lee Jones <lee.jones@linaro.org>
Cc: linux-kernel@vger.kernel.org, Max Schwarz <max.schwarz@online.de>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-i2c@vger.kernel.org
Subject: Re: [PATCH 12/16] i2c: busses: i2c-rk3x: Demote unworthy headers and
 help more complete ones
Date: Thu, 20 May 2021 23:52:26 +0200
Message-ID: <6083609.GXAFRqVoOG@diego>
In-Reply-To: <20210520190105.3772683-13-lee.jones@linaro.org>
References: <20210520190105.3772683-1-lee.jones@linaro.org>
 <20210520190105.3772683-13-lee.jones@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210520_145233_419024_B7744DD6 
X-CRM114-Status: GOOD (  20.72  )
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

Hi Lee,

Am Donnerstag, 20. Mai 2021, 21:01:01 CEST schrieb Lee Jones:
> Fixes the following W=1 kernel build warning(s):
> 
>  drivers/i2c/busses/i2c-rk3x.c:242: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
>  drivers/i2c/busses/i2c-rk3x.c:261: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
>  drivers/i2c/busses/i2c-rk3x.c:304: warning: Function parameter or member 'i2c' not described in 'rk3x_i2c_prepare_read'
>  drivers/i2c/busses/i2c-rk3x.c:304: warning: expecting prototype for Setup a read according to i2c(). Prototype was for rk3x_i2c_prepare_read() instead
>  drivers/i2c/busses/i2c-rk3x.c:335: warning: Function parameter or member 'i2c' not described in 'rk3x_i2c_fill_transmit_buf'
>  drivers/i2c/busses/i2c-rk3x.c:335: warning: expecting prototype for Fill the transmit buffer with data from i2c(). Prototype was for rk3x_i2c_fill_transmit_buf() instead
>  drivers/i2c/busses/i2c-rk3x.c:535: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
>  drivers/i2c/busses/i2c-rk3x.c:552: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
>  drivers/i2c/busses/i2c-rk3x.c:713: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
>  drivers/i2c/busses/i2c-rk3x.c:963: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
>  drivers/i2c/busses/i2c-rk3x.c:973: warning: Function parameter or member 'i2c' not described in 'rk3x_i2c_setup'
> 
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: Max Schwarz <max.schwarz@online.de>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-rockchip@lists.infradead.org
> Cc: linux-i2c@vger.kernel.org
> Signed-off-by: Lee Jones <lee.jones@linaro.org>
> ---
>  drivers/i2c/busses/i2c-rk3x.c | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-rk3x.c b/drivers/i2c/busses/i2c-rk3x.c
> index 819ab4ee517e1..1dfbd1185aefc 100644
> --- a/drivers/i2c/busses/i2c-rk3x.c
> +++ b/drivers/i2c/busses/i2c-rk3x.c
> @@ -238,7 +238,7 @@ static inline void rk3x_i2c_clean_ipd(struct rk3x_i2c *i2c)
>  	i2c_writel(i2c, REG_INT_ALL, REG_IPD);
>  }
>  
> -/**
> +/*
>   * Generate a START condition, which triggers a REG_INT_START interrupt.
>   */
>  static void rk3x_i2c_start(struct rk3x_i2c *i2c)
> @@ -257,7 +257,7 @@ static void rk3x_i2c_start(struct rk3x_i2c *i2c)
>  	i2c_writel(i2c, val, REG_CON);
>  }
>  
> -/**
> +/*
>   * Generate a STOP condition, which triggers a REG_INT_STOP interrupt.

what made you decide between demoting and completing comments?
I.e. here you demot the "static void rk3x_i2c_stop()", while below
you for example complete the "static rk3x_i2c_get_spec()".

So I somehow do not yet see the pattern ;-)

Heiko


>   *
>   * @error: Error code to return in rk3x_i2c_xfer
> @@ -297,7 +297,7 @@ static void rk3x_i2c_stop(struct rk3x_i2c *i2c, int error)
>  	}
>  }
>  
> -/**
> +/*
>   * Setup a read according to i2c->msg
>   */
>  static void rk3x_i2c_prepare_read(struct rk3x_i2c *i2c)
> @@ -328,7 +328,7 @@ static void rk3x_i2c_prepare_read(struct rk3x_i2c *i2c)
>  	i2c_writel(i2c, len, REG_MRXCNT);
>  }
>  
> -/**
> +/*
>   * Fill the transmit buffer with data from i2c->msg
>   */
>  static void rk3x_i2c_fill_transmit_buf(struct rk3x_i2c *i2c)
> @@ -532,7 +532,7 @@ static irqreturn_t rk3x_i2c_irq(int irqno, void *dev_id)
>  }
>  
>  /**
> - * Get timing values of I2C specification
> + * rk3x_i2c_get_spec() - Get timing values of I2C specification
>   *
>   * @speed: Desired SCL frequency
>   *
> @@ -549,7 +549,7 @@ static const struct i2c_spec_values *rk3x_i2c_get_spec(unsigned int speed)
>  }
>  
>  /**
> - * Calculate divider values for desired SCL frequency
> + * rk3x_i2c_v0_calc_timings() - Calculate divider values for desired SCL frequency
>   *
>   * @clk_rate: I2C input clock rate
>   * @t: Known I2C timing information
> @@ -710,7 +710,7 @@ static int rk3x_i2c_v0_calc_timings(unsigned long clk_rate,
>  }
>  
>  /**
> - * Calculate timing values for desired SCL frequency
> + * rk3x_i2c_v1_calc_timings() - Calculate timing values for desired SCL frequency
>   *
>   * @clk_rate: I2C input clock rate
>   * @t: Known I2C timing information
> @@ -959,8 +959,8 @@ static int rk3x_i2c_clk_notifier_cb(struct notifier_block *nb, unsigned long
>  	}
>  }
>  
> -/**
> - * Setup I2C registers for an I2C operation specified by msgs, num.
> +/*
> + * rk3x_i2c_setup() - Setup I2C registers for an I2C operation specified by msgs, num.
>   *
>   * Must be called with i2c->lock held.
>   *
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
