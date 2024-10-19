Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46367D3C926
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Oct 2024 17:46:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ey28BdHFMM0Ocu7Fzo1l8JgOw4EArRCwEP7LWEPw2eA=; b=en/ENoZ1QO2WiF
	RrJ9YHOi4+ugjA9DMIUYhjwUlgkFHiuhvzHARhuex4sm1rcG+UIqi57Nf/rAC6D4hnpUnh5RkxdzY
	2TX/yZMbobGjiu1qyxLcb76cfoAMVNUwVTyfBV07QNw4ytyli5vaF6t5YeE9G/z8r9qUHt0kBTwdQ
	Kk2S2uDRl1Sal8MmoowQMKQ4Xy/wm1yW5vguGWi/UdcR7XaoAQbR8zLOnAHUaVe2Y6Yehxh1rbqpC
	JZsMRFCmMkH1acbp9FNQlVxz5a4jdIhPLPQLHlbX6AEbVbCROMb67/o5PDz25ZTwszoWtT6YDjIFP
	4ER+dXN9MIsELEaH16Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2DX6-00000003irx-0yTF;
	Sat, 19 Oct 2024 17:46:32 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2DVa-00000003ifU-2NMR;
	Sat, 19 Oct 2024 17:45:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1729359896;
	bh=NZE8zSnUWmDXLsUVhD56gHK8qtI4r/t43Zp/rgthYv4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ncLvRWwyS8rIrN2bKTiI/fsu2q66JQH4rEBbEW/WUACLWcqYhrbV2WQ7f87gi/aVN
	 VKlBxPCk3c6V6KXoFU47xRhYk0lU9bjAu0fpCokbvbHRcatfoKtT+Pah+scR4tblfv
	 Ih7tIBIqwLi7kuTpGmcP1TIXkkRCnKYuOs0r/FhnhHbOX304xlvHJhIm9gQywLIZmd
	 yQfNTwxeXUu36dCDlfxr+Hrw3aABFKjjBMz6mLqgx4tb4A0OXotwPwJTvfhXBKlT0r
	 IdgNGZVUY9MSo+6bXpW5I6kv4en23W6ZhXEtgwSRlt2kGAZG/1NhXJZkyivPLEZE8y
	 0ysbkTdNiyBiw==
Received: from [192.168.1.90] (unknown [188.24.146.62])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id DF67517E3692;
	Sat, 19 Oct 2024 19:44:55 +0200 (CEST)
Message-ID: <d4dd6971-7a01-40d3-a25b-dc56a9630442@collabora.com>
Date: Sat, 19 Oct 2024 20:44:55 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/5] arm64: dts: rockchip: Enable HDMI0 on rock-5a
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Luis de Arquer <ldearquer@gmail.com>, Alexandre ARNOUD <aarnoud@me.com>,
 kernel@collabora.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20241019-rk3588-hdmi0-dt-v2-0-466cd80e8ff9@collabora.com>
 <20241019-rk3588-hdmi0-dt-v2-5-466cd80e8ff9@collabora.com>
 <a90437be-eae6-4dc9-93fa-fd4af8ad9bed@kwiboo.se>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <a90437be-eae6-4dc9-93fa-fd4af8ad9bed@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241019_104458_807754_C2D44201 
X-CRM114-Status: GOOD (  11.55  )
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

Hi Jonas,

On 10/19/24 4:02 PM, Jonas Karlman wrote:
> Hi Cristian,
> 
> On 2024-10-19 12:12, Cristian Ciocaltea wrote:
>> Add the necessary DT changes to enable HDMI0 on Radxa ROCK 5A.
>>
>> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>> ---
>>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 52 ++++++++++++++++++++++++
>>  1 file changed, 52 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
>> index 87fce8d9a964cd53d179ce214ae1c0ff505a2dce..2b141af5e709b0bc2193dbfb2327e6bc1fdaa502 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
>> @@ -5,6 +5,7 @@
>>  #include <dt-bindings/gpio/gpio.h>
>>  #include <dt-bindings/leds/common.h>
>>  #include <dt-bindings/pinctrl/rockchip.h>
>> +#include <dt-bindings/soc/rockchip,vop2.h>
>>  #include "rk3588s.dtsi"
>>  
>>  / {
>> @@ -35,6 +36,17 @@ chosen {
>>  		stdout-path = "serial2:1500000n8";
>>  	};
>>  
>> +	hdmi0-con {
>> +		compatible = "hdmi-connector";
>> +		type = "a";
> 
> ROCK 5A use micro HDMI connector type, so this should be type = "d".

Indeed, good catch, will fix in v3.

Thanks,
Cristian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
