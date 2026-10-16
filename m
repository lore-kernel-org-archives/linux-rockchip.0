Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3DEBCCA462
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2026 00:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5yKWVG7JTrRCCkUaYKv00DaPEbnYWdLkIASzJQCqlEw=; b=n9tzONa+fPSATu
	aNfVLv+e8FSlEQeVkjYGVO1qKXk1D6rZCKuEgWr4WlM2KukyWaTuTP4Co+uagRcu6oMprQFHYbOIr
	oPqohR8mFYPzGDcNl21mOPC2hejCFkAOlVQFrwR9ZIRkwrypFlmZCrZQQvwl7BDNts8r2jZDPdcga
	ISJuYZq3B+oO0h6PHbk1iRi22e1ro7IVBz53BHpT9Vssmt1IUZa9Jo1fYrCTMXyHsmkhYhkaIe14a
	DdRxS8ICBNik1OQBaD6bjxagjp3bQ6poaymFMmybOJsXAjDB0tdsamLZUQh5kdpkPaVZWCrf7OGZN
	nf8gVUlFVID3Y8rlR39Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHVy7-00000001dBa-3J21;
	Fri, 16 Oct 2026 00:38:43 +0000
Received: from mail-m127175.xmail.ntesmail.com ([115.236.127.175])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHVy4-00000001dAQ-1cgG;
	Fri, 16 Oct 2026 00:38:42 +0000
Received: from [172.16.12.48] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 51398676d;
	Fri, 16 Oct 2026 08:33:33 +0800 (GMT+08:00)
Message-ID: <bfe8baa4-e740-4908-9d2a-4defc5240a82@rock-chips.com>
Date: Fri, 16 Oct 2026 08:33:29 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-i2c@vger.kernel.org,
 Andi Shyti <andi.shyti@kernel.org>, linux-kernel@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, "david.wu" <david.wu@rock-chips.com>
Subject: Re: [PATCH] i2c: rk3x: Disable the controller between transfers
To: Alexey Charkov <alchark@flipper.net>
References: <20261015-i2c-rk3x-disable-v1-1-81625845c175@flipper.net>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20261015-i2c-rk3x-disable-v1-1-81625845c175@flipper.net>
X-HM-Tid: 0aa14220df3303a4kunm31bb4bf9443a31
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkZGhlLVhhMHh4aHUgYS0NNTFYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=HCvp4J3BqeW8tRqo6dqlhjxVhHgXindjIk9oimTtEj3E5SxwUCPWKXY2qPa/QlX7fedQWmi+NehpzYlQhIjTeohfO7GNITLnqNzecvfolBOsHQ/R/qUndYVWSMaKtnkYXdsgf01DZyKSl80XMKqkbbyRCpamHG37O4QclElLkSM=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=Ctt3HFSEzRTcfY1DycVxiEiuhDGVs7yfYDgMipksSOQ=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_173840_634829_E0122915 
X-CRM114-Status: GOOD (  20.79  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Q2M6ICsgRGF2aWQKCuWcqCAyMDI2LzEwLzE1IOaYn+acn+WbmyAyMjowMCwgQWxleGV5IENoYXJr
b3Yg5YaZ6YGTOgo+IFRoZSBkcml2ZXIgbGVhdmVzIHRoZSBjb250cm9sbGVyIGVuYWJsZWQgb25j
ZSBhIHRyYW5zZmVyIGNvbXBsZXRlcywgYW5kCj4gYW4gZW5hYmxlZCBjb250cm9sbGVyIGtlZXBz
IHRyYWNraW5nIHRoZSBidXMuIElmIHRoZSBsaW5lcyBjb2xsYXBzZSB1bmRlcgo+IGl0IHdoaWxl
IGlkbGUsIGFzIGhhcHBlbnMgd2hlbiBhIHRhcmdldCdzIHN1cHBseSBpcyBzd2l0Y2hlZCBvZmYg
d2hpbGUKPiBpdHMgYnVzIHB1bGwtdXBzIHN0YXkgcG93ZXJlZCwgaXRzIHN0YXRlIG1hY2hpbmUg
d2VkZ2VzIGRyaXZpbmcgU0RBIGxvdy4KPiBFdmVyeSBsYXRlciB0cmFuc2ZlciB0aGVuIHRpbWVz
IG91dCwgc2luY2UgdGhlIHRpbWVvdXQgcGF0aCBvbmx5IHJlcXVlc3RzCj4gYSBTVE9QIGFuZCBu
ZXZlciBkaXNhYmxlcyB0aGUgY29udHJvbGxlciwgYW5kIHRoZSBzdHVjayBzdGF0ZSBldmVuCj4g
c3Vydml2ZXMgYSBrZXhlYy4KPiAKPiBDbGVhciB0aGUgZW5hYmxlIGJpdCBvbmNlIGVhY2ggdHJh
bnNmZXIgaXMgZG9uZSwgc3VjY2Vzc2Z1bCBvciBub3QsIHNvCj4gdGhhdCB0aGUgY29udHJvbGxl
ciBkb2VzIG5vdCB3YXRjaCBhbiBpZGxlIGJ1cyBhbmQgc3RhcnRzIGV2ZXJ5IHRyYW5zZmVyCj4g
ZnJvbSBhIGNsZWFuIHN0YXRlLgo+IAoKSSBjaGVja2VkIHRoZSB2ZW5kb3Iga2VybmVsIHRyZWUg
YW5kIHNhdyBhbm90aGVyIGNhc2UgdGhhdCB5b3UgcGVyaGFwcwpuZWVkIHRvIGZvbGQgc29tZXRo
aW5nIHNpbWlsYXIgYmVsb3cgaW50byB5b3VyIHBhdGNoLCBhbG9uZyB3aXRoIHlvdXIKZGlzYWJs
aW5nIGNvbnRyb2xsZXI/CgogICAgIEluIHNvbWUgY2FzZe+8jGxvZyBsaWtlIHRoaXM6CgogICAg
IFsgICAxMi4zOTM5MjZdIHJrM3gtaTJjIGZmMTUwMDAwLmkyYzogaXJxIGluIFNUQVRFX0lETEUs
IGlwZCA9IDB4NTEKICAgICBbICAgMTIuNDE2NTkyXSByazN4LWkyYyBmZjE1MDAwMC5pMmM6IGly
cSBpbiBTVEFURV9JRExFLCBpcGQgPSAweDUxCgogICAgIFRoZSBpMmMgY2xvY2sgaXMgZGlzYWJs
ZWQsIHNvIHRoZSBwZW5kaW5nIGlycSBjbGVhbiBpcyBub3QKICAgICB3b3JrZWQuIERpc2FibGUg
dGhlIGludGVycnVwdCBhZnRlciB0aGUgaTJjIGpvYnMgd2VyZSBkb25lLAogICAgIHRoZSBlcnJv
ciBsb2cgd291bGQgbm90IGhhcHBlbi4KCgovKiBEaXNhYmxlIGkyYyBhbGwgaXJxcyAqLwojZGVm
aW5lIElFTl9BTExfRElTQUJMRSAgIDAKCmkyY193cml0ZWwoaTJjLCBJRU5fQUxMX0RJU0FCTEUs
IFJFR19JRU4pO2kyY193cml0ZWwoaTJjLCAKSUVOX0FMTF9ESVNBQkxFLCBSRUdfSUVOKTsKCgoK
PiBTaWduZWQtb2ZmLWJ5OiBBbGV4ZXkgQ2hhcmtvdiA8YWxjaGFya0BmbGlwcGVyLm5ldD4KPiAt
LS0KPiAgIGRyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtcmszeC5jIHwgMTAgKysrKysrKysrKwo+ICAg
MSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9pMmMvYnVzc2VzL2kyYy1yazN4LmMgYi9kcml2ZXJzL2kyYy9idXNzZXMvaTJjLXJrM3guYwo+
IGluZGV4IGZjZWRlOWY2ZWQ1NC4uZGJmMWVkMzBmZGE2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
aTJjL2J1c3Nlcy9pMmMtcmszeC5jCj4gKysrIGIvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1yazN4
LmMKPiBAQCAtMTEyNSw2ICsxMTI1LDE2IEBAIHN0YXRpYyBpbnQgcmszeF9pMmNfeGZlcl9jb21t
b24oc3RydWN0IGkyY19hZGFwdGVyICphZGFwLAo+ICAgCQl9Cj4gICAJfQo+ICAgCj4gKwkvKgo+
ICsJICogRG8gbm90IGxlYXZlIHRoZSBjb250cm9sbGVyIGVuYWJsZWQgYmV0d2VlbiB0cmFuc2Zl
cnMuIEl0IGtlZXBzCj4gKwkgKiB0cmFja2luZyB0aGUgYnVzIHdoaWxlIGVuYWJsZWQsIGFuZCBp
ZiB0aGUgbGluZXMgY29sbGFwc2UgdW5kZXIgaXQsCj4gKwkgKiBlLmcuIGFzIGFuIHVucG93ZXJl
ZCB0YXJnZXQgY2xhbXBzIHRoZW0sIGl0cyBzdGF0ZSBtYWNoaW5lIHdlZGdlcwo+ICsJICogZHJp
dmluZyBTREEgbG93IHVudGlsIGl0IGlzIGRpc2FibGVkLiBUaGlzIGFsc28gZ2V0cyBpdCBvdXQg
b2YKPiArCSAqIHdoYXRldmVyIHN0YXRlIGl0IHdhcyBzdHVjayBpbiB3aGVuIGEgdHJhbnNmZXIg
dGltZWQgb3V0Lgo+ICsJICovCj4gKwl2YWwgPSBpMmNfcmVhZGwoaTJjLCBSRUdfQ09OKSAmIFJF
R19DT05fVFVOSU5HX01BU0s7Cj4gKwlpMmNfd3JpdGVsKGkyYywgdmFsLCBSRUdfQ09OKTsKPiAr
Cj4gICAJY2xrX2Rpc2FibGUoaTJjLT5wY2xrKTsKPiAgIAljbGtfZGlzYWJsZShpMmMtPmNsayk7
Cj4gICAKPiAKPiAtLS0KPiBiYXNlLWNvbW1pdDogZDQxOWQ2ODIyNTdkODEzZjZjYjdhMjhlNDJi
MzVkMGVkZjRhZDAzOAo+IGNoYW5nZS1pZDogMjAyNjEwMTUtaTJjLXJrM3gtZGlzYWJsZS0yNDY3
MmQ0ZjM4YmIKPiAKPiBCZXN0IHJlZ2FyZHMsCj4gLS0KPiBBbGV4ZXkgQ2hhcmtvdiA8YWxjaGFy
a0BmbGlwcGVyLm5ldD4KPiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+IExpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
