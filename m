Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB954CD1284
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Apr 2024 09:27:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DFNj4Acd8D9rM1dQoFXRvGYu6OHUlup96JljkWS+N3w=; b=uoa6VjkSxbb51U
	FMHvU7gANdcjrnTpqSgEoxcj9rDLvgQuU3GS5py727QNNILpByH9On0ucxVkIHAVpgpuPDkfyJkwz
	rrZvp9qdApAaEt3VATnS8MmSnrspr9IiBIvWgB9acbjeGKS6cTu0xEputlA5UXW79ybEBfjilRTgk
	CXwpab0pV/xva72sez9g6kz1Fk9ilBA9IfHa3chE0De6cqpyAGaeJwVtisA+pJRyaJm9M4m5odS2u
	mXO9HCOhyz0iQkQhU44RCrV6Dc0pE/kaEjTPat22NDBvg6k4X9nQ1c8+Kt+pt7+M60PD1SiHoUQ4z
	i4UIBFTAfa43zaTIbj/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rraQi-0000000ARAv-0YNh;
	Tue, 02 Apr 2024 09:27:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rraQf-0000000AR9k-25yk
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Apr 2024 09:27:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rraQc-0005lg-8e; Tue, 02 Apr 2024 11:27:38 +0200
Message-ID: <2ebc951f-8014-4154-b1a6-d14010be8c90@pengutronix.de>
Date: Tue, 2 Apr 2024 11:27:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Remove UART2 from RGB30
Content-Language: en-US
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Chris Morgan <macroalpha82@gmail.com>,
 linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, sboyd@kernel.org, mturquette@baylibre.com,
 heiko@sntech.de, conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 robh+dt@kernel.org
References: <20231018153357.343142-1-macroalpha82@gmail.com>
 <20231018153357.343142-4-macroalpha82@gmail.com>
 <7c7138f8-b0b7-46c3-b7b2-84e01467f368@pengutronix.de>
 <DM4PR05MB9229E56DE3F587BD222E1402A5392@DM4PR05MB9229.namprd05.prod.outlook.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <DM4PR05MB9229E56DE3F587BD222E1402A5392@DM4PR05MB9229.namprd05.prod.outlook.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240402_022741_576524_19775169 
X-CRM114-Status: GOOD (  24.22  )
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

Hello Chris,

On 30.03.24 16:34, Chris Morgan wrote:
> On Sat, Mar 30, 2024 at 02:13:05PM +0100, Ahmad Fatoum wrote:
>> Hello Chris,
>>
>> On 18.10.23 17:33, Chris Morgan wrote:
>>> From: Chris Morgan <macromorgan@hotmail.com>
>>>
>>> The Powkiddy RGB30 has no onboard UART header, so remove the reference
>>> to it in the device tree. This was left on by mistake in the initial
>>> commit.
>>
>> Do you know if the UART is perhaps available over testpoints?
> 
> There is not one as best I can tell on either the RGB30 or RK2023. The
> Powkiddy X55 does have UART, however. I was able to exploit the fact
> that the RGB30 is extremely similar to all of the Anbernic devices
> (such as the RG353 series) for the purposes of low-level development.
> Once I got a network connection I performed the rest of development
> over SSH, but prior to that I just developed on a different device.

Thanks for the info.

AFAICS, it should be possible to get a console by changing the pinmux
setting on the Game TF-Card:

  SDMMC1_D0/UART6_RX_M0/GPIO2_A3_u
  SDMMC1_D1/UART6_TX_M0/GPIO2_A4_u
  SDMMC1_D2/UART7_RX_M0/GPIO2_A5_u
  SDMMC1_D3/UART7_TX_M0/GPIO2_A6_u
  SDMMC1_CMD/UART9_RX_M0/GPIO2_A7_u
  SDMMC1_CLK/UART9_TX_M0/GPIO2_B0_d

I will give that a try.

Cheers,
Ahmad

> 
> Thank you,
> Chris.
> 
>>
>> If yes, having a DT-overlay upstream enabling it along with documentation could be useful.
>> If not, how do you do low-level debugging on the RBG30 in absence of the serial console?
>>
>> Thanks,
>> Ahmad 
>>
>>>
>>> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
>>> ---
>>>  arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts | 9 +++++++++
>>>  1 file changed, 9 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts
>>> index 3ebc21608213..1ead3c5c24b3 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts
>>> @@ -64,6 +64,10 @@ simple-audio-card,cpu {
>>>  
>>>  /delete-node/ &adc_keys;
>>>  
>>> +&chosen {
>>> +	/delete-property/ stdout-path;
>>> +};
>>> +
>>>  &cru {
>>>  	assigned-clocks = <&pmucru CLK_RTC_32K>, <&cru PLL_GPLL>,
>>>  			  <&pmucru PLL_PPLL>, <&cru PLL_VPLL>;
>>> @@ -149,4 +153,9 @@ rk817_charger: charger {
>>>  	};
>>>  };
>>>  
>>> +/* There is no UART header visible on the board for this device. */
>>> +&uart2 {
>>> +	status = "disabled";
>>> +};
>>> +
>>>  /delete-node/ &vibrator;
>>
>> -- 
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
