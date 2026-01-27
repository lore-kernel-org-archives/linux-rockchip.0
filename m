Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16BDED2D8DA
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jan 2026 10:01:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9YYEu4GdUhixKvBiOS7DuvCODC5C2kWy9OuUkbS8/DU=; b=EjkJHl9OMeLOEt
	HfW0vwxFaREQev96XslSqN83L8gf/HGSMpl/2eHJiOdEE37LaPOF3Sln5eRV/2OxzN8mlXmjxt914
	H/fI3gCAoYaAE9X+2lA9UrgGzsoNtIiZVCMwTbYvmMGnUWKD4w7cl4SGcHpxtIhejup+3MG+xz9b2
	8mPGb+nbTSfLaoXr40HJdnb5mYo4DKeEEKD8d8YJsmdSWIWeQdAURYsD4iKoi96fNbmRPn1pg6XxW
	OFfomodzquzV6R8qYhtbI4hj20Gz6o4pn2YLLFRZPe+rCDoyKsLkiMGDuXm0Ov/VLwVJpUB69hauj
	ayF6cuuBWWvakRSX2wxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkfsc-0000000E0i4-2TrX;
	Tue, 27 Jan 2026 10:01:02 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkfsZ-0000000E0h5-0Qhq
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Jan 2026 10:01:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 1148E43921
	for <linux-rockchip@lists.infradead.org>; Tue, 27 Jan 2026 10:00:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2A8EC116C6
	for <linux-rockchip@lists.infradead.org>; Tue, 27 Jan 2026 10:00:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769508057;
	bh=60f8Q6hm2bOtEWad3lE65lnTlI/fT6nozEWfs0V1vWc=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=mCJWOChF9mdeXXM4bLVAnaHNJk85/0YmzljlxbEUftUowD64R9gPmonHLmyv+dkpD
	 r2YSya9PMbR92ka9hNjsbZYSQwSmvACJ0bGIT7Mw2401BbjBWAFAb+VVtg6aovdBaY
	 /pp5t/rY/gnVEXWpvu/cP5ModZdUp9ifJOyGGDDPP3X7amlhT9Yal2I9ZLVN/a9+eX
	 LJqvJWSmrkgCJ9eKOA7fYU+SjLNhRJ0iEwugRvWx1IR6HcBiMjN4qalz6KB2iGMRrb
	 8Zt9kG9mt8pCxQkjdy4CFTixQ9Yfp+v0WbQD/L4LrPOQJ8729s7grphO4D3APTAkER
	 LyTX6ZKMBhTpQ==
Received: by mail-yx1-f51.google.com with SMTP id 956f58d0204a3-649655f14d7so3063261d50.1
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Jan 2026 02:00:57 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWgF3WH93HwsdkOoaMmU9w7hnkaFtGGnTtpX3Xv8Esx/zK3dTmGzWw/3TzEeD8F19BnP0ybtDdQX499qT8jtw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwTWGonGJdCoooGUpNmUe8eoBkkZvlFdE8YcEpvkoPRlz4G2GX3
	I8PXIbyxNCcJD3wfbDokTZgFOSa6odSq+ztvBdalIUMKMImTSN+zj6NQNdGytePtgPQ/LUAdPLy
	1re9z+HSF8XhrglJmbuGBzO4D9bbsHcY=
X-Received: by 2002:a05:690e:134f:b0:63c:f01e:f8a with SMTP id
 956f58d0204a3-6498fc46aa4mr569506d50.46.1769508057244; Tue, 27 Jan 2026
 02:00:57 -0800 (PST)
MIME-Version: 1.0
References: <bddc0469f25843ca5ae0cf578ab3671435ae98a7.1769429546.git.robin.murphy@arm.com>
 <CAMRc=MfQCrhgv7DcWrr3TWe8DtpZSRrkxb5KDHsGq1jPjUAHww@mail.gmail.com>
In-Reply-To: <CAMRc=MfQCrhgv7DcWrr3TWe8DtpZSRrkxb5KDHsGq1jPjUAHww@mail.gmail.com>
From: Linus Walleij <linusw@kernel.org>
Date: Tue, 27 Jan 2026 11:00:46 +0100
X-Gmail-Original-Message-ID: <CAD++jLk_ATHWwt_e+KN1+2sLYxqB4n-mdrbdxUHpHvnryeF+fg@mail.gmail.com>
X-Gm-Features: AZwV_Qio_o-Mq2iM8scY0YLmPrOEH2sBCtjt6jzEPfeEfBoz7oFz9Fw0tU17ghY
Message-ID: <CAD++jLk_ATHWwt_e+KN1+2sLYxqB4n-mdrbdxUHpHvnryeF+fg@mail.gmail.com>
Subject: Re: [PATCH] gpio/rockchip: Stop calling pinctrl for set_direction
To: Bartosz Golaszewski <brgl@kernel.org>
Cc: Robin Murphy <robin.murphy@arm.com>, heiko@sntech.de, sebastian.reichel@collabora.com, 
	m.szyprowski@samsung.com, linux-rockchip@lists.infradead.org, 
	linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	stable@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_020059_163583_D6BB898E 
X-CRM114-Status: GOOD (  14.67  )
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

T24gTW9uLCBKYW4gMjYsIDIwMjYgYXQgMjo0OOKAr1BNIEJhcnRvc3ogR29sYXN6ZXdza2kgPGJy
Z2xAa2VybmVsLm9yZz4gd3JvdGU6Cj4gT24gTW9uLCBKYW4gMjYsIDIwMjYgYXQgMToxMuKAr1BN
IFJvYmluIE11cnBoeSA8cm9iaW4ubXVycGh5QGFybS5jb20+IHdyb3RlOgo+ID4KPiA+IE1hcmtp
bmcgdGhlIHdob2xlIGNvbnRyb2xsZXIgYXMgc2xlZXBpbmcgZHVlIHRvIHRoZSBwaW5jdHJsIGNh
bGxzIGluIHRoZQo+ID4gLmRpcmVjdGlvbl97aW5wdXQsb3V0cHV0fSBjYWxsYmFja3MgaGFzIHRo
ZSB1bmZvcnR1bmF0ZSBzaWRlIGVmZmVjdCB0aGF0Cj4gPiBsZWdpdGltYXRlIGludm9jYXRpb25z
IG9mIC5nZXQgYW5kIC5zZXQsIHdoaWNoIGNhbm5vdCB0aGVtc2VsdmVzIHNsZWVwLAo+ID4gaW4g
YXRvbWljIGNvbnRleHQgbm93IHNwZXcgV0FSTigpcyBmcm9tIGdwaW9saWIuCj4gPgo+ID4gSG93
ZXZlciwgYXMgSGVpa28gcG9pbnRzIG91dCwgdGhlIGRyaXZlciBkb2luZyB0aGlzIGlzIGEgYml0
IHNpbGx5IHRvCj4gPiBiZWdpbiB3aXRoLCBhcyB0aGUgcGluY3RybCAuZ3Bpb19zZXRfZGlyZWN0
aW9uIGhvb2sgZG9lc24ndCBldmVuIGNhcmUKPiA+IGFib3V0IHRoZSBkaXJlY3Rpb24sIHRoZSBo
b29rIGlzIG9ubHkgdXNlZCB0byBjbGFpbSB0aGUgbXV4LiBBbmQgc3VyZQo+ID4gZW5vdWdoLCB0
aGUgLmdwaW9fcmVxdWVzdF9lbmFibGUgaG9vayBleGlzdHMgdG8gc2VydmUgdGhpcyB2ZXJ5IHB1
cnBvc2UsCj4gPiBzbyBzd2l0Y2ggdG8gdGhhdCBhbmQgcmVtb3ZlIHRoZSBwcm9ibGVtYXRpYyBi
dXNpbmVzcyBlbnRpcmVseS4KPiA+Cj4gPiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwo+ID4g
Rml4ZXM6IDIwY2YyYWVkODlhYyAoImdwaW86IHJvY2tjaGlwOiBtYXJrIHRoZSBHUElPIGNvbnRy
b2xsZXIgYXMgc2xlZXBpbmciKQo+ID4gU3VnZ2VzdGVkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVp
a29Ac250ZWNoLmRlPgo+ID4gU2lnbmVkLW9mZi1ieTogUm9iaW4gTXVycGh5IDxyb2Jpbi5tdXJw
aHlAYXJtLmNvbT4KPiA+IC0tLQo+Cj4gTGludXMsCj4KPiBXaXRoIHlvdXIgQWNrIEkgY2FuIHF1
ZXVlIHRoaXMgZm9yIHY2LjE5LXJjOC4KCkxhdGUgdG8gdGhlIHNob3cgOikKCkhlaWtvJ3MgQUNL
IGlzIG1vcmUgdGhhbiBlbm91Z2ggZm9yIHRoaXMgZHJpdmVyLCBoZSBrbm93cwpSb2NrY2hpcCB3
YXkgYmV0dGVyIHRoYW4gbWUuCgpZb3VycywKTGludXMgV2FsbGVpagoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
