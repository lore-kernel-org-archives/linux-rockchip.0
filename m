Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FC50C4345F
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Apr 2024 14:31:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zOvro05GYQU/C51htTblcWTTSxZdFTq/2QYO709MMjA=; b=irAkGZhzP32/qz
	zSzlKa2Ha1CNW+pCkJ5VDgkxwfsa8n9HhiX0/j/rRooAF2mb9CgJz15QRp2bKVUwLGSw9iQRub1K3
	9ka3fr1dkY500wZ5UAgUB2N1SlhKlVyGjTlX+D9FqVeBi3FmP6FyBtdsOn1Khsse4V5iBV+hmnUQX
	Vq53hGlTFs/RRKNEfPCTuxF+8Ap+hq2Ysn0WGwZKI2IeIyl0lWH+XtXIXzbECVCnfBNNmaOPGs7s8
	NWC0tI7qQoj07efDjVCzQ6rd4/ln9DbD4IFckiaynhpJBSK2jkEz4u9FyUm+rriAT42stIGTA934J
	O9lP0PR2Ix32ly58FBeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxpH4-00000005z6m-3CD3;
	Fri, 19 Apr 2024 14:31:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxpH0-00000005z4u-1KK1;
	Fri, 19 Apr 2024 14:31:32 +0000
Received: from i5e861917.versanet.de ([94.134.25.23] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rxpGd-0002D3-5t; Fri, 19 Apr 2024 16:31:07 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Alban Browaeys <alban.browaeys@gmail.com>, Conor Dooley <conor@kernel.org>
Cc: dev@folker-schwesinger.de, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Chris Ruehl <chris.ruehl@gtsys.com.hk>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Christopher Obbard <chris.obbard@collabora.com>,
 Doug Anderson <dianders@chromium.org>,
 Brian Norris <briannorris@chromium.org>,
 Jensen Huang <jensenhuang@friendlyarm.com>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] phy: rockchip: emmc: Enable pulldown for strobe line
Date: Fri, 19 Apr 2024 16:31:05 +0200
Message-ID: <2192003.Icojqenx9y@diego>
In-Reply-To: <20240411-mushily-pucker-732583c1d340@spud>
References: <20240326-rk-default-enable-strobe-pulldown-v1-0-f410c71605c0@folker-schwesinger.de>
 <313d5a24b6cffa1a9160e624bb6855aa7f66589e.camel@gmail.com>
 <20240411-mushily-pucker-732583c1d340@spud>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240419_073130_754303_80E6165B 
X-CRM114-Status: GOOD (  86.15  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Donnerstag, 11. April 2024, 17:42:24 CEST schrieb Conor Dooley:
> On Wed, Apr 10, 2024 at 08:28:57PM +0200, Alban Browaeys wrote:
> > Le jeudi 28 mars 2024 =E0 18:01 +0000, Conor Dooley a =E9crit :
> > > On Thu, Mar 28, 2024 at 06:00:03PM +0100, Alban Browaeys wrote:
> > > > Le mardi 26 mars 2024 =E0 19:46 +0000, Conor Dooley a =E9crit :
> > > > > On Tue, Mar 26, 2024 at 07:54:35PM +0100, Folker Schwesinger via
> > > > > B4
> > > > > Relay wrote:
> > > > > > From: Folker Schwesinger <dev@folker-schwesinger.de>
> > > > > > -	if (of_property_read_bool(dev->of_node,
> > > > > > "rockchip,enable-
> > > > > > strobe-pulldown"))
> > > > > > -		rk_phy->enable_strobe_pulldown =3D
> > > > > > PHYCTRL_REN_STRB_ENABLE;
> > > > > > +	if (of_property_read_bool(dev->of_node,
> > > > > > "rockchip,disable-
> > > > > > strobe-pulldown"))
> > > > > > +		rk_phy->enable_strobe_pulldown =3D
> > > > > > PHYCTRL_REN_STRB_DISABLE;
> > > > > =

> > > > > Unfortunately you cannot do this.
> > > > > Previously no property at all meant disabled and a property was
> > > > > required
> > > > > to enable it. With this change the absence of a property means
> > > > > that
> > > > > it
> > > > > will be enabled.
> > > > > An old devicetree is that wanted this to be disabled would have
> > > > > no
> > > > > property and will now end up with it enabled. This is an ABI
> > > > > break
> > > > > and is
> > > > > clearly not backwards compatible, that's a NAK unless it is
> > > > > demonstrable
> > > > > that noone actually wants to disable it at all.
> > > > =

> > > > =

> > > > But the patch that introduced the new default to disable the
> > > > pulldown
> > > > explicitely introduced a regression for at least 4 boards.
> > > > It took time to sort out that the default to disable pulldown was
> > > > the
> > > > culprit but still.
> > > > Will we carry this new behavor that breaks the default design for
> > > > rk3399 because since the regression was introduced new board
> > > > definition
> > > > might have expceted this new behavior.
> > > > =

> > > > Could the best option be to revert to =E9not set a default
> > > > enable/disable
> > > > pulldown" (as before the commit that introduced the regression) and
> > > > allow one to force the pulldown via the enable/disable pulldown
> > > > property?
> > > > I mean the commit that introduced a default value for the pulldown
> > > > did
> > > > not seem to be about fixing anything. But it broke a lot. ANd it
> > > > was
> > > > really really hard to find the description of this commit to
> > > > understand
> > > > that one had to enable pulldown to restore hs400.
> > > > =

> > > > In more than 3 years, only one board maintainer noticed that this
> > > > property was required to get back HS400  and thanks to a user
> > > > telling
> > > > me that this board was working I found from this board that this
> > > > property was "missing" from most board definitions (while it was
> > > > not
> > > > required before).
> > > > =

> > > > =

> > > > I am all for not breaking ABI. But what about not reverting a patch
> > > > that already broke ABI because this patch introduced a new ABI that
> > > > we
> > > > don't want to break?
> > > > I mean shouldn't a new commit with a new ABI that regressed the
> > > > kernel
> > > > be reverted?
> > > =

> > > I think I said it after OP replied to me yesterday, but this is a
> > > pretty
> > > shitty situation in that the original default picked for the property
> > > was actually incorrect. Given it's been like this for four years
> > > before
> > > anyone noticed, and others probably depend on the current behaviour,
> > > that's hard to justify.
> > > =

> > =

> > A lot of people noticed fast that HS400 was broken in the 5.10 branch
> > but due to another commit (more later, ie double regulator init that
> > messed up emmc) this second breakage was not detected. But mostly
> > downstream. And most if not all rk3399 boards in Armbian had HS400
> > disabled.
> > =

> > =

> > It took 3 years to detect that HS400 was broken on a few boards like
> > Rock Pi4 in the upstream kernel. Any might still be broken.
> > I would not count on the fact that keeping the current behavior equals
> > no more broken boards.
> > =

> > From the previous exchanges the boards that requires the pulldown to be
> > disabled seems well known.
> > =

> > Though I am fine with adding a property to set enable pulldown to any
> > board definition file where that is required.
> > =

> > Only I do not believe keeping the statu quo equal everything works
> > because it has been 3 years.
> =

> FWIW, I didn't say this. Clearly if that was the case, this patch would
> never have arrived.
> =

> > In fact this commit reached the downstream kernels way later. Any
> > stayed with the 5.10 branch for years.
> > =

> > But on the other side the disable pulldown by default is alraedy in
> > stable/linux-rolling-lts .
> > =

> > > > Mind fixing the initial regression 8b5c2b45b8f0 "phy: rockchip: set
> > > > pulldown for strobe line in dts" does not necessarily mean changing
> > > > the
> > > > default to the opposite value but could also be reverting to not
> > > > setting a default.
> > > =

> > > That's also problematic, as the only way to do this is make setting
> > > one of the enabled or disabled properties required, which is also an
> > > ABI
> > > break, since you'd then be rejecting probe if one is not present.
> > =

> > =

> > I don't understand.
> > How reverting to not set either pulldown enabled or disabled by default
> > force all board to set either enabled or disabled.
> > I was telling about making the pulldown set by kernel optional be it
> > enabled or disabled to revert to the previous behavior. =

> > =

> > I mean before the patch to set a default pulldown value (to disabled)
> > there were no forced value.
> =

> Ah, maybe I misunderstood what the code originally did. Did the original
> code leave the bit however the bootloader or reset value had left it?
> In that case, probe wouldn't be rejected and you'd not have the sort of
> issue that I mentioned above.
> =

> > > > Though I don't know if there are pros to setting a default.
> > > =

> > > What you probably have to weigh up is the cons of each side. If what
> > > you
> > > lose is HS400 mode with what's in the kernel right now but switching
> > > to
> > > what's been proposed would entirely break some boards, I know which
> > > I think the lesser of two evils is.
> > =

> > More boards (even if not the most wide spread it seems) are broken by
> > the current behavior.
> > =

> > I agree that only HS400 is broken by keeping the status quo. But as far
> > as I understand only HS400 will be broken either way.
> > Be that by keeping the current disable pulldown which break the boards
> > based on the rockchip default design or the boards that are non-
> > standard or have a broken design.
> > Both case this lead to data corruption on boot to eMMC.
> > =

> > The only pro of keeping the current value the default is that most
> > board broken by the new default introduced in 2020 "might" already be
> > fixed (but that is just a guess).

which I guess are the least stale boards too.

> > > It's probably up to the platform maintainer to weigh in at this
> > > point.
> > =

> > I am not knowledged into the delegation scope. You mean that from now
> > on it is up to the rockchip maintainer?
> > I am fine with it either way.
> =

> Yes, I meant the rockchip maintainer. I'm only a lowly bindings
> maintainer, without any knowledge of rockchip specfics or the type of
> boards we're talking about being broken here. Someone has to make a
> judgement call about which "no property" behaviour is used going forward
> and I don't want that to be me!

I'm somehow all for not changing defaults again.

I think in the past there was a similar example in some other kernel part,
where some change broke the ABI, but meanwhile another ABI depended
on the changed behaviour, so a revert was not possible.

I think it's somewhat similar here. If the change has been in the kernel
for 3-4 years now, I do think that ship has sailed somehow.

As was said above, board introduced since 2020 might already be fixed
and essentially for boards that weren't, it does look like these didn't run
a mainline kernel for like 4 years now.

So if it comes down to deciding who to keep working, I'm more in favor of
those that did run on mainline in the years since.


Though not sure if I understood all the details here yet.


Heiko

> =

> > I just wanted to point out that maybe we don't have to set a pulldown
> > value after all. And that then all boards will be fine as before
> > setting the pulldown explicitly was introduced.
> =

> By "all boards will be fine" you mean "all boards that expected the
> kernel didn't touch this bit will be fine". The boards that need the
> kernel to set this bit because it {comes out of reset,is set by firmware}
> incorrectly are going to need a property added if we revert the default
> behaviour to not touching the bit.
> =

> > In fact I am more eager to get this fixed be it by adding a enable-
> > pulldown property to the board definitions, than to change the current
> > behavior.
> > Just wanted to sort out if that was not the wrong way to fix this
> > issue. (ie if adding a setting on most boards was wrong).
> =

> > During more than 2 years, I tried various patches and discussed on
> > forums about the HS400 breakage. I had bisected the regulator init
> > issue in the 5.10 branch. Sadly it took so much time for this issue to
> > be understood that when the force pulldown to disable commit was
> > introduced downstream before the first issue go fixed.
> > This only made the matter worse because when one fixed the double
> > regulator init issue HS400 was still broken, this time because the
> > pulldown was forced to disable. But nobody noticed this commit that
> > forced a default pulldown state (that was older than the regulator
> > commit from 5.13 backported to the 5.10 stable branch commit, but that
> > reached downstream later due to not having been backported to 5.10 from
> > 5.11).
> > Otherwise we would have emailed immeditaly.
> > Bisecting was only able to catch the first breakage (as it was only
> > fixed after the second breakage was introduced).
> > =

> > Maybe the problem is that me and others did not complained to the
> > kernel upstream ML because we were using heavily patched downstream
> > kernels (like most if not all downstream ARM kernels). So sadly, the
> > forums from back then are filled with complaints but nothing seemed to
> > have reached the Linux ML.
> =

> Aye, and all I can really say there is to buy boards from a vendor that
> doesn't use some horribly hacked downstream kernel, which I know is
> clearly an unsatisfactory suggestion. That said, we probably should have
> caught that the new default behaviour when the changes were made was not
> the default before. There was only one DT maintainer then though, and
> things just slip by :/
> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
