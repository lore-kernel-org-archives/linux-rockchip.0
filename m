Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11312CD4F26
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Jun 2026 06:52:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=we/dl+5baVKsiyoTHPtVrx8l92M2HHLnuqrMsvkfoxE=; b=H+875Y6FGuVfpq
	6gFF+44ludxIRXx4Hg8tW/2FQKAqpKkF0legxxqncM789WwgGUfbHnHMy530cHxrs9rfUKgo3PLqZ
	VY2Fe+vOX2dZKn+uHehahzs81ldbpu8i+fWFaxLf7wiywXZy8gNN2HkY+AOrywNLKjfH2pSj2CS+S
	WCTtNtrBs48CkaX9njtMGqd/OvdPy4R1rV9cby0gKkaPxNQ30tUXT2BBatykI7tAJrgSEAEteReEV
	irRtzDjCBUpIJwUE45B/WPc+wj/Sj1L0XWYqX6Ji9w/z+2uQLPDEO6IUYqwslyWFPWNF0zr4uNdMd
	enVI5ia2htn8eykwVJBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbv02-00000005n05-1bMM;
	Tue, 23 Jun 2026 06:52:46 +0000
Received: from mgamail.intel.com ([192.198.163.10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbuzz-00000005mzX-1oFj
	for linux-rockchip@lists.infradead.org;
	Tue, 23 Jun 2026 06:52:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1782197563; x=1813733563;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=M5C03jwMOVPk3qADcuqWCbvD9inoDB6D4PE8mc9m/iM=;
  b=a4x6XwGtb1HFSMq8HyCXAvsAXL3FktvrmyzLMsV11GVbRJsPBWpZAho0
   8XGpiOC9kdxemxf6zz1YLRifM6wXQpHXNm72lrWXpHbLOyd/6pwgn7Qaq
   eqwhBt/j4VYY8xmkotJWcK2X1hcwPBwQ6v/Jq5tbwaIBpflsPVH59JqIn
   Vh/mwxf/pbwvzEcsMBDpY0TT55hWyVjW+wTS2Gngurde8XnrD11CI4jDG
   diTJ9TZtl9pjGg57tbDfGQCqkhGM/aTaFrp3Wrmzr/4zGEsbsBWJY6k/N
   HezcTvm8qU8vuzt2kOnecF8yd2O/getWdKPlE6SxJHbLWnDkmE4f/OCfh
   g==;
X-CSE-ConnectionGUID: Fr6psveASvCRzGmbPz7swg==
X-CSE-MsgGUID: JZI398++Q3GoXHnzQVAvVw==
X-IronPort-AV: E=McAfee;i="6800,10657,11825"; a="94322749"
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; 
   d="scan'208";a="94322749"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
  by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Jun 2026 23:52:42 -0700
X-CSE-ConnectionGUID: ljiDnSQ9TuKBoxJEyKJ3Iw==
X-CSE-MsgGUID: 0pnfVr1AR7mw7a/zjgqOXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; 
   d="scan'208";a="254417836"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.244.7])
  by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Jun 2026 23:52:39 -0700
Date: Tue, 23 Jun 2026 09:52:36 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Chris Morgan <macroalpha82@gmail.com>, linux-iio@vger.kernel.org,
	andy@kernel.org, nuno.sa@analog.com, dlechner@baylibre.com,
	jic23@kernel.org, jean-baptiste.maneyrol@tdk.com,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org,
	robh@kernel.org
Subject: Re: [PATCH V13 8/9] iio: imu: inv_icm42607: Add Gyroscope to icm42607
Message-ID: <ajotNPhg8fR3tLZp@ashevche-desk.local>
References: <20260615172554.160910-1-macroalpha82@gmail.com>
 <20260615172554.160910-9-macroalpha82@gmail.com>
 <ajEhr0JIQwzRgoZa@ashevche-desk.local>
 <PH0PR19MB997338E86152468CE26F60953FA5E42@PH0PR19MB997338.namprd19.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <PH0PR19MB997338E86152468CE26F60953FA5E42@PH0PR19MB997338.namprd19.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260622_235243_487001_82016B8E 
X-CRM114-Status: GOOD (  16.20  )
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

On Wed, Jun 17, 2026 at 04:10:49PM -0500, Chris Morgan wrote:
> On Tue, Jun 16, 2026 at 01:13:03PM +0300, Andy Shevchenko wrote:
> > On Mon, Jun 15, 2026 at 12:25:51PM -0500, Chris Morgan wrote:

...

> > Can be some of the code deduplicated between gyro and accel?
> 
> Probably a fair amount, but the deduplication will likely need to be
> undone somewhat if we get buffer, WoM or apex support added back
> (I don't have any devices with such functionality, so if anyone will
> do it then it won't be me). I can refactor more if you want, or we
> can keep it split like this to make it easy if someone else wants to
> tackle the buffers/IRQs stuff later? Your call.

Just asking. Jonathan, David, Nuno, what's your opinion on this?
Personal opinion is to avoid solving the issues that do not exist.
If you are not committing into those features, let's not prepare
driver for them right now.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
