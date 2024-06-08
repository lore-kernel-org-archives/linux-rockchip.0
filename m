Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF99FC25B76
	for <linux-rockchip@archiver.kernel.org>; Sat,  8 Jun 2024 17:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=suVV7VWiFtPbemJXtnW2b/+pB0E51LRCa9lesVQnkXw=; b=ggon1A74Ri3dU1
	+0wc+EqepIxodzqqRLJEz0/ZzFhXOUBXNhJvvLMEHGsVjfokvJ+xitjnT0NV8baJGpiDRBYKFOyzN
	192PvR0raSbPXXSf/MOCAvMTa7syjp82lm+t8gFN1srKag9zJlpbSrS2abPaw0drnfoDfUtOg8jfg
	/t8cE1tBM4boP56aBZl77+GBl+JQPQzDYV3e5sqnJ4xdqu6di3qEUcG2V5goy0b8lMfZUpujUPuq1
	P8zKeTZOFkyZAIDJCFPv8Wt1jq1vRCpEZZ8cvKyGrKhdoXN2V7an/HQ0GjhqTlQqktMz0KeOo5Pn5
	fkCeodukUcc64W1T9ttg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFzli-00000000Pez-3KEO;
	Sat, 08 Jun 2024 17:22:18 +0000
Received: from shout12.mail.de ([2001:868:100:600::f154])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFzld-00000000PeC-3D2v;
	Sat, 08 Jun 2024 17:22:16 +0000
Received: from shout02.mail.de (unknown [10.0.120.222])
	by shout12.mail.de (Postfix) with ESMTPS id CD59324195D;
	Sat,  8 Jun 2024 19:22:07 +0200 (CEST)
Received: from postfix02.mail.de (postfix02.bt.mail.de [10.0.121.126])
	by shout02.mail.de (Postfix) with ESMTP id 7CB59240D28;
	Sat,  8 Jun 2024 19:22:07 +0200 (CEST)
Received: from smtp01.mail.de (smtp03.bt.mail.de [10.0.121.213])
	by postfix02.mail.de (Postfix) with ESMTP id 56B9FA00E2;
	Sat,  8 Jun 2024 19:22:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mail.de;
	s=mailde202009; t=1717867327;
	bh=nTqQvFr46P0vv3NLlWh3QruttC5WiwbWCLiZjuxYiw4=;
	h=Message-ID:Date:Subject:To:Cc:From:From:To:CC:Subject:Reply-To;
	b=QtPq22zkCst/3Odw3H+ZrzKPc1+PJfy5CFLdCIEFwWJf+Ty5hUeca2pvr47pY4cQ6
	 haBxMXq9Ugs0o2vgBln2sBpNoVHcggwHiOUWQ3mO/Q1MDc6YjFK2SQY1IhjiVzSYxw
	 dQGcHZsD/nDFfUuQ4YlvPcXCq+O6Rnr8/tFqFvfX660fttgMej8ZcQA0FOF9Cw04Sp
	 7q8+1n0+RTvUKgS6I7+4QpMmUItv++HH3CH0RHDgFGIc7CERs2Sfx98Rj6N2jiDQir
	 ExM4+gGeZPlqpzkBS+i/9W8EEKtx5AZEjBS8wYbMn6tcoSSm2WhOoF8oY+mTHfnyvi
	 qUzdmukmKW3lQ==
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp01.mail.de (Postfix) with ESMTPSA id E0C8124009E;
	Sat,  8 Jun 2024 19:22:02 +0200 (CEST)
Message-ID: <f5cfcf3e-27e5-464a-9adf-261753ad6de7@mail.de>
Date: Sat, 8 Jun 2024 19:22:01 +0200
MIME-Version: 1.0
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add FriendlyElec CM3588 NAS
 board
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Space Meyer <me@the-space.agency>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
 Dragan Simic <dsimic@manjaro.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240602211901.237769-1-seb-dev@mail.de>
 <20240602202132.2012-2-seb-dev@mail.de>
 <c4087311-cbd2-415e-a582-3565f2f62e81@the-space.agency>
 <11747652.CDJkKcVGEf@phil>
From: Sebastian Kropatsch <seb-dev@mail.de>
In-Reply-To: <11747652.CDJkKcVGEf@phil>
X-purgate: clean
X-purgate: This mail is considered clean (visit http://www.eleven.de for further information)
X-purgate-type: clean
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: This mail is considered clean (visit http://www.eleven.de for further information)
X-purgate: clean
X-purgate-size: 2691
X-purgate-ID: 154282::1717867327-31E241F9-A930B556/0/0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240608_102214_005276_7C058553 
X-CRM114-Status: GOOD (  16.84  )
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

Hello,

Am 08.06.2024 um 16:38 schrieb Heiko Stuebner:
> Am Donnerstag, 6. Juni 2024, 15:13:20 CEST schrieb Space Meyer:
>> On 02.06.2024 22:20, Sebastian Kropatsch wrote:
>>> Some RK3588 boards are still using this property, the following quote
>>> is from rk3588-tiger-haikou.dts for example:
>>>       &sdmmc {
>>>           /* while the same pin, sdmmc_det does not detect card changes */
>>>           cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
>>>
>>> I am unsure as to whether this comment from the quote might apply for
>>> the CM3588 as well. Please let me know if you are able to tell :-)
>>
>> I don't quite understand this. However GPIO0_A4 *is* routed to the micro
>> sd CD according to the NAS schematic, page 16 around A5.
> 
> for the actual sdmmc_det functionality ... possibly some pinconfig thing?
> I.e. pull-whatever settings?

I have no idea. I just removed the "cd-gpios" line in v2 due to a
suggestion by Jonas Karlman and then stumbled over this comment.
So I'm not sure whether to include or not include this property
for the CM3588 NAS since I don't know the consequences.
Probably in the end it doesn't even matter :)

>>> +	vcc_3v3_pcie30: regulator-vcc-3v3-pcie30 {
>>> +		compatible = "regulator-fixed";
>>> +		regulator-name = "vcc_3v3_pcie30";
>>> +		regulator-always-on;
>>> +		regulator-boot-on;
>>> +		regulator-min-microvolt = <3300000>;
>>> +		regulator-max-microvolt = <3300000>;
>>> +		vin-supply = <&vcc_5v0_sys>;
>>> +	};
>>
>> These are 4 seperate regulators according to the schematic. However, as
>> they are all fixed, idk if they should be split or kept like this.
> 
> personally, I really like the power-diagram to match schematics.
> I.e. $debugfs/regulator/regulator_summary will produce a really nice
> graph of all the system's regulators, so it's definitly nice if the
> hirarchy matches. Also prevents head-scratching later on ;-)

These are indeed 4 different regulators according to the schematic.[1]
But they don't have any pin to control them separately. I can
duplicate them 4 times if that's the preferred practice.

But matching the schematics won't be possible either way, since
e.g. there is only one single 5v regulator acc. to the schematic
(vcc_5v0_sys), but vcc_5v0_host_20, vcc_5v0_host_30, vbus_5v0_typec
and so on are needed since each device has a different control pin
to enable its power. Or is there a better way to solve this while
having only one 5v regulator node but still being able to set the
control pins separately for the different USB ports?

Cheers,
Sebastian

[1] 
https://wiki.friendlyelec.com/wiki/images/1/15/CM3588_NAS_SDK_2309_SCH.PDF


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
