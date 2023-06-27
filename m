Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7534FEB64D9
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jun 2023 10:28:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OJkBJGkhvNq7M5Wo483I83/hNDB5g3iCMlQeQ5b0obM=; b=zTBfmHfCuVDI6L
	0P1i/jU7uoBJRwzYj9Bc0gf9sxFEYCzUDPwTjBbCdSKcBCmtn009WW9q+ublz6RrdxA2EkI/1mPc+
	gN/GSCxaYC2NvX6LXjoNKC8tKj4D7cCJ9cVWjkT5RWRerrfF3CUZb76LM6C2feYm8VEXa+OddrfEu
	3Vohp03oMWOu2uRDKq+C0s7KgUki6NrAieBzho+rn8tZeFe89bKY+9OJCf4uELuDWB1WEKIaPuodL
	/8ecfkx3gVKIGM8aAQdIATlqaA1PcJzhLoJm/LQzScR0Jwk//O6pR8tQuXzVlK9s3KMJv+6cYdzGq
	xz+u9freJjACBaQ2vcFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qE5w9-00CplH-2H;
	Tue, 27 Jun 2023 10:28:41 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qE5w6-00Cpi3-1x
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Jun 2023 10:28:39 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-3fba545d743so5649065e9.0
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Jun 2023 03:28:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687861700; x=1690453700;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Gmf7swzBx3zmrorxZOdEgYZz3vMgCASZCN0hJOkIo00=;
        b=C+BVtYn4jX0LRy0VrAz6Tpink6WrpV7gikawtc8z6OICC9zRejV4euVhEN7qDurUc4
         I10v4x8VsvLNbjrUd0sigj2DP8SNn0yP4q3PpTmvlBr8qALYshj5BXKrSILx8V9DFiBz
         4GvIQ3bQaSMtkaieP5dfIeXqPgQDS9KETd60dZ4ix3c/ckSMKh4Lyeq6OLsPB2tnVCVF
         r8dEOPcgigBTLHy9fu59BNAsyRfs4OEh5LYoH4Qvx98EonKQ3VHEcOY29vpq2t+B5tTi
         ywNEh7XU/A8bJQFbO3O/iFSoV3A/uMEFAEbntTtQ42fR777djBZbWkYChLlvgg+Bb4W1
         QBNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687861700; x=1690453700;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Gmf7swzBx3zmrorxZOdEgYZz3vMgCASZCN0hJOkIo00=;
        b=OhNwxN6yIUgebhKSTxzMX0vNDsEgxO4rNeqoV5a9L2B+0iUM1nBSGZlKOtKM7pJGrn
         dy3ZgyGOTCg2hvDquXgF+AS9rJg5vIW4EZajMI0hd6sUZF2R3QIVc7SgE4LkuECuifA/
         NrQWGs1ac7TexOA6zJAnvkMFoTVSd0Rwzp0f0Ba1asW3Ba2yrgddMOngEtColhA8NnjW
         9jWriFKSRcRLbqo5jdhSZbl5wBV5p1wSzKHTvdofh9dsVt9PVMHUx8ADlaUGzaD4Nb+U
         rbH3vYIFB6a4eJhZGw8q2cYYVFRvgQ4aAAozZAXeJDsghUe6Ed/Oe40L4vA9bkScQSyL
         6PpQ==
X-Gm-Message-State: AC+VfDyq88XiLl7FgB/sbTDSZ6qVr0p7h6+Sk3L6EsHaTyfy2uk3AITH
	IU+ysncEqOAvAwmEvrnWu/oPiw==
X-Google-Smtp-Source: ACHHUZ5XMObNZEMfu2qUXIhZuLUJ2ha5NxMgYWPdt3EyCo1TufdxxWi8w5C9EWlJPCA81JQywXQslA==
X-Received: by 2002:a7b:cc15:0:b0:3f9:846:d892 with SMTP id f21-20020a7bcc15000000b003f90846d892mr24473786wmh.9.1687861699917;
        Tue, 27 Jun 2023 03:28:19 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id h2-20020a1ccc02000000b003fa74bff02asm10232352wmb.26.2023.06.27.03.28.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jun 2023 03:28:19 -0700 (PDT)
Message-ID: <689ffb7b-9efb-ecec-61f5-9d8b00f9906b@linaro.org>
Date: Tue, 27 Jun 2023 12:28:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2 01/15] genirq/devres: Add error information printing
 for devm_request_threaded_irq()
Content-Language: en-US
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
References: <20230627101215.58798-1-frank.li@vivo.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230627101215.58798-1-frank.li@vivo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230627_032838_643850_1901681B 
X-CRM114-Status: GOOD (  21.90  )
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

On 27/06/2023 12:12, Yangtao Li wrote:
> Ensure that all error handling branches print error information. In this
> way, when this function fails, the upper-layer functions can directly
> return an error code without missing debugging information. Otherwise,
> the error message will be printed redundantly or missing.
> 
> There are more than 700 calls to the devm_request_threaded_irq method.
> Most drivers only request one interrupt resource, and these error
> messages are basically the same. If error messages are printed
> everywhere, more than 1000 lines of code can be saved by removing the
> msg in the driver.
> 
> Signed-off-by: Yangtao Li <frank.li@vivo.com>
> ---
>  kernel/irq/devres.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/kernel/irq/devres.c b/kernel/irq/devres.c
> index f6e5515ee077..fcb946ffb7ec 100644
> --- a/kernel/irq/devres.c
> +++ b/kernel/irq/devres.c
> @@ -58,8 +58,10 @@ int devm_request_threaded_irq(struct device *dev, unsigned int irq,
>  
>  	dr = devres_alloc(devm_irq_release, sizeof(struct irq_devres),
>  			  GFP_KERNEL);
> -	if (!dr)
> +	if (!dr) {
> +		dev_err(dev, "Failed to allocate device resource data\n");

I don't understand why did you send v2:
1. Without responding to my comments - either by implementing them or
continuing the discussion
2. Without changelog explaining what happened here

My comments for v1 stand. Please do not ignore them, respond. If sending
new version, then usually one per day is max and of course provide
changelog.

>  		return -ENOMEM;
> +	}
>  
>  	if (!devname)
>  		devname = dev_name(dev);
> @@ -67,6 +69,7 @@ int devm_request_threaded_irq(struct device *dev, unsigned int irq,
>  	rc = request_threaded_irq(irq, handler, thread_fn, irqflags, devname,
>  				  dev_id);
>  	if (rc) {
> +		dev_err_probe(dev, rc, "Failed to request threaded irq%d: %d\n", irq, rc);

Why printing rc twice? Did you test this patch? Does not look like.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
