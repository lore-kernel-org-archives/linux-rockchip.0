Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20EEEF36C2C
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Apr 2026 06:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9dryp+nxhAMciGj3eTZYFdv3mI8acrV0fFv9NIEdKhU=; b=hUEPg+MjofXt/o
	PxP1SkUWoVhIj6J9TVN3PKqMy+6EscHXbkcRThI2pPyxEQMKI7aGvpMwCS7AJDJP6CDh3XNIegE1T
	IqE7QhauAFGOHguG3GUYmKsEsiVxS2NI31Vte+GfThFkCAqSGy5eDBLpRhmg6dyWm3x+xxsXUMgZr
	E5Jdb4c/rT0VRhHY2qigJnlLe38EvG4/ZdiFd/yF3fL9zJi0PCzleHpk0K4vuJA+N4WQfxTVpXlbC
	RYqw+tSmEGu61E981PUsQXErUGgXViXuBBlyUkUM0PNd/EbGyZRrPHR62peS80elwoeM1MQy+w9wf
	NXzKkgXQ7lWVz/JteL3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEiar-00000006WSI-1FcR;
	Mon, 20 Apr 2026 06:58:53 +0000
Received: from mail-dl1-x122a.google.com ([2607:f8b0:4864:20::122a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEiao-00000006WRV-3wBi
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Apr 2026 06:58:52 +0000
Received: by mail-dl1-x122a.google.com with SMTP id a92af1059eb24-12713e56abdso1508303c88.1
        for <linux-rockchip@lists.infradead.org>; Sun, 19 Apr 2026 23:58:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776668329; x=1777273129; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T3r02hhZx3Vxqyj1q31IQgqGPj+UcnZ1kBemjU+jdaU=;
        b=VB1xQeIpyAqymbttticMhp/qeHn1ZrSmDYFFOyUmbmK/iRbzY45nelNSi2eKaHekPk
         dnG0iP8E/h97+/D6f44Cloy9r6ahZC4Mgdgw1ktqHC20tg0mre3cxcYG0dwN5UOCR72/
         045QhTlSUZ5biT6765qhMynLlLUviY7UCnqaRewpIq3oGyd2bbtNqPel/GVXYHRIv1MO
         uOVRLP7pJtF+vsqKigb3E8gidpk8odJXZMW/fFrOY5jN4/PPLjvQlKsvTlDeyjiunEy3
         GfA/rHO2MguwlSyftZ3SRWfzYylIQkV5bVqB+z39X4mLIXuDRvfQ91dPiAxpOcSrHYdV
         v5eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776668329; x=1777273129;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=T3r02hhZx3Vxqyj1q31IQgqGPj+UcnZ1kBemjU+jdaU=;
        b=atiICZAElUHduKwHWoQl3L0QpXR5ZQRdxYUgiiQwBlHb+ML3szHT4ZWpKe67A9j/P9
         wSkqWNvfD1pBekcFq2H9Qf76z4Tp4+yOAalDuk2/0k4x6XA9+BxXQ7WJt4epytaBjdcd
         4gfj1oxGfcC4bSURjMb+shdIH9FsF/oGO203reOiAqYW4uVnzb1LjeZoZH8CTVsG//cd
         5XEwXT4GsEAv7dVFlN606uzQnXa+kLft5iYxOFxzZ71Y2CM45D7O6BzhKMePrQtAHeq1
         Mj5hISxv9XCq6HOzmKr7C19Sdw9Zt7+9hY2mGa8sTFt5pBfsorVS3X2XNlpqPkEJjrRs
         XK4g==
X-Forwarded-Encrypted: i=1; AFNElJ9p+nwdaK5C9tOoXaYane3vc63+EVWjnuE73m6LP7GUpeT6ARg8qHOqlk7PgAHLxd9bghXV9V1PNydeXjWfZg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzUnHmHuKITEZ+Za9yHXm72IFReHaXwBDldUx21GaPl/VAhjh4P
	BOEwtr8hN0xIUOPv5xofjMJLNY9eKICFBnXtnREke0BMxPqNChx6vZh6
X-Gm-Gg: AeBDieuSEUhDtQRODzNwmFTTd6Q50H5OaHBU3kGPjIdWM2qzEq8AUmE0js912K4VXD4
	xAaFCAi9of/eVbDP/t97qKj3REOxsHwph+jqHEDh0vp2+ezbBcJWmaUr2x3P9PwqMGgvRQ/5Wkp
	+CXTDAIM7OmfnuOGtiN4pN47Vv8gnmf0QhM/W1xbYjZofQJqwWnSj5JptS29aCX8CIEBGPw4mow
	H9crRgsT4WhNvH21Ym1PNfUNa2R4BoxnAl2maXt2FaENy4lCxUhDYUIvPwtZ61SJMy9F7PSAuuK
	n1LjKJM0pRN6NiA5tPyNHtzVAvkWD8h7WV7O3z/s2oB4XtOO9tSU7cgEWLRFU6xDWbm5B/Qxrso
	f3Af6aOemapDC6/Ad7XrFgKAoXg7gQhNKGxDRAO/7GWf96iqxk85oOOSRuPmSTzBYqRmlwv9lG3
	QvOli1yKeA
X-Received: by 2002:a05:7022:4191:b0:12c:427:dacf with SMTP id a92af1059eb24-12c73b05ceamr5070810c88.10.1776668329484;
        Sun, 19 Apr 2026 23:58:49 -0700 (PDT)
Received: from CNSZTL-PC.lan ([2607:f130:0:13b::3a])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-12c74a20b9csm13380651c88.12.2026.04.19.23.58.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2026 23:58:49 -0700 (PDT)
Message-ID: <2d2b1e17-388f-431a-be86-a0f26b5be6cf@gmail.com>
Date: Mon, 20 Apr 2026 14:58:44 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Replace deprecated snps,* props
 for NanoPi R5S
To: Diederik de Haas <diederik@cknow-tech.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Arnd Bergmann <arnd@arndb.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Quentin Schulz <quentin.schulz@cherry.de>,
 Jonas Karlman <jonas@kwiboo.se>
References: <20260401131551.734456-1-diederik@cknow-tech.com>
 <20260401131551.734456-3-diederik@cknow-tech.com>
 <DHTSOV43O2EX.38TGASN7SQEZL@cknow-tech.com>
From: Tianling Shen <cnsztl@gmail.com>
In-Reply-To: <DHTSOV43O2EX.38TGASN7SQEZL@cknow-tech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260419_235851_265398_E5306896 
X-CRM114-Status: GOOD (  18.22  )
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

On 2026/4/15 22:23, Diederik de Haas wrote:
> On Wed Apr 1, 2026 at 3:11 PM CEST, Diederik de Haas wrote:
>> The various snps,reset-* properties are deprecated, so convert them into
>> their replacements.
>>
>> Signed-off-by: Diederik de Haas <diederik@cknow-tech.com>
>> ---
>>   arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts | 7 +++----
>>   1 file changed, 3 insertions(+), 4 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts
>> index 90ce6f0e1dcf..92d044ec696b 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts
>> @@ -85,10 +85,6 @@ &gmac0_tx_bus2
>>   		     &gmac0_rx_bus2
>>   		     &gmac0_rgmii_clk
>>   		     &gmac0_rgmii_bus>;
>> -	snps,reset-gpio = <&gpio0 RK_PC5 GPIO_ACTIVE_LOW>;
>> -	snps,reset-active-low;
>> -	/* Reset time is 15ms, 50ms for rtl8211f */
>> -	snps,reset-delays-us = <0 15000 50000>;
>>   	tx_delay = <0x3c>;
>>   	rx_delay = <0x2f>;
>>   	status = "okay";
>> @@ -100,6 +96,9 @@ rgmii_phy0: ethernet-phy@1 {
>>   		reg = <1>;
>>   		pinctrl-0 = <&gmac0_rstn_gpio0_c5_pin>;
>>   		pinctrl-names = "default";
>> +		reset-assert-us = <15000>;
>> +		reset-deassert-us = <50000>;
>> +		reset-gpios = <&gpio0 RK_PC5 GPIO_ACTIVE_LOW>;
>>   	};
>>   };
>>   
> 
> Please disregard/drop this patch.
> 
> I was recently made aware of 'sashiko.dev' and checked whether it had
> also checked my patch, which it did:
> https://sashiko.dev/#/patchset/20260401131551.734456-1-diederik%40cknow-tech.com
> 
> And it turns out that the concern raised is valid (thanks Quentin!), so
> this patch could introduce a regression.
> So it looks like staying with the deprecated properties is actually
> better (in this case?).

Well actually we more or less rely on U-Boot to reset the PHY first now. 
Many rockchip boards in tree require a reset before the PHY can be 
recognized, but we just use the generic "ethernet-phy-ieee802.3-c22" 
compatible.

Another option is to move the reset props to mdio node instead of PHY 
node, though.

Thanks,
Tianling.

> 
> Cheers,
>    Diederik


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
