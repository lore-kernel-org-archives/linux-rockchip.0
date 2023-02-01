Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36754C636CC
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Feb 2023 00:25:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o6jprsJrIdZWLPK8rZloFif9DtPusBI2NDzUng4JVCI=; b=iYG16uQPUKE5mg
	NaN0o5aNAqjkB3UUOXO+YiNNGZljgg779Y2RERl9Q8wFsmUgX72V6xsvpaEXMX7MQRW4FxAf0sUGS
	u786OAW2zvih5hbwe85nZ0AqhDjuH5OFkeGLZGHos5yX2OeBeemVeqzwbDYSAfJ9mvX6c3TOP9ZgN
	WsOjclF03Smjb6JmDON7bzstvejy+WfFfxDINndLJpQyYmOPazm3N8dJIOPgnx8hDT0zGh9zZebEI
	6hge8IE0kDv/QqpA+70p/VT/64nFGZsOI5YapAFkxlROOxiugityTNpjBYQH+F9IzDrC0G7VCoBmm
	8i8SixZro0ArTArhYspw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pN0wZ-009mIE-Dx; Wed, 01 Feb 2023 00:25:43 +0000
Received: from smtpbg150.qq.com ([18.132.163.193])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pN0wV-009mGy-NR
	for linux-rockchip@lists.infradead.org; Wed, 01 Feb 2023 00:25:42 +0000
X-QQ-mid: bizesmtp81t1675211066tooru1z8
Received: from [192.168.30.129] ( [92.202.159.105])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 01 Feb 2023 08:23:57 +0800 (CST)
X-QQ-SSF: 0110000000000070E000000A0000000
X-QQ-FEAT: QityeSR92A2jA4WSpI1ooFd1BKt9M4Vx3UAyz74TiSsiKbjgLJyb9s8VV+p5n
	hxjkHweKh8s8SHfeL3MUShnSGG221huOZhB0pWsO5EH9Sz78OV+2Ni37AI9o8AOeEB1f+cO
	FXWgojLGO7BR9tbRLNOju1X/GfSWcVfmqdN3fKdz4r26EB1rgg82kP4LKpbyYngEA3M+c+/
	wjFdQVlzr4sQMUfQt4gfD5Eg5LZhIzPbCdJpqkp63b834O5Db+P6F04T5SlwDEq1ukIE0PO
	+2NAiDPwaGg9mShv/QQZ8Ndr0WIrXXbEYMSxv40Ujd9JYXuIgRcJEThJkpPzSKymMxzIfKy
	SG741Q2HPU9ygrGuwp+PRB3r68IpZTFvxamoz9Q2Zt2hrsXdvc=
X-QQ-GoodBg: 0
Message-ID: <3C4B67628F8D73D6+63ea74ac-b8a2-45b1-5f92-8c7868906687@radxa.com>
Date: Wed, 1 Feb 2023 09:23:56 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v3 0/3] drm/rockchip: dw_hdmi: Add 4k@30 support
To: Sascha Hauer <s.hauer@pengutronix.de>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
Cc: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 Robin Murphy <robin.murphy@arm.com>, Dan Johansen <strit@manjaro.org>
References: <20230118132213.2911418-1-s.hauer@pengutronix.de>
 <20230131080928.GG23347@pengutronix.de>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20230131080928.GG23347@pengutronix.de>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:radxa.com:qybglogicsvr:qybglogicsvr5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230131_162540_403508_CA906998 
X-CRM114-Status: GOOD (  17.42  )
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

hi,

I'm trying this patch series with 6.1.x kernel. it works fine on rk356x 
based boards (ROCK 3), but it has a problem on rk3399 boards (ROCK 4).

on rk3399 with this patch, I can see large noise area (about one third 
right side of the screen) at 4k@30. 1080p works fine as same as before.

can someone reproduce this problem on rk3399?

--
FUKAUMI Naoki

On 1/31/23 17:09, Sascha Hauer wrote:
> Heiko, Sandy,
> 
> Ok to apply these patches?
> 
> Sascha
> 
> On Wed, Jan 18, 2023 at 02:22:10PM +0100, Sascha Hauer wrote:
>> It's been some time since I last sent this series. This version fixes
>> a regression Dan Johansen reported. The reason turned out to be simple,
>> I used the YUV420 register values instead of the RGB ones.
>>
>> I realized that we cannot achieve several modes offered by my monitor
>> as these require pixelclocks that are slightly below the standard
>> pixelclocks. As these are lower than the standard clock rates the PLL
>> driver offers the clk driver falls back to a way lower frequency
>> which results in something the monitor can't display, so this series
>> now contains a patch to discard these unachievable modes.
>>
>> Sascha
>>
>> Changes since v2:
>> - Use correct register values for mpll_cfg
>> - Add patch to discard modes we cannot achieve
>>
>> Changes since v1:
>> - Allow non standard clock rates only on Synopsys phy as suggested by
>>    Robin Murphy
>>
>> Sascha Hauer (3):
>>    drm/rockchip: dw_hdmi: relax mode_valid hook
>>    drm/rockchip: dw_hdmi: Add support for 4k@30 resolution
>>    drm/rockchip: dw_hdmi: discard modes with unachievable pixelclocks
>>
>>   drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 40 ++++++++++++++++-----
>>   1 file changed, 32 insertions(+), 8 deletions(-)
>>
>> -- 
>> 2.30.2
>>
>>
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
