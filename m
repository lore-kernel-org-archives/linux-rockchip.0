Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C1B8C4332F
	for <linux-rockchip@archiver.kernel.org>; Sat,  3 Dec 2022 07:19:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zBddR2TYJPZ70U1stNjJqDoMtrZ0SGogZVCfI9wqY8s=; b=eWYtqiFJrcWByq
	bJ8IVl8+mWsj8l/yx4w1/UqUoAJq0OjxBGM2IeCGzIxF3M5L/7wnFVW8F758qpWjvD4IUbJlCOpN3
	i3+sOfQP1zQ3P0IIL+G7jj1y2o04vXIUXDvj0xhTJIyYOvpcJY+8sp6w0ddelUV2jt3bqOLZDg00/
	PSFbl8kMlgjtGGfCqIHwwmNt0SkD4jPhgSoFHi62+co/mEhXWcfPWT8jOGWqV49WIw/9WBg3sSdoo
	2yxqyWhzMb+mE0X+2zdTk4IchKRViVLAbVb0D/YQAl1+kWq/6N5gd8iU9kSrHmz7Q1iwj66qDTBq8
	WKPKoZvpmxLGkwm/DHsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p1Mny-002j3X-Mw; Sat, 03 Dec 2022 07:19:22 +0000
Received: from mail-m121145.qiye.163.com ([115.236.121.145])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p1Mnb-002j2U-7B; Sat, 03 Dec 2022 07:19:03 +0000
Received: from amadeus-VLT-WX0.lan (unknown [218.85.118.194])
	by mail-m121145.qiye.163.com (Hmail) with ESMTPA id 4EA3E800067;
	Sat,  3 Dec 2022 15:18:40 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: naoki@radxa.com
Cc: heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add Radxa ROCK Pi E25
Date: Sat,  3 Dec 2022 15:18:14 +0800
Message-Id: <20221203071814.8828-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221129121919.366-1-naoki@radxa.com>
References: <20221129121919.366-1-naoki@radxa.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaTU4eVhgZGR5DSR5JQhgaTlUTARMWGhIXJBQOD1
	lXWRgSC1lBWUlKQ1VDTlVKSkNVSkJPWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVSktLVUtZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OiI6FTo6LT0dEgoJPg4tCxkf
	DTcwFCtVSlVKTUxLS05KQklLQ0xDVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlK
	Q1VDTlVKSkNVSkJPWVdZCAFZQUpNQk03Bg++
X-HM-Tid: 0a84d6d9fa4db03akuuu4ea3e800067
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221202_231901_775637_255DD580 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
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

Hi FUKAUMI,

> there is no product called "ROCK Pi E25". it's "Radxa E25".
> there is no product called "Radxa ROCK Pi CM3 IO (core board)". it's
> "Radxa ROCK 3 Compute Module Industrial". (A.K.A. Radxa CM3I)

Thanks for pointing this out, I will fix it in the next patch.

> SATA is working on my E25. you may refer my dts,
>  https://github.com/RadxaNaoki/linux/commits/rock-3

Maybe I should pick your sata commit or do you create a patch for it?

> I think dts should be separated, CM3I dtsi and E25 dts.

I'm not sure what parts are specific to E25.
Let me guess, maybe usb, pcie/r8125, sata and pwm-leds?

--
Thanks,
Chukun

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
