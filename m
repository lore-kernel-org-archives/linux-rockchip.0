Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA89ACCFA1A
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Nov 2025 15:34:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZHFlI4/xnsGptI8tSpin/7atxdoElkMpu0AM2foKFB0=; b=GbzKWjPtB+RVZZ
	tZm67G9pXas8Y6uxhFFSxdoX/SDwIGxaZE8xH6eQsn3CGMyz5pbp+EOa8qOjdZ8a49dfr1Nf014kI
	tyaSj44kq+X2u8OkKFISyCjzZz0V1Sxm7iDEGTV1geCmcTVEfG6LFfxJMB0PLZbNbojULugUYKMwQ
	WPG8VWv3JHktYaPmkdOA19GwSSxL9VhvUDjNeJiKDbmtbcNnXeKe7GrwYO0WyF4offBEaCeweNcjv
	+R+A7vSuCJPdphCYfx3zgWpQH9oGBQl96511SgszLex3zpbYg6ravbCL5FsOaUXdrqtI34YjNA4PL
	R6VQ1PcL9NcCtnF5gpgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIqNY-00000007O2W-2DWt;
	Tue, 11 Nov 2025 15:33:56 +0000
Received: from smtpbgjp3.qq.com ([54.92.39.34])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIqNW-00000007NzG-1LBV
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Nov 2025 15:33:55 +0000
X-QQ-mid: zesmtpip3t1762875183td7307421
X-QQ-Originating-IP: YibyIjh8rVjDnM8ye+fS4TkHJ33V/iHkoULZhIFa9Bc=
Received: from [IPV6:240f:10b:7440:1:62e3:2c99 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 11 Nov 2025 23:32:57 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 14738721810001780121
EX-QQ-RecipientCnt: 23
Message-ID: <B0C8C5A69B9F465E+ba0ad139-d3d9-4492-ac9a-cc58f8f35074@radxa.com>
Date: Wed, 12 Nov 2025 00:32:57 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: rockchip: Turn all LEDs on at boot for
 Radxa boards
To: Dragan Simic <dsimic@manjaro.org>,
 Diederik de Haas <diederik@cknow-tech.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, jbx6244@gmail.com, pgwipeout@gmail.com,
 jonas@kwiboo.se, ziyao@disroot.org, amadeus@jmu.edu.cn,
 nicolas.frattaroli@collabora.com, pbrobinson@gmail.com, wens@kernel.org,
 detlev.casanova@collabora.com, stephen@radxa.com,
 sebastian.reichel@collabora.com, liujianfeng1994@gmail.com,
 andy.yan@rock-chips.com, damon.ding@rock-chips.com,
 kylepzak@projectinitiative.io, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20251111054112.55505-1-naoki@radxa.com>
 <DE5W0143QGG2.3C7SW89IJKZ4P@cknow-tech.com>
 <516e919a-42af-8707-4e75-a808df8971fd@manjaro.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <516e919a-42af-8707-4e75-a808df8971fd@manjaro.org>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: NojR6Ao/DkEDOzfxtENjUyR5ydpLQzDIDjVZNjyJyi1T78XT1dx4kcck
	M4gPmeTpda1uX1OC5Y44hco3yIaC1D5uw9e1W6umQCmxqt+mb+XWxYz79Oqedh7ZZe5RQs7
	oJyJCUD5TXifKHVm+W2ex9QtedlX8BAn7AcuMR32SwnbHOCdf90a7a9YuwoteHR5nUVqhtH
	aIF5D9aGgErZNT68B0PRwotr4Svq/cno830kziRjXJPt3X7+H38QMEt5lQE+TA8KNQU8KrL
	D6Ih2om751I4BClQ08I4RH6Kh+XUgyf82dJLQd2gDpiqJMRikvun0RarQIu4IbOVjMR927W
	q9R19wJozLHghJhjHiPaNRCU8qvOPt62oRLp8Jud5lqi96HOb4kTbyt+zunxU42nW1o3QFc
	FtGJfvT0cAWXxmRp0a1hKiWMB0s3Z/PVjjqksVil4ZyA05tb+f3BsJ5FsJXSLgyMm6DAPBp
	20ljv4maxfJUz0PzkYcznrhRF1dl+5LBDFV2VpO+c65jJezlRPvJnq9AqVdOdTvyYBhXRba
	IejIiP7MdIQeUe1Tx/0vk8n3b17UF4qfiu7mgmZOodxG0tmz6INl04aaeyUZOxovYZo/NC5
	AeYqQUNGqbnXqjNeCt3RuOCHrfb24KtnocCpJBGv4/65Eoru0NhpHmeTs5q1i9vW01in8O1
	NYNRjGRicpfIA7WtU0SNjytu7l0JecMlP6ObpKA8iMOJhoPMjt0lhkbJNmYz0YmHHHgTLym
	/8Xqg736qvl/5EH96cvhsTQaiIxP98qtOf/i5vsnU56QTJ9G+sprLOue/RVezFnYLii35Kv
	H+8dot27aa/gRfzuezs8SCrajlWHrQJKApDrkLlXqMtPf2UadX/5aRI5lJhHakMDKRX3VUD
	jHNmEdbq+5tDsVSkc3E8qunSIoa4OJETJAG/iS8ZRtlsuPi3S9Bef93QY7OW0EIwjqA8vvT
	Fd3RzxVQMC011YUNSrRG5mRpEGuxzdAZCGFrA9C2WVPDml9InhScwtbYbAfkx5HSf5Rc=
X-QQ-XMRINFO: MPJ6Tf5t3I/ycC2BItcBVIA=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251111_073354_644512_9FC72A51 
X-CRM114-Status: GOOD (  15.56  )
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

Hi Diederik, Dragan,

On 11/11/25 23:46, Dragan Simic wrote:
> Hello Diederik,
> 
> On Tuesday, November 11, 2025 14:07 CET, "Diederik de Haas" <diederik@cknow-tech.com> wrote:
>> On Tue Nov 11, 2025 at 6:41 AM CET, FUKAUMI Naoki wrote:
>>> Radxa's boards turn all LEDs on at boot(loader), but some boards don't
>>> have `default-state` property in Linux kernel tree but have it in
>>> U-Boot tree instead[1].
>>>
>>> This patch adds `default-state = "on"` for (almost) all LEDs (with a
>>> few exceptions which should be "off" such as RGB LEDs on E25 and LAN/
>>> WAN LEDs on E20C/E52C).
>>
>> I'm missing the *why* these changes would be an improvement.
>>
>> Personally, for both 'heartbeat' and 'netdev' triggers, I want them to
>> be off by default and once it gets a 'heartbeat' or a 'netdev' trigger,
>> THEN I want the LED to be on/blinking.
> 
> That's a good question for Naoki.  My own preference would also
> be to have the device's power LED turned on by U-Boot as quickly
> as possible after supplying power to the board or turning it on
> by pressing the power button.  I'm actually not a big fan of
> having all the LEDs shining for a couple of seconds or so, which
> may actually look like some error condition to me.
> 
> Having all that in mind, I may suggest that just the U-Boot's
> behavior is changed to turn the power LEDs on only.

I can't quite explain it, but...

- 1st (Power) LED

The 1st (power) LED turns on automatically/immediately without software 
intervention. (On some boards, this LED cannot be controlled by software 
at all.)

In DTS, this should be described using `default-state = "on"`. The use 
of the Linux-specific property `linux,default-trigger = "default-on"` is 
unsuitable for non-Linux environments.

- 2nd (Heartbeat) LED

The 2nd (heartbeat) LED can be controlled by software. It should be lit 
up as quickly as possible to indicate that the very first software 
(e.g., the bootloader) is running.

On Linux, usually this is used as `linux,default-trigger = "heartbeat"`. 
It indicates that kernel is running (regardless of the `default-state` 
setting), and its behavior can be modified in user space.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
