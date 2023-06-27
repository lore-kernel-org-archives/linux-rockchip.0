Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EC31EB64DD
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jun 2023 07:44:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+yJyiXCoEsfvT7N8RHklOTA0XK0eFzw4ZsBuf7V2oF4=; b=QTkWW8k63HkeuK
	k40hA0Gzx+4x+HX+POgIf3lyFlC7s35uJdCxWSRqB3dzFMW9gJpNIJ2Ady2QK2ojwT6MoQ2rJb45M
	CR6l4eTGWMdg9cFZ5kYRM2Ab9+3tRGZXB+qtduf1nxynWL3zVIsqHjOiLV1LHS9skMZSxeb01ylV5
	yi+RntcHaKIJa00wODiiNKoqRmlnifNj1z51T+jfWuqoQSOQK37ypSHDvBjgbxYsPXHtj9bQkBvij
	OoPbyirZGgo2Caiv95jL/M3CLbj/Of08NPvaFgvq01U6BnQ2DJg3Bd3ejSKigt5nGJ6qZumw4S9mU
	lBYv2WFjEpAl31QgvLIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qE3Mu-00CPkw-2R;
	Tue, 27 Jun 2023 07:44:08 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qE3Mq-00CPg5-22
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Jun 2023 07:44:06 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-4f95bf5c493so5458892e87.3
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Jun 2023 00:44:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687851839; x=1690443839;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nXDjy7JPJ8XrZiw8dYtuA9M7FtFKUmW4GijlGMiZDeo=;
        b=W3StrIEt1NsXEWvdU5avGU95Enq3cbFYCcn4JQnVWeuR2OJCVzshq5XVbRERJWATTj
         a8gTuNq+u+zQTtVHVlxCyJhcjzGRjssWWYa18rsYhWT5uM9hOtRtst7HejvUCbqZ9b6U
         oBLhEK3ey+uadLyH3jqFHft76Hup2g93+m5WYHqveVWRtmePCFkN+4j5sJ9GDFM4Es8X
         OdXG1uZChre1Rw0EPQGwd8DTHS9Tw2mPeNoAlu4qfwnbKprxnJ7GDcvEt9NC5IkZSfrh
         Up8W3fdSXm5G/T2XZcqeOIo6DdRVHrwqkx6R8Eu7VZs1I+uQ9V8bQ4PbTI/hPhZT9Zo8
         eLtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687851839; x=1690443839;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nXDjy7JPJ8XrZiw8dYtuA9M7FtFKUmW4GijlGMiZDeo=;
        b=K3jw9QEKVQGIEPJxd8pa5Wnfz7LSGLMY54SCEqY7aVck+4Iw92/9mAoDrlRPxGdljk
         XW9Jnjdj4C72f/Oybo1CDXl7OXr6S1wqdU9xDMvtRuUZKpKNG5T90vApIrJJNAV2+Ra5
         8JcFm1fISmBCzwOtsAwEa3iyihvM5CAN8OH0sKcyY66iLvsqgYsW9duQ6uZHsF4CsR6w
         aO3+D1w0h43xxM3GmoLUJ08Oc4d8pYj7zqZ65sJPOtt43/uz9AmImJL7iPKUbkP4xpvZ
         +wfd7Rvl0VfQMUGKOPsOG5l2ksWDI+o0fCmDFr+dM1im5chcvLUCjpl4dFsWCTSCM9Cq
         40Dg==
X-Gm-Message-State: AC+VfDxg+RbbS8cawFcSK3hIN8IBzLyh/ZEX2T+/OLm+F5zmlUPna6qO
	jQqEqjP8/Wn4g2L37K8WmMdcxA==
X-Google-Smtp-Source: ACHHUZ6qtmjN/vi/vgCBazSl8DAEcvTTiaFDRa2Iv5DYB3acC9xLxbjSTFmH5IakkXPbPPvl85v0lA==
X-Received: by 2002:a05:6512:3f1d:b0:4fa:ce08:a9d0 with SMTP id y29-20020a0565123f1d00b004face08a9d0mr4045130lfa.57.1687851838802;
        Tue, 27 Jun 2023 00:43:58 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id 21-20020a05600c22d500b003f9cb3c8958sm12898448wmg.3.2023.06.27.00.43.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jun 2023 00:43:58 -0700 (PDT)
Message-ID: <82dc5efc-35fe-15ff-d0ea-e1a19da71c5c@linaro.org>
Date: Tue, 27 Jun 2023 09:43:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 01/15] genirq/devres: Add error information printing for
 devm_request_threaded_irq()
To: Yangtao Li <frank.li@vivo.com>, miquel.raynal@bootlin.com,
 rafael@kernel.org, daniel.lezcano@linaro.org, amitk@kernel.org,
 rui.zhang@intel.com, mmayer@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com, florian.fainelli@broadcom.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-imx@nxp.com, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, thara.gopinath@gmail.com,
 heiko@sntech.de, mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com,
 thierry.reding@gmail.com, jonathanh@nvidia.com, tglx@linutronix.de,
 matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com,
 srinivas.pandruvada@linux.intel.com,
 DLG-Adam.Ward.opensource@dm.renesas.com, shangxiaojing@huawei.com,
 bchihi@baylibre.com, wenst@chromium.org, u.kleine-koenig@pengutronix.de,
 hayashi.kunihiko@socionext.com, niklas.soderlund+renesas@ragnatech.se,
 chi.minghao@zte.com.cn, johan+linaro@kernel.org, jernej.skrabec@gmail.com
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-tegra@vger.kernel.org,
 linux-mediatek@lists.infradead.org
References: <20230627071707.77659-1-frank.li@vivo.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230627071707.77659-1-frank.li@vivo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230627_004404_671994_67CB2D4C 
X-CRM114-Status: GOOD (  22.24  )
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

On 27/06/2023 09:16, Yangtao Li wrote:
> Ensure that all error handling branches print error information. In this
> way, when this function fails, the upper-layer functions can directly
> return an error code without missing debugging information. Otherwise,
> the error message will be printed redundantly or missing.
> 
> There are more than 700 calls to the devm_request_threaded_irq method.
> If error messages are printed everywhere, more than 1000 lines of code
> can be saved by removing the msg in the driver.
> 
> Signed-off-by: Yangtao Li <frank.li@vivo.com>
> ---
>  kernel/irq/devres.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/kernel/irq/devres.c b/kernel/irq/devres.c
> index f6e5515ee077..94039a915218 100644
> --- a/kernel/irq/devres.c
> +++ b/kernel/irq/devres.c
> @@ -58,8 +58,10 @@ int devm_request_threaded_irq(struct device *dev, unsigned int irq,
>  
>  	dr = devres_alloc(devm_irq_release, sizeof(struct irq_devres),
>  			  GFP_KERNEL);
> -	if (!dr)
> +	if (!dr) {
> +		dev_err(dev, "Failed to allocate device resource data\n");

Just like any memory allocation, I don't think we print anything for
devres failures. Why do you think we should start doing it?

>  		return -ENOMEM;
> +	}
>  
>  	if (!devname)
>  		devname = dev_name(dev);
> @@ -67,6 +69,7 @@ int devm_request_threaded_irq(struct device *dev, unsigned int irq,
>  	rc = request_threaded_irq(irq, handler, thread_fn, irqflags, devname,
>  				  dev_id);
>  	if (rc) {
> +		dev_err(dev, "Failed to request threaded irq\n");

I don't like that one path - devm() managed - prints error, but regular
path does not. Code should be here consistent. Also error message is too
generic. You need to print at least irq number, maybe also devname?

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
