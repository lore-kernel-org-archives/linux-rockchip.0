Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5124AF4BB65
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Feb 2026 17:41:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wm9EyyDsxo/Tq4cZnXf7FLDsPIsWnMMqhW9lveaZoyI=; b=UrvzSHty3c4x9F
	y0DXzBq6yET65yHGwJ2xWdM1wysTJ08GuIz3GIzRRT6L2spA0BH/EolLfxFgoelQN1E1T/OsUrLy+
	15ttIUIRuj/uJzGH+NkzT+yaW+pmobfQEHgcyk9bwwRg88p726vQZubqTxuM2ImU3ojPdw4yxa2XK
	i4NiV7a7rNrLLuc+z71ddhgWXF6VEAOB3cdODM58J4hLcWy42eW0ExusJkkO5g8ZG3LXLBdI1X6XA
	BXCZc0CgraHTRCqc3aBHlr4nmxiXMVBYPu+rZhEVqQtagJPLlNAZrGqEpD6k4js5pPR+XTLffOTd0
	uM57ZS7zUs2G795iiSIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuwPp-00000002VK3-1Zxn;
	Tue, 24 Feb 2026 17:41:45 +0000
Received: from mgamail.intel.com ([192.198.163.14])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuwPm-00000002VJj-42ZV
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Feb 2026 17:41:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1771954903; x=1803490903;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=36cqExmJ+xVEA46VvhswCFGe7wEAzemfq3PU9IFvDFY=;
  b=cE7whtBj00/qHQKNe+voXe8S+gqkZSDai33JYwdXAOZKp66+f4uEzBQL
   Zs6+ZSKtaUBsoytudcCjNV7zmV+1UPKdrCu4WVRWyIjvTdx3eNzhWe3xc
   Ktf/roFvipYirHa1PvZc3TV2jEhPePUuu9y2wMh+QtLLf769Gnt2aK/R/
   NXcqrZV8au8WigSvTv3p6faLnxLW4UA/8+sZ+Xkut8Z/Y6SfNIBhvMEWa
   JsKkVWLQ9yzFCZpRngoOxfvHCiZZoA6AXksQqKyQovXam3Td0I4p1vHx9
   iVvULoNKVHPviHNQfGUSwuHMuvHt4o+HwBDdmAzu6KEBK5i1ww+E+LibF
   w==;
X-CSE-ConnectionGUID: Eg0fRkyqQ62LyyUAlbGgBA==
X-CSE-MsgGUID: KwLTN1C4SJGhw4RxDcgCig==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="73048868"
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; 
   d="scan'208";a="73048868"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
  by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Feb 2026 09:41:42 -0800
X-CSE-ConnectionGUID: nkutu3TqRFWpMN82IReoBQ==
X-CSE-MsgGUID: hmwbiwOxSJOEXuUGE1Hn5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; 
   d="scan'208";a="215208062"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost) ([10.245.244.146])
  by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Feb 2026 09:41:39 -0800
Date: Tue, 24 Feb 2026 19:41:35 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
	dlechner@baylibre.com, jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 0/3] Add Invensense ICM42607
Message-ID: <aZ3iz18O3UEDTDqm@smile.fi.intel.com>
References: <20260224163109.370930-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260224163109.370930-1-macroalpha82@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260224_094143_014231_1BCB34C5 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
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

On Tue, Feb 24, 2026 at 10:31:02AM -0600, Chris Morgan wrote:

> Add support for the ICM42607 IMU. This sensor shares the same
> functionality but a different register layout with the existing
> ICM42600.
> =

> This driver should work with the ICM42607 and ICM42607P over both I2C
> and SPI, however only the ICM42607P over I2C could be tested.

Thanks for your contribution, but...

NAK.

It's unreviewable bulk out of 4kLoC! I even won't bother looking at any oth=
er
messages in this (too mini) series.

TL;DR: reviewable code is limited at ~750 (or less) =B1 150 LoC per patch.

-- =

With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
