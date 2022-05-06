Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C79DC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 May 2022 08:54:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IgXmAtK6BTsa6ZQtJHRaqelleqhn0rRsz1SMJ9aFnrc=; b=pneKmkLkNBJPl5
	M5EylNiOWhtRHcBaezaGSL/qSUCFxT/KUP5ktUx+AdvXbJu5VSeLy5oGtaHM4rY9qfmI9md0tFOn+
	NC/ydIhBFH25rvglqH/um72qtB8Dj9tE7rC1f3shHq+8M9UGAcyINmZLfzdrO69J3vS+0zumKR00D
	I2+teqppaZYmflZp5sceGXovPZcurqEu+49NLaKclN2001KyymeNpX1vQkD39SQwZkeaz0QnMU0Dy
	HNLXlVOjRGjfMwnrWQB0gLxPgp98YyddvZqaLX5QX278x4FeeK8rhFjtSoAQGRj/8T2s8buPtEVoQ
	HOzuiwf9YJtgvq/JMEzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmtjV-002DX9-F0; Fri, 06 May 2022 08:54:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmtjI-002DQ8-NL; Fri, 06 May 2022 08:54:30 +0000
Received: from p508fcb34.dip0.t-ipconnect.de ([80.143.203.52]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nmtjD-0005t9-LO; Fri, 06 May 2022 10:54:23 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>,
 Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v11 16/24] arm64: dts: rockchip: rk356x: Add VOP2 nodes
Date: Fri, 06 May 2022 10:54:18 +0200
Message-ID: <8099476.NyiUUSuA9g@phil>
In-Reply-To: <20220506071028.GS4012@pengutronix.de>
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <2508329.Lt9SDvczpP@diego> <20220506071028.GS4012@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220506_015428_802577_E2B190C8 
X-CRM114-Status: GOOD (  27.09  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Freitag, 6. Mai 2022, 09:10:28 CEST schrieb Sascha Hauer:
> On Thu, May 05, 2022 at 09:23:03AM +0200, Heiko St=FCbner wrote:
> > Am Donnerstag, 5. Mai 2022, 08:41:31 CEST schrieb Sascha Hauer:
> > > On Thu, May 05, 2022 at 02:28:24AM +0200, Heiko St=FCbner wrote:
> > > > Am Freitag, 22. April 2022, 09:28:33 CEST schrieb Sascha Hauer:
> > > > > The VOP2 is the display output controller on the RK3568. Add the =
node
> > > > > for it to the dtsi file along with the required display-subsystem=
 node
> > > > > and the iommu node.
> > > > > =

> > > > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > > > Acked-by: Rob Herring <robh@kernel.org>
> > > > > ---
> > > > > +	vop: vop@fe040000 {
> > > > > +		reg =3D <0x0 0xfe040000 0x0 0x3000>, <0x0 0xfe044000 0x0 0x100=
0>;
> > > > > +		reg-names =3D "regs", "gamma_lut";
> > > > =

> > > > reg-names does not seem to be part of the dt-binding.
> > > > Though now in the vop2-driver I see that the code uses that naming.
> > > > =

> > > > I guess we might want to just go the vop1-way by using numbered
> > > > platform-resources via a follow-up patch and drop the regnames here?
> > > =

> > > Or we could document the reg-names properties in a follow-up patch.
> > > Wouldn't that be better?
> > =

> > Also a possibility. Although that of course leads us into the naming
> > bike-shed ;-) ... i.e. for reg-names I'd do "vop" + "gamme-lut" (dash i=
nstead
> > of underscore) - instead of the ones used right now.
> =

> I also like dashes better than underscores and "vop" describes it better
> than the generic "reg" name, so at least the two of us don't need to
> dive deeper into the naming bike-shed ;)

:-D ... one problem solved already

> > While using numbered resources would keep the commonality between
> > both vops
> =

> I like the named resources better, but I'll leave it up to you. You
> decide, I'll create fixup patches in either direction.

ok, then let's go with the named-resources. As we'll need an Ack from
DT-people, we should probably expedite this.

Ideally I guess, do the dt-binding fixup + resend the fixed dt-node patches
with it. From the original series those dt-nodes + the hdmi rate stuff
is the only thing missing and the rates can be a separate thing.

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
