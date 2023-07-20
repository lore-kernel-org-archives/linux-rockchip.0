Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 460F0EB64DA
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jul 2023 14:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/FatfM/dHsS5wvGAzOsQvbe2jU6XPzTG2SQgLaFYLJo=; b=YUD0aOKHwVDb16
	nRT3wL+kR01pWFYijqg4huz3qE3UwXKpsAlOo0AXoaWz06dyuy/iq8DacZHvQNt9U8ygp8xg6mZx1
	f1pb3BXozWloZ69cZYaEdB9dihXNkIYl1XSkehUaUUBaOom54S5HisIw0DM0Pvj/1/yCJuj7WH4dX
	XKBaNVtNi8kNBq+wJxUVk6bf+HL8mu44Tmz6jAOybAOFdq3x1I7EZO7eR1Z/MT+nIp4krn3ra2Pjv
	i7CPSpEGiLXTND202wPXkaf/k/dQcCjKUy+M4Y0YsKhNLwxb5F4nS5sgddtQA4Cd2ejS1LhY+Yv+b
	jeKelaleGV2WsYQ1St7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qMUUv-00BMy8-2o;
	Thu, 20 Jul 2023 14:19:17 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qMUUr-00BMwA-2I
	for linux-rockchip@lists.infradead.org;
	Thu, 20 Jul 2023 14:19:15 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-992b66e5affso145952866b.3
        for <linux-rockchip@lists.infradead.org>; Thu, 20 Jul 2023 07:19:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689862751; x=1690467551;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4VuudQmBIXj4G0El46CDTssIhACcrhRIJLPm+Fr5SvU=;
        b=YUoIJB6FDGB8GH6BIYgP+Xi7qygbtlqRaQMXpJ8nIt5EfJ4IG0kcGSVG4mlUxNGjuR
         RGJKmG3FrqEwGeEAGnQDGgBZh2YVjfXwg2IMB7x4FBAmay2AD1xf9anc+HWpid9xoKIM
         9ENuARx2QLT4Y9COjylUEwuQ2HzwhSHCqOWNxoXcLoA3s37p3EaANaE1IGkf1CrkJXXR
         zIj4vBQIzWYlLOzZw1YI0zDqXtXPSOxHCdYMhzoQrqinFEBJQAOYkdQ1MpQsTaN0vIGV
         Ng0dWG8Ah9Zh7Kgws3UWA40f4oc6bI9z3JleFA0bXrHriGW+IeVaTOxhztBnwnA8DCzm
         iXQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689862751; x=1690467551;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4VuudQmBIXj4G0El46CDTssIhACcrhRIJLPm+Fr5SvU=;
        b=FOoLIkXRnfWCkniLqpZaHO87pkmLMtT3ozIALSHONJf71QdN8pWDI7lPr1Qxzr67EY
         +Snim3Ubo4pSiO3somLq8/5Bj+5Om4pDvKj00vDsVkO/8ea6ge79uRhMELXdSIY8yg9G
         58YkwCf+tkCJqVADCqUemSFHtxQ/dxfoL5NUFKHLyVDnuglqJT2vm1pVXfL+p4quT7kV
         ZUYwfoVZcdk92pQ/Y9pGTe9YWlvv9iif5+FvOhqo43Wt7q0AjuxST1+OMnsvaC73mEf/
         Z9j+LFGduHvRS3Maw0ARNsmhIzYNqZLIkIBW0p4eIhgtwMWSrsiWtdtQ6VwQg1z6gchn
         ZN6w==
X-Gm-Message-State: ABy/qLZ4e6jL0EATFNypAwxNt2Fz75K53OCdosWCq34hFZ+JfceZsjcG
	PRF2QtcIcVwj7ntTnNQytj6WZQ==
X-Google-Smtp-Source: APBJJlGyP/7Ze5TkvrXGj9vY7+AQiDo9OUwh/zphiMxDAR0ol/ibJovtW4iJbyYqEu1ISpX4rU7FNQ==
X-Received: by 2002:a17:906:3055:b0:94a:9f9a:b3c4 with SMTP id d21-20020a170906305500b0094a9f9ab3c4mr5162736ejd.49.1689862751345;
        Thu, 20 Jul 2023 07:19:11 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id rk15-20020a170907214f00b009927a49ba94sm765690ejb.169.2023.07.20.07.19.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Jul 2023 07:19:10 -0700 (PDT)
Message-ID: <4b6faf13-e611-ac9a-0365-5eb9661dd309@linaro.org>
Date: Thu, 20 Jul 2023 16:19:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v2 3/3] arm64: dts: Replace deprecated extcon-usb-gpio
 id-gpio/vbus-gpio properties
Content-Language: en-US
To: Bjorn Andersson <andersson@kernel.org>,
 Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, =?UTF-8?Q?Beno=c3=aet_Cousson?=
 <bcousson@baylibre.com>, Tony Lindgren <tony@atomide.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Matthias Brugger
 <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Andy Gross <agross@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20230615145838.1526919-1-alexander.stein@ew.tq-group.com>
 <20230615145838.1526919-3-alexander.stein@ew.tq-group.com>
 <qezb3o5wsluf5tgbqoe37ibhanhgm3fsflgqpbqiw2t6fycdeb@2xbxbkpybz74>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <qezb3o5wsluf5tgbqoe37ibhanhgm3fsflgqpbqiw2t6fycdeb@2xbxbkpybz74>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230720_071913_749748_FE5892DB 
X-CRM114-Status: GOOD (  10.69  )
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

On 10/07/2023 06:02, Bjorn Andersson wrote:
> On Thu, Jun 15, 2023 at 04:58:38PM +0200, Alexander Stein wrote:
>> Use id-gpios and vbus-gpios instead.
>>
>> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
>> Acked-by: Heiko Stuebner <heiko@sntech.de> #rockchip
>> Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com> #mediatek
> 
> Any objections to me taking this through the qcom tree?

None from me:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
