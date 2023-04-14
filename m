Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11CB9C77B6E
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Apr 2023 11:29:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yi5AiV07MKefV7NVdzUja+t08YWi14ayUY1mfZniWR4=; b=ST92vlxdwsKGaI
	k99U2LTZLN+Bu6MkXVsriiZaqbXMFA0DgGgrpMZ/B0Avs1J/TQm5M/1c8Qtkac2xO9J8twINPZNOW
	LVRi3gJ2PhrGMYud0HyJdyxC5a3DIOiwW6emnAIgSBgC1JiRfxY38GVYS6f9LR32BR8AYo2KdrOOk
	6BNo+iqb1hTh9oBeq4xJc+dI0KhFk+CCJ2PNFIO+w9QVaFGSkWAq/a+Ugaa4rzBre09Ks/SpJ6nee
	2DmDzYNrlgUe8f8VbpFlTlNn7r4j7woTIGJgK3DmmaY5d3QDSZDrsF+hNOMRD5rd6F8deLxD9LL3K
	FYAOjKMJE47+rERWC7OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnHck-009MYv-0m;
	Fri, 14 Apr 2023 11:29:50 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnHcd-009MRe-1n
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Apr 2023 11:29:47 +0000
Received: by mail-ej1-x635.google.com with SMTP id qb20so44347411ejc.6
        for <linux-rockchip@lists.infradead.org>; Fri, 14 Apr 2023 04:29:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681471780; x=1684063780;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=H0+Edrx0IM9690oJV8Q5R/N22PJKrT3awy24PGbymbg=;
        b=iEpoZfnjMjWNe/FxgVABg/VGFxzuvc5MIzmMp5t/+o3/cdZaHLhmurtA60Tgz6hrDI
         P7Qw5OW6143M9PNO87mSQjXbu1e5RgseQKFsonNHrdg0G625+tFh0DMEfWP4W1R+6eOT
         Sqrq7cjLBbP+eXnAFMsJ1tmA1HqnCSF8WUuYEQaz1m3g3qr1Spt3ho4y50HUnduAgN7B
         SOj6pCWILzHlg7vk663+HvPWSY25UVc4JpM1U3dAzGYVppOSORERjTbhLFE1qRMCfXHE
         JmEpI9WHshZDwy1XuBsvVyNZxrcy7clbKREvNVrxm8GEo407wqUmJnQvCmvXLSwWCb2v
         92Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681471780; x=1684063780;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=H0+Edrx0IM9690oJV8Q5R/N22PJKrT3awy24PGbymbg=;
        b=GDpzRsdh5elOlZt3vFqPV2BPhGpTa9w78dDqjTkxpH2TRgE6YBasvFlK0iwBQBY7Se
         TGPob6L/bRP+9onjGvnF7APtTkNKxlGB1g/6J38GbI4+gofNP8+pkRo0u/VnBOVnAclw
         USTM3dzePHCdRlGyUddi8o2tyJpcMS136mM6yLxjuuMjNITTK5G3tJ9DhUcbL8/rSU5z
         I+yFuk0wp9Kk5InmtfuwSY2ZTbixFPYeoR2+n5oPKlbWHcB7AqQaE1RlSGt6Um2+VwzZ
         kFKyj+IHTeXYcwEXYT8/UvmHJyMrExdWz7X4+qNeCWpEmJodJSdPwNTRWNSes/8KtlfP
         JkZQ==
X-Gm-Message-State: AAQBX9ckoK9LKDyT7X/KXglOTRBvgbJf64cReVSPhYDXhYTyNCJBR24T
	6zkwSLrMJSbkTMItAUzLA3vGyw==
X-Google-Smtp-Source: AKy350ZIlAwLnIME/qmELmFYpYuNLEsNvTy22tLzGhqysgrUd2eT9uwUn/0SUdgGv9Xc+5fCGwgB4A==
X-Received: by 2002:a17:906:7b4a:b0:8a0:7158:15dc with SMTP id n10-20020a1709067b4a00b008a0715815dcmr5088574ejo.74.1681471779819;
        Fri, 14 Apr 2023 04:29:39 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:40b9:8c57:b112:651d? ([2a02:810d:15c0:828:40b9:8c57:b112:651d])
        by smtp.gmail.com with ESMTPSA id a5-20020a170906684500b0094d7bc8e9aasm2332787ejs.94.2023.04.14.04.29.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Apr 2023 04:29:39 -0700 (PDT)
Message-ID: <b75a846c-63be-9f30-e786-f34292cfeaf4@linaro.org>
Date: Fri, 14 Apr 2023 13:29:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add vdd_cpu_big regulators to
 rk3588-rock-5b
Content-Language: en-US
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Christopher Obbard <chris.obbard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Shreeya Patel <shreeya.patel@collabora.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20230414093411.113787-1-cristian.ciocaltea@collabora.com>
 <20230414093411.113787-4-cristian.ciocaltea@collabora.com>
 <0cbafc31-9b46-54df-f569-810a8781743c@linaro.org>
 <36d8050b-0636-2b30-f3fc-7f7d96bec253@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <36d8050b-0636-2b30-f3fc-7f7d96bec253@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_042944_353896_719223AE 
X-CRM114-Status: GOOD (  15.81  )
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

On 14/04/2023 12:40, Cristian Ciocaltea wrote:
> On 4/14/23 13:27, Krzysztof Kozlowski wrote:
>> On 14/04/2023 11:34, Cristian Ciocaltea wrote:
>>> The RK8602 and RK8603 voltage regulators on the Rock 5B board provide
>>> the power lines vdd_cpu_big0 and vdd_cpu_big1, respectively.
>>>
>>> Add the necessary device tree nodes and bind them to the corresponding
>>> CPU big core nodes.
>>>
>>> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>>> ---
>>>  .../boot/dts/rockchip/rk3588-rock-5b.dts      | 56 +++++++++++++++++++
>>>  1 file changed, 56 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
>>> index 8cc97d146a73..3e4aee8f70c1 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
>>> @@ -53,6 +53,62 @@ vcc5v0_sys: vcc5v0-sys-regulator {
>>>  	};
>>>  };
>>>  
>>> +&cpu_b0 {
>>> +	cpu-supply = <&vdd_cpu_big0_s0>;
>>> +};
>>> +
>>> +&cpu_b1 {
>>> +	cpu-supply = <&vdd_cpu_big0_s0>;
>>> +};
>>> +
>>> +&cpu_b2 {
>>> +	cpu-supply = <&vdd_cpu_big1_s0>;
>>> +};
>>> +
>>> +&cpu_b3 {
>>> +	cpu-supply = <&vdd_cpu_big1_s0>;
>>> +};
>>> +
>>> +&i2c0 {
>>> +	pinctrl-names = "default";
>>> +	pinctrl-0 = <&i2c0m2_xfer>;
>>> +	status = "okay";
>>> +
>>> +	vdd_cpu_big0_s0: regulator@42 {
>>> +		compatible = "rockchip,rk8602";
>>
>> Looking at your next node, this is surprising... Double check if you
>> have correct compatibles everywhere.
>>
>>> +		reg = <0x42>;
>>> +		fcs,suspend-voltage-selector = <1>;
>>
>> Does not look like you tested the DTS against bindings. Please run `make
>> dtbs_check` (see Documentation/devicetree/bindings/writing-schema.rst
>> for instructions).
>>
>>> +		regulator-name = "vdd_cpu_big0_s0";
>>> +		regulator-always-on;
>>> +		regulator-boot-on;
>>> +		regulator-min-microvolt = <550000>;
>>> +		regulator-max-microvolt = <1050000>;
>>> +		regulator-ramp-delay = <2300>;
>>> +		vin-supply = <&vcc5v0_sys>;
>>> +
>>> +		regulator-state-mem {
>>> +			regulator-off-in-suspend;
>>> +		};
>>> +	};
>>> +
>>> +	vdd_cpu_big1_s0: regulator@43 {
>>> +		compatible = "rockchip,rk8603", "rockchip,rk8602";
>>> +		reg = <0x43>;
>>> +		fcs,suspend-voltage-selector = <1>;
>>
>> Does not look like you tested the DTS against bindings. Please run `make
>> dtbs_check` (see Documentation/devicetree/bindings/writing-schema.rst
>> for instructions).
> 
> I mentioned in the cover letter that the support for the RK860X 
> regulators has been recently merged via [1]. The patches in this 
> series have been verified on next-20230413.

OK. The question about compatibles still stays - but maybe you have
indeed 8603 and 8602 in the same time.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
