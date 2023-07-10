Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CD3EEB64D9
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Jul 2023 14:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Subject:
	In-Reply-To:Cc:To:From:Message-Id:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2EiyXJEJfhWZ61jjnekLq8yG5LUuchv6BZnMNRCC2E8=; b=pDL9ZuvuMR//jxMRUeeTSNZZXJ
	Yw01dOPeuXXO02ppoUq0qLsIUep0wRvy56m94B9j1UqTlyPCV5NeTl/I3BZTCTRyxbdzIH46DSKMK
	Pa5lWziDHqNeFdhFZD6QiE0++VCF0yJSb1XVhT6YcxHtJdOAyjucjH0xtXGqaVqY+9o8WWLkMtjag
	u8HvuvcmYYS48DU/FW+2tf/xIEB05FvCXU9KJfnEqyKa0eDyRaSH1Ce2qAv+TpQiXEwkAdBml7GKr
	wQWXEuV4kdIcMLcW2y+zUxVSGgqvTLfKMN2h7CVX1QWFGYfewWqN0nWYvExp4XIKyuI4GTWBzjREK
	ox/k835A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIrzQ-00Btts-1O;
	Mon, 10 Jul 2023 14:35:48 +0000
Received: from ewsoutbound.kpnmail.nl ([195.121.94.183])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIrzM-00Btrp-1Y
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Jul 2023 14:35:47 +0000
X-KPN-MessageId: cb8dc1ea-1f2e-11ee-a2b3-005056992ed3
Received: from smtp.kpnmail.nl (unknown [10.31.155.5])
	by ewsoutbound.so.kpn.org (Halon) with ESMTPS
	id cb8dc1ea-1f2e-11ee-a2b3-005056992ed3;
	Mon, 10 Jul 2023 16:33:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xs4all.nl; s=xs4all01;
	h=subject:to:from:message-id:date;
	bh=ndshqcXUb+Dwfuyshi1OMTZa+0+yuKFyMzM9cN1ZEac=;
	b=X5MAyiHuZK2zRPHU5y1vBpfWw/rFUPN75fgEFtHxu6bspWjHpxoL8QJiiVf+RFhzDtwNL9k8c7wJv
	 vYJNQByypPfqkxx9dQ112w7O1Qjgpxvazc41DcPI8T2sAFqKiXhUzYKn2IwC3mQ1UXLRsta2JYcWX8
	 2h5v40XGGTVivirjjDXa6wT4kj88ZifCnr1BgCwTKxHlippOU3vXg0iZVgAhinMKnY/PMkPTUzntFv
	 4Rfw00XPgEXMwCoVUgAVZAOfsjIUbdy/fLefD3U8QjrUD8UltUB+7lTjpeO6KFxx8Y3yq7/rJM2lu5
	 r6Fw9Q9GHgAdaMG1KuIqMFTNRkRequg==
X-KPN-MID: 33|XymNBmGApvd/hZTUbe+Y9MdUVxDjx6rIpwAJAnlVB9VsBKlfmYTOtfxO1eB1muT
 V0Vyt22MfCX/VkboWTyIdnDHT1e0Bsq1ZBD9MZOpsX1g=
X-KPN-VerifiedSender: Yes
X-CMASSUN: 33|0VKnzYBT35jfpfEU5x6YIKApLSQczTNqCw6izYs/9nBcAf8jRAUo8B4WRqX857i
 xhbyRkXjidrML4FWS21+qdw==
X-Originating-IP: 80.61.163.207
Received: from bloch.sibelius.xs4all.nl (80-61-163-207.fixed.kpn.net [80.61.163.207])
	by smtp.xs4all.nl (Halon) with ESMTPSA
	id 0898b9d6-1f2f-11ee-aef8-00505699b758;
	Mon, 10 Jul 2023 16:35:37 +0200 (CEST)
Date: Mon, 10 Jul 2023 16:35:36 +0200
Message-Id: <87wmz7q1fr.fsf@bloch.sibelius.xs4all.nl>
From: Mark Kettenis <mark.kettenis@xs4all.nl>
To: Heiko Stuebner <heiko@sntech.de>
Cc: d3adme4t@gmail.com, macromorgan@hotmail.com, jbx6244@gmail.com,
	f.kardame@manjaro.org, amadeus@jmu.edu.cn, robh+dt@kernel.org,
	linux.amoon@gmail.com, aurelien@aurel32.net,
	anarsoul@gmail.com, wiagn233@outlook.com,
	frattaroli.nicolas@gmail.com, strit@manjaro.org,
	luiz.von.dentz@intel.com, zonyitoo@gmail.com, wens@csie.org,
	jensenhuang@friendlyarm.com, lasstp5011@gmail.com,
	frank-w@public-files.de, pgwipeout@gmail.com,
	conor+dt@kernel.org, leo@nabam.net, andyshrk@163.com,
	krzysztof.kozlowski+dt@linaro.org,
	michael.riesch@wolfvision.net, jonas@kwiboo.se,
	festevam@denx.de, tobetter@gmail.com,
	jagan@amarulasolutions.com, cnsztl@gmail.com,
	cristian.ciocaltea@collabora.com, heiko@sntech.de,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com
In-Reply-To: <168899855919.1747213.9998138836668928892.b4-ty@sntech.de>
	(message from Heiko Stuebner on Mon, 10 Jul 2023 16:16:16 +0200)
Subject: Re: [PATCH] arm64: dts: rockchip: Drop invalid regulator-init-microvolt property
References: <20230707162217.675390-1-cristian.ciocaltea@collabora.com> <168899855919.1747213.9998138836668928892.b4-ty@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_073544_964947_726D4C4E 
X-CRM114-Status: GOOD (  11.27  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

> From: Heiko Stuebner <heiko@sntech.de>
> Date: Mon, 10 Jul 2023 16:16:16 +0200
> 
> On Fri, 7 Jul 2023 19:22:17 +0300, Cristian Ciocaltea wrote:
> > The 'regulator-init-microvolt' property is not currently supported by
> > any driver, it was simply carried on from downstream kernels.
> > 
> > The problem is also indicated by the following dtbs_check warning:
> > 
> >   rk3588-rock-5b.dtb: pmic@0: regulators:dcdc-reg4: Unevaluated properties are not allowed ('regulator-init-microvolt' was unexpected)
> > 
> > [...]
> 
> Applied, thanks!
> 
> [1/1] arm64: dts: rockchip: Drop invalid regulator-init-microvolt property
>       commit: 4d08b19629495b29601991d09d07865694c25199

This property *is used* by the drivers in U-Boot.  Dropping this from
the Linux DTBs will likely result in broken boards the next time the
U-Boot DTBs are synched again from Linux.  At least that is what
happened before...

I think the right solution is to add this property to the DT binding
instead.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
