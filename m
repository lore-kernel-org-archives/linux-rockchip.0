Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED668C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Mar 2022 17:44:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p7AKpELzPo54GC6RgMR/vBcapa27jW8cd7N6omGimnc=; b=zlzSYJd2wvahYo
	i5GCPcHihgyEoGr0C4XVDTCyeI9jR69beBOdsUoQCqlAoMmW9Q3oSX8aNp/ToUyW+MJIz1Q1S60cH
	wHO/VLO9GNnARjwRA7ERMxtHg7RltdKQhpi2Wzd0kFoMaIq6TuemZ4x85YbNMONPdKcJ1kpYfXEE2
	+GDLLeUYRXcisGNhncv1dWg3TZ23LG2aEdqThSVI5loDSkEyROKHIE+jsOgtCNg9cmZGo3mNY99tY
	lnotTKOUX8gTvRz5AUvbIIa8b0Okl0nef7lwJlshpJWrxDk60HvhpOonfnzjdoHyr68jNx+qoxB6J
	5QyLLZCFv+TxO983d8Nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZFt3-00D7ho-Hj; Tue, 29 Mar 2022 17:44:09 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZFsm-00D7aR-9P; Tue, 29 Mar 2022 17:43:54 +0000
Received: by mail-ej1-x632.google.com with SMTP id qa43so36607292ejc.12;
 Tue, 29 Mar 2022 10:43:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=MehIMCOHPm3o42xMjUspyRsRaGCPZO4k+2JRMM8VP60=;
 b=Ioy9Hj2QZz5p8Z/D5ukHs4lzEtpu1CXcwGQ+UNVfJhDtlG00LRfk412S3en59kv4Re
 WkhEr82+A9Icp/37rVNFTZ7xqXaINY6BxwA91tMo50N60XyJWjcmh55PR8288Fs59taM
 Ct4ZVD65f/yBY5vEHMJ0AoYGhcJvutWLB07q/8vyXX7c4AYWRAMD94kVYhvDYNvvFPMK
 kB0ZIjQ1/orxaNdAssqD0k0b+wVwSB6yb22fGPdAmvc1RZXT3TXsEn7mjas36G665mMX
 WzwZ4kUYAOOSZoKnxObBCbvgnIwbV4H+FKnaFF92XFton5X3ClKjR8D/dpepI3WoEh3T
 ij2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=MehIMCOHPm3o42xMjUspyRsRaGCPZO4k+2JRMM8VP60=;
 b=z5xh/mUGUGNGLDe4pc0N8z99jS7w2uugmY6l1MEioH0MZ2E0CNxvXWuWEruTqcPIO5
 yISGieuxFLSFgpeKsNs6/0jEK9Iyv4Gw9nXOy9XlbBN2n1mzbxn3sylriCv5Sfgwf42S
 c0RNtFals+m5C63HKMEe+9wmq/7jikFa6T2O/fgVVEMBVDxDR6+ZUNsUEXt5mqIH1I8S
 Jfh6hqFqlazO3q+iPpPSCAx5xQ+tgHHMK8+noIQWMk4UXyilCeJe6UVGqnxDht12roET
 kuggQxNTg3vrb+PzciPgEdJx4+E7OIuiQLHgyxF8X3ESisd48qGt7zpCM/bWfRGXfnpm
 8D0Q==
X-Gm-Message-State: AOAM5339VPyUn19P6hnSP96d9KdtYCE4X8EJiULkfQb9FZdTkFYcwezR
 I0ANbJ0zVydDdPhsp1er/7L7kXDirc8=
X-Google-Smtp-Source: ABdhPJyzfti3CS/e24Ly5WM74Dz/LkpZUBjNoeNIQqIY56i7iaj94vcNqx1CjI1XHgEUr+qwuY0XUg==
X-Received: by 2002:a17:906:99c3:b0:6df:a289:ed3a with SMTP id
 s3-20020a17090699c300b006dfa289ed3amr35708735ejn.660.1648575830776; 
 Tue, 29 Mar 2022 10:43:50 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 e28-20020a170906649c00b006df6dfeb557sm7265737ejm.49.2022.03.29.10.43.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 29 Mar 2022 10:43:50 -0700 (PDT)
Message-ID: <686f4aab-e41f-ad3d-249c-09fb8da8ef8c@gmail.com>
Date: Tue, 29 Mar 2022 19:43:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: [PATCH v1 2/3] arm64: dts: rockchip: fix compatible string rk3328
 cru node
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, heiko@sntech.de,
 zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220329163016.27458-1-jbx6244@gmail.com>
 <20220329163016.27458-2-jbx6244@gmail.com>
 <09fa521e-dcf9-b744-da30-86542fd8855e@linaro.org>
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <09fa521e-dcf9-b744-da30-86542fd8855e@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_104352_433810_919F0802 
X-CRM114-Status: GOOD (  20.41  )
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



On 3/29/22 19:23, Krzysztof Kozlowski wrote:
> On 29/03/2022 18:30, Johan Jonker wrote:
>> The rockchip,rk3328-cru.txt file was converted to YAML.
>> A DT test of the rk3328 cru node gives notifications regarding
>> the compatible string. Bring it in line with the binding by
>> removing some unused fall back strings.
> 

> Are you sure these are unused? rockchip,cru maybe, but what about DTS
> used out of tree? It's useful to mention that the compatible is not
> documented (so if there are any out of tree users, it's their fault).
> 
> Removal of syscon is different case - why do you think it is unused? Did
> you check it? It's not a fallback compatible.

Hi,

If someone knows why that was added to the Rockchip tree? Let us
know.(Elaine ??)
Other well know locations don't seem to use it.

Please advise.

Johan
===

https://github.com/torvalds/linux/search?q=rockchip%2Ccru&type=code

https://source.denx.de/search?search=rockchip%2Ccru&group_id=325&project_id=540&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar

https://github.com/rockchip-linux/kernel/search?q=rockchip%2Ccru&type=code

> 
>>
>> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
>> ---
>>  arch/arm64/boot/dts/rockchip/rk3328.dtsi | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
>> index b822533dc..73418fd2f 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
>> @@ -756,7 +756,7 @@
>>  	};
>>  
>>  	cru: clock-controller@ff440000 {
>> -		compatible = "rockchip,rk3328-cru", "rockchip,cru", "syscon";
>> +		compatible = "rockchip,rk3328-cru";
>>  		reg = <0x0 0xff440000 0x0 0x1000>;
>>  		rockchip,grf = <&grf>;
>>  		#clock-cells = <1>;
> 
> 
> Best regards,
> Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
