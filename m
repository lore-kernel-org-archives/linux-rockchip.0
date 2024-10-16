Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A863ED2068A
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Oct 2024 01:11:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=H/o+w1Qr5ntZXt1ck4dhMvNy2QvXPaKwIn84yMT+OYc=; b=NM9uazAm+THF6FopeURQo4h0Cq
	E1FbMj7Rb/Zkk2y4YeODtfHfcCerTIa04f0plS+Xx1w/xuNNeqEiNeookx9W/FJE0fUz4MhINj6mZ
	VIpCNc0k8zmwYLjDHW+FZbFfYSD+tes6Wz88WisgQGZSEuOQDXaI/XEabSxLbXq5eVN1rn+Lbj6cq
	IVql8XgrNJaYG4npZLjRDeEByXIxaf6PXQmU0y0v7TwK8vW11xFm3OB6tg+penEY30T895XhZUyqv
	sFGmkFsQKkzAKCiz7dpV8B/U8PZmp0NjiVP6bTFTGZpu2CT+EtqQSon+8pVBQu7Emr8YChoAXCsxc
	AKzMpBbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0sZp-0000000A6FD-2C9f;
	Wed, 16 Oct 2024 01:11:49 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0sXW-0000000A5ft-1Jfr;
	Wed, 16 Oct 2024 01:09:28 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1729040962;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=q62TzgJVkucL37i2DOtU/nMFPRmh8xCYuwUlxEw9sIs=;
	b=gLW1l2DhyXVLupEjarCByz0tD8ShAZZzloSBhFAKSRaxZx+TVF3cxBP5F7h6wFQckjGSZt
	yFQ4xPp1HJBivkYsPUVWbaHtnN5HZ86UKo7H18t3/8zBBETrnjcPv8XZ0Pm5nqqZV95tTM
	y0HR1QhvZxfNnwjKZFOL6cdfKKI257FDheLAtbMHBGU32xw5DF+K8EgNNRdrQN30l0J9u9
	xUPgBgIf5xCxBy/4ZNtWrxhi8Fc3daJRRgjqlFIzXeQeKtLqyojElj2IJ8Q/o04usCp62x
	isdsq4tligJ6g9VPgYNdT/hyUyr4A+KdWQ/AF8FLLtcwz2dDpT9nuVP0lkZ8oA==
Date: Wed, 16 Oct 2024 03:09:20 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Cenk Uluisik <cenk.uluisik@googlemail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Chris
 Morgan <macromorgan@hotmail.com>, Jonas Karlman <jonas@kwiboo.se>, Andy Yan
 <andyshrk@163.com>, Tim Lunn <tim@feathertop.org>, Jagan Teki
 <jagan@edgeble.ai>, Michael Riesch <michael.riesch@wolfvision.net>, Jimmy
 Hon <honyuenkwun@gmail.com>, Jing Luo <jing@jing.rocks>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 2/2] arm64: dts: rockchip: Add rk3588-orangepi-5b
 device tree and refactor
In-Reply-To: <CAAWLpRtOcxc7=EAw6NPtkwqCNJ0LRE50StjZ4h4ra7wvhsyeaA@mail.gmail.com>
References: <20241015192905.28969-1-cenk.uluisik@googlemail.com>
 <20241015192905.28969-2-cenk.uluisik@googlemail.com>
 <CAAWLpRtOcxc7=EAw6NPtkwqCNJ0LRE50StjZ4h4ra7wvhsyeaA@mail.gmail.com>
Message-ID: <03103381f2a356b4a23ead545e456460@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_180927_001901_61E2E0F2 
X-CRM114-Status: GOOD (  16.74  )
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

Hello Cenk,

On 2024-10-15 21:33, Cenk Uluisik wrote:
> I accidently didnt save the Patch Version on the first email, it's the
> same patch but with fixed versioning. It was an accident, sorry.

As I suggested already, it's always a good idea to send patches
to your own email address first, before sending them to the ML(s),
to check the patches one last time and make sure everything looks
good.  That's the way I do it, FWIW.

> Am Di., 15. Okt. 2024 um 21:29 Uhr schrieb Cenk Uluisik
> <cenk.uluisik@googlemail.com>:
> 
>> Implements a slightly modified rk3588s-orangepi-5b.dts from the
>> vendor.
>> Unfortunately the &wireless_bluetooth and &wireless_wlan are not
>> implemented yet.
>> 
>> Bigger parts of the rk3588s-orangepi-5.dts file were moved into a
>> new
>> rk3588s-orangepi-5.dtsi file, so that both device trees from the
>> orangepi-5 and 5b include from it and avoid including from the .dts.
>> 
>> This changes the Orange Pi 5's sdmmc alias to be mmc1, breaking
>> existing
>> users if they used the /dev/mmc0 device file, so it's consistent
>> with all
>> the other rk3588 DTS, which, is also the new default that rockchip
>> wants
>> to use.
>> https://github.com/orangepi-xunlong/linux-orangepi/commit/
>> bce92d16b230b8e93c2831fb7768839fd7bbab04
>> Therefore add the sdhc alias to be mmc0 on the
>> rk3588s-orangepi-5b.dts.
>> 
>> The "enable-active-low" warning is addressed here:
>> 
> https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/
>> 
> commit/?h=v6.12-armsoc/dtsfixes&id=f4d29bebaa6118c1e51e8f1c21ce2b34f43e1479
>> The "leds-gpio" warning was already there because the DTS checking
>> script
>> might not like the ID, which is probably avoidable by renaming it,
>> but this
>> will be addressed in a seperate issue.
>> 
>> How does this board differ from the original Orange Pi 5?
>> - the Orange Pi 5 has a M.2 NVMe M-key PCI 2.0x1
>> slot (hooked to combphy0_ps) whereas the Orange Pi 5b uses
>> combphy0_ps
>> for the WiFi.
>> - The Orange Pi 5 with the M.2 socket has a regulator defined
>> hooked to
>> "GPIO0_C5" (i.e. PCIE_PWREN_H) whereas the Orange Pi 5B has
>> GPIO0_C5
>> hooked to BT_WAKE_HOST.
>> - builtin eMMC storage
>> - no SPI NOR flash (u-boot, preboot etc. initiates
>> from within the eMMC
>> storage)
>> - ap6275p Wifi module (like the Orange Pi 5 Plus)
>> - builtin BlueTooth module
>> 
>> Signed-off-by: Cenk Uluisik <cenk.uluisik@googlemail.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
