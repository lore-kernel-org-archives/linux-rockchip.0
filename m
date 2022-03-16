Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74B75C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Mar 2022 14:01:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+3G7YTwjFE6AV3BvegruETAMudO5FAqgs0ABElZxT4Q=; b=fibY3j4lPnp7Ir
	uBFC9mzyXrvpSxuhV3+dUM08AaxO5bAP+YmXfG7jQwhqsa0NC4dkhV9plkXqzvKZnl+sGx8EEqmD2
	92zQ4NY6fBHy7SkyRIVoR3XLsSepuBsPexKfI45mZDzS/HyxoNOViBCl+3MrzFNPbyzHwaEv8iqyA
	d67k9CkATgs99eE8RmNihzTsDSpkgVKx9n+eYJdSx+RfGAwaiALvnjmyL9QiggcbXipcleqxlDldX
	X5Sgwzd9dKQXgPnfaaKRADS3wsqucIyL9OfqHm8zS6T0eVyKBrasTznuO0HWaHjYYhZN0Q5PnyPZP
	66qnRqIPlCrzZlgnntwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nUUDQ-00D954-RG; Wed, 16 Mar 2022 14:01:28 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nUUDB-00D90p-SX; Wed, 16 Mar 2022 14:01:15 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dmitry.osipenko) with ESMTPSA id 738BD1F416FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1647439272;
 bh=b7DxzgX/+W8/AlqSmL1OfcChj9C1UYGvNw0Y8aIj/FQ=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=fCKGKbRAVYs0MG7CZtAtS8/QMk9OkfCYqW7Nep5s5JeK12xXfIQULQCA2LQtqma2f
 /ZfcFA4ErV0IFpPOQ61LbI3O/raH6ulrtcdBPyGJ/dbR75AZ/Jv7Of+wlzZWHSXgM4
 42z0n5pwHx7b1G6lzsxwgQdWybtLKCYORlubbwlX62FcnHCL5S43wZ/pAadngdAshk
 z08gQ61mePQTRMmjVg37ItinBe6fiYSWUOJAm78aV5YboswShSYv/AaRYuYN613L2a
 2zssDvgUHeZE54XLUtq1oHZdIrtJjBC8uaUKLx7Ve6lOmh1K5jsnOxaEN7L7E4XSYH
 r/Dcb7c/CsA9g==
Message-ID: <d14345fe-c1be-73c0-825c-61d0b6471cc2@collabora.com>
Date: Wed, 16 Mar 2022 17:01:08 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: [PATCH v8 09/24] drm/rockchip: dw_hdmi: Add support for niu clk
Content-Language: en-US
To: Robin Murphy <robin.murphy@arm.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: "elaine.zhang" <zhangqing@rock-chips.com>, devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Peter Geis <pgwipeout@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org
References: <20220311083323.887372-1-s.hauer@pengutronix.de>
 <20220311083323.887372-10-s.hauer@pengutronix.de>
 <4712e128-8a14-e361-0819-911dc3453372@collabora.com>
 <20220314081834.GK405@pengutronix.de>
 <96e3682c-51ff-6af2-ca07-6ea1b952dd70@collabora.com>
 <20220316091253.GQ405@pengutronix.de>
 <4c04da9c-f9c9-7375-df1a-4661807549dd@collabora.com>
 <e65975a4-7d5f-1fb3-a031-2bb61de7f6a5@arm.com>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <e65975a4-7d5f-1fb3-a031-2bb61de7f6a5@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220316_070114_095445_92C93187 
X-CRM114-Status: GOOD (  18.16  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On 3/16/22 16:55, Robin Murphy wrote:
>> To me that NIU quirk should be internal to the clk h/w module, so it
>> doesn't feel nice to mix the clk h/w description with the HDMI h/w
>> description.
>>
>> On the other hand, making clk driver to handle this case indeed will
>> take some effort as I see now. For example, clk driver of NVIDIA Tegra
>> has concept of shared gates, but bringing it to the RK clk driver will
>> be quite messy.
> 
> From a quick look, it seems like it could be straightforward
> conceptually at least. Presumably: subclass clk_gate_ops to
> enable/disable a required clock before enabling/disabling normally, have
> rockchip_clk_register_branch() resolve an optional required clock and
> pick gate_ops as appropriate, then the rest is basically just
> boilerplate for describing the dependencies in the first place. However
> I'd agree that in practical implementation terms it does look even
> simpler and cleaner for the clk_hw abstraction to provide the
> appropriate ops and resolution itself.
> 
>> Alright, let's work around the clk limitation like you're suggesting. I
>> agree that it shouldn't really be a problem to deprecate the extra clock
>> later on.
> 
> If there's a realistic chance that someone will actually work on a
> proper coupled/dependent/whatever clock abstraction before the rest of
> RK3588 is supported well enough for mainline users to start really
> caring about power efficiency, then arguably the simplest and cleanest
> workaround would be the other option that Elaine mentioned, of just
> marking hclk_vo as critical for now. If it's likely to turn into a
> "nothing's as permanent as a temporary fix" situation, though, then the
> DT binding has less functional impact, even if it does leave us
> developers with baggage down the line.

I missed that suggestion about marking hclk_vo as critical. That's a
good idea, I like it.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
