Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E36BFC5AD49
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 May 2025 08:50:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g5gDePTxl9O0RTHfYg5nR22oZ0sSquUN7oHnl0fEvsU=; b=gn8wQAlB4fIGwL
	hMKUsJt6Q4IpjCILeX/sQ5EGjiLnKIWbF5GGCXjNwEbNu5pNyK905Dr32XLWiUZygAsUrBom/hOPi
	zmNaWvk7yhOZJA09iqtPRbE5vxPOO0YkU1YxUb0XalQz2BZFlIIX1jxXrre5IQMhrxlSXdaDAMHxA
	WhvJ+Ud+3agayE56kEgMI8O5W7sZVmzVfngs+vTSDlqFOeHj996/4figK5k/BiFEuXlAmdvrE/qPX
	7w+spzh3GZqLhvF4ZQB5rM5J3XbZnDA2Cd/5AEqCbVHBbN+zkwBhAdiiNsKyj365CiA0yFiAXQEDK
	Rl5U43X+1lzadhUEHzuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKCUO-0000000CcqF-0MNZ;
	Wed, 28 May 2025 08:50:22 +0000
Received: from m16.mail.163.com ([117.135.210.4])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKCUK-0000000CcoR-1yFd;
	Wed, 28 May 2025 08:50:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:To:Subject:Content-Type:MIME-Version:
	Message-ID; bh=Q/Kz/3SM6qMlxK4FSVI0nwRtn+UkFkCaBDdk8+T5tYc=; b=N
	nWYVRPSt9m92/Gn7VY4ZUuEqbwwnAbRw5+pW4GB/CSIO17d6Vc552qtDu3a+gIhj
	9P+v0CQDqArbn4Kfi3dtJWthUkg2hD9IQb/fp38ECY8pAivdDz3Ojw765MK4ktP1
	PG5QLZ0pP+vc7b93D9xERUOsExTTf0UWuc/c87L+fU=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-128 (Coremail) ; Wed, 28 May 2025 16:49:53 +0800
 (CST)
X-Originating-IP: [58.22.7.114]
Date: Wed, 28 May 2025 16:49:53 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Nicolas Frattaroli" <nicolas.frattaroli@collabora.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org, simic@manjaro.org,
	krzk+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org,
	conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, algea.cao@rock-chips.com,
	"Andy Yan" <andy.yan@rock-chips.com>
Subject: Re:Re: [PATCH v2] arm64: dts: rockchip: Adjust the HDMI DDC IO
 driver strength for rk3588
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2025 www.mailtech.cn 163com
In-Reply-To: <3704844.aeNJFYEL58@workhorse>
References: <20250522020537.1884771-1-andyshrk@163.com>
 <3704844.aeNJFYEL58@workhorse>
X-NTES-SC: AL_Qu2fCviZvUki5SKQZukfmkcVgOw9UcO5v/Qk3oZXOJF8jA7p4wscQHpOAWbq0cyIMRyRnBWaVRtWyPRTR6hlT6sb/yONQoqn4Ld8lYww2OFEbg==
MIME-Version: 1.0
Message-ID: <9ffd480.852d.19716157087.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: gCgvCgD3X+UxzjZopHQPAA--.35457W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBkAJbXmg2ya2jJQABsq
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_015016_845630_9D3E2AF4 
X-CRM114-Status: GOOD (  14.15  )
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


Hello Nicolas,

At 2025-05-27 19:53:56, "Nicolas Frattaroli" <nicolas.frattaroli@collabora.com> wrote:
>On Thursday, 22 May 2025 04:05:24 Central European Summer Time Andy Yan wrote:
>> From: Andy Yan <andy.yan@rock-chips.com>
>> 
>> For the RK3588 HDMI controller, the falling edge of DDC SDA and SCL
>> almost coincide and cannot be adjusted by HDMI registrer, resulting
>> in poor compatibility of DDC communication.
>> 
>> An improvement of the compatibility of DDC can be done by increasing
>> the driver strength of SCL and decreasing the driver strength of SDA
>> to increase the slope of the falling edge.
>> 
>> It should be noted that the maximum driving strength of hdmim0_tx1_scl
>> is only 3, which is different from that of the other IOs.
>> 
>> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
>> 
>> ---
>> 
>> Changes in v2:
>> - Correct the max drive level of hdmim0_tx1_scl.
>> 
>>  .../dts/rockchip/rk3588-base-pinctrl.dtsi     | 20 +++++------
>>  .../dts/rockchip/rk3588-extra-pinctrl.dtsi    |  5 +--
>>  .../boot/dts/rockchip/rockchip-pinconf.dtsi   | 35 +++++++++++++++++++
>>  3 files changed, 48 insertions(+), 12 deletions(-)
>> 
>
>Tested-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
>
>Quickly tested this on both HDMI ports of a ROCK 5T with an HDMI capture
>card on the other end. While I didn't originally have any issues to begin
>with, this patch does not introduce any new ones, so seems good to me.


Thanks for yout test.

I sent this patch because someone from the community reported to me that his board
couldn't successfully establish ddc communication when running the mainline kernel.
After conducting extensive comparisons, it was discovered that there were differences
in the IO drive strength configuration between mainline code and the downstream code. 
Then, I recalled that during the chip bringup process and when conducting the SI test, 
we had encountered this problem before, and we did the fix by adjusting DDC IO drive strength.
>
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
