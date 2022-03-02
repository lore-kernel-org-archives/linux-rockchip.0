Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D26DDC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Mar 2022 17:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OXKvreYIjLMMbmWBXACi1Kfn4il/l2KgOnZwjhUbw6s=; b=0nCtoUjIIGLzcS
	+T5gzdKOBWuGqX8y+W5r6ecvZyW9a3LCKOO/tzgYHyHlawJD8F5v1De8jPhVSwz6q/eW9JHp3uthi
	GNH2AGFiPCUOqygOghQ/Ugnlsa55MHrV37EdO2u1gUoO++avLPLPhGN9Et1cDjdlPsXcUe5HxZ3S4
	NpoC1+v+4UJbxb1a7AmYi5uv2d6qM/kelLjVxigPzQRsX839eExKj/n3DC/erNG1lZO1NCO1O+Op8
	uDUosGdjqqJebpenkvRPHxMhI8LHBwQdY4fHF2sefeq03Tcny1cA/5ZmAduFmya4iyIpHXV31AY2+
	RNI7i6/OPO9BoaY7iXFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPSl9-003XhF-8W; Wed, 02 Mar 2022 17:27:31 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPSkw-003XdT-FI; Wed, 02 Mar 2022 17:27:19 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id E52D4B8211A;
 Wed,  2 Mar 2022 17:27:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02EF6C004E1;
 Wed,  2 Mar 2022 17:27:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646242035;
 bh=XX+gbWN6d/khISVOWirF+epY3OmJ0EbDPOgJ5dqOVDo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=N8aGkykE+wQjURHstd0nScvLq8LPy77ZrjSFnVf+lF80AE6XC02uex2sTI348BTE5
 y608MdYjz4A2HvtzFxrJi3pDwfL58AGLvoRCLHyzFlAZ3A5BSr2ob8PhCC0JkkGfSi
 1H6uGKXMak+XL9qEh59sRwZrHwik0fFXLXHx4ueV4CUwMAFbzZ3StOM0ciVB/ACHKc
 5Fc1tLapf64ahl1VZQJKUoAQOmQrRuydoDkR6TU4xIw5GZCyhIoJYD5OgsEynMIH5v
 f4871jWWDv6fR1FSYKTHX07XXbUZqNCzdHpwTIsFJi9ctB6LSVQgVomnoEeR/yFH3S
 FBgAENBJ4C8wg==
Date: Wed, 2 Mar 2022 22:57:11 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>,
 Heiko Stuebner <heiko@sntech.de>, Johan Jonker <jbx6244@gmail.com>,
 Jianqun Xu <jay.xu@rock-chips.com>, Tobias Schramm <t.schramm@manjaro.org>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 devicetree <devicetree@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] dt-bindings: Revert "dt-bindings: soc: grf: add naneng
 combo phy register compatible"
Message-ID: <Yh+o7/D0QqJypHga@matsya>
References: <20220302143427.447748-1-vkoul@kernel.org>
 <CAL_JsqJMZ8PHqJk6drNbNHprmfeV9UvJzJnech7sz_JwcdbckA@mail.gmail.com>
 <CAMdYzYoCeSKPQjUqigtP7GiAB8iDre9BRwVTqvmq_OA-N06NQw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMdYzYoCeSKPQjUqigtP7GiAB8iDre9BRwVTqvmq_OA-N06NQw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_092718_688411_7C705656 
X-CRM114-Status: GOOD (  17.22  )
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

On 02-03-22, 12:12, Peter Geis wrote:
> On Wed, Mar 2, 2022 at 12:04 PM Rob Herring <robh+dt@kernel.org> wrote:
> >
> > On Wed, Mar 2, 2022 at 8:34 AM Vinod Koul <vkoul@kernel.org> wrote:
> > >
> > > This reverts commit b3df807e1fb0 ("dt-bindings: soc: grf: add naneng
> > > combo phy register compatible") as that was wrongly merged, so better to
> > > drop the wrong patch
> > >
> > > Signed-off-by: Vinod Koul <vkoul@kernel.org>
> > > ---
> > > I am applying this to phy-next to fix the issue
> >
> > Reverting will just cause a different warning that it is undocumented.
> > The fix in the other thread won't apply either if you revert.
> 
> Reverting and reapplying the original patch would work.
> https://patchwork.kernel.org/project/linux-rockchip/patch/20220208091326.12495-2-yifeng.zhao@rock-chips.com/

It does not apply to phy-next!

-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
