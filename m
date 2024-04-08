Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7B67CD1296
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Apr 2024 14:57:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6JNbptj7FhMAdWAUuSYS958xPWb2WBWcM3qApP1VavI=; b=Kw02cNBpa8fTas
	6KVHoc5/6Cy9YBWd9XIkfvEGeUnLnp1Lp1HSc07VF7OcZUY37ToACqVcziojIsuYdwhc8/3FglXhV
	9Of6wBZNfJDj0FvJUDEWFmlvIP8I+96D1z7eTWPJN8dp/+IVrN0LtjJOh82vx5XmXDlfEvSPM/8YE
	pOkRiKijTRj5/0bQChEcNKucaIuJJPyXc8JYT/PzPlsXXdb0bzRcdKO1ClFjIMWBg54DKhc29Zmu4
	Uc+cFYoKV9VnOwfBtxIS18DEgA56ErfteFNO6g/67PeKyVdEMiSdQQyTfCICC0T8Z+E9qcTXfy6DL
	MhPdYH8TtUp8MFvEmFLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtqR1-0000000Fx9a-0fzo;
	Mon, 08 Apr 2024 14:57:23 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtqQt-0000000Fx5G-2jkK
	for linux-rockchip@lists.infradead.org;
	Mon, 08 Apr 2024 14:57:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: References: Cc:
 To: From: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1712588227;
 bh=Vrqed05exdnqCvLdsEGiIF00ILNQUOlq51lQmfBBM8s=;
 b=cHwhBQaa94tEYSoDZUSED06sXUlf1O7V2Iq3tWYOej0f4c6whydMrhWFlEg+8aZxvuo3WVDpW
 sNsV+B3plUjuWUjaK6FuHb5XU8D4bwjCONjLsLBy6dekfVnUQJesjygtAdqOVVvQgcmsMmUe9f+
 KstEVBP5JkieE9k/bWIOHG8yFva52i8tVtLbfeTPsVf+zORvR9ViFfVewiZZt6kGRGrLU+nlj9C
 2AlA/eG3cRrqi+d3L3/7mqmHgqSFdgbH/nwAl3OmpImuJRNUR8XwtpnPiNGlOx0iaHY76dRdCY+
 z1SWM5h1X+Hm0bNu+qbdlbVVgdg6fme0/OMmJRM5RClA==
Message-ID: <b32c284e-f3ec-44b0-abbd-7fa403bc9870@kwiboo.se>
Date: Mon, 8 Apr 2024 16:56:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: enable onboard spi flash for
 rock-3a
From: Jonas Karlman <jonas@kwiboo.se>
To: Chukun Pan <amadeus@jmu.edu.cn>, Heiko Stuebner <heiko@sntech.de>
Cc: Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20240408124005.182565-1-amadeus@jmu.edu.cn>
 <421ab43b-ff92-41c6-9904-3c7681c926be@kwiboo.se>
Content-Language: en-US
In-Reply-To: <421ab43b-ff92-41c6-9904-3c7681c926be@kwiboo.se>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 661405c13464f70b49a230b8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240408_075715_879613_BF255BB4 
X-CRM114-Status: GOOD (  14.83  )
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

Hi again,

On 2024-04-08 16:44, Jonas Karlman wrote:
> Hi Chukun,
> 
> On 2024-04-08 14:40, Chukun Pan wrote:
>> There is a mx25u12835f spi flash on this board, enable it.
>>
>> [    2.525805] spi-nor spi4.0: mx25u12835f (16384 Kbytes)
>>
>> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
>> ---
>>  arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 12 ++++++++++++
>>  1 file changed, 12 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
>> index a5e974ea659e..d8738cc47c73 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
>> @@ -757,6 +757,18 @@ &sdmmc2 {
>>  	status = "okay";
>>  };
>>  
>> +&sfc {
> 
> This is missing:
> 
> 	#address-cells = <1>;
> 	#size-cells = <0>;
> 
>> +	status = "okay";
>> +
>> +	flash@0 {
>> +		compatible = "jedec,spi-nor";
>> +		reg = <0x0>;
>> +		spi-max-frequency = <50000000>;
> 
> At least in U-Boot the spi clock only support 24, 100 or 200 mhz and I
> am pretty sure the spi flash support 100mhz, so I would suggest you test
> with 100mhz, same as used on other rk356x boards.

Sorry, looked at spi clock instead of sfc clock.
sfc clock support 24, 50, 75, 100, 125 and 150 mhz.

Regards,
Jonas

> 
> For U-Boot I have used 24 mhz for rk356x boards not defining a flash@0
> node in linux device tree, such as the rock-3a board.
> 
> Regards,
> Jonas
> 
>> +		spi-rx-bus-width = <4>;
>> +		spi-tx-bus-width = <1>;
>> +	};
>> +};
>> +
>>  &tsadc {
>>  	rockchip,hw-tshut-mode = <1>;
>>  	rockchip,hw-tshut-polarity = <0>;
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
