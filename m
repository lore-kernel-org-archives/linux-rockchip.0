Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58570D32D9A
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Nov 2024 11:43:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OYWbwU/bHxcon0//CJr8atBoJ5mMz4HIebJHn7YjHnw=; b=nD9W8wtIe/MgS6
	UDOsC+gLyZZLtoUiNuk9OthntY4/ItQGH0vVayy3ZH3NEStQkhaRy0oIsLCU1zjfSGrC+FkWBXvAh
	QJom+StEzhyj6EnjEHXOQh+cs8B1vb26JjKJ8mWYvVzAEr+3xEGpIZLPK3FEVWFmNN0hW3vXo7H2G
	yhmCcw8GXVifFIvVWmsfR3rU0xJ5Wzvt9wS3NRNSqh+MN0Y5wCeZea2SIHzW1WWpYthHx50dKM9is
	58L/18DA/7HwjF+PG1tw4Q+8M086ZDwC5EvrO4sdLHZ2W4m9lD9cJ+30tcGWTEvXusfTLGPJOvesr
	mxFxPkGT+nxhCbY7ktGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tApIQ-00000003GTe-0elw;
	Tue, 12 Nov 2024 11:42:58 +0000
Received: from mgamail.intel.com ([198.175.65.19])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAoJi-000000035Bb-1E7Q;
	Tue, 12 Nov 2024 10:40:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1731408014; x=1762944014;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=WSbuPZjViriUwxWd751c13Ib+xMquV1ZIwNh2c1zfsk=;
  b=Mcaq+EWtEaGzXKgPGzJ2XrbutIyCI85qy92sbOx/n8JhxjeSR4WOynls
   I0rT6O336VFre0hgMS6z5b/QN2UkDtCOL8PaxmrsQ7KY+kuLKu1SPK3iH
   3Xo/gRMYnshBIO1NHy7ukyjeHQge7bocBu2h42rPrwPIV/lfrnTeL6JrN
   xSYXFTtqEIjJbnWzOoXJS3omPe+BWXPDZmtyB1IXsoq2Y3qM9QkuTL/59
   Al1FttMEYWdwOsciG6a5IIlqejTY/IdxWZc9ME6TMNhK6Oy2aOxyVCVu4
   06JS0dIYNKZRIYmm2iX06YXlmaC55tB8jopvBgvtTFNtLm6QVLGmBYWIk
   A==;
X-CSE-ConnectionGUID: fmxi8083SWS4Ru6kDqamyg==
X-CSE-MsgGUID: /v+3IMFyTCCkz8vYzQMK1Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="31091438"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; 
   d="scan'208";a="31091438"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Nov 2024 02:40:13 -0800
X-CSE-ConnectionGUID: x1PI4aN5Rga4d8kiUcZPSA==
X-CSE-MsgGUID: o+qOjH0vRYiNEwLirGwchQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,147,1728975600"; 
   d="scan'208";a="92482645"
Received: from smile.fi.intel.com ([10.237.72.154])
  by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Nov 2024 02:40:10 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.98)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1tAoJb-0000000DwMj-1sn6;
	Tue, 12 Nov 2024 12:40:07 +0200
Date: Tue, 12 Nov 2024 12:40:07 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Ye Zhang <ye.zhang@rock-chips.com>, linus.walleij@linaro.org,
	heiko@sntech.de, linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	mika.westerberg@linux.intel.com, tao.huang@rock-chips.com,
	finley.xiao@rock-chips.com, tim.chen@rock-chips.com,
	elaine.zhang@rock-chips.com,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH v5 4/4] gpio: rockchip: Set input direction when request
 irq
Message-ID: <ZzMwh2GMP-bE7aLO@smile.fi.intel.com>
References: <20241112015408.3139996-1-ye.zhang@rock-chips.com>
 <20241112015408.3139996-5-ye.zhang@rock-chips.com>
 <CAMRc=MfTmpLSEUVTXSu8jf9tyTfQc=iG9NpovFem-qSDOCnagQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMRc=MfTmpLSEUVTXSu8jf9tyTfQc=iG9NpovFem-qSDOCnagQ@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_024014_457776_A81E7D69 
X-CRM114-Status: GOOD (  11.99  )
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

T24gVHVlLCBOb3YgMTIsIDIwMjQgYXQgMDk6NDg6MDZBTSArMDEwMCwgQmFydG9zeiBHb2xhc3pl
d3NraSB3cm90ZToKPiBPbiBUdWUsIE5vdiAxMiwgMjAyNCBhdCAyOjU04oCvQU0gWWUgWmhhbmcg
PHllLnpoYW5nQHJvY2stY2hpcHMuY29tPiB3cm90ZToKPiA+Cj4gPiBTaW5jZSB0aGUgR1BJTyBj
YW4gb25seSBnZW5lcmF0ZSBpbnRlcnJ1cHRzIHdoZW4gaXRzIGRpcmVjdGlvbiBpcyBzZXQgdG8K
PiA+IGlucHV0LCBpdCBpcyBzZXQgdG8gaW5wdXQgYmVmb3JlIHJlcXVlc3RpbmcgdGhlIGludGVy
cnVwdCByZXNvdXJjZXMuCgouLi4KCj4gVGhpcyBsb29rcyBsaWtlIGEgZml4IHRvIG1lLCBkbyB5
b3Ugd2FudCBpdCBzZW50IGZvciBzdGFibGU/IElmIHNvLAo+IHBsZWFzZSBhZGQgdGhlIEZpeGVz
IHRhZyBhbmQgcHV0IGl0IGZpcnN0IGluIHRoZSBzZXJpZXMuCgpJbmRlcGVuZGVudGx5IG9uIHRo
ZSByZXNvbHV0aW9uIG9uIHRoaXMsIGNhbiB0aGUgZmlyc3QgdGhyZWUgYmUgYXBwbGllZCB0bwpm
b3ItbmV4dD8gSSB0aGluayB0aGV5IGFyZSB2YWx1YWJsZSBmcm9tIHRoZSBkb2N1bWVudGF0aW9u
IHBlcnNwZWN0aXZlIGFzCml0IGFkZHMgdGhlIGV4cGxhbmF0aW9uIG9mIHRoZSB2ZXJzaW9uIHJl
Z2lzdGVyIGJpdCBmaWVsZHMuCgpUaGUgbGFzdCBvbmUgc2VlbXMgdG8gbWUgaW5kZXBlbmRlbnQg
KGNvZGUgd2lzZSwgbWVhbmluZyBubyBwb3RlbnRpYWwKY29uZmxpY3RzKSB0byB0aGUgcmVzdCBh
bmQgbWF5IGJlIGFwcGxpZWQgdG8gZm9yLWN1cnJlbnQgbGF0ZXIgb24uCgotLSAKV2l0aCBCZXN0
IFJlZ2FyZHMsCkFuZHkgU2hldmNoZW5rbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
