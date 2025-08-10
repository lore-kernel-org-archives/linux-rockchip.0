Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67758C87FDA
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Aug 2025 19:25:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZbdmpvTYA4SnN9Z4ZWAxLddR6He3vhDjn0RF3uTIZJk=; b=xOwzP3sj5NULmS
	l/nF5SoiqFbYGeNUuU30YC3MGb7n2FC7kAAXtGxK5VE607U74SzyPqIE9V8Rt+66iyvX2dNRZmt96
	pxkj9FALIHfURZz9PpKwK+LE4vLyOg2Pg/rc7afbCq4630uKj3sfkwBySbCHY7QGbAzBkAYc+Qoud
	DAkMl3CqPjIV7/IWHWhL8aEOtigHTbEW8em2Ikyc2gWKaeaHU43pKH83sB8igrILzpUTtfn4Z5Z6a
	1A0Wu89XudN3jOhtT1w8sXBxyThfnFH9EzvJP7bDlNHf3gyPkGQj+a2BRn6PSAANogw2dh9tvPkqY
	CLRQ4vyPGLFANkoVZ0eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulBfq-00000005vGi-1R3b;
	Sun, 10 Aug 2025 19:25:42 +0000
Received: from luna.linkmauve.fr ([82.65.109.163])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulBdE-00000005v9v-12yX;
	Sun, 10 Aug 2025 19:23:03 +0000
Received: by luna.linkmauve.fr (Postfix, from userid 1000)
	id 019474955FE8; Sun, 10 Aug 2025 21:22:54 +0200 (CEST)
Date: Sun, 10 Aug 2025 21:22:54 +0200
From: Link Mauve <linkmauve@linkmauve.fr>
To: Detlev Casanova <detlev.casanova@collabora.com>
Subject: Re: [PATCH v2 1/2] arm64: dts: rockchip: Add the vdpu381 Video
 Decoders on RK3588
Message-ID: <aJjxjgG1gEaKBVwE@desktop>
References: <20250808193602.142527-1-detlev.casanova@collabora.com>
 <20250808193602.142527-2-detlev.casanova@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250808193602.142527-2-detlev.casanova@collabora.com>
Jabber-ID: linkmauve@linkmauve.fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250810_122300_434625_666956A0 
X-CRM114-Status: GOOD (  11.94  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>, Kever Yang <kever.yang@rock-chips.com>, Niklas Cassel <cassel@kernel.org>, Chukun Pan <amadeus@jmu.edu.cn>, kernel@collabora.com, Dragan Simic <dsimic@manjaro.org>, Rob Herring <robh@kernel.org>, Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Damon Ding <damon.ding@rock-chips.com>, Chris Morgan <macromorgan@hotmail.com>, linux-arm-kernel@lists.infradead.org, Patrick Wildt <patrick@blueri.se>, linux-kernel@vger.kernel.org, Alexey Charkov <alchark@gmail.com>, Diederik de Haas <didi.debian@cknow.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

On Fri, Aug 08, 2025 at 03:36:01PM -0400, Detlev Casanova wrote:
> Add the vdpu381 Video Decoders to the rk3588-base devicetree.
> 
> The RK3588 based SoCs all embed 2 vdpu381 decoders.
> This also adds the dedicated IOMMU controllers.

Back in the VEPU121 enablement series[1] it had been decided to not
expose multiple identical cores yet, because there is no infrastructure
yet in the kernel to schedule multiple userland processes on multiple
cores, or (more relevant for your usecase) to even combine two cores to
reach 8K support.

> 
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 74 +++++++++++++++++++
>  1 file changed, 74 insertions(+)
> 

[snip]

Thanks,

[1] https://lore.kernel.org/all/20240618183816.77597-1-sebastian.reichel@collabora.com/

-- 
Link Mauve

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
