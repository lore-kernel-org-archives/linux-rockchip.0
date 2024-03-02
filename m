Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 569D6C54798
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Mar 2024 18:38:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3kxKk5LSmdCvzTjMq8sSnNamfWnm0I452S+T1HWEAMw=; b=Xoyfu6XEdmVcEq38Ulh6U52/4A
	vVxyLJ42c8SA0SecZYll1vxQczquZeQv2hs8dVPHwONd+fQ2xOcSHlkuco6OatFea8R5Quy4tKieu
	J+aquVuRUDuK4BDikIZ+VNiun89Az2/mLKIyLDdjdfnV+doJle+ndNv+aJjRTa6iTBg7um7MDGHDR
	oI5XcqxuB8AsXc7r7cL+aIMrgcsmLAVqDxS9sOwVm6Az1oatyASAeM5jr2QuBptkMqOeHSyb7yIAv
	lhLBEJlW04zZw65sc4ARnbYUvC9fKPqsLjHs5ZnKAr08h+KqDnA7F++PKdCBK/ST+ud7pg7+Cksac
	BR7yjOiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rgUFd-00000004B20-3LdW;
	Sat, 02 Mar 2024 18:38:25 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rgUFY-00000004B02-2xet;
	Sat, 02 Mar 2024 18:38:23 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1709404695;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=g8ZlwO6znWmhb0i3vL98mOnE4UFnlmkSb9Ze7dDbIvw=;
	b=aVO2U4iyixRmN8pxd49qgP99L5UhCddPgPtNq8RIiNWeg6l8r1BUftxz9RgrDpQT778eCk
	ks4k3prN2Bb8e7SZNg+w5ypo/sTvkfwBIzdbdMMRnd75FLxasKhkWTxBDjmyxv0D6v/nP8
	fsqRR5WQaDPso4IYQv/BYzq6/3z8qvYsCko3wfdpzbZ8+wAIOvogabY5hvTnoUxOJ2jdxG
	N/HoC4I9ozA1MwXONMEfC0tevvu8BExiFIHDYIDlkPVEPek1FogRQkva+xLIB5PYVOsmlD
	SecLkbeFJ0N+1Mskhvn5/yD+PEqYk7zO8sN5Cr40zOTtnr3DdInkrptklCPQQw==
Date: Sat, 02 Mar 2024 19:38:14 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Alexey Charkov <alchark@gmail.com>, Daniel Lezcano
 <daniel.lezcano@linaro.org>, Viresh Kumar <viresh.kumar@linaro.org>, Chen-Yu
 Tsai <wens@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/5] arm64: dts: rockchip: enable built-in thermal
 monitoring on RK3588
In-Reply-To: <6279836.31r3eYUQgx@phil>
References: <20240229-rk-dts-additions-v3-0-6afe8473a631@gmail.com>
 <20240229-rk-dts-additions-v3-1-6afe8473a631@gmail.com>
 <6279836.31r3eYUQgx@phil>
Message-ID: <3f73d847fbe9d7f6dd05802eb7e47d49@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240302_103821_399800_01F2F34E 
X-CRM114-Status: GOOD (  23.93  )
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

Hello Heiko,

On 2024-03-02 12:25, Heiko Stuebner wrote:
> Am Donnerstag, 29. Februar 2024, 20:26:32 CET schrieb Alexey Charkov:
>> Include thermal zones information in device tree for RK3588 variants.
>> 
>> This also enables the TSADC controller unconditionally on all boards
>> to ensure that thermal protections are in place via throttling and
>> emergency reset, once OPPs are added to enable CPU DVFS.
>> 
>> The default settings (using CRU as the emergency reset mechanism)
>> should work on all boards regardless of their wiring, as CRU resets
>> do not depend on any external components. Boards that have the TSHUT
>> signal wired to the reset line of the PMIC may opt to switch to GPIO
>> tshut mode instead (rockchip,hw-tshut-mode = <1>;)
>> 
>> It seems though that downstream kernels don't use that, even for
>> those boards where the wiring allows for GPIO based tshut, such as
>> Radxa Rock 5B [1], [2], [3]
>> 
>> [1] 
>> https://github.com/radxa/kernel/blob/stable-5.10-rock5/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts#L540
>> [2] 
>> https://github.com/radxa/kernel/blob/stable-5.10-rock5/arch/arm64/boot/dts/rockchip/rk3588s.dtsi#L5433
>> [3] https://dl.radxa.com/rock5/5b/docs/hw/radxa_rock_5b_v1423_sch.pdf 
>> page 11 (TSADC_SHUT_H)
>> 
>> Signed-off-by: Alexey Charkov <alchark@gmail.com>
>> ---
>>  arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 176 
>> +++++++++++++++++++++++++++++-
>>  1 file changed, 175 insertions(+), 1 deletion(-)
>> 
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi 
>> b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
>> index 36b1b7acfe6a..9bf197358642 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
>> @@ -10,6 +10,7 @@
>>  #include <dt-bindings/reset/rockchip,rk3588-cru.h>
>>  #include <dt-bindings/phy/phy.h>
>>  #include <dt-bindings/ata/ahci.h>
>> +#include <dt-bindings/thermal/thermal.h>
>> 
>>  / {
>>  	compatible = "rockchip,rk3588";
>> @@ -2225,7 +2226,180 @@ tsadc: tsadc@fec00000 {
>>  		pinctrl-1 = <&tsadc_shut>;
>>  		pinctrl-names = "gpio", "otpout";
>>  		#thermal-sensor-cells = <1>;
>> -		status = "disabled";
>> +		status = "okay";
>> +	};
> 
> so I've skimmed over the general discussion, though don't have a hard
> opinion in either direction yet. Still there are some low-hanging 
> fruit:
> 
> - having the thermal-zones addition in a separate patch would allow to
>   merge the obvious stuff, while this discussion is still ongoing

Very good suggestion.

> - status=okay in a soc dtsi is wrong, because okay is the default 
> status
>   so if anything the status property should be removed
> 
> In general I'm not that much of a fan of things just working 
> implicitly.
> So somehow, when someone submits a board devicetree, I expect them to
> having ensured stuff is enabled somewhat ok. So even seeing a simple
> 
> 	&tsadc {
> 		status = "okay"
> 	};
> 
> suggests that they have at least noticed the existence of thermal 
> stuff.

I agree that having such additional "signed-off markers", so to speak, 
in
a board dts is quite assuring.  I mean, someone implementing a new dts 
file
for a new board should simply know what needs to be done there, and 
there
should be no excuses for not checking the thermal throttling stuff.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
