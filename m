Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 440C2C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 13:50:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nz1sQeZ7nJ33HzTNbZC+kxVjAoFYFhLRfSXAdByek6Y=; b=AuHmAgUDE6O0Cz
	rFhlCBxsVXIVLSATye/ld9PDRvvA/5pfnXxfRdw0VoUKhMEdQcqhnL+qT7WADpr2pbZ/ElS70ihUJ
	0CpGPlEZuUg/pcfdnOwe6B+RDyGpO6B68Qtvy20S0Cp+iw8Nmrlg+okEN3/pRBgmozf1FMTLY/fmI
	IUqJvxbcW4fEHMonhNeX0yk+zzai4gKfvXF1DQGH/afusG2NpZGrswxYA8w2sRBp9bY82mGZdU22V
	I0tKwSnhRxuCTF0zpR4bHdvW2m3rZLKGUjI2RDaRgTXztDeHPoha+8P/9j9iWylp1AHJhTrTAmSm+
	EO/fNtJvbA/P9MafzwGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7yTC-005Pju-05;
	Tue, 28 Nov 2023 13:49:46 +0000
Received: from mgamail.intel.com ([192.55.52.115])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7yT8-005PiC-1O;
	Tue, 28 Nov 2023 13:49:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1701179382; x=1732715382;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=ho8ya67y0bcAC8iRE41B+MB3YSCUZNByqFAIWF4TZg8=;
  b=BkXECsL9o4udUY40LmKJ7iFUvkkuXhFJ4jfZlr6p0wDS+Ifxw2s1v8a1
   Z77hAeysdaz/eHnY3NnTMS0ITckHxLhIu72q2c4rnq/bHu204ALGmrpBa
   cBypY45NZS/7UmdJED3XR/YLFS8P/bDXqEQsLOlp9MAvr4ijSAF8yQy1q
   J3a+vacWkjbm1ah/qBkaKSwZrGK+/VgpwnUqXje9s719eIzHlp//RyO7k
   JU/Cgg6hiZaOoqWutTlXiIAqHSsc8Tx7Qws8yzrnODUS5NT3dp3aaIEwD
   NPb+QAdbeNH063auyaC4Foln37cGg0mkvjGkD5HoRZqPEXwmndUi/8g8A
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="392676339"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; 
   d="scan'208";a="392676339"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Nov 2023 05:49:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="761938211"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; 
   d="scan'208";a="761938211"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
  by orsmga007.jf.intel.com with SMTP; 28 Nov 2023 05:49:08 -0800
Received: by stinkbox (sSMTP sendmail emulation); Tue, 28 Nov 2023 15:49:08 +0200
Date: Tue, 28 Nov 2023 15:49:08 +0200
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
Message-ID: <ZWXv1Oi_sH0BRWao@intel.com>
References: <20231128-kms-hdmi-connector-state-v4-0-c7602158306e@kernel.org>
 <20231128-kms-hdmi-connector-state-v4-5-c7602158306e@kernel.org>
 <87h6l66nth.fsf@intel.com>
 <v3hplco5fdedv6bnc6mwx2zhhw4xxdiekha26ykhc5cmy7ol77@2irk3w4hmabw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <v3hplco5fdedv6bnc6mwx2zhhw4xxdiekha26ykhc5cmy7ol77@2irk3w4hmabw>
X-Patchwork-Hint: comment
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_054942_505413_D5B07BC7 
X-CRM114-Status: GOOD (  22.41  )
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

On Tue, Nov 28, 2023 at 02:29:40PM +0100, Maxime Ripard wrote:
> Hi Jani,
> =

> On Tue, Nov 28, 2023 at 02:54:02PM +0200, Jani Nikula wrote:
> > On Tue, 28 Nov 2023, Maxime Ripard <mripard@kernel.org> wrote:
> > > All the drm_connector_init variants take at least a pointer to the
> > > device, connector and hooks implementation.
> > >
> > > However, none of them check their value before dereferencing those
> > > pointers which can lead to a NULL-pointer dereference if the author
> > > isn't careful.
> > =

> > Arguably oopsing on the spot is preferrable when this can't be caused by
> > user input. It's always a mistake that should be caught early during
> > development.
> > =

> > Not everyone checks the return value of drm_connector_init and friends,
> > so those cases will lead to more mysterious bugs later. And probably
> > oopses as well.
> =

> So maybe we can do both then, with something like
> =

> if (WARN_ON(!dev))
>    return -EINVAL
> =

> if (drm_WARN_ON(dev, !connector || !funcs))
>    return -EINVAL;
> =

> I'd still like to check for this, so we can have proper testing, and we
> already check for those pointers in some places (like funcs in
> drm_connector_init), so if we don't cover everything we're inconsistent.

People will invariably cargo-cult this kind of stuff absolutely
everywhere and then all your functions will have tons of dead
code to check their arguments. I'd prefer not to go there
usually.

Should we perhaps start to use the (arguably hideous)
 - void f(struct foo *bar)
 + void f(struct foo bar[static 1])
syntax to tell the compiler we don't accept NULL pointers?

Hmm. Apparently that has the same problem as using any
other kind of array syntax in the prototype. That is,
the compiler demands to know the definition of 'struct foo'
even though we're passing in effectively a pointer. Sigh.

-- =

Ville Syrj=E4l=E4
Intel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
