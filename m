Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5810E7717F
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Dec 2024 17:37:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lt1oeWbS88Nw3ODDUTE5QuLRn5o3AVWvkHsFwblxzkg=; b=lFgZ2P9NpWU+iC
	F0KzhqDK97KdPuUdmRVr/X6rkgXwoCtYpHe7ps+jhnrBgDwHa+Cf1QN+HvidCzsJYgnfgR9YD5Nzo
	2+miyhBFX6/m4YgVi+o6E+XIboHT6rDMOodGTaPTYbKMG+inyRkRklSoL1oWIrevWhL/xZDp4ktHY
	B9/MPXoTMas5ebqaKPhFW5IZv/KMXMsn8Wu6p7z4Bm07oTghxp5ivV2NFXw2qRkzV9TcKbX9+nB+n
	sjeCcskvB+RN76SttxBX4zij0XAiVzaY1dThkrGXh+Z5BO4xBsg3BrkxfqwlN/1XBThlbR6OBhb71
	Uf9LhmaZIlh+UkMCjPhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLn7x-00000001DT6-27u9;
	Thu, 12 Dec 2024 17:37:29 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLmr3-000000019hi-3Tok;
	Thu, 12 Dec 2024 17:20:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E0D8D5C629D;
	Thu, 12 Dec 2024 17:19:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ECB52C4CED3;
	Thu, 12 Dec 2024 17:19:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734024001;
	bh=LA9bximptyWrxDDOhzWENsKcJdq+AL2ptZwBglUEvIQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tRdRO6rogumis9deCjy6y6ne1ICA01Nh28nZ0MFx+VpQWtctwbkrEQoULb7X2nZty
	 ib2ozEVzuuRswzktShb+9DTiYhG857AZfG6MV6HCngGUp6uB8wZQG7B6Sck/TO0bsl
	 GyKNbkmGweOgJkpqNJDZZ53agK6Fd1cMKQtu5pDVrijPxLL166lYt3c5cwE54JtnL6
	 o2MtW/WjDFjq//DW+MEBykBnNxiWdMRUXS5pipOvZJxfpj2nUobqZWQgyE+EYIW6RW
	 2oOFQd/rETDW5+xsMmQwyU0Y9bMLeYi8jSDf1hRCRx6K/eCgkc+BcrplodMYV6MtFE
	 gUHXkDWQvzwdQ==
Date: Thu, 12 Dec 2024 17:19:54 +0000
From: Lee Jones <lee@kernel.org>
To: jikos@kernel.org, jic23@kernel.org, Heiko Stuebner <heiko@sntech.de>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	jdelvare@suse.com, linux@roeck-us.net,
	srinivas.pandruvada@linux.intel.com, bentiss@kernel.org,
	dmitry.torokhov@gmail.com, pavel@ucw.cz, ukleinek@debian.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-hwmon@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-input@vger.kernel.org,
	linux-iio@vger.kernel.org, linux-leds@vger.kernel.org
Subject: Re: [PATCH v9 0/9] Drivers to support the MCU on QNAP NAS devices
Message-ID: <20241212171954.GI7139@google.com>
References: <20241107114712.538976-1-heiko@sntech.de>
 <173402387748.2234929.7484373598047473898.b4-ty@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <173402387748.2234929.7484373598047473898.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241212_092001_911385_0A762445 
X-CRM114-Status: GOOD (  15.95  )
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

T24gVGh1LCAxMiBEZWMgMjAyNCwgTGVlIEpvbmVzIHdyb3RlOgoKPiBPbiBUaHUsIDA3IE5vdiAy
MDI0IDEyOjQ3OjAzICswMTAwLCBIZWlrbyBTdHVlYm5lciB3cm90ZToKPiA+IFRoaXMgaW1wbGVt
ZW50cyBhIHNldCBvZiBkcml2ZXJzIGZvciB0aGUgTUNVIHVzZWQgb24gUU5BUCBOQVMgZGV2aWNl
cy4KPiA+IAo+ID4gT2YgY291cnNlIG5vIGRvY3VtZW50YXRpb24gZm9yIHRoZSBzZXJpYWwgcHJv
dG9jb2wgaXMgYXZhaWxhYmxlLCBzbwo+ID4gdGhhbmtmdWxseSBRTkFQIGhhcyBhIHRvb2wgb24g
dGhlaXIgcmVzY3VlLWluaXJkIHRvIHRhbGsgdG8gdGhlIE1DVSBhbmQKPiA+IEkgZm91bmQgaW50
ZXJjZXB0dHkgWzBdIHRvIGxpc3RlbiB0byB3aGF0IGdvZXMgb3ZlciB0aGUgc2VyaWFsIGNvbm5l
Y3Rpb24uCj4gPiAKPiA+IEluIGdlbmVyYWwgaXQgbG9va3MgbGlrZSB0aGVyZSBhcmUgdHdvIGRp
ZmZlcmVudCBnZW5lcmF0aW9ucyBpbiBnZW5lcmFsLAo+ID4gYW4gIkVDIiBkZXZpY2UgYW5kIG5v
dyB0aGlzICJNQ1UiIC0gcmVmZXJlbmNlZCBpbiB0aGUgc3RyaW5ncyBvZiB0aGUKPiA+IHVzZXJz
cGFjZSBoYW5kbGVycyBmb3IgdGhvc2UgZGV2aWNlcy4KPiA+IAo+ID4gWy4uLl0KPiAKPiBBcHBs
aWVkLCB0aGFua3MhCj4gCj4gWzEvOV0gSElEOiBoaWQtc2Vuc29yLWh1YjogZG9uJ3QgdXNlIHN0
YWxlIHBsYXRmb3JtLWRhdGEgb24gcmVtb3ZlCj4gICAgICAgY29tbWl0OiBlMDc5YTEyMGYzMWUz
ZjljMDAxODBhYTEzYzFkZjE4Y2MxMzhmN2ZlCj4gWzIvOV0gbWZkOiBjb3JlOiBtYWtlIHBsYXRm
b3JtX2RhdGEgcG9pbnRlciBjb25zdCBpbiBzdHJ1Y3QgbWZkX2NlbGwKPiAgICAgICBjb21taXQ6
IDhmNDAwOWFkOTAxYzQ0ZjA0MjhkYmRlNjU0YzRkZDFmYjI5Yzg2M2IKPiBbMy85XSBkdC1iaW5k
aW5nczogbWZkOiBhZGQgYmluZGluZyBmb3IgcW5hcCx0czQzMy1tY3UgZGV2aWNlcwo+ICAgICAg
IGNvbW1pdDogODg3N2JjZmYzZTNiNGYwOGExZmMwMjMyZGJmZGFlZGEwODVjZmRmMwo+IFs0Lzld
IG1mZDogYWRkIGJhc2UgZHJpdmVyIGZvciBxbmFwLW1jdSBkZXZpY2VzCj4gICAgICAgY29tbWl0
OiA5NDRjYTgyNmY2OWU0NzIzODUzYjM4NzY4NzViMDNhZWFmZTY3YjYwCj4gWzUvOV0gbGVkczog
YWRkIGRyaXZlciBmb3IgTEVEcyBmcm9tIHFuYXAtbWN1IGRldmljZXMKPiAgICAgICBjb21taXQ6
IGZlNmEyMWVlMzhmMTJlM2U1ZjlhZGJkMmY5YTg0MGJlMTA1Yjk0M2YKPiBbNi85XSBJbnB1dDog
YWRkIGRyaXZlciBmb3IgdGhlIGlucHV0IHBhcnQgb2YgcW5hcC1tY3UgZGV2aWNlcwo+ICAgICAg
IGNvbW1pdDogNGIyN2UwZGEyNTczNzFkM2QxNDFmYWUzOGZkYmRjM2MzYTY3YmNlNgo+IFs3Lzld
IGh3bW9uOiBhZGQgZHJpdmVyIGZvciB0aGUgaHdtb24gcGFydHMgb2YgcW5hcC1tY3UgZGV2aWNl
cwo+ICAgICAgIGNvbW1pdDogNDE3NTU4NzJhOGE4YWI4ZDE2NDQ0NTlkOTYzNGM1M2I3NDNmZTJi
ZQoKT25jZSBidWlsZCB0ZXN0aW5nIGlzIGNvbXBsZXRlLCBJJ2xsIHNlbmQgb3V0IGEgUFIuCgpO
b3RlIHRvIHNlbGY6IGliLW1mZC1oaWQtaHdtb24taW5wdXQtbGVkcy02LjE0CgotLSAKTGVlIEpv
bmVzIFvmnY7nkLzmlq9dCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
