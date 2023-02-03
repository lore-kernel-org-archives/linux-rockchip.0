Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06D5EC61DA4
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Feb 2023 16:56:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:From:References:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QQLeDUePuJxzHVjvoxMV+ee/hFLUhgXJ1gmVA6TguOU=; b=oMw5kNWVvUW7rH
	3gKGINDRBZonic6h+psnJhlNwOPRbzyZarCtuVIWExCJaxAQO7gepPZ5lX6ixvYkZZZNK8xHqFZUn
	0pBi4ajhrAVTg1+cO5wrkmtdvN/hPWn0vNkFPW4Ji0HBb+lSfcO0/2Wf7KGOTXel6wScTHchscFEO
	GGBBUJtraa5jHdMIVrzSyuD3xnrwIQhcHQhGKRmmWuIEJtVqTKaTIURI41xI1ZY5zoMexNDPLJvcM
	CpPO74YYr0jPX8Be33Tbphrk3ZybX9aoO9vHU+1gcnpH4+0Z8zRZ5r5oWGUDr5gayqufBJrV3Fssf
	Pb3VwbrCc/HJKlcDvFGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNzMF-0030aW-01; Fri, 03 Feb 2023 16:56:15 +0000
Received: from xvfrqvdb.outbound-mail.sendgrid.net ([168.245.72.219])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNzM8-0030Zd-0u
	for linux-rockchip@lists.infradead.org; Fri, 03 Feb 2023 16:56:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=mime-version:subject:references:from:in-reply-to:to:cc:content-type:
	content-transfer-encoding:cc:content-type:from:subject:to;
	s=s1; bh=tgnffy1kLdc2rjXQ3zkCmWRoKKxovZ0GRL3XLjt079Y=;
	b=VmrNUX/0+SDIR1GZWNvOr5o2TV/73C9H1WXUhLrWQCrZjrl8EJDMd/lpYTI0oxYB6tAb
	SfmrQVkGJDzZOvK35wyt61BiDF7eCPLFZy98ZNaCysN0Dmcx2yz2JoQ11tGd1edVWYdfCd
	h8GOr1TK6lvORO3I7Epkj4CgrXwz2/pOEMkc/HwjmUblg0pejdGAZFo+6r7e22feINxf+u
	5IMqNlAieaNyup/wGvZ/aVwZ6eibeb/2dP3s1sMNsTOmDJIwjhL89DVzFBKVkdvA1rvolk
	1rH4A42MqXOKA+SXYpi0ur4WbKeTt50JIXpoY4YJ1rRCx8Au7zsy/QmvwbzL7hzw==
Received: by filterdrecv-6b9548745c-6wb9t with SMTP id filterdrecv-6b9548745c-6wb9t-1-63DD3CA1-2D
        2023-02-03 16:56:01.672165427 +0000 UTC m=+6716871.650146100
Received: from [192.168.1.50] (unknown)
	by geopod-ismtpd-1-0 (SG) with ESMTP
	id EyEL--W5SfqdBEXeFMRuxg
	Fri, 03 Feb 2023 16:56:01.309 +0000 (UTC)
Message-ID: <4a8f98c6-4de0-06ff-9711-5d85fc6f91f9@kwiboo.se>
Date: Fri, 03 Feb 2023 16:56:01 +0000 (UTC)
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v3 0/3] drm/rockchip: dw_hdmi: Add 4k@30 support
References: <20230118132213.2911418-1-s.hauer@pengutronix.de>
 <20230131080928.GG23347@pengutronix.de>
 <3C4B67628F8D73D6+63ea74ac-b8a2-45b1-5f92-8c7868906687@radxa.com>
 <20230203130943.GX13319@pengutronix.de>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20230203130943.GX13319@pengutronix.de>
X-SG-EID:  =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h0KimEuIF=2FjO+XcZ2?=
 =?us-ascii?Q?lcfeQNZ9tFeyNj4LUPJiEj8ONG6wnLZUd+vtfk1?=
 =?us-ascii?Q?F4vMzDmlIyVB=2F02jdZ1XQeWyyfDLm=2FERsJwqVPp?=
 =?us-ascii?Q?hVRdoWv3OvzqMnR9DSTJC0sZfdJLURVMCXPSpcO?=
 =?us-ascii?Q?c0KeqYqIQTmzF+PU7Evkr1J8dXRdYFBl78eu3jg?=
 =?us-ascii?Q?fqN=2FlcjYyt91h1+Lqt1rw=3D=3D?=
To: Sascha Hauer <s.hauer@pengutronix.de>, FUKAUMI Naoki <naoki@radxa.com>
Cc: Dan Johansen <strit@manjaro.org>, Sandy Huang <hjc@rock-chips.com>,
	dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
	Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
	Robin Murphy <robin.murphy@arm.com>
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_085608_805686_C9474BF9 
X-CRM114-Status: GOOD (  32.37  )
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

Hi,
On 2023-02-03 14:09, Sascha Hauer wrote:
> Hi,
> 
> On Wed, Feb 01, 2023 at 09:23:56AM +0900, FUKAUMI Naoki wrote:
>> hi,
>>
>> I'm trying this patch series with 6.1.x kernel. it works fine on rk356x
>> based boards (ROCK 3), but it has a problem on rk3399 boards (ROCK 4).
>>
>> on rk3399 with this patch, I can see large noise area (about one third right
>> side of the screen) at 4k@30. 1080p works fine as same as before.
>>
>> can someone reproduce this problem on rk3399?
> 
> I have a RK339 board here, I can try to reproduce this next week. Of
> course I have no idea what the issue might be, in the downstream Kernel
> I can't find anything that is handled specially for the RK3399.
> 
> What might be worth checking is the VOP clock rate. Does the VOP clock
> in /sys/kernel/debug/clk/clk_summary (I don't know which one it is
> though) match the pixelclock?
> 
> If nothing else helps I can change the code to only allow the higher
> resolutions on RK3568 where we know it works.

This series only seem to pick up part of the dw-hdmi related changes that
originates from an old chromium 4.4 kernel. Maybe that is the reason
this cause issues on other SoCs?

I have very recently resumed kernel coding after being away for the last
2-3 years and was planning on resuming work on a HDMI 2.0 series based on
old work at [1], [2] and [3]. Those patches never got any traction last
time around, maybe there is more interest now, seeing this series :-)

I was planning on basing such series on top of this, but seeing how this
seem to have issues on other SoCs I am not sure how to proceed.

With the patches at [3] (and related patches) HDMI 2.0 modes (4K@60hz)
is possible with at least RK3288, RK3328, RK3399 and RK3568 SoCs.
However, those patches needs to be cleaned up a bit before they will
hit the mailing list.

[1] https://lore.kernel.org/all/20200108210740.28769-1-jonas@kwiboo.se/
[2] https://lore.kernel.org/all/20200922205933.5540-1-jonas@kwiboo.se/
[3] https://github.com/LibreELEC/LibreELEC.tv/blob/master/projects/Rockchip/patches/linux/default/linux-1000-drm-rockchip.patch

Regards,
Jonas

> 
> Sascha
> 
>>
>> --
>> FUKAUMI Naoki
>>
>> On 1/31/23 17:09, Sascha Hauer wrote:
>>> Heiko, Sandy,
>>>
>>> Ok to apply these patches?
>>>
>>> Sascha
>>>
>>> On Wed, Jan 18, 2023 at 02:22:10PM +0100, Sascha Hauer wrote:
>>>> It's been some time since I last sent this series. This version fixes
>>>> a regression Dan Johansen reported. The reason turned out to be simple,
>>>> I used the YUV420 register values instead of the RGB ones.
>>>>
>>>> I realized that we cannot achieve several modes offered by my monitor
>>>> as these require pixelclocks that are slightly below the standard
>>>> pixelclocks. As these are lower than the standard clock rates the PLL
>>>> driver offers the clk driver falls back to a way lower frequency
>>>> which results in something the monitor can't display, so this series
>>>> now contains a patch to discard these unachievable modes.
>>>>
>>>> Sascha
>>>>
>>>> Changes since v2:
>>>> - Use correct register values for mpll_cfg
>>>> - Add patch to discard modes we cannot achieve
>>>>
>>>> Changes since v1:
>>>> - Allow non standard clock rates only on Synopsys phy as suggested by
>>>>    Robin Murphy
>>>>
>>>> Sascha Hauer (3):
>>>>    drm/rockchip: dw_hdmi: relax mode_valid hook
>>>>    drm/rockchip: dw_hdmi: Add support for 4k@30 resolution
>>>>    drm/rockchip: dw_hdmi: discard modes with unachievable pixelclocks
>>>>
>>>>   drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 40 ++++++++++++++++-----
>>>>   1 file changed, 32 insertions(+), 8 deletions(-)
>>>>
>>>> -- 
>>>> 2.30.2
>>>>
>>>>
>>>
>>
>>
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
