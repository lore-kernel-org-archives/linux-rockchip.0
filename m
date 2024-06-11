Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8FA5C25B76
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Jun 2024 13:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9rpvK0yBcbGcsKqsb5ZKfXU51j+n0VS4q2NVXvMTi0g=; b=BXt1TNgDRnmOfZQEisvIgVD4lA
	Jv8RJsA8XjqPbW5d/zDeFc8v2VJkltw6lQoj5lnGWxJFMHFPGv4jrVZ/JyEcTzGgO4irGg65U9rd1
	xGqgVobr4JdGrfxXK60oXcX3YebvSb7RXmYza8TS3x5JGnQ0BXQk39y9Zy8vX5otgVWnjZEdw/fIF
	BojD/dvhY6OkElezzfj3Jv5fV21JO9yPHtXWXlxHoNshx2swX3lho6itjGek+fLmDqK4Jz4GYQb37
	nvZ2vIcNo2K6XBb/wCJBlX+LsMr0gGQlkH/LquhhuxzmcHiPf94QK7k2J2UwAogYIIv0fCt7k7IYr
	4KzNdCrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sH1oM-000000092ll-3mHq;
	Tue, 11 Jun 2024 13:45:18 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sH1oK-000000092kd-0XyT
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Jun 2024 13:45:17 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1718113512;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Mq+XUbOQTasbljOXG9FBMpNsbA7KaBvpm+EiPTkx5jc=;
	b=laDIbpetIWRCx+4xc5V97cy6sqdkD4+CBP+ua3/W3LmK8WU4kHCiVayQDNQNdXouzjmyij
	wOqGNzBmyBtDLiLXIVUFJHRYJUWlEUdEjhmLQxNEY8KVj2YZ5MiLnDRtXGWFKQFh4IqujM
	myLKWH5l5HXw1FuO8AVsY9IwecsXgHcr3YOD0+LtHmLnDe10YP24fJ3JmhVSkxQLOTZ0VZ
	XyNWbIaKjxjcPx/w1bOF+7ixYeTCyGkoz92dJyHGSiC8gRQKCoVvZpR5h3P4OSrzpiTPyk
	w9N1JPtSFONdLNMkQqSHMmP+qEG3qRzie986WQb821mP3yVdRtpaMsSw4a65zQ==
Date: Tue, 11 Jun 2024 15:45:12 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: make "poweroff" work on rock-5a
In-Reply-To: <f623e316c7f94a318c78da9c48f66dc7@manjaro.org>
References: <20240611122746.751-1-naoki@radxa.com>
 <f623e316c7f94a318c78da9c48f66dc7@manjaro.org>
Message-ID: <bf202a47cc6453d5aaacf09a29009380@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240611_064516_364279_43F0B800 
X-CRM114-Status: GOOD (  14.00  )
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

On 2024-06-11 15:37, Dragan Simic wrote:
> Hello Fukami,
> 
> On 2024-06-11 14:27, FUKAUMI Naoki wrote:
>> to make "poweroff" command work, add "system-power-controller;" into
>> pmic@0. without this, "poweroff" works as same as "reboot".

Sorry, I forgot to add that the description above could be reworded
a bit, e.g. not to repeat what's already visible in the patch itself.

For example:

     Designate the RK806 PMIC on the Radxa ROCK 5A as the system power
     controller, so the board shuts down properly on poweroff(8).

The patch subject could also be tweaked a bit, e.g. to refer to the
board as "Radxa ROCK 5A".

>> Fixes: 75fdcbc8f4c1 ("arm64: dts: rockchip: add PMIC to rock-5a")
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> 
> Looking good to me, with a small remark below.
> 
> Reviewed-by: Dragan Simic <dsimic@manjaro.org>
> 
>> ---
>>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 2 ++
>>  1 file changed, 2 insertions(+)
>> 
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
>> b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
>> index b070955627be..cf7b878a3eb2 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
>> @@ -395,6 +395,8 @@ pmic@0 {
>>  			    <&rk806_dvs2_null>, <&rk806_dvs3_null>;
>>  		spi-max-frequency = <1000000>;
>> 
> 
> I don't think there's need for the empty line right above, i.e.
> between the "spi-max-frequency" and "system-power-controller" lines.
> 
>> +		system-power-controller;
>> +
>>  		vcc1-supply = <&vcc5v0_sys>;
>>  		vcc2-supply = <&vcc5v0_sys>;
>>  		vcc3-supply = <&vcc5v0_sys>;
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
