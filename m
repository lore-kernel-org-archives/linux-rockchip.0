Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBF40CD5BB1
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 May 2026 08:43:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ctRdYf2W0M5LAQ18w87Y2TM8QXim7zK+OC8ilcom7yw=; b=qaM/N3g2CiMWuy
	6oWO6oEFeJJN5UVTe1/z4mCUKJygIuWqtRfUKtYeZGmx3u4FjcXPa07+mB4UjVH5ccJcB6+LK4b10
	E1RmEAUE8ZW003EE9oU8xjVeXwZ5GnIGEUWKh0wzxHS3CugwC9nqoeZjuKjX9At5YCYEdhr1faPj6
	psBCqT6hEYSqki8i+x5RUzeTIlFbKvj9qAvlprZUjDrks/C+y7S0F7iIeIXNDckfhZ9sWmJTEyuCz
	VSnOqq9/ORTBeHyNI5f/8PLhF7cfkVZr7zQ7vYHPqXfzK1BG7RbsKt76pBOS311WdRiWIN51/9sv6
	7cPWl4up8sQDIGz9Iwlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQLTP-0000000ADqi-3lsQ;
	Fri, 22 May 2026 08:43:15 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQLTN-0000000ADpm-2Gff;
	Fri, 22 May 2026 08:43:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=Gotifz0xhZuJ54eoZRFKuXrlKTTQrnNqUx9KJdbsj+o=; b=dh8JJPWgyuzJYiQNgKow0kB4t/
	j2vVPeJ040BzACNCJQ1Zi0eWE8FNqz/vPBkQ9GqZTD+lFd2tEVqViqNz2NLHGqJ3+idC5xNDxsu7o
	F5YKWgmh+bE2G1d8JoZM+14voH0RZ2v06kb393p6NzokjRLNtglCPZxSxbxURMR8d77/VUQt3zIHn
	+p2eSbmmhxwN1WtlmglJvzwbwR1Iqb5QjNo/af8x29muOGCGI8zLgcaYtmZ4y2xhXV47RlXoqT5DD
	k0RBpJhV0Fm3Kr7qAdgq/THYoL4S8RmWYNwsdpmFTUkzy35uP/OPIcClUT97zHU10+9roTy04hpEk
	Mz3I8cxQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Steven Price <steven.price@arm.com>,
 Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Subject: Re: [PATCH] ARM: rockchip: keep reset control around
Date: Fri, 22 May 2026 10:43:09 +0200
Message-ID: <4223462.bcXerOTE6V@phil>
In-Reply-To: <74844de05ed99d29424ba71e3c625020afdddf61.camel@pengutronix.de>
References: <20260521210915.2331176-1-heiko@sntech.de> <7845032.1B3tZ46Xf9@phil>
 <74844de05ed99d29424ba71e3c625020afdddf61.camel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_014313_642652_8F9D698D 
X-CRM114-Status: GOOD (  26.88  )
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

QW0gRnJlaXRhZywgMjIuIE1haSAyMDI2LCAxMDoyMDowNiBNaXR0ZWxldXJvcMOkaXNjaGUgU29t
bWVyemVpdCBzY2hyaWViIFBoaWxpcHAgWmFiZWw6Cj4gT24gRnIsIDIwMjYtMDUtMjIgYXQgMDk6
MjAgKzAyMDAsIEhlaWtvIFN0dWVibmVyIHdyb3RlOgo+ID4gQW0gRG9ubmVyc3RhZywgMjEuIE1h
aSAyMDI2LCAyMzowOToxNSBNaXR0ZWxldXJvcMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIEhl
aWtvIFN0dWVibmVyOgo+ID4gPiBEbyBub3QgcHV0IHRoZSByZXNldCBjb250cm9sLCByZXRhaW4g
ZXhjbHVzaXZlIGNvbnRyb2wgb3ZlciBpdC4KPiA+ID4gQWZ0ZXIgdHVybmluZyBvbiBhIENQVSwg
dGhlIGNvcnJlc3BvbmRpbmcgcmVzZXQgbGluZSBtdXN0IHN0YXkKPiA+ID4gZGVhc3NlcnRlZC4K
PiA+ID4gCj4gPiA+IFRoaXMgYWxzbyBhdm9pZHMgY2FsbGluZyByZXNldF9jb250cm9sX3B1dCgp
IGJlZm9yZSB3b3JrcXVldWVzCj4gPiA+IGFyZSBvcGVyYXRpb25hbC4KPiA+ID4gCj4gPiA+IEZp
eGVzOiA3OGViYmZmNmQxYTAgKCJyZXNldDogaGFuZGxlIHJlbW92aW5nIHN1cHBsaWVyIGJlZm9y
ZSBjb25zdW1lcnMiKQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBQaGlsaXBwIFphYmVsIDxwLnphYmVs
QHBlbmd1dHJvbml4LmRlPgo+ID4gPiBUZXN0ZWQtYnk6IFN0ZXZlbiBQcmljZSA8c3RldmVuLnBy
aWNlQGFybS5jb20+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0Bz
bnRlY2guZGU+Cj4gPiA+IC0tLQo+ID4gPiAgYXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9wbGF0c21w
LmMgfCAxNiArKysrKysrKysrLS0tLS0tCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0
aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKPiA+ID4gCj4gPiA+IGRpZmYgLS1naXQgYS9hcmNoL2Fy
bS9tYWNoLXJvY2tjaGlwL3BsYXRzbXAuYyBiL2FyY2gvYXJtL21hY2gtcm9ja2NoaXAvcGxhdHNt
cC5jCj4gPiA+IGluZGV4IGY0MzJkMjJiZmVkOC4uZjY1OWQ4OTRiZmFlIDEwMDY0NAo+ID4gPiAt
LS0gYS9hcmNoL2FybS9tYWNoLXJvY2tjaGlwL3BsYXRzbXAuYwo+ID4gPiArKysgYi9hcmNoL2Fy
bS9tYWNoLXJvY2tjaGlwL3BsYXRzbXAuYwo+ID4gPiBAQCAtMzQsNiArMzQsNyBAQCBzdGF0aWMg
aW50IG5jb3JlczsKPiA+ID4gIAo+ID4gPiAgc3RhdGljIHN0cnVjdCByZWdtYXAgKnBtdTsKPiA+
ID4gIHN0YXRpYyBpbnQgaGFzX3BtdSA9IHRydWU7Cj4gPiA+ICtzdGF0aWMgc3RydWN0IHJlc2V0
X2NvbnRyb2wgKmNwdV9yc3RjWzRdOwo+ID4gCj4gPiBBZnRlciBzbGVlcGluZyBvbiB0aGF0LCB0
aGlzIHNob3VsZCBiZSBjcHVfcnN0Y1s1XTsKPiA+IAo+ID4gQ29yZXR4LUE5IFNvQ3MgbmVlZCB0
byBlbmFibGUgdGhlIFNDVSBwb3dlci1kb21haW4gd2hpY2ggdGhhbmtmdWxseQo+ID4gc2l0cyBh
dCBpbmRleCA0IG9mIHRoZSBwb3dlci1kb21haW4gcmVnaXN0ZXIuCj4gPiAKPiA+IFNvIHdoaWxl
IHdlIChhbHJlYWR5KSBleHBlY3Qgbm8gcmVzZXQgY29udHJvbCBmb3IgdGhhdCwgd2UgbmVlZCBh
dCBsZWFzdAo+ID4gbWFrZSBzdXJlLCBpdCdzIG5vdCByZWFkaW5nIGludG8gdW5kZWZpbmVkIG1l
bW9yeQo+IAo+IFRoZSBhY2Nlc3MgaW4gcG11X3NldF9wb3dlcl9kb21haW4oKSBpcyBnYXRlZCBi
eQo+IChwZCA8IEFSUkFZX1NJWkUoY3B1X3JzdGMpKS4gQW5kIG5jb3JlcyBpbiByb2NrY2hpcF9z
bXBfcHJlcGFyZV9jcHVzKCkKPiBjYW4gbm90IGJlIGxhcmdlciB0aGFuIDQuCgphcmdoIC4uLiB5
b3UncmUgcmlnaHQgb2YgY291cnNlLiBTbyB0aGUgcGF0Y2ggY2FuIHN0YXkgYXMgaXQgaXMuClNo
b3VsZCBub3QgdGhpbmsgYWJvdXQgY29kZSBiZWZvcmUgZ29pbmcgdG8gc2xlZXAgOy0pCgoKSGVp
a28KCj4gPiBhbmQgdGh1cyBuZWVkIHRoYXQgZW1wdHkgZmllbGQgaW4gdGhlIGFycmF5Lgo+IAo+
IFdlIGNvdWxkIGRyb3AgdGhlIEFSUkFZX1NJWkUgY2hlY2sgYW5kIGFkZCBhIHBsYWNlaG9sZGVy
IHRvIHRoZSBhcnJheSwKPiBidXQgaXQgd291bGQgbmVlZCB0byBiZSBzZXQgdG8gRVJSX1BUUigt
RUlOVkFMKS4gT3RoZXJ3aXNlIHdlJ2QgaGF2ZSB0bwo+IHJlcGxhY2UgYWxsIHRoZSBJU19FUlIo
cnN0YykgY2hlY2tzIGFzIHdlbGwuIEkgdGhpbmsgdGhhdCB3b3VsZCBiZSBhCj4gZ29vZCBmb2xs
b3ctdXAgY2hhbmdlLgo+IAo+IHJlZ2FyZHMKPiBQaGlsaXBwCj4gCgoKCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
