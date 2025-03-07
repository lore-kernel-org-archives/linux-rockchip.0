Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58946C282DE
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Mar 2025 06:47:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/2xvnDOXP3996DCC6wh8P8zRUUiPCMl+djcqtb/GY2c=; b=SKpYv+aVCgtKjP
	59OWipuNoIc7SMrJuX6yaP8qteNBTmzIRlDCeWXzKgmeL+Yb/3lACIz2QyNp65EoXgmUrxmOy4tI7
	XpA7z+5bGgGU86InBClGP3orIZdq1EEpl9vQHwThtw/x5q+pBwTjtZoiGpgl0W2Ocpd9OF1kdG6kB
	r2NZR3CP9vR9sRuoJKItLwg6mSpK76nqyxwwVHhh0KMpgYUzt7vyY32XHDWESzwYqCfkTUOoAeMvJ
	+yfMFvyP9NNNtZlH24GTpCXOQiJSWJKcnCIqeTvd11yoLs6eBuatsL+p+gg54l0nVcOA2dcIdPJHA
	0wEn/M8Q8EbaVHEQiRVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqRU6-0000000DLxs-10kX;
	Fri, 07 Mar 2025 06:47:02 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqRST-0000000DLo9-1xw8
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Mar 2025 06:45:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1741329918;
 bh=xrrqReRVP8vJeyg5PfphNvWCkrOXLcDZ4zm3kNo2Lt8=;
 b=pjCtJkv+RzD8x8GutHptv9KqtpwNf2xNFQ8LgYZDQ/EEmnHsE3yPLpYf5NCldec3TsZPDbdsA
 Fy8GJfabof5Pq01XxztOXLmpX/elNqxmKs81rC8gvjOMD1+h2uLFdoqo9EFx4m7/IlqJXfFxGNI
 NPUs4Jr7lMCqA8DHbs1zisw5WUXfsziN6hd5WzMiikM5TvBixzB4H0DZX6XSyvkZqdAwbnp3ckI
 VPsl1b0iR8gVYvgfj9OtTd+5a+dSfbPCB00B/6l037XypNVTvoQweC2gaIPjv5bqV7S1XdyZjwu
 6cTBwl1MvVqFvPRl/pb4WwInc3YjMAu5LYC0re3awKeA==
X-Forward-Email-ID: 67ca95f1d992817a57e34193
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <5a0a7ce1-1dfb-4d19-8a1e-0d89d177f5b8@kwiboo.se>
Date: Fri, 7 Mar 2025 07:45:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 8/8] arm64: dts: rockchip: Enable SD-card interface on
 Radxa E20C
To: Yao Zi <ziyao@disroot.org>, Chukun Pan <amadeus@jmu.edu.cn>
References: <20250305194638.47187-1-ziyao@disroot.org>
 <20250307033508.656479-1-amadeus@jmu.edu.cn> <Z8qJqpUwi7VV8tJk@pie>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <Z8qJqpUwi7VV8tJk@pie>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_224521_860879_F54266E5 
X-CRM114-Status: GOOD (  13.58  )
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
Cc: detlev.casanova@collabora.com, conor+dt@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, krzk+dt@kernel.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Chukun,

On 2025-03-07 06:52, Yao Zi wrote:
> On Fri, Mar 07, 2025 at 11:35:08AM +0800, Chukun Pan wrote:
>> Hi,
>>
>>> +&sdmmc {
>>> +	bus-width = <4>;
>>> +	cap-mmc-highspeed;
>>> +	cap-sd-highspeed;
>>> +	disable-wp;
>>> +	no-sdio;
>>
>> With 'no-sdio' property:
>> [  129.608986] mmc_host mmc1: Bus speed (slot 0) = 400000Hz (slot req 400000Hz, actual 400000HZ div = 0)
>> [  130.711168] mmc1: Card stuck being busy! __mmc_poll_for_busy
>> [  130.725536] mmc_host mmc1: Bus speed (slot 0) = 300000Hz (slot req 300000Hz, actual 300000HZ div = 0)
>> [  131.751240] mmc1: Card stuck being busy! __mmc_poll_for_busy
>> [  131.765608] mmc_host mmc1: Bus speed (slot 0) = 200000Hz (slot req 200000Hz, actual 200000HZ div = 0)
>> [  132.825083] mmc1: Card stuck being busy! __mmc_poll_for_busy
>> [  132.839413] mmc_host mmc1: Bus speed (slot 0) = 187500Hz (slot req 187500Hz, actual 187500HZ div = 0)
>> [  133.960141] mmc1: Card stuck being busy! __mmc_poll_for_busy
>>
>> Without 'no-sdio' property:
>> [  105.224019] mmc1: error -22 whilst initialising SDIO card
>> [  106.290838] mmc1: Card stuck being busy! __mmc_poll_for_busy
>> [  106.801931] dwmmc_rockchip ffc30000.mmc: Busy; trying anyway
>> [  107.385835] mmc_host mmc1: Timeou sending command (cmd 0x202000 arg 0x0 status 0x80202000)
>> [  107.400425] mmc_host mmc1: Bus speed (slot 0) = 300000Hz (slot req 300000Hz, actual 300000HZ div = 0)
>> [  107.431561] mmc_host mmc1: Bus speed (slot 0) = 49800000Hz (slot req 50000000Hz, actual 49800000HZ div = 0)
>> [  107.433107] mmc1: new high speed SDIO card at address 0001
> 
> So it seems the sdmmc controller actually works with SDIO commands as
> well? I don't expect that since the datasheet says RK3528 has only two
> SDIO 3.0 controllers.
> 
> We could remove the "no-sdio" property if SDIO actually works. Will
> apply it in the next version if there's no objection against this.

On the E20C the sdmmc controller is routed to a microSD card slot mainly
intended for use with microSD-cards and should normally not need SDIO.

What card/adapter do you have inserted in the microSD card slot that
requires use of SDIO instead of just SD or MMC? What is the use case you
have that requires removal of no-sdio on E20C?

Regards,
Jonas

> 
> Further tests about the capabilities of the controller are welcome.
> 
>> # cat /sys/kernel/debug/mmc1/ios
>> clock:          50000000 Hz
>> vdd:            21 (3.3 ~ 3.4 V)
>> bus mode:       2 (push-pull)
>> chip select:    0 (don't care)
>> power mode:     2 (on)
>> bus width:      2 (4 bits)
>> timing spec:    2 (sd high-speed)
>> signal voltage: 0 (3.30 V)
>> driver type:    0 (driver type B)
>>
>> Thanks,
>> Chukun
>>
>> -- 
>> 2.25.1
>>
> 
> Best regards,
> Yao Zi


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
