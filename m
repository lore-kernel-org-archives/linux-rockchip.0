Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2700C52D7C
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 14:50:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qPv63ADR4KPqKuujVHZ7pKYx8cxIYES0oWTX377wrQg=; b=rXqPDRr29URhJ3
	/zyldOsLZRFCyTpUFLKXUCM4bJszuJYZcBzz1EKcKxahNMDypKm/3USgeomETJkj/o3TuTFw4dkB7
	PunIQVp/W+vJq3U11nN90NWAsmKUt8EqRjKjYUI59c5EzSFdYjtR9qB9uEGoxmnHOzI+TwL6puH2s
	o8mFVV2YllzCRgAdzAorYPuGWnDY3GE/xUeJBAaMWZePmqB+2co7GCEGwNJQgnbSE3gxeVDsthWcg
	NrQJM7ulY2BCbGBgqGyeni3G+lePh3BYM7JKJrAr2oG2hmYrhdOmc/f8HMR0OFUNHyJQl7bxECnVd
	kto0cPYTA6s5pZcc+kYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shVc7-0000000HAXx-1G5A;
	Fri, 23 Aug 2024 14:50:07 +0000
Received: from mgamail.intel.com ([198.175.65.21])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shVbL-0000000HAR2-3KzB;
	Fri, 23 Aug 2024 14:49:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1724424560; x=1755960560;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=F1xamHkmCiWIgbmGDKsQayOzdfeCChJxTzpDnXIDvGc=;
  b=YKcLg4V4c9ODGwRoGOUhbwZBFyXMJ1bdIaDsZ1RcCPEYx3JRFphZF6Oe
   9U+Go8yuLpynjUuFesM29PT2BDQwt9Gn4EJgvzMw3I7M/abRDl3mNhnmn
   d2wncx6ui1MJpxRDmDbFfC4bDpus4cJJ8BG6AKlauW379qCJU0IALgSCH
   YKRgzRwhjin03NOn8uddI0cjxwKYbpCa0eHk0ucdQeoZ5SWAx0udVCmUF
   EITDm1oCicl1bcg71nnMRcQjDXBtdujJ/QiRbtKzx/H3ZvuRRkkAhQTyo
   /qL63W6fNeM+7/+cOlTPq+ExHuMx270hheyT1mVTvqSkixUYZL7RjLP5q
   A==;
X-CSE-ConnectionGUID: QfsDeUigQUqN3JtjJ3LYRw==
X-CSE-MsgGUID: jOL9eravS3qUrtD5xd7fIw==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="22861435"
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; 
   d="scan'208";a="22861435"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
  by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Aug 2024 07:49:19 -0700
X-CSE-ConnectionGUID: NnZPkaVTTAa4ZTeJQ8odGw==
X-CSE-MsgGUID: RN6n3lZNRiCpKSvSSGi7Cw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; 
   d="scan'208";a="92611103"
Received: from smile.fi.intel.com ([10.237.72.54])
  by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Aug 2024 07:49:15 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1shVbF-00000000pFB-1A2I;
	Fri, 23 Aug 2024 17:49:13 +0300
Date: Fri, 23 Aug 2024 17:49:13 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Ye Zhang <ye.zhang@rock-chips.com>, linus.walleij@linaro.org,
	brgl@bgdev.pl, heiko@sntech.de, linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	mika.westerberg@linux.intel.com, tao.huang@rock-chips.com,
	finley.xiao@rock-chips.com, tim.chen@rock-chips.com,
	elaine.zhang@rock-chips.com
Subject: Re: [PATCH v2] gpio: rockchip: resolve overflow issues
Message-ID: <ZsihaV40J6RjJRvl@smile.fi.intel.com>
References: <20240823034314.62305-1-ye.zhang@rock-chips.com>
 <20240823034314.62305-4-ye.zhang@rock-chips.com>
 <f2194489-c637-4034-9077-951f74d621a5@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f2194489-c637-4034-9077-951f74d621a5@rock-chips.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_074919_903628_CE797F32 
X-CRM114-Status: UNSURE (   6.81  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gRnJpLCBBdWcgMjMsIDIwMjQgYXQgMDY6NTk6NDBQTSArMDgwMCwgU2hhd24gTGluIHdyb3Rl
Ogo+IOWcqCAyMDI0LzgvMjMgMTE6NDMsIFllIFpoYW5nIOWGmemBkzoKCi4uLgoKPiA+IC0JCW1h
eF9kZWJvdW5jZSA9IChHRU5NQVNLKDIzLCAwKSArIDEpICogMiAqIDEwMDAwMDAgLyBmcmVxOwo+
ID4gKwkJZGl2ID0gKHU2NCkoR0VOTUFTSygyMywgMCkgKyAxKSAqIDIgKiAxMDAwMDAwOwo+ID4g
KwkJbWF4X2RlYm91bmNlID0gRElWX1JPVU5EX0NMT1NFU1RfVUxMKGRpdiwgZnJlcSk7Cj4gCj4g
Y2FuJ3QgbWF4X2RlYm91bmNlID0gRElWX1JPVU5EX0NMT1NFU1RfVUxMKChHRU5NQVNLKDIzLCAw
KSArIDEpICogMiAqCj4gMTAwMDAwMCwgZnJlcSkgd29yaz8KCldvdWxkbid0IGJlIHRvbyBsb25n
IGxpbmUgaW4gdGhpcyBjYXNlPwoKLS0gCldpdGggQmVzdCBSZWdhcmRzLApBbmR5IFNoZXZjaGVu
a28KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
