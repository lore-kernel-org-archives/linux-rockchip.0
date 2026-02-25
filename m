Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39721FD3774
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Feb 2026 17:13:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CvxYClrUi12Co17Mmgx/ycbKl368G/9yhkBDYu2D52Q=; b=i1P/FybXqOiKlC
	aSAwEMMSe2CEGB1sLXgk/zS0bQVPUZ0DHkkiYh5lqzgjLVY9JEi9q+6wAvX8PpYA3lfOTlF0RYYTV
	EigSjOINUYxu1TZvKbvH/2r4n9478keGKu2nA1KAJLyfEoLxEI/rupoXaThed2d3Ysgz8Z6+Klmzq
	zCZVZp7xCc9uyDAw7QtiFciSZ5GHPZBsX4WQeTFwzu3D1F03iSdeyJBKGTLVImVgTBfcvwWVRYMkN
	b63cxUqCQX+X6IxyXKMheoRxYfn7XvGV4PJcRg6NQh0hxYvXuJFnqSFldiEoRozQlqntDbZSp+lLf
	nVjhwunpDYLDIRKTWbdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvISN-00000004ctK-2RHc;
	Wed, 25 Feb 2026 17:13:51 +0000
Received: from mgamail.intel.com ([192.198.163.13])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvISL-00000004cso-01MA
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Feb 2026 17:13:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1772039629; x=1803575629;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=/Gqyh0/nROjZdEErOmjcElyMoyoJM+EqiBL5hfjIf5U=;
  b=PkgtfdXyS6gijnRTuii5mrJhKP/baPUx2I4f/SklXipv5AIFlAXFM3dk
   xy1aPovRmU3tklsra0BBmh9i4Vkg9stn5VBFCKO5ZoPqZYKvRTmujr3ac
   +iBBQkKpy4AUCqY+W2CqVNL6WCbyVpKfbGmAQwnDlPXAd2WUOv5HhOvF5
   uGSUvWZ4XrAnBVf2+SX2P4EIuRFO73Ij4O7InNBNRjb7ANmbPVxch8rWT
   s8mNJk7roYZ3OvfA2IryDKnnplcOLgUSdX+i3Pld2z4SB3uuAsWqsOONc
   wLtuPK4u687Yk+wAs/3K1YVSAtG2bQCh7S203Olan2hImBShJYkCnmgZW
   A==;
X-CSE-ConnectionGUID: e77npRAYQnyXwoqyWNcaTQ==
X-CSE-MsgGUID: 3tHpf1CjSguG7Zl96xk9xg==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="75692642"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; 
   d="scan'208";a="75692642"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
  by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Feb 2026 09:13:48 -0800
X-CSE-ConnectionGUID: iaM9isGdRpGdTGSl0xuW4A==
X-CSE-MsgGUID: BApimQ8/Q5+X44MTu77xGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; 
   d="scan'208";a="221285069"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost) ([10.245.244.71])
  by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Feb 2026 09:13:45 -0800
Date: Wed, 25 Feb 2026 19:13:42 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Chris Morgan <macroalpha82@gmail.com>, linux-iio@vger.kernel.org,
	andy@kernel.org, nuno.sa@analog.com, dlechner@baylibre.com,
	jic23@kernel.org, jean-baptiste.maneyrol@tdk.com,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org,
	robh@kernel.org
Subject: Re: [PATCH 0/3] Add Invensense ICM42607
Message-ID: <aZ8txsLe6GJcya8B@smile.fi.intel.com>
References: <20260224163109.370930-1-macroalpha82@gmail.com>
 <aZ3iz18O3UEDTDqm@smile.fi.intel.com>
 <SN6PR1901MB465422A4BAFD469CD6966E0BA575A@SN6PR1901MB4654.namprd19.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SN6PR1901MB465422A4BAFD469CD6966E0BA575A@SN6PR1901MB4654.namprd19.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_091349_309988_BE708450 
X-CRM114-Status: GOOD (  16.88  )
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

On Wed, Feb 25, 2026 at 08:20:13AM -0600, Chris Morgan wrote:
> On Tue, Feb 24, 2026 at 07:41:35PM +0200, Andy Shevchenko wrote:
> > On Tue, Feb 24, 2026 at 10:31:02AM -0600, Chris Morgan wrote:
> > =

> > > Add support for the ICM42607 IMU. This sensor shares the same
> > > functionality but a different register layout with the existing
> > > ICM42600.
> > > =

> > > This driver should work with the ICM42607 and ICM42607P over both I2C
> > > and SPI, however only the ICM42607P over I2C could be tested.
> > =

> > Thanks for your contribution, but...
> > =

> > NAK.
> > =

> > It's unreviewable bulk out of 4kLoC! I even won't bother looking at any=
 other
> > messages in this (too mini) series.
> > =

> > TL;DR: reviewable code is limited at ~750 (or less) =B1 150 LoC per pat=
ch.
> =

> Please disregard this series then, I will do my best to split it apart
> into smaller pieces and resubmit.

Please do!

Also keep in mind that from the beginning the driver should work, so the sp=
lit
mustn't be by-file, it should be by-feature / documentation.

-- =

With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
