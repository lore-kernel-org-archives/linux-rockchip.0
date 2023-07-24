Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CCD7C001B0
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jul 2023 07:11:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tXrG/BXuLuarMvvXOEJh1panRh80KPfBI5cWTI+Xews=; b=ehCJt6Gwefniq2
	6UYGf6GZtlmN0XgExeFX3Ak8NW18ET6kdWoymEHow30ruUsjr0Gr7nha891FwxNXhi53XvRIz2lAv
	64K6RuIwsEc4LFhIYXQYMInwC3xL56LmpvRP/RPOB6d+jNsrAjWB2Py7YBxVXppFI2JAduRf+KhpJ
	6/ug3S+9so+jCN9pfnGdsB0h4S/JIxvBYwuY9SUF1QyoyDwb0ZsJBNx7fncpQ30Ez3wMb4m/VXBJF
	xtkgVyApFR7WjEFrhQb7C0+Wmz1q8b7BLZ5sfDufOqAP9EkAQ2lVtiEb5s3dSHZU/10zGpI+O+/Cu
	7bBqCX04uexwn2NtT/Jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qNpiX-00347e-18;
	Mon, 24 Jul 2023 07:10:53 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qNpiT-003457-2W
	for linux-rockchip@lists.infradead.org;
	Mon, 24 Jul 2023 07:10:52 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-997c4107d62so591343166b.0
        for <linux-rockchip@lists.infradead.org>; Mon, 24 Jul 2023 00:10:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690182647; x=1690787447;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QNUo0Kn9Aa2Dgdj2gFIhpNrROHE/bncbbpqnizXf6ac=;
        b=XBUONx0XrgqCY9fZgz3fyLS7sx1wucVYmBIqDiE1WVjoXmXrD5hnDdky2dwBz5wqbl
         wMg5GMkY+wnsGC2EsGFUHcD4mQn5Ioyc/Dvre6LvhEaIF7hvZAnisPUrEX4+wV28NPu5
         WgiomtlgNaDO4CK03pmYWtD5bd9C7jhmZjiy3MMNbCJIdkA4ysFNKjrAWuaY/wJ0cOa1
         aTQk5unjVkodxc555cQ+5rCu+GH8M31LFuEtiZHP9sMQ6YubOLkSgO25cTn+2dXxjqzE
         moQ/3tvLkXOwz4yja8gWW0d+YP9SPOKyjeaCvZ28INSnuBkr2/WNLrh90TsIctezV5JY
         u5ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690182647; x=1690787447;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QNUo0Kn9Aa2Dgdj2gFIhpNrROHE/bncbbpqnizXf6ac=;
        b=BtX7vRWTFZ9ozqn3nbkIoskNH4N3MHN+zisRoogkLRITet8RmYPdZ77EY3U7iU0vT7
         YS8KPv0ftuFxjboDXlr1mOxuRecV+nM4sJiqeKsQ8DK2AVtgNHsJSP22CrirwoCj1vJX
         Mbj5K7uF4GFtMf9a7uyghtXVYd5IQ9w//PavtpToxpzhH9/7UQovgKwEFB4GzQ17JhgI
         2o1dcT9lNHKV2osFUcyCSzjyw5bopAvR1KtnF07ZVvozcUrMCqXZjVMVXCQMbrznDIOR
         SpOps82r6G83BOO07LlBe4rPLVGtTiuwN2n44U9GZJ0QobDCOXQsQITrR2l3lC0J8IC8
         eDFA==
X-Gm-Message-State: ABy/qLZTYR4x0/PIKFGTx1cRfcsZWMgQePQVRsenhA62Ig46gxVqk2vW
	6RqAda/pYQfLsSCQDwnppB9fUQ==
X-Google-Smtp-Source: APBJJlGqjMKUoeRrImKQFupGiJ2uC2XkQKoD01CqdLe354F8gMvelSbPPWaIJVuA9pyFDHsmHhcJ7g==
X-Received: by 2002:a17:907:75e5:b0:993:a379:6158 with SMTP id jz5-20020a17090775e500b00993a3796158mr8298544ejc.17.1690182647475;
        Mon, 24 Jul 2023 00:10:47 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id kk7-20020a170907766700b0098df7d0e096sm6294662ejc.54.2023.07.24.00.10.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Jul 2023 00:10:47 -0700 (PDT)
Message-ID: <e0897453-54b0-2a2c-2bf0-1f771c0c6565@linaro.org>
Date: Mon, 24 Jul 2023 09:10:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v3 2/2] arm64: dts: Replace deprecated extcon-usb-gpio
 id-gpio/vbus-gpio properties
Content-Language: en-US
To: Alexander Stein <alexander.stein@ew.tq-group.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, =?UTF-8?Q?Beno=c3=aet_Cousson?=
 <bcousson@baylibre.com>, Tony Lindgren <tony@atomide.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Matthias Brugger
 <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20230721081948.1185360-1-alexander.stein@ew.tq-group.com>
 <20230721081948.1185360-2-alexander.stein@ew.tq-group.com>
 <c3ea2edb-1b3e-2c39-ccf6-333e3c8b9020@linaro.org>
 <3251040.44csPzL39Z@steina-w>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <3251040.44csPzL39Z@steina-w>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_001049_818176_77AAE577 
X-CRM114-Status: GOOD (  16.65  )
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

On 24/07/2023 08:05, Alexander Stein wrote:
> Hi,
> 
> Am Freitag, 21. Juli 2023, 14:22:06 CEST schrieb Krzysztof Kozlowski:
>> On 21/07/2023 10:19, Alexander Stein wrote:
>>> Use id-gpios and vbus-gpios instead.
>>>
>>> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
>>> Acked-by: Heiko Stuebner <heiko@sntech.de> #rockchip
>>> Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com> #mediatek
>>> Reviewed-by: AngeloGioacchino Del Regno
>>> <angelogioacchino.delregno@collabora.com> Acked-by: Shawn Guo
>>> <shawnguo@kernel.org>
>>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>> ---
>>> Changes in v3:
>>> * Rebased to next-20230721
>>> * Split from bindings patch
>>
>> I think you wanted to split it per subsystem, right? That's why you
>> resent/v3? But the split did not happen.
> 
> Yes, I split it into dt bindings and DT changes patches. Is this not correct?

We talked about DTS patch - this one. It was already split between
bindings and DTS, so this would not have been a topic at all.

> 
>> If you decide not to split,
>> then try to figure out: who should pick up this patchset?
> 
> Well, intention was one patch for DT bindings maintainers and these two 
> patches for imx maintainer (Shawn AFAIK).

You touch there much more than IMX, so if you intend that you need to be
pretty clear. I see there around 5% of changes from IMX, so targeting
IMX is a weird choice.


> I've send patches separated by arch/
> arm and arch/arm64 in one series, so I'm slightly confused now.

So telling you second time - don't. Split per subsystem.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
