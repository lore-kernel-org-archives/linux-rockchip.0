Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBE6DC4167B
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Dec 2023 15:15:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GHJOb+yXscI7qslkr41UFrVqSWNfctN58R2JeuHiq0c=; b=f4u9BTJDzxTU0Z
	YmtcsvAYOvCRk1kp7w+zrQWYU0MUafs4dQXj2SIwO5YMqui0SMj93ajrmG/Mbp5e1iYjzTGnsUdur
	7JeC5ltQzl1KxusA0AF6R1/o3v8+VBBjM+bafEjVSWAc2WUSba2PcnCkKCp2Dfp2Y+6SU3lVALqSk
	wgrIbtEmUqn6TY6Vdv1yUEIrn3xUUs374pgh5ivvTL7+JzcAxCvz+4ggZaBRyys9t1TWw8COh9NQr
	P7k7BgWMWt/PXvpB9MZJvOEVl6vkwf2awKMzUULj9L0XbYe3UAg36jYmbYaVU1AF8EIbLvSd05zh5
	K2faJXRFCMO5xY8nsgug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r95F1-00E1Un-0n;
	Fri, 01 Dec 2023 15:15:43 +0000
Received: from mgamail.intel.com ([192.198.163.11])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r95Ey-00E1Ti-2b;
	Fri, 01 Dec 2023 15:15:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1701443740; x=1732979740;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=tWb4VPgidAHQe+HcKW5PIOVqtBQKyGJANuwYhvqD8Tg=;
  b=NgBhyeelC1swKK5kV7pU94TPWZS0zb4/79AzqxyO2UA7UV9nrYSFDwGH
   QlzW6juuSkw4FqjTS2Rr5TNO0tIsYEuCT3YhLddFepoLIFkNDG2m80XDo
   Q0VDyJBet1MEc+/jUaxuiwz290r9zaGOeNBUPk7VAzV9aNIklqD2yX2VA
   9IdXrJ9UIoTCXdDzRj8etlcUfnXawVkATajFmuGyuPgYiNpW7OVSFW6AQ
   JJGmR14apBzTR2JxbAVMILhuRoUCy9Oh+a2iHkyR9CRZezDVDkXx0/q6R
   NIdMPoFBqHBTEIM85e6SAKlRIttIyIq+gIRKkSoCWeZIKngWPRzcSPNfg
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="362390"
X-IronPort-AV: E=Sophos;i="6.04,241,1695711600"; 
   d="scan'208";a="362390"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Dec 2023 07:15:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="763176400"
X-IronPort-AV: E=Sophos;i="6.04,241,1695711600"; 
   d="scan'208";a="763176400"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
  by orsmga007.jf.intel.com with SMTP; 01 Dec 2023 07:15:26 -0800
Received: by stinkbox (sSMTP sendmail emulation); Fri, 01 Dec 2023 17:15:25 +0200
Date: Fri, 1 Dec 2023 17:15:25 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maxime Ripard <mripard@kernel.org>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Emma Anholt <emma@anholt.net>, Jonathan Corbet <corbet@lwn.net>,
	linux-kernel@vger.kernel.org, Samuel Holland <samuel@sholland.org>,
	Sandy Huang <hjc@rock-chips.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	linux-doc@vger.kernel.org, Hans Verkuil <hverkuil@xs4all.nl>,
	linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
	dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
	linux-sunxi@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 05/45] drm/connector: Check drm_connector_init
 pointers arguments
Message-ID: <ZWn4jUsVgjubVPvB@intel.com>
References: <20231128-kms-hdmi-connector-state-v4-0-c7602158306e@kernel.org>
 <20231128-kms-hdmi-connector-state-v4-5-c7602158306e@kernel.org>
 <87h6l66nth.fsf@intel.com>
 <v3hplco5fdedv6bnc6mwx2zhhw4xxdiekha26ykhc5cmy7ol77@2irk3w4hmabw>
 <ZWXv1Oi_sH0BRWao@intel.com>
 <2mnodqvu2oo674vspiy4gxhglu3it5cq47acx5itnbwevgc4cf@c7h2bvnx3m2n>
 <ZWcB4Ak8QnwkhObR@intel.com>
 <2lbs5dkpusow72koxknoautcfb6e2ygq5wledim4i572ya5xlc@stc4koneykhm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2lbs5dkpusow72koxknoautcfb6e2ygq5wledim4i572ya5xlc@stc4koneykhm>
X-Patchwork-Hint: comment
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231201_071540_856274_BCB71C64 
X-CRM114-Status: GOOD (  45.85  )
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

On Fri, Dec 01, 2023 at 10:01:49AM +0100, Maxime Ripard wrote:
> On Wed, Nov 29, 2023 at 11:18:24AM +0200, Ville Syrj=E4l=E4 wrote:
> > On Wed, Nov 29, 2023 at 10:11:26AM +0100, Maxime Ripard wrote:
> > > Hi Ville,
> > > =

> > > On Tue, Nov 28, 2023 at 03:49:08PM +0200, Ville Syrj=E4l=E4 wrote:
> > > > On Tue, Nov 28, 2023 at 02:29:40PM +0100, Maxime Ripard wrote:
> > > > > On Tue, Nov 28, 2023 at 02:54:02PM +0200, Jani Nikula wrote:
> > > > > > On Tue, 28 Nov 2023, Maxime Ripard <mripard@kernel.org> wrote:
> > > > > > > All the drm_connector_init variants take at least a pointer t=
o the
> > > > > > > device, connector and hooks implementation.
> > > > > > >
> > > > > > > However, none of them check their value before dereferencing =
those
> > > > > > > pointers which can lead to a NULL-pointer dereference if the =
author
> > > > > > > isn't careful.
> > > > > > =

> > > > > > Arguably oopsing on the spot is preferrable when this can't be =
caused by
> > > > > > user input. It's always a mistake that should be caught early d=
uring
> > > > > > development.
> > > > > > =

> > > > > > Not everyone checks the return value of drm_connector_init and =
friends,
> > > > > > so those cases will lead to more mysterious bugs later. And pro=
bably
> > > > > > oopses as well.
> > > > > =

> > > > > So maybe we can do both then, with something like
> > > > > =

> > > > > if (WARN_ON(!dev))
> > > > >    return -EINVAL
> > > > > =

> > > > > if (drm_WARN_ON(dev, !connector || !funcs))
> > > > >    return -EINVAL;
> > > > > =

> > > > > I'd still like to check for this, so we can have proper testing, =
and we
> > > > > already check for those pointers in some places (like funcs in
> > > > > drm_connector_init), so if we don't cover everything we're incons=
istent.
> > > > =

> > > > People will invariably cargo-cult this kind of stuff absolutely
> > > > everywhere and then all your functions will have tons of dead
> > > > code to check their arguments.
> > > =

> > > And that's a bad thing because... ?
> > > =

> > > Also, are you really saying that checking that your arguments make se=
nse
> > > is cargo-cult?
> > > =

> > > We're already doing it in some parts of KMS, so we have to be
> > > consistent, and the answer to "most drivers don't check the error"
> > > cannot be "let's just give on error checking then".
> > > =

> > > > I'd prefer not to go there usually.
> > > > =

> > > > Should we perhaps start to use the (arguably hideous)
> > > >  - void f(struct foo *bar)
> > > >  + void f(struct foo bar[static 1])
> > > > syntax to tell the compiler we don't accept NULL pointers?
> > > > =

> > > > Hmm. Apparently that has the same problem as using any
> > > > other kind of array syntax in the prototype. That is,
> > > > the compiler demands to know the definition of 'struct foo'
> > > > even though we're passing in effectively a pointer. Sigh.
> > > =

> > > Honestly, I don't care as long as it's something we can unit-test to
> > > make sure we make it consistent. We can't unit test a complete kernel
> > > crash.
> > =

> > Why do you want to put utterly broken code into a unit test?
> =

> Utterly broken code happens. It probably shouldn't, but here we are.
> =

> Anyway, you mostly missed the consistent part.
> =

> The current state with it is:
> =

>   - planes:
>     - drm_universal_plane_init warns if funcs->destroy NULL
>     - drm_universal_plane_alloc errors out if funcs is NULL
>     - drmm_universal_plane_alloc warns and errors out if funcs or funcs->=
destroy are NULL
> =

>   - CRTC:
>     - drm_crtc_init_with_planes warns if funcs->destroy NULL
>     - drmm_crtc_init_with_planes warns if funcs or funcs->destroy are NULL
>     - drmm_crtc_alloc_with_planes warns and errors out if funcs or funcs-=
>destroy are NULL
> =

>   - encoder:
>     - drm_encoder_init warns if funcs->destroy NULL
>     - drmm_encoder_init warns and errors out if funcs or funcs->destroy a=
re NULL
>     - drmm_encoder_alloc warns and errors out if funcs or funcs->destroy =
are NULL
> =

>   - connectors:
>     - drm_connector_init warns and errors out if funcs or funcs->destroy =
are NULL
>     - drm_connector_init_with_ddc warns and errors out if funcs or funcs-=
>destroy are NULL
>     - drmm_connector_init warns and errors out if funcs or funcs->destroy=
 are NULL

Those are perhaps fine, as things may not oops immediately if you get
that wrong. But NULL checking things that will anyway oops immediately,
(and there's not chance the thing will do anything useful if you prevent
the oops with a NULL check) doesn't make any sense to me. It just makes
you doubt the entire universe when you see code like that.

> =

> I think that just proves that your opinion is just not as clear cut as
> you'd like it to be, and it's far from being the policy you claim it is.
> =

> Plus, we're not even remotely consistent there, and we're not
> documenting that anywhere.
> =

> And we have plenty of other examples of static stuff being checked
> because it just makes sense. All variants of drm_crtc_init_with_planes
> will for example check that the correct plane type is associated to the
> primary and cursor planes.
> =

> We should fix that.

Ideally the compiler should catch all of this. But given we are
implementing this in C (and even C23 constexpr was neutered beyond
uselessness) that's not really possible in any nice way :(

-- =

Ville Syrj=E4l=E4
Intel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
