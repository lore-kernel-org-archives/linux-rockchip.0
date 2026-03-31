Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 867EE1061B32
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Mar 2026 11:26:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Aanjdg/ng/8J72EPPdckM8Oeu39ZbqFtYmhX2NwnizM=; b=Rx7qUZx+vjJShf
	n2y3Xj8gmCHuB/rB+M7wobqfeszcEeHSBG07Zl1n1ZUbe3Oy0GVFt58DF097ohOUNVFOyqdDpl1SV
	nt8FW8r0HitD8E1aeCMQHdU0dUD0U2J9QHMTO5LlxJl5FpXym1b9018NJT7TpNfYlEP0u2lwLZfRO
	JGyRe11chJPDj7WzteIoL5YyvCH0vAOG2fv5pXGRNBCdtN0BS31/f5lSMIjM1ACPC0WrGmmhf7/jt
	EutKv9TrCGV3zFQzic+11Y2D7re4YEqywGuOmzUazJRsQazTZI3OHM7gduDMIw0n1PabkJx0q/NNh
	1by/n+TIAFB4wrdsOvxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7XET-0000000Cr3R-3rkr;
	Tue, 31 Mar 2026 11:26:05 +0000
Received: from mgamail.intel.com ([198.175.65.16])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7XER-0000000Cr33-2qf6
	for linux-rockchip@lists.infradead.org;
	Tue, 31 Mar 2026 11:26:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1774956363; x=1806492363;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=NOTrhUUVowhwGx0t0rPG4rtZ1Nb6tAXMXdZrcPv++EE=;
  b=iejXe2AG94Edf70ySk4JpWsCRsw1MCBS0yCiIIr7Ia8FyB0IFG6EJQwl
   nJPYAk3Zct1ObYKZwwuUHiPYoO0+AZgOYVPjiMPsDiyVXusywd87NadGg
   f1MukiyfCIJtifTVSY3XdkD4G0iPxB4idL4T0fazU+q2LWF8G6bTmasrX
   oFF4ZaTOsUTnHqwuYoXpyZxzWHsUa1NZIbOBBqYLPpRP+M7/g10EqD+ZH
   Sh4a/gYmuCvSDTFHoApLt107A/CZWZFrV3okI9zQyGhoH3ZksDP/slVl9
   klOsdCAEqDbgrY2bWAcyaRWU2YU1+ZsCVFN937LC0aYf2XXT47tVEw4x9
   Q==;
X-CSE-ConnectionGUID: BghSGP+yRwe6IeLTzTs0jQ==
X-CSE-MsgGUID: 3mG+32IoRNatg/hm6DYWfQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="76157930"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; 
   d="scan'208";a="76157930"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Mar 2026 04:26:00 -0700
X-CSE-ConnectionGUID: uDPvsGmPQi2c20CLpwjzrw==
X-CSE-MsgGUID: Cd0Rxs2LQDe1SfgUw835JA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; 
   d="scan'208";a="225333852"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.245.209])
  by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Mar 2026 04:25:57 -0700
Date: Tue, 31 Mar 2026 14:25:54 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
	dlechner@baylibre.com, jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V3 0/9] Add Invensense ICM42607
Message-ID: <acuvQr0UVyGIQ7fo@ashevche-desk.local>
References: <20260330195853.392877-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260330195853.392877-1-macroalpha82@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260331_042603_756916_8D679CDC 
X-CRM114-Status: GOOD (  23.40  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, Mar 30, 2026 at 02:58:44PM -0500, Chris Morgan wrote:

> Add support for the ICM42607 IMU. This sensor shares the same
> functionality but a different register layout with the existing
> ICM42600.
> 
> This driver should work with the ICM42607 and ICM42607P over both I2C
> and SPI, however only the ICM42607P over I2C could be tested.
> 
> Changes Since V1:
>  - Instead of creating a new driver, merged with the existing inv_icm42600
>    driver. This necessitated adding some code to the existing driver to
>    permit using a different register layout for the same functionality.
>  - Split changes up a bit more to decrease the size of the individual
>    patches. Note that patch 0004 is still pretty hefty; if I need to split
>    further I may need to create some temporary stub functions.
>  - Used guard() and PM_RUNTIME_ACQUIRE_AUTOSUSPEND() on the new functions
>    per Jonathan's recommendations.
> 
> Changes Since V2:
>  - Went back to using a new driver on advice from Invensense engineer.

Okay, but this should be elaborated in the cover letter. If I followed
previous discussion correctly, the problem is the indirect subset of
registers that are absent on the 42600 series. But would be nice to have
the summary of what vendor engineers told you.

>  - Further split changes up into smaller chunks of functionality. Note
>    still that the largest patch is approximately 900 lines, and that while
>    the driver compiles cleanly at each commit it is not able to drive the
>    hardware until the commit that adds the Interrupt (as it also adds the
>    Makefile).
>  - Change the error to a warning when the devicetree binding does not match
>    the hardware ID.
>  - Dropped the ack on the devicetree bindings, as I am creating a new file
>    (for a new driver) instead of modifying the existing one.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
