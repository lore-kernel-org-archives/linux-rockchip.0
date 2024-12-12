Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07F41E7717F
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Dec 2024 17:37:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rjtL72cLlg+EVnQ+4/MVBFoWMPOCzH5a3Xz1KnPh4sQ=; b=2Y5+cSXXPviAAG
	0miIe1v9/ywSGYbyAgkRmXYXsMfpOY7ty5tyKL7OuLvTA5I3tjP8f2UuRG2ENhFwhNG8xindZPmBN
	qnEt3D96jj5Qb+xCXU6L8ILwfAtLXt0zqf8/fgfgDjtENLEkfDPmQNs+2tzqoaYb89BAkBoivEaIj
	tLbrjBpEulshUpJIyHCFtr8FQ3yhOPc7I8BMbEDWQ7WicYSlhU4wLUbfq6ZPtdiXzQx3EqiqZ2Mjt
	18oTQyayH7FCrsPioWZkQsAWvkrbbx19mLmAsrCfukVb0wdhiONxFdQOrVEbq0EHQYEPdJ6KS/lk6
	LPee5aiuvmSBZ6moihig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLn7m-00000001DOn-0XKO;
	Thu, 12 Dec 2024 17:37:18 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLmqJ-000000019Wk-2H2c;
	Thu, 12 Dec 2024 17:19:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 8FD76A42957;
	Thu, 12 Dec 2024 17:17:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E566C4CECE;
	Thu, 12 Dec 2024 17:19:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734023954;
	bh=dL4WW9+TXrzEbjOQekzg4UUu2Gjw4DpLiaVHi1/aOKA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mAFBxTTUbMlBGLRFwOH6uh1gu5uAk8ul2LapCE7redfiakr9lU+DfqDw/seZ+XoNn
	 E6DGSLBYJh7dFu+6ZkF7BhQkdzPA7mUac827B1k8Urw/zdZWbLDD/DNxJ1woAe8y7G
	 wCFonH7xizERAAxBt5bphJl7R+fJA4hewWQH+0u//juj2h/GwnkuRMahMo2Cpk2pVD
	 jZ+mk4U5Vu7srWztySgGNYYFUNk+nyEli4QyUdJC3f6to2Kt8rlUNaYWr+doOc0m4b
	 maDp5ajaHerrociMJr8b03kExwIGeBn/yeWJ/KyfFulCE/uZhjAHXtgGnmkqaTq4Wq
	 5TzBc4ttsq5KQ==
Date: Thu, 12 Dec 2024 17:19:07 +0000
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
Message-ID: <20241212171907.GH7139@google.com>
References: <20241107114712.538976-1-heiko@sntech.de>
 <173402387748.2234929.7484373598047473898.b4-ty@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <173402387748.2234929.7484373598047473898.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241212_091915_650650_7E45C8F6 
X-CRM114-Status: GOOD (  16.47  )
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
YWRkIGRyaXZlciBmb3IgdGhlIGlucHV0IHBhcnQgb2YgcW5hcC1tY3UgZGV2aWNlc2oKPiAgICAg
ICBjb21taXQ6IDRiMjdlMGRhMjU3MzcxZDNkMTQxZmFlMzhmZGJkYzNjM2E2N2JjZTYKPiBbNy85
XSBod21vbjogYWRkIGRyaXZlciBmb3IgdGhlIGh3bW9uIHBhcnRzIG9mIHFuYXAtbWN1IGRldmlj
ZXMKPiAgICAgICBjb21taXQ6IDQxNzU1ODcyYThhOGFiOGQxNjQ0NDU5ZDk2MzRjNTNiNzQzZmUy
YmUKCj4gWzgvOV0gYXJtNjQ6IGR0czogcm9ja2NoaXA6IGhvb2sgdXAgdGhlIE1DVSBvbiB0aGUg
UU5BUCBUUzQzMwo+ICAgICAgIChubyBjb21taXQgaW5mbykKPiBbOS85XSBhcm02NDogZHRzOiBy
b2NrY2hpcDogc2V0IGhkZCBsZWQgbGFiZWxzIG9uIHFuYXAtdHM0MzMKPiAgICAgICAobm8gY29t
bWl0IGluZm8pCgpBcyB5b3UgY2FuIHNlZSwgSSBoYXZlIF9ub3RfIGFwcGxpZWQgdGhlc2UgdHdv
IERUUyBwYXRjaGVzLgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
