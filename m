Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC8DBC6FD1F
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Mar 2024 17:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1kLO2n90+xzJUqn4buVN9ID9MQnyLgzj5s2Zj7PeCDw=; b=wdgQXHx69zRTEL
	BWgiWq2w3nUuU5Lvbd9H9PzdG+/kcXNlyPBen0G1hl8upxfUzHZ+JS+O7Nr6AqATchfnVWJCuI9kN
	GXmLumjj+NicbY4AobEmZblZyRfTDOSl/XTmHC3xjXhbEVxwN0kOUhxkZHBPRrjZ+Nz+V1jH7MRfa
	AKamjBLT4QqGIqLEu3fyqduC0UnqTWlSLfGRNWJG0cY2BlmxKlS9gmHvYaKLiX/FuT43boQZhWQJi
	T+RTsiAHvEpctftIqIfxh+CobHQ3QK/7ESd8/nS3s6S/mbap1y1zhbowZciSSxo4v3bekZDvJpLMT
	LCCP6zLrIS0+aglSeZlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmzcZ-00000000T0O-41MP;
	Wed, 20 Mar 2024 17:20:59 +0000
Received: from forward500b.mail.yandex.net ([2a02:6b8:c02:900:1:45:d181:d500])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmzcV-00000000Sxr-3o0Y
	for linux-rockchip@lists.infradead.org;
	Wed, 20 Mar 2024 17:20:58 +0000
Received: from mail-nwsmtp-smtp-production-main-54.iva.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-54.iva.yp-c.yandex.net [IPv6:2a02:6b8:c0c:410d:0:640:81ab:0])
	by forward500b.mail.yandex.net (Yandex) with ESMTPS id D1B9061609;
	Wed, 20 Mar 2024 20:20:43 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-54.iva.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id dKJCmv6OkGk0-AoiXGOs0;
	Wed, 20 Mar 2024 20:20:42 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0upti.me; s=mail;
	t=1710955242; bh=hc1vbtlKdrSBHuAxPHv4xGyYQrXCyDJSzItdrBoYHy8=;
	h=From:In-Reply-To:Cc:Date:References:To:Subject:Message-ID;
	b=QOlslN2NiDix2xstfFgVflxTHo9jBFlOrLm5otc5urFdaA6PIjokcPatKucPJlIpZ
	 RnOZwTjeG8g/k1Q8eoNB72R2dl9rKg2IggPBB2l54RIyXZvw506b8/AEIorOXOa425
	 i6ssmQKVLuphPhT6HlfDwp52oJ6C2cHDwsArQ7ho=
Authentication-Results: mail-nwsmtp-smtp-production-main-54.iva.yp-c.yandex.net; dkim=pass header.i=@0upti.me
Message-ID: <1a83c0b8-2831-4b05-b29a-1ff6ed9a7c70@0upti.me>
Date: Wed, 20 Mar 2024 20:20:38 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 7/7] clk: rockchip: implement proper GATE_LINK support
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Chad LeClair <leclair@gmail.com>
Cc: "andy.yan@rock-chips.com" <andy.yan@rock-chips.com>,
 "heiko@sntech.de" <heiko@sntech.de>,
 "huangtao@rock-chips.com" <huangtao@rock-chips.com>,
 "kernel@collabora.com" <kernel@collabora.com>,
 "kever.yang@rock-chips.com" <kever.yang@rock-chips.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "zhangqing@rock-chips.com" <zhangqing@rock-chips.com>
References: <1456131709882456@mail.yandex.ru>
 <uwr335fla4nfvv3mdppcoly6hcsayav26r4r6txmbwrb25ftw7@rxwjtan7evww>
 <7f4b3f38-50ee-480f-a341-ab577e19bb32@gmail.com>
 <2rsu6qa3pwbqic6b7ej6txa34jw4ztrnybzcfcfysue2mky37h@dyrdefbimzdn>
Content-Language: en-US
From: Ilya K <me@0upti.me>
In-Reply-To: <2rsu6qa3pwbqic6b7ej6txa34jw4ztrnybzcfcfysue2mky37h@dyrdefbimzdn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240320_102056_172264_8E647F6A 
X-CRM114-Status: GOOD (  10.62  )
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

On 2024-03-20 19:36, Sebastian Reichel wrote:
> Can you test again using rk3588-test [0] (which is based on today's
> master branch) from today as base? Ideally it should work with your
> Orange Pi 5, since it contains "clk: rockchip: rk3588: mark hclk_nvm
> critical".
> 
> I also worked on a cleaner solution for the issue you described and
> integrated it in the patch adding proper gate clock support. So
> please also test with HCLK_NVM not being marked as CRITICAL.
> 
> [0] https://gitlab.collabora.com/hardware-enablement/rockchip-3588/linux/-/commits/rk3588-test
> 
> If everything is fine I will prepare a v9.
>

Tested this on my end, and I'm getting the same SFC issue, so there's probably another clock that's missing somewhere. Building with ROCKCHIP_SFC=y (instead of =m) removes the error message, but any access to the flash just locks up, so it's probably placebo, unless there's a second, unrelated issue.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
