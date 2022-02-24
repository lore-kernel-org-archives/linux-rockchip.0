Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DD27C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Feb 2022 12:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fnFsSlIxkhmVJjsh430PFaShPj6XlYhVPPM9DMgt7hQ=; b=ixNN66SbcST75j
	R4KCLgQcOmaCkLsGHOMonnXeTTveYggYCA7oFqJ3oZfM7aAVC9A7JJYi21GQLch4gcHNVsDSNcQBd
	rJpHyZfVND7WWZoOze3uoVGGXZQCoCh63z4SVLt14OmeE6XP6Wd8ug/b03Cmk0sfpa64tat9NEpAO
	mEMNUa7B6D+95oEDKnCwUh8NKDxt9XcnwycUKI1b6F5sUfxFAiljxaRWuHWOBVlnyDBWz+3ScDtlg
	iWmUa+HPJeLY2YE0Q6LBOcgQ+EZKC7IKWRKx/mQD5iGnb+5wGTDPSHJPhzIfH0IDetkMlC2c34D0i
	RhtO8eAX38LHK6fig7kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNDaI-000kfV-D6; Thu, 24 Feb 2022 12:51:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNDZa-000kQP-CW
 for linux-rockchip@lists.infradead.org; Thu, 24 Feb 2022 12:50:20 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nNDZX-0003vB-8N; Thu, 24 Feb 2022 13:50:15 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nNDZT-0001tx-Fl; Thu, 24 Feb 2022 13:50:11 +0100
Date: Thu, 24 Feb 2022 13:50:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Andy Yan <andy.yan@rock-chips.com>
Cc: Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH v6 21/23] drm: rockchip: Add VOP2 driver
Message-ID: <20220224125011.GU9136@pengutronix.de>
References: <20220217082954.2967889-1-s.hauer@pengutronix.de>
 <e1eb945b-d7da-f21c-ee19-e19f7f1d9b04@rock-chips.com>
 <20220217135823.GR18637@pengutronix.de> <6072461.kR79ftKOrO@diego>
 <8c0b1d1e-6787-8edc-c1fd-e1b68b92e60e@rock-chips.com>
 <20220218080024.GU18637@pengutronix.de>
 <8a386dbf-645b-8054-368b-535ded778d71@rock-chips.com>
 <20220224081909.GS9136@pengutronix.de>
 <39f8f014-8d69-47e7-9004-b401ebb17e29@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <39f8f014-8d69-47e7-9004-b401ebb17e29@rock-chips.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:44:30 up 75 days, 21:30, 89 users,  load average: 0.18, 0.25, 0.30
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220224_045018_452112_556833D6 
X-CRM114-Status: GOOD (  51.37  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Feb 24, 2022 at 06:54:35PM +0800, Andy Yan wrote:
> Hi Sascha:
> =

> On 2/24/22 16:19, Sascha Hauer wrote:
> > On Sat, Feb 19, 2022 at 03:35:12PM +0800, Andy Yan wrote:
> > > Hi Sascha:
> > > =

> > > On 2/18/22 16:00, Sascha Hauer wrote:
> > > > On Fri, Feb 18, 2022 at 11:50:32AM +0800, Andy Yan wrote:
> > > > > Hi Sascha:
> > > > > =

> > > > > On 2/17/22 22:06, Heiko St=FCbner wrote:
> > > > > > Am Donnerstag, 17. Februar 2022, 14:58:23 CET schrieb Sascha Ha=
uer:
> > > > > > > Hi Andy,
> > > > > > > =

> > > > > > > Please trim the context in your answers to the relevant parts=
, it makes
> > > > > > > it easier to find the things you said.
> > > > > > > =

> > > > > > > On Thu, Feb 17, 2022 at 08:00:11PM +0800, Andy Yan wrote:
> > > > > > > > Hi Sascha:
> > > > > > > > =

> > > > > > > > > +
> > > > > > > > > +	drm_for_each_encoder_mask(encoder, crtc->dev, crtc_stat=
e->encoder_mask) {
> > > > > > > > > +		struct rockchip_encoder *rkencoder =3D to_rockchip_enc=
oder(encoder);
> > > > > > > > > +		struct device_node *node, *parent;
> > > > > > > > > +
> > > > > > > > > +		parent =3D of_get_parent(rkencoder->port);
> > > > > > > > > +
> > > > > > > > > +		for_each_endpoint_of_node(parent, node) {
> > > > > > > > Is there any hurt directly use our downstream vendor kernel=
 method here: use
> > > > > > > > vcstate->output_if set by encoder driver to get which inter=
face we should
> > > > > > > > enable here?
> > > > > > > There is no vcstate->output_if in mainline currently. Ok, we =
could add
> > > > > > > that. The other thing is that there are multiple HDMI interfa=
ces and
> > > > > > > the id of the HDMI encoder is encoded into output_if. Downstr=
eam kernel
> > > > > > > adds OF aliases to the HDMI ports. I didn't want to go that r=
oute
> > > > > > > because it doesn't seem to be very elegant to me.
> > > > > aliases is a very comm strategy in device tree world.
> > > > Yes, but not for retrieving bit offsets into registers. Normally al=
iases
> > > > can be changed at board level without confusing drivers.
> > > > =

> > > > > And your method also
> > > > > add need additional dt binds to define RK3568_VOP2_EP_xxx
> > > > > > > > You method is ok with device tree,  but it tied up this dri=
ver to device
> > > > > > > > tree, we are now tring to extend vop2 driver work with ACPI=
, so we hope this
> > > > > > > > driver can be much more flexible.
> > > > > > > The current rockchip drm driver seems to be pretty much tied =
to device
> > > > > > > tree. There are probably many other places that need parallel=
 paths for
> > > > > > > ACPI support, I think we can delay this particular part until=
 we see the
> > > > > > > whole picture. In the end we can still retrieve the output_if
> > > > > > > information differently with ACPI while still retrieving the =
information
> > > > > > > from the device tree the way we are doing currently.
> > > > > The current driver only reference device thee at driver initial, =
we not wrap
> > > > > =

> > > > > device tree related things in other parts, so if we extend it to =
support
> > > > > ACPI,
> > > > > =

> > > > > we just need modify the initial code, this make things easier.
> > > > The device tree parsing could be moved out of vop2_crtc_atomic_enab=
le()
> > > > into some initialisation path. In the end it's static information,
> > > > there's no need to do it repeatedly in atomic_enable.
> > > This could be one solution, the repeatedly parsing device tree in
> > > atomic_enable is also my concern.
> > > =

> > > In addition, there are 2 HDMI, 2 eDP, 2 MIPI on the coming rk3588, so=
 it's
> > > better to consider give position
> > > =

> > > for HDMI1, EDP1, in=A0 include/dt-bindings/soc/rockchip,vop2.h
> > The defines are rk3568 specific. rk3588 would use a set of rk3588
> > specific defines along with a rk3588_set_intf_mux().
> =

> =

> Why not try to share these RK3568_VOP2_EP_XXX across all vop2 even vop ba=
sed
> rockchip socs?
> =

> If make these definition RK3568 specific, we need copy all of it and chan=
ge
> 3568 to 3588 than add HDMI1, HDMI0, EDP1,EDP0
> =

> when rk3588 coming, if there is another rk35xx, we need to the same thing
> again.... but they share same code logic and number,

I can make the defines RK3568 agnostic and use ROCKCHIP_ as prefix. The
actual numbers don't matter much, so we can add new interfaces or
instances thereof at the end with the next free number.

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
