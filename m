Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB257CF2579
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Oct 2024 19:46:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5gDMqvZNqFWs/LtBj/ifYidblNekp3kKtZ/YQiXgxCg=; b=iyB5qwpBk2Ugp7ehDecrmzxHd4
	/rJpIXPrrzdWRbXhkBD01gM3iV8CY/KD+kugFcen8Dyx06Fc3wcATZAeVCRbmQPsBMGOl+GToFjLg
	SFTz/s613xoCXjK1MnHFdmIzMs5lWxLyPEM6KLEla6B70M9JRKs05vL+KSkOlbprJy5edSQqzooDw
	4h17XSclcPtDrJhCUP7xCgHMTQX01edyM+doAUR05g8ydzYFtW+0xvZmL5fE783oJWPLYqUD3ZEnv
	JCUDPAzWqm10u4Gc51/ZTFp30ni6wlUmDkf+6KqfyhuuBZEnGgcjFb35PrA0Rxi31ZGrh0QKgXgRp
	csH/B4bA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szi4Z-00000001lOS-1Reh;
	Sat, 12 Oct 2024 19:46:43 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szi3B-00000001lIt-0svC;
	Sat, 12 Oct 2024 19:45:19 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728762314;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0QNXrOZTgcNV/UPXjbEQO0WrX6H2RkVMfh5QoVV40jw=;
	b=RXqzH2SpPlCNzZQQ2f2TseRaW6aAM91LF2U7SG3UbLsA6OiMHPFf4xQbORMUn+iK5Uy5mp
	ZvFTlLKBbvLMEmNbmmw6wm1R7V68PUNB4fi23ijJk5tesbLglNhR+X4QeF8cpcbMrobS+1
	yh5q8R0VHbZWItol/yxuat4sMtErst7dbmgpSwVe7YkebIkojcNEKKeeC4RG1daQYsBuSU
	uKZvwiC6BsVj5zT4w9G2Cd3XFRkOuN9YO8Zeg8cAr+yVVCZb+7JoL49pcoSXGY1gGvQIfo
	siWyLotNsycuBUDeoNPO3cCwj30nhT+ZL8CDYGl2WJZmmKKqZ5EUktahAlg5cQ==
Date: Sat, 12 Oct 2024 21:45:14 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: Update CPU OPP voltages in
 RK356x SoC dtsi
In-Reply-To: <D4U2PO4VF4ST.9SBVKYF6095M@cknow.org>
References: <cover.1728752527.git.dsimic@manjaro.org>
 <2e1e100284b1edb470d6e7fde021a0f1779336c8.1728752527.git.dsimic@manjaro.org>
 <D4U2PO4VF4ST.9SBVKYF6095M@cknow.org>
Message-ID: <0a1f13d06ec3668c136997e72d0aea44@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241012_124517_896086_6F2DF7D8 
X-CRM114-Status: GOOD (  16.89  )
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

Hello Diederik,

On 2024-10-12 21:27, Diederik de Haas wrote:
> On Sat Oct 12, 2024 at 7:04 PM CEST, Dragan Simic wrote:
>> Update the lower/upper voltage limits and the exact voltages for the 
>> Rockchip
>> RK356x CPU OPPs, using the most conservative values (i.e. the highest 
>> per-OPP
>> voltages) found in the vendor kernel source. [1]
>> 
>> Using the most conservative per-OPP voltages ensures reliable CPU 
>> operation
>> regardless of the actual CPU binning, with the downside of possibly 
>> using
>> a bit more power for the CPU cores than absolutely needed.
>> 
>> Additionally, fill in the missing "clock-latency-ns" CPU OPP 
>> properties, using
>> the values found in the vendor kernel source. [1]
>> 
>> [1] 
>> https://raw.githubusercontent.com/rockchip-linux/kernel/f8b9431ee38ed561650be7092ab93f564598daa9/arch/arm64/boot/dts/rockchip/rk3568.dtsi
>> 
>> Related-to: eb665b1c06bc ("arm64: dts: rockchip: Update GPU OPP 
>> voltages in RK356x SoC dtsi")
>> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
>> ---
>>  arch/arm64/boot/dts/rockchip/rk3568.dtsi |  1 +
>>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 18 ++++++++++++------
>>  2 files changed, 13 insertions(+), 6 deletions(-)
>> 
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi 
>> b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
>> index 0946310e8c12..5c54898f6ed1 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
>> @@ -273,6 +273,7 @@ &cpu0_opp_table {
>>  	opp-1992000000 {
>>  		opp-hz = /bits/ 64 <1992000000>;
>>  		opp-microvolt = <1150000 1150000 1150000>;
>> +		clock-latency-ns = <40000>;
>>  	};
>>  };
>> 
>> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi 
>> b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>> index 0ee0ada6f0ab..534593f2ed0b 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>> @@ -134,39 +134,45 @@ cpu0_opp_table: opp-table-0 {
>> 
>>  		opp-408000000 {
>>  			opp-hz = /bits/ 64 <408000000>;
>> -			opp-microvolt = <900000 900000 1150000>;
>> +			opp-microvolt = <850000 850000 1150000>;
>>  			clock-latency-ns = <40000>;
>>  		};
>> 
>>  		opp-600000000 {
>>  			opp-hz = /bits/ 64 <600000000>;
>> -			opp-microvolt = <900000 900000 1150000>;
>> +			opp-microvolt = <850000 850000 1150000>;
>> +			clock-latency-ns = <40000>;
>>  		};
>> 
>>  		opp-816000000 {
>>  			opp-hz = /bits/ 64 <816000000>;
>> -			opp-microvolt = <900000 900000 1150000>;
>> +			opp-microvolt = <850000 850000 1150000>;
>> +			clock-latency-ns = <40000>;
>>  			opp-suspend;
>>  		};
> 
> While it felt a bit much to send a patch just to remove the blank lines
> between the opp nodes, this sounds like an excellent opportunity to 
> make
> it consistent with the opp list in other DT files?

Actually, my plan is to work on the SoC binning, which will involve
touching nearly every OPP in the Rockchip DTs, and will add much more
data to each OPP node.  Thus, having empty lines as the separators
between the OPP nodes is something we should actually want, because
not having them will actually reduce the readability after the size
of the individual OPP nodes is increased.

That's the reason why I opted for having the separator lines in this
patch series, i.e. because having them everywhere should be the final
outcome, and because in this case they were already present where the
OPPs were moved or copied from.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
