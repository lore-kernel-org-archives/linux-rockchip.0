Return-Path: <SRS0=igfw=CP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_2 autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 32FEFC43461
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Sep 2020 15:20:24 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CE1E52075A
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Sep 2020 15:20:23 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="O4i8UK8H";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="hSEZ2PLO"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CE1E52075A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VPZkNwgw1BKdK/qHAshiR/9HlB7noMmyHUZobBqLGCU=; b=O4i8UK8Ht+7D/sXZGBO2dymWz
	bG9+MZhLLUa0BJ6PlpXS1S0CWp1lio+qJy1c0GONDQYtj3iogXPTbGaODhL/xAjgyvsjHnSKto7nS
	C2LthCeUvOe2tJfW8salObH6V9dhmscRw3V0yno3l7qSzssrtq+3+F4XucvggYe7Qz+ChGr+fqFD7
	RQzoEi1AUabIYRyyYMX1jeVlWEklCgXLs5fznyg3kwVhT226uWan+roUpCQo8lREdWXazgm7YRdvq
	04m6J/Yp8InZsqDILh8Z7XJytUlxp2snTPFv846xnjDNNypandkPTl5EXx8qZyAoRqo3Fkjk85rfP
	JDuksQ47Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kEwSo-0004Xj-0D; Sun, 06 Sep 2020 15:20:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kEwSl-0004Wp-Ih
 for linux-rockchip@lists.infradead.org; Sun, 06 Sep 2020 15:20:16 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 35E7920714;
 Sun,  6 Sep 2020 15:20:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599405614;
 bh=lENSTT8zhvx+mn9kptc0V4UJ7LSxhvNqQW6A/G5G6xc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=hSEZ2PLOZEp+XnmHEDtxrqCjCPbvYSLy0e4dKzEHogM1ihso0Bl2oJy8fcSukd9Fx
 LiAmbxD3VMuPgHAC8lQBCQDmZg5NEh2mQrA2OH/ybddgbNq09zNEJE/f2V0+FT8Tpo
 yZmd7AFL8e7KIHxAbkh2p4VIDMgwlWn/ndmfQpx4=
Date: Sun, 6 Sep 2020 16:20:10 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Vicente Bergas <vicencb@gmail.com>
Subject: Re: [PATCH] IIO: rockchip: add missing dependencies for saradc
Message-ID: <20200906162010.30094d61@archlinux>
In-Reply-To: <20200901204054.5334-1-vicencb@gmail.com>
References: <20200901204054.5334-1-vicencb@gmail.com>
X-Mailer: Claws Mail 3.17.6 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200906_112015_691815_DA93346B 
X-CRM114-Status: GOOD (  19.78  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Lars-Peter Clausen <lars@metafoo.de>,
 Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>, linux-iio@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Hartmut Knaack <knaack.h@gmx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue,  1 Sep 2020 22:40:54 +0200
Vicente Bergas <vicencb@gmail.com> wrote:

> This driver uses the triggered buffer functionality
> but was not requiring it.
> 
> Signed-off-by: Vicente Bergas <vicencb@gmail.com>

Fix should now be in tree. I don't think the IIO_TRIGGER select
is necessary (and isn't in current fixed version) but if I'm wrong
on that please shout!  Logically it shouldn't be required as the
driver doesn't provide a trigger, but we may have something missing
a stub somewhere.

Jonathan

> ---
>  drivers/iio/adc/Kconfig | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/iio/adc/Kconfig b/drivers/iio/adc/Kconfig
> index 66d9cc073157..cd90f60cdfd9 100644
> --- a/drivers/iio/adc/Kconfig
> +++ b/drivers/iio/adc/Kconfig
> @@ -865,6 +865,9 @@ config ROCKCHIP_SARADC
>  	tristate "Rockchip SARADC driver"
>  	depends on ARCH_ROCKCHIP || (ARM && COMPILE_TEST)
>  	depends on RESET_CONTROLLER
> +	select IIO_BUFFER
> +	select IIO_TRIGGER
> +	select IIO_TRIGGERED_BUFFER
>  	help
>  	  Say yes here to build support for the SARADC found in SoCs from
>  	  Rockchip.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
