Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39BC3C6FA82
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Sep 2022 09:54:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x3MN1Te7I51p1a5xfnd4ZHTs48Vjs88Ns0yCxB8hNY8=; b=K/du4EAAYCjhRg
	ywy5y2tnILuYUdY5fDWnIA9n4u+E4wsPnrUE+b5qwoy8SGaybI8ih86M3OLc+lCwV69DSfI5KnVVh
	vBOjlg/SVtUrfTRokxvuZJi2O+vJ+U4S94igzSMVWOfXimQNiMXGEjtWP9/L1c47Mi7/6kAONCdNS
	MDyA+YhaomTra7JzDJ9NVrA7RYip0zw6pbRVMljohjN/lzmvHccg1pZhu0d/hbxm+9riV0FlKv9OZ
	ilGmsg+3ViNUwmRQDISWnLtequlVg7ALPg1XBJyRM38UwO2ND2mpQzjYS4pB3+tYa2RrvKdZmqMWy
	9j/oPnUJaDG+AQvvNLqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obfNq-003VRC-HF; Fri, 23 Sep 2022 09:54:10 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obfNe-003VNW-IE; Fri, 23 Sep 2022 09:54:00 +0000
Message-ID: <ad36710b-af7d-f9ca-fa04-cbb9acb5f123@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1663926833;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Gn6QZKyXCWPIw+IVFSiZn7BPyYuukt8qvGTzGCzdE74=;
	b=qGx+rQKBiZpQYiOOhw61gYJMEMTi5KCbHoaWhDkr8vvIBNKNPnxaoxwdnqIMz7BiK75/LB
	d/fIsv1MGiK821W8tNH1KTVnWTxvTLxoaOMxxciy1BcRQDgUZECRxdYcoPFnLhi6qgwAo5
	mzycAHBmVztNl0D/toxAwxgnrnkqFu7frIeULSHDFfRI0RTeAxrwo9QifB1Aj0Zx167u4Z
	3ai99uAdNtazNwCi+Mahi8vWwTGkiHfQ4UBgwI6x6TuXZZyGY0QGjii0B0vvFiNFyGvRu/
	WSkn35dqslVd7O+qL/0TUWL4teDlXBK5DC1glHcIgdCkni6YjiJdVYxDF+urHg==
Date: Fri, 23 Sep 2022 11:53:52 +0200
MIME-Version: 1.0
Subject: Re: [PATCH] arm64: dts: rockchip: Enable HDMI and GPU on quartz64-b
Content-Language: da-DK
To: Heiko Stuebner <heiko@sntech.de>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220920143446.633956-1-frattaroli.nicolas@gmail.com>
 <659fc2fe-f820-04ad-8a4f-224b4d4bd97b@manjaro.org> <2198677.PYKUYFuaPT@phil>
From: Dan Johansen <strit@manjaro.org>
Organization: Manjaro ARM
In-Reply-To: <2198677.PYKUYFuaPT@phil>
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=strit@manjaro.org smtp.mailfrom=strit@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220923_025359_099797_F445EBC4 
X-CRM114-Status: GOOD (  19.18  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


Den 23.09.2022 kl. 11.45 skrev Heiko Stuebner:
> Hi,
>
> Am Donnerstag, 22. September 2022, 23:22:37 CEST schrieb Dan Johansen:
>> This seems to be based against linux-next and not mainline. It fails to
>> apply on mainline for me.
> I would not expect things any other way though :-) .
> I.e. in the current cycle everything new is of course targetting
> v6.1 and the Quartz boards already saw some other changes.

Ah okay. I have misunderstood the submitting process then.

I was under the impression that a patch should always target the latest 
-rc1, in this case 6.0-rc1.

I did not know that when you are at rc6/rc7 it's okay to target 
linux-next without
mentioning it.

Sorry for my noise.

>
>
>> Den 20.09.2022 kl. 16.34 skrev Nicolas Frattaroli:
>>> This enables the GPU and HDMI output (including HDMI audio) on
>>> the PINE64 Quartz64 Model B single board computer.
>>>
>>> Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
>>> ---
>>>    .../boot/dts/rockchip/rk3566-quartz64-b.dts   | 60 +++++++++++++++++++
>>>    1 file changed, 60 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
>>> index 0f623198970f..77b179cd20e7 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
>>> @@ -4,6 +4,7 @@
>>>    
>>>    #include <dt-bindings/gpio/gpio.h>
>>>    #include <dt-bindings/pinctrl/rockchip.h>
>>> +#include <dt-bindings/soc/rockchip,vop2.h>
>>>    #include "rk3566.dtsi"
>>>    
>>>    / {
>>> @@ -28,6 +29,17 @@ gmac1_clkin: external-gmac1-clock {
>>>    		#clock-cells = <0>;
>>>    	};
>>>    
>>> +	hdmi-con {
>>> +		compatible = "hdmi-connector";
>>> +		type = "a";
>>> +
>>> +		port {
>>> +			hdmi_con_in: endpoint {
>>> +				remote-endpoint = <&hdmi_out_con>;
>>> +			};
>>> +		};
>>> +	};
>>> +
>>>    	leds {
>>>    		compatible = "gpio-leds";
>>>    
>>> @@ -183,6 +195,33 @@ &gmac1m1_clkinout
>>>    	status = "okay";
>>>    };
>>>    
>>> +&gpu {
>>> +	mali-supply = <&vdd_gpu>;
>>> +	status = "okay";
>>> +};
>>> +
>>> +&hdmi {
>>> +	avdd-0v9-supply = <&vdda0v9_image>;
>>> +	avdd-1v8-supply = <&vcca1v8_image>;
>>> +	status = "okay";
>>> +};
>>> +
>>> +&hdmi_in {
>>> +	hdmi_in_vp0: endpoint {
>>> +		remote-endpoint = <&vp0_out_hdmi>;
>>> +	};
>>> +};
>>> +
>>> +&hdmi_out {
>>> +	hdmi_out_con: endpoint {
>>> +		remote-endpoint = <&hdmi_con_in>;
>>> +	};
>>> +};
>>> +
>>> +&hdmi_sound {
>>> +	status = "okay";
>>> +};
>>> +
>>>    &i2c0 {
>>>    	status = "okay";
>>>    
>>> @@ -456,6 +495,10 @@ &i2c5 {
>>>    	status = "disabled";
>>>    };
>>>    
>>> +&i2s0_8ch {
>>> +	status = "okay";
>>> +};
>>> +
>>>    &i2s1_8ch {
>>>    	pinctrl-names = "default";
>>>    	pinctrl-0 = <&i2s1m0_sclktx
>> The above part does not seem to exist in the current mainline (rc6) git
>> repo.
> which is of course already in linux-next, so this
> patch just applied nicely.
>
>
> Heiko
>
>>> @@ -677,3 +720,20 @@ &usb_host0_ehci {
>>>    &usb_host0_ohci {
>>>    	status = "okay";
>>>    };
>>> +
>>> +&vop {
>>> +	assigned-clocks = <&cru DCLK_VOP0>, <&cru DCLK_VOP1>;
>>> +	assigned-clock-parents = <&pmucru PLL_HPLL>, <&cru PLL_VPLL>;
>>> +	status = "okay";
>>> +};
>>> +
>>> +&vop_mmu {
>>> +	status = "okay";
>>> +};
>>> +
>>> +&vp0 {
>>> +	vp0_out_hdmi: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
>>> +		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
>>> +		remote-endpoint = <&hdmi_in_vp0>;
>>> +	};
>>> +};
>
>
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
-- 
Kind regards
*Dan Johansen*
Project lead of the *Manjaro ARM* project
Manjaro-ARM <https://manjaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
