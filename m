Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99B2BD1AD50
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Oct 2024 12:30:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2/x+qA5deh+DQAySO/KuuKLPd6TJecdVq2heUnC4H78=; b=oPpi2ABqJK/6+p
	z4I6OORZh8/7HmuQVpNKg1rwtrjI8KpTMcB4o+7R5pHXeFIC+F1BsX2oAERZlZuH7VyGKoIGMWzyu
	4wFeiZ3E2tyJi/9Lh4JZqZq9i/TxEK9W9/fShH9f3GxJ8U3RS0fHSe7Nkr4yEXoN+MVo0JhrsmuBP
	Zd5txzwUYHW71h8Gu0B+SvaZkyQzzWomWZsfbbTvyGpZY6v8LLQy5nyaXdTt+N3Mss4cvL3GCrnYn
	PrQoRUFVKmmtJQK4znGTS+Vl67mteBR4JDixzecru0Eyt7InagTxeQAj5FxQfs3D/07bZcZAG6ZlX
	oIIkOvn0S2Y+SOSTs3fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t13A8-0000000BkRp-0zMR;
	Wed, 16 Oct 2024 12:30:00 +0000
Received: from mail-qk1-x731.google.com ([2607:f8b0:4864:20::731])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t137X-0000000Bjnp-2cRN
	for linux-rockchip@lists.infradead.org;
	Wed, 16 Oct 2024 12:27:22 +0000
Received: by mail-qk1-x731.google.com with SMTP id af79cd13be357-7b14443a71eso86372385a.1
        for <linux-rockchip@lists.infradead.org>; Wed, 16 Oct 2024 05:27:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1729081638; x=1729686438; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BNLjlnEnDyHjV3CBswVgJafVhgghTbfH6ZETGps1FrE=;
        b=O4M3pXW2WNSMrwmXRx+ec33flNTvH/dGIAXl5gLF/U35u1zN4Nk6s1cyJcL/TSfNIF
         fdJFnyMLGhS9iqywMS/o3OKz46CmQ+3ZK9R1lPgCONq3L3PeXy17jOTq/BE9cWHl2wfo
         /o+pipBqneJ54lFhLuRnGmnxj/8HCM2x+Arg8ROKc1ng8R3Tw0A+KEwC1O3Ld47C6jWO
         OyWrLIGocz325kWuCyDGFIpqKP6tDjUg+Xim1pKyxbWru/TUiaZFMujx3SO515IAA2ef
         zE/ABadZz+kJq/shKT0uv/MP5gDFgtEDfrXCk1Vh1XVqdhaaX1EbHnObypULrQcks1x7
         mpOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729081638; x=1729686438;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BNLjlnEnDyHjV3CBswVgJafVhgghTbfH6ZETGps1FrE=;
        b=w7jwcic9xSeWD2UDtYM+j4It6FZKkfnNi5tWm39Ogv4k+yyUA9Di2DGj7cMfuQEnvh
         9r9xfEHQI2fGva0jxdEY2U4kiJESbKxLhQh3BPwfZJzPAPYyyRXBR1amNGBkly0KmBF0
         521GlyfObaZoSwj7HXkEWSO2bsHYOnr6SaspvGpVHI9HFG0QWmYvJl0QoeBZHmsE1FuW
         kfGGNUfrxqlF3Gb9vlC/VqGNahvTB15pp9LuIjNRDqdGcuUQbclgh23leJFPpzBl3mR2
         WnjMXO6z3owrhljyz1WBuFoIRoXYWQBL3BPaga4lNe8Ifq/guY9fpSP9KxSvWfe9xjX6
         cA6Q==
X-Forwarded-Encrypted: i=1; AJvYcCVM/SExsdZ+04VFO8dvr1fJEZLjGVyBOti8dJFUsIEZjARQDrBNHvIQbKCkVuI+Hc+YEf6mqDM/NxdDsPIOBA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw2tKQ6Fy3hIucGQ/PeZiG0wzpfi8gujDEgi7PfkRHwBOt35vOV
	+0W4qDb1ecWzmt84Sh4Noqitn/hxbFSUusINkoUfKNG79nLzUggpBJk9mD7787jQCST6GXrjMib
	yVbnOLlRAmu+72wknS5zHcla+m/jz+8NyfdLBuw==
X-Google-Smtp-Source: AGHT+IEr2RGRH7z7eOPt4+/WSGTQZH3Rri8cgQyjmurOqgpwt74+wkRyeSLE84F+GLTwunyO3mI8dvjKyhWbsrjeDMI=
X-Received: by 2002:a05:620a:2989:b0:7a9:ab72:7374 with SMTP id
 af79cd13be357-7b120fc4b5bmr2484755985a.35.1729081637696; Wed, 16 Oct 2024
 05:27:17 -0700 (PDT)
MIME-Version: 1.0
References: <20241014222022.571819-4-pZ010001011111@proton.me>
 <7b45f190.452f.1928e41b746.Coremail.andyshrk@163.com> <o_Cyz_ARcHj4zNlovv75MBwslIRhn3YWlscoNrlpLVobh7eWIMEQR5bNv0yhHx2KEx_gbYi_gH-8Y-CdvRZs9lZscz3-lhAbM50GXUdtSKY=@proton.me>
 <30940542.b36d.19290215124.Coremail.andyshrk@163.com> <1974DYrs9gLrQrZ5VwCglFgKDDK686iyqnS_g6uPB-s9wZ_4CqfZXPjmYWihLgrkRu7ptNjpkFeqB0uTt73RFId6cL8FowQ8LFltPmaKCoI=@proton.me>
 <1ae9f15d.e52.19292e05e73.Coremail.andyshrk@163.com>
In-Reply-To: <1ae9f15d.e52.19292e05e73.Coremail.andyshrk@163.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Wed, 16 Oct 2024 13:27:06 +0100
Message-ID: <CAPj87rOmPyat12S4WUixiUBAsuAEEbyNX5VY2JS+wn5a1jux0A@mail.gmail.com>
Subject: Re: Re:Re:[PATCH v5] rockchip/drm: vop2: add support for gamma LUT
To: Andy Yan <andyshrk@163.com>
Cc: Piotr Zalewski <pZ010001011111@proton.me>, hjc@rock-chips.com, heiko@sntech.de, 
	andy.yan@rock-chips.com, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, 
	dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	skhan@linuxfoundation.org, Dragan Simic <dsimic@manjaro.org>, 
	Diederik de Haas <didi.debian@cknow.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_052719_794074_66928A05 
X-CRM114-Status: GOOD (  13.06  )
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

SGkgYWxsLAoKT24gV2VkLCAxNiBPY3QgMjAyNCBhdCAwMjoxMSwgQW5keSBZYW4gPGFuZHlzaHJr
QDE2My5jb20+IHdyb3RlOgo+IEF0IDIwMjQtMTAtMTYgMDQ6MTM6NDAsICJQaW90ciBaYWxld3Nr
aSIgPHBaMDEwMDAxMDExMTExQHByb3Rvbi5tZT4gd3JvdGU6Cj4gPk9rIEkgZ2V0IGl0IG5vdy4g
SXMgc3VjaCByZXdvcmsgY29ycmVjdD8gLSB3aGVuIGdhbW1hIExVVCBmb3IgcmszNTZ4IGlzCj4g
PmJlaW5nIHNldCwgaW5zdGVhZCBvZiBkaXNhYmxpbmcgdGhlIExVVCBiZWZvcmUgdGhlIGdhbW1h
IExVVCB3cml0ZSBmb3IgdGhlCj4gPmN1cnJlbnQgQ1JUQydzIHZpZGVvIHBvcnQsIGFjdGl2ZSB2
aWRlbyBwb3J0IGlzIHNlbGVjdGVkLiBTZWxlY3Rpb24gaXMKPiA+YmFzZWQgb24gaWYgRFNQIExV
VCBFTiBiaXQgaXMgc2V0IGZvciBwYXJ0aWN1bGFyIHZpZGVvIHBvcnQuIGVnOgo+Cj4gSWYgdGhl
IHVzZXJzcGFjZSB3YW50IHRvIHNldCBnYW1tYSBmb3IgQ1JUQ3gsICB0aGVuIHRoYXQgaXMgaW5k
ZWVkIHdoZXJlIHRoZXkgd2FudCB0byBzZXQgdGhlCj4gZ2FtbWEgb27jgIJUaGUgZHJpdmVyIHNp
bGVudGx5IHNldHMgdGhlIGdhbW1hIG9uIGFub3RoZXIgQ1JUQywgd2hpY2ggaXMgbm90IHdoYXQg
dGhlIHVzZXIgd2FudHMuCj4KPiBJIHRoaW5rIHRoZXJlIGFyZSB0d28gb3B0aW9uc++8mgo+IO+8
iDHvvIlyZXR1cm4gYSBlcnJvciBpZiBnYW1tYSBpcyBlbmFibGUgb24gb3RoZXIgQ1JUQ++8jCB0
aGlzIGlzIHdoYXQgd2UgZG9uZSBpbiBvdXIgQlNQIGNvZGVbMV0KPiAgICgyKSAgZGlzYWJsZSB0
aGUgZHNwX2x1dCBvbiBwcml2aW91cyBDUlRDLCB0aGVuIHN3aXRjaCB0byB0aGUgY3VycmVudCBD
UlRDIHdoaWNoIHVzZXJzcGFjZSB3YW50cy4KCjEgaXMgdGhlIG9ubHkgc29sdXRpb24gdGhhdCBj
YW4gd29yay4gU2lsZW50bHkgY2hhbmdpbmcgdGhlIGNvbG91cgpwcm9wZXJ0aWVzIG9mIGEgc2Vw
YXJhdGUgQ1JUQyBpcyBub3QgT0ssIHNpbmNlIHRoaXMgY2FuIGxlYWQgdG8KZGlzcGxheWluZyBp
bmNvcnJlY3QgY29udGVudC4KCkNoZWVycywKRGFuaWVsCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
