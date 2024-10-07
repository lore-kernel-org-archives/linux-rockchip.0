Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D176ECFB453
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Oct 2024 18:47:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SSegI5vK7FNj85xX2Ss9alMwPdET3q3BuZzLw+FykwY=; b=S2hU5v6VAsF/483y0mEpQq+eSf
	rKkThZtBp1wIhMz4xHFelBEHaJRvAVc+qPamqTGmLMkZTe91rALJTIZw/d7qgig3Xqb+/cYHzCqy+
	dgJwJIqM4TyoQJehQY2le+6njdv6qP2qN6mLdy7TNNU/3jIcs1o6/eSo4FXjjq4vJTqVn5tYjSdQi
	y8lPkNL/kCkCwThQorTI9MusBp4yIJoITSn9LOA/e4JrB57mUp9nuKYN0HIcLTOYId7oor//qLBYz
	ZUnyKI+2KXzVK9NVbsgytaMuD9EW4sETOhgbtFDZwGvdxbpGiPMzYqPuUkLoxCbGg/Kw9qJfQfMo0
	gIZEBnrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxslL-00000003Wku-2I1o;
	Mon, 07 Oct 2024 18:47:19 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxsik-00000003WDz-4B2y;
	Mon, 07 Oct 2024 18:44:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 48F255C5DBD;
	Mon,  7 Oct 2024 18:44:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1CF05C4CECC;
	Mon,  7 Oct 2024 18:44:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728326678;
	bh=bCI+qgFArcf9UnJxBNHIm5bHVxWp7CHcTrPf+iCLfp0=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=UWQVDeX2N3N6J8fuUcKH3roh+QukaOQ7DtwHMvBPUzKkZ9fnR8V1VUHIIkM/TbMTr
	 6Kdy9gUxHTK7EslQMltdP5y8DrjwBB7OkaPXbriwM3RCt3JeK/5MNDDfRyQZwUDSbQ
	 46DXmSxY1iu6eAGk0u2d79W6QyIWwbQEpbaNOHPi4zxfbw0WBTk7qZSQAgfS7teS0G
	 e8YbTIRSyZj/uX82FlD+IaDbVCsnx8VzuDH6E3EJ+8kY8AlvnjcWnExqnaFOZ2kJvU
	 hYBqH/kEWP+ps+gLSwBa8n0ngK7tVJZYxz0CkUr+s0+1LZWvf9V2k07HfOyHyb4gFc
	 Dsw5rOz+AlKAg==
Date: Mon, 07 Oct 2024 13:44:37 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Dragan Simic <dsimic@manjaro.org>, linux-rockchip@lists.infradead.org, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
In-Reply-To: <20241007105657.6203-2-didi.debian@cknow.org>
References: <20241007105657.6203-2-didi.debian@cknow.org>
Message-Id: <172832632958.2107354.3994911613740546826.robh@kernel.org>
Subject: Re: rockchip: Fix several DT validation errors
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_114439_098529_E27EA0CD 
X-CRM114-Status: GOOD (  11.78  )
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


On Mon, 07 Oct 2024 12:28:15 +0200, Diederik de Haas wrote:
> This is a set of 4 small device-tree validation fixes.
> 
> Patch 1 adds the power-domains property to the csi dphy node on rk356x.
> Patch 2 removes the 2nd interrupt from the hdmi node on rk3328.
> Patch 3 replaces 'wake' with 'wakeup' on brcm BT nodes.
> Patch 4 replaces 'reset-gpios' with 'shutdown-gpios' on brcm BT nodes.
> 
>  arch/arm64/boot/dts/rockchip/rk3328.dtsi           | 3 +--
>  arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts   | 4 ++--
>  arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi  | 6 +++---
>  arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi | 2 +-
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi           | 1 +
>  5 files changed, 8 insertions(+), 8 deletions(-)
> 
> 


My bot found new DTB warnings on the .dts files added or changed in this
series.

Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
are fixed by another series. Ultimately, it is up to the platform
maintainer whether these warnings are acceptable or not. No need to reply
unless the platform maintainer has comments.

If you already ran DT checks and didn't see these error(s), then
make sure dt-schema is up to date:

  pip3 install dtschema --upgrade


New warnings running 'make CHECK_DTBS=y rockchip/rk3566-box-demo.dtb' for 20241007105657.6203-2-didi.debian@cknow.org:

arch/arm64/boot/dts/rockchip/rk3566-box-demo.dtb: bluetooth: Unevaluated properties are not allowed ('clock-names' was unexpected)
	from schema $id: http://devicetree.org/schemas/net/bluetooth/brcm,bluetooth.yaml#






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
