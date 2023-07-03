Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DC5FEB64DC
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Jul 2023 11:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RKKSaNm55c3/4cCJzlUSg2mvZSvl5z520yZ0LeAuXjo=; b=EfIrC5gqFPXkfd
	+bhsSTG7DWcAF7sVNV/0skjxP3/h++43U1r414ObE1xZAciuWBG8r1SlzytTF4wAGN7ddJAy/Qxm4
	l4/bXzMCrbeL9em99MEGdXPv24K86IlKliol3/8M8mboq415d1u4O9nPYX0kjS+VEqjmxlHFflHmA
	YbVipN4Ft6/Jnz+NhMT3fydVNc1CJtCojZhWtaOklgqf0YAS7IabSiN+UCxF/w5RXgOaMZZCEXUqs
	5eKFnr/6C/Kxh0X6ClacklcHhD1tlHR94ZZKjLxVtb2OaZ1302B1C5EWunLlqV2W7iju/nfy9xvLc
	osOk8sMkbYZmK53nhISA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGHsm-00AOD4-2E;
	Mon, 03 Jul 2023 11:38:16 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGHsi-00AO8x-1C
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Jul 2023 11:38:14 +0000
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-51d7f350758so5653672a12.3
        for <linux-rockchip@lists.infradead.org>; Mon, 03 Jul 2023 04:38:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688384287; x=1690976287;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=X5HPd4zFbQ0E8syfNvWoZd2Jd08kmy2oDhqKMHkzCzU=;
        b=WTSAIu0maOXQvTMLW5soPiv4CB8m8rJXos+Ot/4WhoAT3QcoySeaG03E3s4qyOsLAE
         Fti+Zr+2ygJOfVCoGWf6TlPthhRoXpzr9z1/jgRcGtrGllnYf7UxA8w8Bs17b0pQZEW5
         tvmISmZINVUix2PAApU6Osun8dVCilkx/R5h/GnAeZs1US2IfXem9jb1iEC+UzK7RTkg
         Fa4TqSjhPZVbAQlznOuPTyNAlqvYzttRsp/lsMgeItRybVTA4RvQ34EpHtHgAxPlSVJh
         nFb/hPJCev99wQuTGYl4XRx/TOKxJ9WppJPRuUH+ChxHLvd0uAGickcRDP7CWstI7fPj
         4NWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688384287; x=1690976287;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=X5HPd4zFbQ0E8syfNvWoZd2Jd08kmy2oDhqKMHkzCzU=;
        b=cEgXkOaaer1ohL8r/a0oxd+9enT/iK5yYdLJKtnRhjSwLWQ1Mo32r8MID39ellS2ge
         d0VqO9S41magAvxiMFF8jGi6M4TTFQ91BWBlZRQS1Zv1OZXuTMkLtkgR8gzJ/jSl99un
         RxAk4YNn6W/wIZJN/k+K6ljCF1/ovGN3li1pjc7k2c+raasmS1Wzqh7AsOeZ7f+usI9/
         gmc2L55ZrWek2KwS/8yHvuUCao4N9U+mnO1T/k9pwb2np7Grdh131EvjyQ0yVCTReAmc
         OCsKkYVfeYhVIzVF589dgC02oJQX9PcixsDJVBXXIjfHO7Rj6bKNgsrKI7l7L9V/GHkB
         DWJg==
X-Gm-Message-State: ABy/qLZAjVTFP4SZc0DXewapBNXAp/Rh03SpibNb5v4u5iPeewWBg+YW
	++K6U3FoMJa9Ln0SLgG4eszGng==
X-Google-Smtp-Source: APBJJlFffSttED6PPzA0GMbvALnbcSFZlcl8peWg26b+PFdzfiWaPZ5DZ6BTAp/RMGL8Hcmd6Pnyng==
X-Received: by 2002:a50:ff0d:0:b0:51b:df1d:ebc3 with SMTP id a13-20020a50ff0d000000b0051bdf1debc3mr6968185edu.25.1688384287387;
        Mon, 03 Jul 2023 04:38:07 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id n22-20020a056402515600b0051e0f100c48sm1412583edd.22.2023.07.03.04.38.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jul 2023 04:38:06 -0700 (PDT)
Message-ID: <20873d35-86f6-70e7-ed19-efaffb9eb25b@linaro.org>
Date: Mon, 3 Jul 2023 13:38:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 01/15] genirq/devres: Add error information printing for
 devm_request_threaded_irq()
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
References: <20230627071707.77659-1-frank.li@vivo.com>
 <82dc5efc-35fe-15ff-d0ea-e1a19da71c5c@linaro.org>
 <db14ea3c-c224-e263-e134-70e9acc5008a@vivo.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <db14ea3c-c224-e263-e134-70e9acc5008a@vivo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230703_043812_428517_F1DF3D2A 
X-CRM114-Status: GOOD (  17.08  )
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

On 03/07/2023 11:10, Yangtao Li wrote:
> On 2023/6/27 15:43, Krzysztof Kozlowski wrote:
> 
>> On 27/06/2023 09:16, Yangtao Li wrote:
>>> Ensure that all error handling branches print error information. In this
>>> way, when this function fails, the upper-layer functions can directly
>>> return an error code without missing debugging information. Otherwise,
>>> the error message will be printed redundantly or missing.
>>>
>>> There are more than 700 calls to the devm_request_threaded_irq method.
>>> If error messages are printed everywhere, more than 1000 lines of code
>>> can be saved by removing the msg in the driver.
>>>
>>> Signed-off-by: Yangtao Li <frank.li@vivo.com>
>>> ---
>>>   kernel/irq/devres.c | 5 ++++-
>>>   1 file changed, 4 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/kernel/irq/devres.c b/kernel/irq/devres.c
>>> index f6e5515ee077..94039a915218 100644
>>> --- a/kernel/irq/devres.c
>>> +++ b/kernel/irq/devres.c
>>> @@ -58,8 +58,10 @@ int devm_request_threaded_irq(struct device *dev, unsigned int irq,
>>>   
>>>   	dr = devres_alloc(devm_irq_release, sizeof(struct irq_devres),
>>>   			  GFP_KERNEL);
>>> -	if (!dr)
>>> +	if (!dr) {
>>> +		dev_err(dev, "Failed to allocate device resource data\n");
>> Just like any memory allocation, I don't think we print anything for
>> devres failures. Why do you think we should start doing it?
> 
> 
> And tglx point out that:
> 
> Having proper and consistent information why the device cannot be used 
> _is_ useful.

Where did tglx suggest printing devres allocation ENOMEM errors?

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
