Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADC3DC3DA47
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jul 2024 09:45:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0KTtkzoDbf0bR29qSkNTh/E48U4CgOBCc5j9y9rloJg=; b=O1bVCFCtPswkPj
	D3zQG2Qw4dRQUaXsjLWnTPkhGHR7qJCs9rnzdYIFAdX8eKwBS+9vHChLAj1A8+8o+vd02Sc1kbFOz
	PNILDO9sJ1apG+vtgZVhC5IhvX+kzEA3fp1JL+XqxtBOgDMgTx7ylPJBPrHgYRhlFzNoRiStxDXkw
	DBp+/LiDWIiJDFEOUZxzMru8O2VwXrc5175BK++bxSM7q0xCfMbdD/z82WjQGfZRRFm4h+15c5lYV
	VuUNLLVRKmSIIXvTO2ELrNIi8mVYeu3NMlSiUDtywwj5FlzPmWtGYdUIqp80zf8Fe3TEHUjTMf8Bn
	P4xJtwxetk/HWjRTw+BA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRqMr-0000000DOd7-2CFF;
	Thu, 11 Jul 2024 09:45:37 +0000
Received: from smtp.forwardemail.net ([167.172.40.54])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRqMa-0000000DOYY-1E2I
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Jul 2024 09:45:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1720691095;
 bh=3VTjqdTB2Skdm6LlNLhdmYkYJnJbA0EzPLhUN0GVP+4=;
 b=rF3Pg+X9lOhYwAMLGxuumuQvC1B3YyghSZm2SvKm0O7v3nMcKx5DL20CX7XzEVZOk0bxGi5Lu
 4V1DwIElHMP6bkYS/eQn+PIOXmD3KjzVy38PCHhUGKJJDAI5R18ed1kiQaNvdtf+mJ9+UsQZvoS
 fhKpgaor7sz+HxysQE876AX3uyJUb7ADjNK8rfIIX4j36Y3qoiXz25T2uE+IWBmM39HmKx/wz7R
 44sMvhvu1h2fUZF4p2jdd1vhGJmu0K87iXfzmkm3aIa5xslML1OdFXoGXnnf88QkGoUL94lyel7
 MzVL9JhC/gSPlkMdd4s1nymhmS0Kr9FcyQfoRClSXpZQ==
Message-ID: <6250fa05-7a06-4fa1-a2be-9cb66a2d2822@kwiboo.se>
Date: Thu, 11 Jul 2024 11:44:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add missing pinctrl for PCIe30x4
 node
To: Anand Moon <linux.amoon@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240711060939.1128-1-linux.amoon@gmail.com>
 <a8c1f49e-bf25-4fd3-a16f-13088f75767f@kwiboo.se>
 <CANAwSgQCn3jgiruiLs0cu-C+DguLtnk=msboAh8jNSF4P28gjA@mail.gmail.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <CANAwSgQCn3jgiruiLs0cu-C+DguLtnk=msboAh8jNSF4P28gjA@mail.gmail.com>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 167.172.40.54
X-ForwardEmail-ID: 668fa9943d24780caa1a7dec
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240711_024520_623842_A9FAA5C7 
X-CRM114-Status: GOOD (  28.31  )
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

Hi Anand,

On 2024-07-11 11:09, Anand Moon wrote:
> Hi Jonas,
> 
> Thanks for your review comments.
> 
> On Thu, 11 Jul 2024 at 14:13, Jonas Karlman <jonas@kwiboo.se> wrote:
>>
>> Hi Anand,
>>
>> On 2024-07-11 08:09, Anand Moon wrote:
>>> Add missing pinctrl settings for PCIe 3.0 x4 clock request and wake
>>> signals.Each component of PCIe communication have the following control
>>> signals: PERST, WAKE, CLKREQ, and REFCLK. These signals work to generate
>>> high-speed signals and communicate with other PCIe devices.
>>> Used by root complex to endpoint depending on the power state.
>>>
>>> PERST is referred to as a fundamental reset. PERST should be held low
>>> until all the power rails in the system and the reference clock are stable.
>>> A transition from low to high in this signal usually indicates the
>>> beginning of link initialization.
>>>
>>> WAKE signal is an active-low signal that is used to return the PCIe
>>> interface to an active state when in a low-power state.
>>>
>>> CLKREQ signal is also an active-low signal and is used to request the
>>> reference clock.
>>>
>>> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
>>> ---
>>> V2: Update the commit messge to describe the changs.
>>>     use pinctl group as its pre define in pinctl dtsi
>>> ---
>>>  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 6 +-----
>>>  1 file changed, 1 insertion(+), 5 deletions(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
>>> index 2e7512676b7e..ab3a20986c6a 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
>>> @@ -301,7 +301,7 @@ &pcie30phy {
>>>
>>>  &pcie3x4 {
>>>       pinctrl-names = "default";
>>> -     pinctrl-0 = <&pcie3_rst>;
>>> +     pinctrl-0 = <&pcie30x4m1_pins>;
>>
>> Use of the existing pcie30x4m1_pins group may not be fully accurate for
>> the PERST pin. The use of reset-gpios indicate that the PERST pin is
>> used with GPIO function and the driver will implicitly change the
>> function from perstn_m1 to GPIO. So this may not be best representation
>> of the hw, hence my initial suggestion, something like:
>>
>>         pcie30x4_pins: pcie30x4-pins {
>>                 rockchip,pins =
>>                         <4 RK_PB4 4 &pcfg_pull_none>,
>>                         <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>,
>>                         <4 RK_PB5 4 &pcfg_pull_none>;
>>         };
>>
>> Similar change should probably also be done for pcie2x1l0 and pcie2x1l2,
>> not just pcie3x4.
>>
> 
> Ok but it is better to update this in rk3588s-pinctrl.dtsi otherwise
> the pcie30x4m1_pins
> will not be used at all on all the boards

I agree that it is unfortunate that the PERST pin is included in the
groups in pinctrl.dtsi, however, for pcie ep mode the pins should more
than likely be using the perstn_m1 function and not GPIO, so there are
uses for the existing pin groups for ep mode.

In my opinion using pcie30x4m1_pins as-is and having implicitly changing
to GPIO function when driver/usage in the software require it is an okay
description of the hw.

However, seeing how use of pcie ep is described using its own node in DT
I can understand that for rc mode the pin should be changed to GPIO to
properly describe the expected usage.

When I tried to add similar implicit change to use GPIO function in
U-Boot to fix system freeze when improper pinctrl was used, it resulted
in some discussions, see [1] ;-)

[1] https://lore.kernel.org/u-boot/20240511112821.1156519-1-jonas@kwiboo.se/t/#u

> I will update the PERST pin to RK_FUNC_GPIO on all the pcie2x1l0,
> pcie2x1l2 and  pcie30x4
> is this ok for you?

This should probably be reworked in pinctrl.dtsi together with all
affected boards and/or use a group override in the board dts.

Regards,
Jonas

> 
>> Regards,
>> Jonas
> 
> Thanks
> -Anand
>>
>>>       reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
>>>       vpcie3v3-supply = <&vcc3v3_pcie30>;
>>>       status = "okay";
>>> @@ -341,10 +341,6 @@ pcie2_2_rst: pcie2-2-rst {
>>>       };
>>>
>>>       pcie3 {
>>> -             pcie3_rst: pcie3-rst {
>>> -                     rockchip,pins = <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
>>> -             };
>>> -
>>>               pcie3_vcc3v3_en: pcie3-vcc3v3-en {
>>>                       rockchip,pins = <1 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
>>>               };
>>>
>>> base-commit: 34afb82a3c67f869267a26f593b6f8fc6bf35905
>>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
