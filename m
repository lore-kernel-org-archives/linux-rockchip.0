Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FE15EB64D9
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jun 2023 07:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6RYfGW9IaxHejYkYtKHkPx5xumYGgjriJP3AO7jBEMw=; b=WDDLxp0dhK9S9l
	kb+LophmLn4zJwAMwL8cXcAHW/JbTRDScOWD4Zv+uWJ9/klRonviNzkDMPsZB393mknowV9K6PS9a
	bnsPekgZNXawqCWJyJq48gyccC+ti5zr9BOqyuSxq8mK58q7YWrxMtibG0DKc0YPY1gcAxamJl1Es
	V7pYq2MNtUsaBOQGB+8i6AC0DBvLuBnooXR+9csy8py8azCj5MbOAX8jmj9T9U5RD6RR6nt61OQbW
	2b29kiw9xPSGUkrqtCEye31nJYvH5WsJKEWkLQlgd/9+Ada+zMm3nmDbKWZvTv58oKlyanxKc0Yxx
	6zlzzcHn1Cm0petMBTKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qE3Na-00CQ2B-2N;
	Tue, 27 Jun 2023 07:44:50 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qE3NY-00CQ10-17
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Jun 2023 07:44:49 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-4f122ff663eso5656159e87.2
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Jun 2023 00:44:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687851886; x=1690443886;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wFNM/13zo+D8MIGQZG1lJZIvVzqHNgB235Wb/AV3lUA=;
        b=K/YymU1Fw0XlFUpLmM/JsiHLwp6gglJu2CMqRj/MvPnLc7dAWpN6W2xm9QdXW23zZp
         EB/GIMb+FQD5HXV5uFtsqcfehGsDp50mJyMvPti+NlTe3jpVwhiMw/DL9pD3lBwH/38F
         VI7hRahj2se3hwB30hdrHGJl97u6LAhwODzX4Bh+TtDsM7yK2QfDPkEM34BCfupe1bE5
         CDgGRXGwvthPDiFaEmsp0zOTJsRR35s5RBS7lQRVYjDPWPfO1VPnfC4wOGKYltmqexFf
         LOEniz8brkiDyP6blhoVPWh5jdm96n58qKU7Y+wgsyalJRh3ilMhvKZnh1kURlyvlsH5
         6z4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687851886; x=1690443886;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wFNM/13zo+D8MIGQZG1lJZIvVzqHNgB235Wb/AV3lUA=;
        b=aJsdG0Y/d+19YM7jkm/0B6ABKQH/PFgxxI5YtabvF2pEOe0lJesMuskjH76Z41jY7/
         BfowLbpZ0FpK79nNL3wnC/ioWSKFEJKCjP+9H5oNRhtVGb1tep6lx3PZ1I/H0vhDqeg8
         fewyVx0tzBNqswQkl5WrhMkEzn1TVlT4QbbQsOwf86tq28a3MYci3d48bUcpDXMNOOQE
         z53ARxL1i4DHVzj/B7bGWe5u6kR+5DSDw4s2BuAVZNr88r4CsLlfMprwL0BCfx/KAjLI
         MHH1antFGBRICH7ETanaOf7me4+EJZ6G001W/ouJzeAl2uJ16FmJUyCwBJYgWbdIEYqc
         2Z6w==
X-Gm-Message-State: AC+VfDzDOEiU+8apBgO/IohtLsBJ+gbzHgOiFTo0mjSHIfw94n1HBYzC
	wuI2KMZ1yrMfWGJwsd5tqPD3ew==
X-Google-Smtp-Source: ACHHUZ6A6FWPC46/BuRGtluWDc8BUdgJ8Rg4tYYbbS+0qBeQ5xLXdOL8H0TzB80PlKS/a86NhKNNZg==
X-Received: by 2002:a19:2d01:0:b0:4f8:7568:e948 with SMTP id k1-20020a192d01000000b004f87568e948mr13532699lfj.51.1687851886659;
        Tue, 27 Jun 2023 00:44:46 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id o11-20020a05600c378b00b003fa95f328afsm5250918wmr.29.2023.06.27.00.44.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jun 2023 00:44:46 -0700 (PDT)
Message-ID: <3213e578-1c48-e1bb-f181-d0845f915031@linaro.org>
Date: Tue, 27 Jun 2023 09:44:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 13/15] thermal/drivers/rockchip: remove redundant msg
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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
 <20230627071707.77659-13-frank.li@vivo.com>
 <61f9a781-81fe-d553-6c85-eb069174e6f0@linaro.org>
In-Reply-To: <61f9a781-81fe-d553-6c85-eb069174e6f0@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230627_004448_382396_91DBF42D 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
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

On 27/06/2023 09:40, Krzysztof Kozlowski wrote:
> On 27/06/2023 09:17, Yangtao Li wrote:
>> The upper-layer devm_request_threaded_irq() function can directly
>> print error information.
> 
> I don't understand. "Can print"? It does not matter if it can, if it
> does not. Currently it doesn't, therefore change is not correct.
> Otherwise explain a bit better why this is redundant.

All your patches ended up in spam, so now I found your patch one.
Anyway, if this stays, please replace "can" with statement - "prints".

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
