Return-Path: <SRS0=0IO0=CE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC373C433E3
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Aug 2020 16:22:41 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AD23D2074A
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Aug 2020 16:22:41 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="ghJHmK3s";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=dabbelt-com.20150623.gappssmtp.com header.i=@dabbelt-com.20150623.gappssmtp.com header.b="0XBaJLdp"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AD23D2074A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=dabbelt.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=rG/Y4LCXklGN5Q3cQ5Ed0g91D7TwTI/XNWZsO13pkrg=; b=ghJHmK3sMJ8qJi3ekv+RZu+AU
	gffHCQLLDiW6N1c+tCLlOnBS2Ue7aPWRPcsjhjZ/TFRJEkOiaAFzAe7DXvUmW2eWM6nBFnS3oXJ+z
	nUAUj41R8gPsKSk1xrf/KzIAbCPr/xn22iaS6H10JRQ8JZMv22IHvjSVd6RKk5UYlr58qz3a4ZYas
	1WcxC3FZG9X6/jnPp4//l2PojRe0X2se2tOVuAIj8v/kZK0dkrG1sSsrt8YUq0mRjyu49Q3W0BFwZ
	mX0NncF4oXHdSK4AapsGEChJfz/TM75oS1Y3XBo/90lflhqLKqCEw5lNP7s73XactGW+Mq5heys/l
	lr7hlp3Iw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kAyC5-0005NS-KP; Wed, 26 Aug 2020 16:22:37 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kAyBz-0005KQ-3J
 for linux-rockchip@lists.infradead.org; Wed, 26 Aug 2020 16:22:32 +0000
Received: by mail-pg1-x544.google.com with SMTP id o13so1299643pgf.0
 for <linux-rockchip@lists.infradead.org>; Wed, 26 Aug 2020 09:22:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=M2pM6oqlNN6MFOKK7t3LmYxIe8hLNoDE+c6Oy6sDbps=;
 b=0XBaJLdphBcrsfjbCsPV/DnDtCuoTybU7kmvMapFYxXvE3qZVFr9blFuHjPXHdTCei
 +jJzOZv28p3I5AapTR4ZbPqikFLUJjy4pvnArkspXnEkiY7GYz3ETVp7OVydR5uMTZM2
 kNbkLJK4XIMHrkChkpj+RwFk29h+27rr1PHt8H2kBjI/enJtfY/WnH80fl+UpX3RP0NU
 TjeoCU06rYZPWboZIgjOEMBygqnFDHBdvdAXceru+Hk8HcCZNQ/RQ1mTpWbBaGnCmI2z
 llHFdLKaXFPfd+lmlicsjJx0Gpg8eX+6uxm66QadJ0HlK1kjZ+gq6LrJ+vvmkLGvJN0a
 UMvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=M2pM6oqlNN6MFOKK7t3LmYxIe8hLNoDE+c6Oy6sDbps=;
 b=UBS+9CdbUKmRYO8jxjPJRrOWZqasL00Hfg4DhXHyy+Pv0fv2b1H7/MXB/0FxNq1g6S
 05PJfhpaArC4Z1Zy9ScKTqXBuMTxVB1plrX+b5uUUMiaejwdoC4LOPehTOn0BZb2djmI
 c3+/2sZRVLHhAEix4jY+arQN1G6MpgB/NyNmoBAAfT0A951vzygPfoT2955kJ7N3niYa
 8rFLbxGCxivpsFAUxSvi6dm5Kxq++dEBb8YsD+MRIkG4VcHLkASLlz9gawvteV147XA1
 KQu+FdcEQ9yIOso+k3a2uysA+HUuH2brbxMCoPy7Cjhu+ihM4piBa8pPxBluJuTr4gGD
 8d2w==
X-Gm-Message-State: AOAM532M2h2s1p1u6rElT+N9Wp9K7jzi6Q4mNDtwPRjCEoS8v4hDNcIp
 32EvRrkE7/cmy0XOfORf85m84Q==
X-Google-Smtp-Source: ABdhPJxhvy1Fr0y470BQcg3U7zUExK/HTGZMY1TA2Yh1PBJT1AC0z2GSyGYGUWggFbvX+ZwTbRjMWA==
X-Received: by 2002:a63:4543:: with SMTP id u3mr10396963pgk.398.1598458946525; 
 Wed, 26 Aug 2020 09:22:26 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id j12sm2803760pjd.44.2020.08.26.09.22.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Aug 2020 09:22:24 -0700 (PDT)
Date: Wed, 26 Aug 2020 09:22:24 -0700 (PDT)
X-Google-Original-Date: Wed, 26 Aug 2020 09:22:22 PDT (-0700)
Subject: Re: [PATCH 4/6] pwm: sifive: Simplify with dev_err_probe()
In-Reply-To: <20200826144747.9436-4-krzk@kernel.org>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: krzk@kernel.org
Message-ID: <mhng-452a4fec-be33-4b49-a904-edb4b4c81e0c@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200826_122231_234975_35479626 
X-CRM114-Status: GOOD (  20.14  )
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
Cc: heiko@sntech.de, paul@crapouillou.net, thierry.reding@gmail.com,
 linux-riscv@lists.infradead.org, lee.jones@linaro.org, f.fainelli@gmail.com,
 zhang.lyra@gmail.com, krzk@kernel.org, linux-rockchip@lists.infradead.org,
 wens@csie.org, bcm-kernel-feedback-list@broadcom.com,
 u.kleine-koenig@pengutronix.de, orsonzhai@gmail.com, linux-pwm@vger.kernel.org,
 rjui@broadcom.com, mripard@kernel.org, linux-rpi-kernel@lists.infradead.org,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-arm-kernel@lists.infradead.org,
 sbranden@broadcom.com, linux-kernel@vger.kernel.org, baolin.wang7@gmail.com,
 nsaenzjulienne@suse.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, 26 Aug 2020 07:47:45 PDT (-0700), krzk@kernel.org wrote:
> Common pattern of handling deferred probe can be simplified with
> dev_err_probe().  Less code and also it prints the error value.
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>  drivers/pwm/pwm-sifive.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/pwm/pwm-sifive.c b/drivers/pwm/pwm-sifive.c
> index 62de0bb85921..2485fbaaead2 100644
> --- a/drivers/pwm/pwm-sifive.c
> +++ b/drivers/pwm/pwm-sifive.c
> @@ -254,11 +254,9 @@ static int pwm_sifive_probe(struct platform_device *pdev)
>  		return PTR_ERR(ddata->regs);
>
>  	ddata->clk = devm_clk_get(dev, NULL);
> -	if (IS_ERR(ddata->clk)) {
> -		if (PTR_ERR(ddata->clk) != -EPROBE_DEFER)
> -			dev_err(dev, "Unable to find controller clock\n");
> -		return PTR_ERR(ddata->clk);
> -	}
> +	if (IS_ERR(ddata->clk))
> +		return dev_err_probe(dev, PTR_ERR(ddata->clk),
> +				     "Unable to find controller clock\n");
>
>  	ret = clk_prepare_enable(ddata->clk);
>  	if (ret) {

Acked-by: Palmer Dabbelt <palmerdabbelt@google.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
