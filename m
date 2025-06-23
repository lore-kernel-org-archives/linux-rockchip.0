Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B825C7115B
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Jun 2025 11:03:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kQyjJ+3e2L0JpoPo+Xri8aXX7SJ0qEvZkBUEb/zEGPU=; b=G5epR4y1GkDWh1
	4bQ0SgkDzPD24XsIVPVF/dAHFiltl7wgML9AfHknt9FgPl2DenwIddZt8eMjDqyFC2/Y+DsDDVXvp
	yQvRPu6p2p79IqmWUsiNqoO6LpoOGl4mms1o7LyMbHjtftFzIFUAhQXCvDxFS3/BmIdcpMmMDJdu5
	03iiGbAbx65UfnojsAXPjqzMUctDYgYTtIoeVXXBzVTqSQL+B+R97rfjCUy3kcG1tpxhO2l/TqXeg
	P9rLkYTAlrIAzv7TgAtlcuBvnCUoAvXiNQlbLl+ElSDdOdsiC2Z4LqxlMLhJZxGwr+wWBvpOMfcs/
	b/JLGep3KfnCCKOjIzzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTexg-00000002TLM-2cGl;
	Mon, 23 Jun 2025 11:03:40 +0000
Received: from mgamail.intel.com ([198.175.65.21])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTe65-00000002IOU-3hmV;
	Mon, 23 Jun 2025 10:08:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1750673298; x=1782209298;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=dix0Yhu3c8boRB+3OYeK+56zmV1v3N5vctgiK7sTU9I=;
  b=cYkpcNezUV2xakHOiZC36QbFYtfEC7BCtMRFbxDfEszHw5mdOKr9ajVf
   BPjFj+rsR2U//6l7UfRaS2sZJ+JptxCFRbwpfiM4TTJ0ESEw1d6lahr0h
   kS82kq3FaJ3BwIDEPbtscAxkzHfQKdHiAd7w867hPDNKAqGh0qxR2JhS3
   kGPPr5lXLvclSoumIFQjgx4lUhG9c6+yQ0pzxgFrFzmDaw8zPfXdUrkMU
   Qgy6WUEsDF+PvlfijQVPisGCYTyLQ35kICjQKR9coH12o6XYdKeIWsMRP
   VbjKERHtcfA2No2WL/AQRSxQox6VtOdP9+UJ7zCo4VYicGnZogmcUjKm+
   A==;
X-CSE-ConnectionGUID: 3aF+oRXCT0Oa2O9i2HZRHw==
X-CSE-MsgGUID: RRh5YkBoRLqN9rNWXZv7rQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11472"; a="52740977"
X-IronPort-AV: E=Sophos;i="6.16,258,1744095600"; 
   d="scan'208";a="52740977"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
  by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jun 2025 03:08:14 -0700
X-CSE-ConnectionGUID: b1RtfYh9QqGx1/7cVXdpcA==
X-CSE-MsgGUID: lQO2/vW8TGuyVMaj/z1Yig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,258,1744095600"; 
   d="scan'208";a="175160611"
Received: from abityuts-desk.ger.corp.intel.com (HELO kekkonen.fi.intel.com) ([10.245.244.8])
  by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jun 2025 03:08:11 -0700
Received: from kekkonen.localdomain (localhost [127.0.0.1])
	by kekkonen.fi.intel.com (Postfix) with ESMTP id 42C691201F7;
	Mon, 23 Jun 2025 13:08:07 +0300 (EEST)
Date: Mon, 23 Jun 2025 10:08:07 +0000
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6 krs, Bertel Jungin Aukio 5, 02600 Espoo
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Olivier Benjamin <olivier.benjamin@bootlin.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	Nicholas Roth <nicholas@rothemail.net>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
	imx@lists.linux.dev, ~diederik/pine64-discuss@lists.sr.ht,
	Dragan Simic <dsimic@manjaro.org>, Ondrej Jirman <megi@xff.cz>
Subject: Re: [PATCH v4 0/4] Describe the cameras in the PinePhone Pro dts
Message-ID: <aFknh7weIKoGKajQ@kekkonen.localdomain>
References: <20250620-camera-v4-0-0201a8ed5fae@bootlin.com>
 <aFj4kAXEhrR4Wbnz@kekkonen.localdomain>
 <13788127.uLZWGnKmhe@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <13788127.uLZWGnKmhe@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250623_030817_962394_BCE5DAD5 
X-CRM114-Status: GOOD (  24.86  )
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

Hi Heiko,

On Mon, Jun 23, 2025 at 12:05:22PM +0200, Heiko Stuebner wrote:
> Hi,
> =

> Am Montag, 23. Juni 2025, 08:47:44 Mitteleurop=E4ische Sommerzeit schrieb=
 Sakari Ailus:
> > Hi Olivier,
> > =

> > On Fri, Jun 20, 2025 at 05:21:31PM +0200, Olivier Benjamin wrote:
> > > This series adds support for the Pine64 PinePhone Pro's rear and front
> > > cameras in Device Tree.
> > > This is based on some of Ondrej Jirman's patches hosted in his tree at
> > > https://codeberg.org/megi/linux, but I have also fully reviewed and
> > > re-written the code from the RK3399 datasheet, the PinePhone Pro
> > > schematic, and the IMX258-0AQH5 software reference manual.
> > > =

> > > I have tested these changes on my PinePhone Pro and am able to take
> > > photos from both cameras using libcamera's cam.
> > > =

> > > This series has raised a question about the proper label name for the
> > > front/user camera and rear/world camera for phones.
> > > This series is using "ucam" and "wcam", which is used in a few other
> > > Rockship DTBs:
> > >  - arch/arm64/boot/dts/rockchip/px30-evb.dts
> > >  - rk3399-gru-scarlet.dtsi
> > > =

> > > Signed-off-by: Olivier Benjamin <olivier.benjamin@bootlin.com>
> > =

> > Thanks for the patches.
> > =

> > I've picked the first two in the set, presumably the rest will be merged
> > via another tree?
> =

> correct, and with the first two being applied, I can now also safely pick
> the other two :-)

Once in my tree, they'll next end up to the media committers' tree and
after some time you should be able to find them in linux-next. This process
will take some time. Just FYI.

-- =

Sakari Ailus

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
