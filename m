Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAB64C83F07
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Jul 2025 10:49:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qMCDJkMvo3tEFEqx3RHiMXzKM8uwrZul+bim3grIQS4=; b=RFvDKOZTyIcEun
	lGXWOL2s9fECVV2y0NaHSsx0wZFImqS5+Bi75OAk/ofmX3Y/H7pRwyMZ4ZX3FVf/v3UxO8K4LCZZo
	rPkPJEG90k1DZhxjU2/++dIcpdEtfk8yzBWVI3Zqm/EnymU/XKc9xH/7+MuGu/O4siw4P6RxqxiOu
	+aadwIS3vFFtl6+DvJ3U3sh6IE5lb8PyuPrto3lYbUZL+RHJXiO5cAE04Fd6NOn8cC0i45/POJfsg
	VbwUCI+2fnGhKtBbLpz3SgyxBk5KVYfGvsMZxSOl1B3VNhRrHr2/LZDLDboerSeBTpcG0uQBdqGnT
	x1DAOOEPidH4W3jQKi0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYMwP-000000009Lj-0ZQJ;
	Sun, 06 Jul 2025 10:49:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYMtU-0000000099D-3Anq;
	Sun, 06 Jul 2025 10:46:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=1csdPJkrYHqiTa7aBB4h7tPO9DoYuuIveSxw3PXJbts=; b=Fv7E4uY+Zu9UYX7fPZFpy6q6Fn
	4qZleqGkmvnnsKgTWZalmNha82+2YZxq21TUUsgBclr3OO9eQ2wEcv5puHoYGgVyP/J07OZBhRsAY
	uCy5DyjvCYgO4yuiEfLjAHOaMC/PWOrfEJ4MkFk6vvRP3ZMkF0q3Oa/HqWRjVFvqr4vwB0Fr4qm7O
	BRXdTRhGtCmeL5El4kJ7JJ8J1PsQMORmIw7bZe/T6jyqegTYDJCsJgzdY/CBbSzSq34+Yy+/C+LWx
	RMFzxrAK4NrmIUo/Oaq+s+yTBJAipo/tyvE8PKUDZhXsvDVMmBx+vrve3XUiIIDxhTqMGj6xxAtIh
	T1KPJGzg==;
Received: from i53875a35.versanet.de ([83.135.90.53] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uYMt8-0002wB-6E; Sun, 06 Jul 2025 12:46:26 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Piotr Zalewski <pZ010001011111@proton.me>,
 Diederik de Haas <didi.debian@cknow.org>
Cc: hjc@rock-chips.com, andy.yan@rock-chips.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 airlied@gmail.com, simona@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] rockchip/drm: vop2: make vp registers nonvolatile
Date: Sun, 06 Jul 2025 12:46:25 +0200
Message-ID: <4207630.fIoEIV5pvu@diego>
In-Reply-To: <DB4WNMVBIWYS.273Z54K6O7DTM@cknow.org>
References: <20250706083629.140332-2-pZ010001011111@proton.me>
 <OWFHI491RHadO01jlQPA34GX28LC7SseKfNRwqQy4etkkJyP1YeF_0EDdAgpSXx5RW7go62EAOkedW5nbyn_hlz_K-NUrnNJeDFWv0OOSO8=@proton.me>
 <DB4WNMVBIWYS.273Z54K6O7DTM@cknow.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250706_034648_797864_921F0BB4 
X-CRM114-Status: GOOD (  14.27  )
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

QW0gU29ubnRhZywgNi4gSnVsaSAyMDI1LCAxMjozNzo0MCBNaXR0ZWxldXJvcMOkaXNjaGUgU29t
bWVyemVpdCBzY2hyaWViIERpZWRlcmlrIGRlIEhhYXM6Cj4gSGkgUGlvdHIsCj4gCj4gT24gU3Vu
IEp1bCA2LCAyMDI1IGF0IDEyOjIwIFBNIENFU1QsIFBpb3RyIFphbGV3c2tpIHdyb3RlOgo+ID4+
IFdpdGggYSBuZXcgdmVyc2lvbiBvZiBhIHBhdGNoLCB5b3UncmUgc3VwcG9zZWQgdG8gYWRkIHRo
ZSB0YWdzIHlvdQo+ID4+IHJlY2VpdmVkIGZvciBwcmV2aW91cyB2ZXJzaW9ucywgbGlrZSBteSBU
ZXN0ZWQtYnkgdGFnIFsxXS4KPiA+PiAKPiA+PiAodW5sZXNzIHRoZSBuZXcgdmVyc2lvbiBoYXMg
Y2hhbmdlZCBzbyBtdWNoIHlvdSBmZWVsIHRoZXkgc2hvdWxkIG5vdCBiZQo+ID4+IGNhcnJpZWQg
b3ZlcjsgeW91IHRoZW4gbmVlZCB0byBleHBsaWNpdGx5IGRlc2NyaWJlIHRoYXQgYW5kIHdoeSB5
b3UKPiA+PiBkcm9wcGVkIHRoZW0pCj4gPiAgCj4gPiBGb3Jnb3QuLi4gU2hvdWxkIGkgc2VuZCBp
dCBhcyBQQVRDSCB2MiBSRVNFTkQ/Cj4gCj4gSSBkb24ndCB0aGluayB0aGF0J3MgbmVlZGVkOyB0
aGUgbWFpbnRhaW5lciB3aWxsIGxldCB5b3Uga25vdyBpZiB0aGF0J3MKPiBkZXNpcmFibGUgb3Ig
dGhhdCB0aGV5IHdpbGwgYWRkIGl0IChiYWNrKSB3aGVuIGNvbW1pdHRpbmcuCgpUaGUgcHJvYmxl
bSBpcyB0aGVuIHJlbWVtYmVyaW5nIHRvIG1hbnVhbGx5IGNvbGxlY3QgdGhlIHRhZ3MgZnJvbSBh
CnByZXZpb3VzIHNlcmllcy4KCkZvciBteSByZWZlcmVuY2UsIGl0IHdhcwpUZXN0ZWQtYnk6IERp
ZWRlcmlrIGRlIEhhYXMgPGRpZGkuZGViaWFuQGNrbm93Lm9yZz4KClNvIGhvcGVmdWxseSBJJ2xs
IHJlbWVtYmVyIG5vdyA6LSkgYW5kIHRoZXJlIGlzIG5vIG5lZWQgZm9yIGEgcmVzZW5kCmF0IHRo
aXMgdGltZS4KCgpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
