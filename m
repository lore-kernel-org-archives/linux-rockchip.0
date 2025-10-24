Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06D01CCF9E0
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Oct 2025 19:21:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hvk2hZEum4s8qnrTFLfKfxDZ2gGKrc0mjE22deSlCWc=; b=KcM8c0gIXz0h2z
	HX5syiZGmSSb12ZMn0sQ1xrf4UzhSAo9Glf64uj5LFruNIjRjUUdBtBLuZbQGzACM7u9mAOBbkhOU
	ePO8U1U4dvkOgC3PmOc4M5ItyyTT+3YiaMckZHNz0BrzXgLK0Yk+x+3ijaGanPXq/QaPFCXp9RYuo
	lCZkEj5enpGrusJitEgKwa6G2dbSOTjpG7XtdfV5mTswPukiH3FlZP6m38k400HgiBOe75K335TBw
	RKrdt4KVQCI2Zl6tg/9iVZSian32GxcCyVqcD+DBiIYsKaFlVrNXRGw0IHQCMCgY5MaiA19clIyDv
	h3G6haiHKTdg8PtM+78g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCNLd-0000000AMmA-0inM;
	Fri, 24 Oct 2025 19:21:13 +0000
Received: from out-188.mta1.migadu.com ([2001:41d0:203:375::bc])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCNLa-0000000AMkw-1UqT
	for linux-rockchip@lists.infradead.org;
	Fri, 24 Oct 2025 19:21:12 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1761333658;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pCS3u+p5/mBX/+ng03ATa6a8JxRz1+ui4UK+ezTN610=;
	b=SsLORBQ//u6ocJ1PZbfaCSFlOEa1lQEQISN/T6O5M8v5zAaO8wNToSmTGA8ITDWaGKCn+h
	q5bH5cBBlrinNwDIo6go56m9JI/JdcNHj5ZVFTxIaihBCyoZBXDdGpur+ZyheGWtVZWum7
	/FvAlHrmPVvM7blAbflY76Ig7XXIl0z5/d7WTIoh+xEt4ND+JKbbGYVZj81sfxzVToGFzW
	9rkwwVLEkSPiZpsC9ioZ0bghwtPBeXVU8LOgBpHCLPpl4PMVw5kWNuv4m9dBytuct258YW
	cXKx2G/zhKG/1dO7QBuyLcl50TEzPN+SxJ9eYv+NLdwTO3Aabo+eyXgYRpRX+w==
Date: Fri, 24 Oct 2025 21:20:45 +0200
Message-Id: <DDQSO2HR1BFU.2JONNHRBR0LR5@cknow-tech.com>
Cc: "Heiko Stuebner" <heiko@sntech.de>, "Shawn Lin"
 <shawn.lin@rock-chips.com>, "Kever Yang" <kever.yang@rock-chips.com>,
 "Chukun Pan" <amadeus@jmu.edu.cn>, "Alexander Shiyan"
 <eagle.alexander923@gmail.com>, <kernel@collabora.com>, "Dragan Simic"
 <dsimic@manjaro.org>, "Rob Herring" <robh@kernel.org>, "Sebastian Reichel"
 <sebastian.reichel@collabora.com>, <linux-rockchip@lists.infradead.org>,
 <devicetree@vger.kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Damon
 Ding" <damon.ding@rock-chips.com>, "Chris Morgan"
 <macromorgan@hotmail.com>, <linux-arm-kernel@lists.infradead.org>, "Patrick
 Wildt" <patrick@blueri.se>, "Alexey Charkov" <alchark@gmail.com>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Nicolas Frattaroli"
 <nicolas.frattaroli@collabora.com>, "Tomeu Vizoso" <tomeu@tomeuvizoso.net>
Subject: Re: [PATCH v3 0/2] arm64: dts: rockchip: Add vdpu 381 and 383 nodes
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Detlev Casanova" <detlev.casanova@collabora.com>,
 <linux-kernel@vger.kernel.org>
References: <20251020212009.8852-1-detlev.casanova@collabora.com>
In-Reply-To: <20251020212009.8852-1-detlev.casanova@collabora.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251024_122110_560474_DBD1313D 
X-CRM114-Status: GOOD (  16.55  )
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

Hi Detlev,

On Mon Oct 20, 2025 at 11:20 PM CEST, Detlev Casanova wrote:
> Add the nodes for vdpu 381 and 383, respectively RK3588 and RK3576.
> To keep compatibility with older variants, the reg ranges order is not
> in register order so that the function reg range is kept first.

This is a great comment, which I'd have preferred to have seen in the
commit messages themselves.

Especially since I'm getting DTB validation warnings:

  DTC [C] arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dtb
arch/arm64/boot/dts/rockchip/rk3576.dtsi:1292.30-1314.5: Warning (simple_bus_reg):
/soc/video-codec@27b00000: simple-bus unit address format error, expected "27b00100"
  DTC [C] arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dtb
arch/arm64/boot/dts/rockchip/rk3576.dtsi:1292.30-1314.5: Warning (simple_bus_reg):
/soc/video-codec@27b00000: simple-bus unit address format error, expected "27b00100"


For some reason I'm not getting that for rk3588, which I need to
investigate further. Technically, I ran my DTB validation script on your
'add-vdpu381-and-383-to-rkvdec-v3-on-next' branch, but I don't see how
that would/could change the outcome.

My validation script does essentially this:
``make CHECK_DTBS=y W=1 $(get_my_dtbs)``

('get_my_dtbs' returns a list of dtb files I want to check)

So it looks like the DTB validation tool is not happy that the
reg ranges are not sorted in 'proper' order.

Note that the ``W=1`` is essential to see the warning, it does not show
up when ``W=0`` is used.
I'll leave it up to you and the maintainers to judge whether this is
problematic or not, but wanted to mention it.

Cheers,
  Diederik

> Also adds the corresponding iommu nodes.
>
> Note that on RK3588, both cores are added as it represents the hardware,
> but the driver, later will only register the first one.
>
> Regards,
> Detlev.
>
> Changes since v2:
>  - Set the correct IRQ number for the second rk3588 core
>
> Changes since v1:
>  - Set node name to match first reg range
>
> Detlev Casanova (2):
>   arm64: dts: rockchip: Add the vdpu381 Video Decoders on RK3588
>   arm64: dts: rockchip: Add the vdpu383 Video Decoder on rk3576
>
>  arch/arm64/boot/dts/rockchip/rk3576.dtsi      | 36 +++++++++
>  arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 74 +++++++++++++++++++
>  2 files changed, 110 insertions(+)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
