Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A334BC30653
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jul 2024 12:04:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Wmv+IqfgJTNYKM2sghoWs6qZweKlROU4luGgf0DJJuc=; b=B7Ly2zb6a66pU2NtS0Sc2f/lTT
	jdxqJfWw0A8UyRvZJ6jsoMCWrT3mp0p+HNp/0x7A5jW90InxjOoXEn3caUqZcPgvTvvUvGnLM86o9
	C6fSi4kguOLIRDaIqMa9/UeZPl0pz2V7QgqQ0fJORxXlY4cO4YWbuPPd+dWjxFtgseXqNgTN/FGRY
	W1sVsGGZJ451Rx7lgaOK6hMXt+noE2jFn+Zirl7/spyP8GjJDZ7G9LB0F3IbDVeFX4lTETfGRoLAE
	5o8LFwLpXuAWQsSTrkeSkJ5ICKIg33fKyprhLuZtaPtS2eas0cBVXK7he8jf5ypieMOSr+pVCEET8
	fhQYWi5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPLCV-0000000D5uF-28B8;
	Thu, 04 Jul 2024 12:04:35 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPLCH-0000000D5s8-15Zp;
	Thu, 04 Jul 2024 12:04:23 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1720094658;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=NJUq1gL2n6O72FkagfIzF/3l8GxaCoyh+6xXf/fqDcI=;
	b=gRBPlNW08B8tS5OnAMQ9KbKBi1bRqPjxjtrqXgm1ASF6PQDH92VNJkkDhsO00ovfrcdcJI
	0u0t6QUKlKkw/tGLgfI274Ea6vx84+jMCmO7lLxunIOMFqubhCINssRMbG20qRcxUocKSB
	lM0807HOaxgbUafC3UDKSOwxQs5D53ypO5h+iyc/DneuMEkFGSLmAvfP4Jmp8EHsd5SwII
	lVFodHrBKgetcu/1SM0PdWI5FYYDE43K/BR9aBvFceU2htemLGaKirtvHohMpaSbUD2as0
	UxYGWCY10fd0DpH2pdrUsdozBzqtInvALsyReoRSkYXCaI20jYTezqGlSfeeug==
Date: Thu, 04 Jul 2024 14:04:18 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Alex Bee <knaerzche@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: add rock5 itx board
In-Reply-To: <faeb87de-b97e-4f95-bbb0-edd03a411f4c@gmail.com>
References: <20240703210524.776455-1-heiko@sntech.de>
 <20240703210524.776455-3-heiko@sntech.de>
 <faeb87de-b97e-4f95-bbb0-edd03a411f4c@gmail.com>
Message-ID: <06e69b64b25fbbff338aac9e84c68ce9@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240704_050421_739335_F42D8EC7 
X-CRM114-Status: GOOD (  16.46  )
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

Hello Alex and Heiko,

On 2024-07-04 12:52, Alex Bee wrote:
> Am 03.07.24 um 23:05 schrieb Heiko Stuebner:
>> The Rock 5 ITX as the name suggests is made in the ITX form factor and
>> actually build in a form to be used in a regular case even providing
>> connectors for regular front-panel io.
>> 
>> It can be powered either bei 12V, ATX power-supply or PoE.
>> 
>> Notable peripherals are the 4 SATA ports, M.2 M-Key slot, M.2 E-key 
>> slot,
>> 2*2.5Gb pcie-connected ethernet nics.
>> 
>> As of yet unsupported display options consist of 2*hdmi, DP via 
>> type-c,
>> eDP + 2*DSI via pcb connectors.
>> 
>> USB ports are 4*USB3 + 2*USB2 on the back panel and 2-port front-panel
>> connector.
>> 
>> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
>> ---
>>   arch/arm64/boot/dts/rockchip/Makefile         |    1 +
>>   .../boot/dts/rockchip/rk3588-rock-5itx.dts    | 1188 
>> +++++++++++++++++
>>   2 files changed, 1189 insertions(+)
>>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-rock-5itx.dts

[snip]

>> +&usb_host1_xhci {
>> +	dr_mode = "host";
>> +	#address-cells = <1>;
>> +	#size-cells = <0>;
>> +	status = "okay";
>> +
>> +	/* 2.0 hub on port 1 */
>> +	hub_2_0: hub@1 {
>> +		compatible = "usb5e3,610";
>> +		reg = <1>;
>> +		peer-hub = <&hub_3_0>;
>> +		vdd-supply = <&vcc5v0_usb12>;
> 
> Are you sure about this one? I couldn't find any schematics for this 
> board,
> but both the bindings for usb5e3,610 and the datasheet[0] are saying 
> this
> is the supply for the hub's internal logic which is typically ~3.3V. 
> It's
> definitely not a supply for the vbus.
> 
> [0] http://www.sunnyqi.com/upLoad/product/month_1308/GL852G.pdf

FYI, here's the board schematic:

- https://dl.radxa.com/rock5/5itx/radxa_rock_5_itx_X1100_schematic.pdf
- 
https://dl.radxa.com/rock5/5itx/v1110/radxa_rock_5itx_v1110_schematic.pdf

Perhaps it would be good to include these URLs in the v3 patch 
description.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
