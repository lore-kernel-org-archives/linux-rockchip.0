Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8759C5479D
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jan 2023 15:05:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8hL+ueEV6d3gYjF5NLotBDFTAWZZO36PUhfcHBAcTJI=; b=DA3otV2ald2HOT
	7G4UmcPtvj8FGK3Nf9kw3uQl7K2ksnIetSRXY9dpPV1WDEjrWHtsU0G5KbI3WLgcYERa9LgUhObUE
	FHMANPu4LlEk8ZPo5HiPn7E1E3BfWeMKBUAM8SdRXoytBTFr+w6Mr6ljIpGCdtIidHKrxvg/p/jsf
	ZWCyicTDA0L8tPD4ZfBOT4e+xgCvmjW6sBOgPuGguT4nQJjALPy319abGerFEOON1A/yEhhSEswqr
	UFjC0B2PO1Nx6P28WDY27XBr0gqO+NqpYB1dOIF+o07lpSrDtRzNl7/tnUYcB6K1fJ8E+8k1SzLWS
	M/a1jr+lYnWtHX8vvCrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFcf5-00Bv9i-7f; Wed, 11 Jan 2023 15:05:07 +0000
Received: from mga01.intel.com ([192.55.52.88])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFcev-00Bv4V-Bz
	for linux-rockchip@lists.infradead.org; Wed, 11 Jan 2023 15:04:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1673449497; x=1704985497;
  h=date:from:to:subject:message-id:references:mime-version:
   content-transfer-encoding:in-reply-to;
  bh=jxDJ3ooBqVnTaczv1GXFLe+oPshX0iJRCjOYwPWvPAA=;
  b=So19viAxImIb2Fy0yIZOWBVElxlOrvzsymy6JU11HuWagMyzTJbDvP/o
   aJ+PrRm8LxL1obS/OpduiDi2+oD7j5EXetci5cfab8nroet3EDc0sutI3
   INhtXbYWFXA67p8AgCQ/H7l6LYzZeP+MON93sLlxOuC28E99pVjtK3NHH
   4SmbqEbz8y0lBEwLmuecm6/wL+S3wXERZIkr+dRXHZIt1QlkupFllF7AT
   yIe/3LbWKp+pJr3JaQ2RYx2OunGAJC+dkCFyOpbG+XHWmflsaAYW0TFHm
   MfyVc7Emtksdg5+FNGflDt4n3QlVzqa+J3AQnpqyAgq+n1qd12sM9QUh6
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="350662840"
X-IronPort-AV: E=Sophos;i="5.96,317,1665471600"; 
   d="scan'208";a="350662840"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Jan 2023 07:03:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="687955288"
X-IronPort-AV: E=Sophos;i="5.96,317,1665471600"; 
   d="scan'208";a="687955288"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
  by orsmga008.jf.intel.com with SMTP; 11 Jan 2023 07:03:31 -0800
Received: by stinkbox (sSMTP sendmail emulation); Wed, 11 Jan 2023 17:03:30 +0200
Date: Wed, 11 Jan 2023 17:03:30 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Brian Norris <briannorris@chromium.org>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Sean Paul <seanpaul@chromium.org>,
	Michel =?iso-8859-1?Q?D=E4nzer?= <michel.daenzer@mailbox.org>,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	Sandy Huang <hjc@rock-chips.com>,
	linux-rockchip@lists.infradead.org, stable@vger.kernel.org
Subject: Re: [PATCH 1/2] drm/atomic: Allow vblank-enabled + self-refresh
 "disable"
Message-ID: <Y77PwoqlfUS5JK7q@intel.com>
References: <20230105174001.1.I3904f697863649eb1be540ecca147a66e42bfad7@changeid>
 <Y7hgLUXOrD7QwKs1@phenom.ffwll.local>
 <Y7hl0Z9PZhFk8On9@phenom.ffwll.local>
 <Y7h3cuAVE2fdS9K3@google.com>
 <Y7iFAJqGNXA7wHoK@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y7iFAJqGNXA7wHoK@phenom.ffwll.local>
X-Patchwork-Hint: comment
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_070457_485103_63D554F3 
X-CRM114-Status: GOOD (  21.42  )
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

On Fri, Jan 06, 2023 at 09:30:56PM +0100, Daniel Vetter wrote:
> On Fri, Jan 06, 2023 at 11:33:06AM -0800, Brian Norris wrote:
> > On Fri, Jan 06, 2023 at 07:17:53PM +0100, Daniel Vetter wrote:
> > > - fake vblanks with hrtimer, because on most hw when you turn off the=
 crtc
> > >   the vblanks are also turned off, and so your compositor would still
> > >   hang. The vblank machinery already has all the code to make this ha=
ppen
> > >   (and if it's not all, then i915 psr code should have it).
> > =

> > Is a timer better than an interrupt? I'm pretty sure the vblank
> > interrupts still can fire on Rockchip CRTC (VOP) (see also the other
> > branch of this thread), so this isn't really necessary. (IGT vblank
> > tests pass without hanging.) Unless you simply prefer a fake timer for
> > some reason.
> > =

> > Also, I still haven't found that fake timer machinery, but maybe I just
> > don't know what I'm looking for.
> =

> I ... didn't find it either. I'm honestly not sure whether this works for
> intel, or whether we do something silly like disable self-refresh when a
> vblank interrupt is pending :-/

Intel hardware doesn't enter PSR while the vblank interrupt is enabled.

-- =

Ville Syrj=E4l=E4
Intel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
