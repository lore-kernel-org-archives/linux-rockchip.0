Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 739CACCD185
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Oct 2025 07:50:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mQDYawqex5wWtjIlGSHMTZDwQO/MG1lRYzZJO44HYTk=; b=tAEFbG3s+8q8aK
	5N1mKMf+aT1W0wSmYhmf8tNHcGVJpTvRQ2/YF66ZerF392y8dWaQiJ0KaNyOQCp7ne2x9dW4Q6fjB
	ooUqMhRgfuBqEXd5kgahsPyhZJFrNlJqZmSHtI3L+cDVI+NZiV6Cii5QYakLEjUjz1y+r8Jq+nj5U
	/nHT6X1aNglKTGw5n1aCxIbvkF/10dMPFb2sqdza/x4Z1IurtxnoLV+xssZik14fNrWidnlsy5dV3
	6bRIO/f4gqWZnG6qZ/ORVhzpFk9wR3X++n+EtBJuE9utZTrgJIkPuHtaA69szemcMdPTDdCqy9dgm
	gIU5+Flnt2Wneta7W+eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8wHM-00000000oAx-1LKu;
	Wed, 15 Oct 2025 07:50:36 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8wHJ-00000000oAA-3oTM
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Oct 2025 07:50:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 8199644CBE;
	Wed, 15 Oct 2025 07:50:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F3CDC4CEF8;
	Wed, 15 Oct 2025 07:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760514633;
	bh=N+KdJSmTL8JhpieQRxlnbC6Rxa5LC8KfPeDrItfVC1A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SFq4PluNMb3ZTq1LSh3igXo6xNp00Fu9larjvGLpNnmxT0zX80tUE7p0BQc2oonmg
	 u+7REggKqKVjKJDAecTZYIMF7Xjq8SkHUwHmSUnyTDMHI3FREcrYMtESr9l3kiJnQi
	 y3FXKtVzboRvHpvEqKOfHN337IO+djyYCmcQ34qP67FK5J6VlEYMIXHL/kDe2jUuf0
	 Nu5GCbaARvK3xRfsIMmweCuilsHJ/6nQ4TNeDtYFZWP9ypiFOxEpQ8brXEV9NBvlIB
	 KJVqsWzD1PHI7QvPve9VKFGKcL/kSy2IGc3GNA0xXeXyFlb6vby6bpQ0wYpnvqk5DP
	 2lZDyc5Em93Zw==
Date: Wed, 15 Oct 2025 13:20:17 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Bjorn Helgaas <helgaas@kernel.org>, 
	manivannan.sadhasivam@oss.qualcomm.com, Bjorn Helgaas <bhelgaas@google.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Rob Herring <robh@kernel.org>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, "David E. Box" <david.e.box@linux.intel.com>, 
	Kai-Heng Feng <kai.heng.feng@canonical.com>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Chia-Lin Kao <acelan.kao@canonical.com>, 
	Dragan Simic <dsimic@manjaro.org>, linux-rockchip@lists.infradead.org, regressions@lists.linux.dev
Subject: Re: [PATCH v2 1/2] PCI/ASPM: Override the ASPM and Clock PM states
 set by BIOS for devicetree platforms
Message-ID: <7ugvxl3g5szxhc5ebxnlfllp46lhprjvcg5xp75mobsa44c6jv@h2j3dvm5a4lq>
References: <22594781424C5C98+22cb5d61-19b1-4353-9818-3bb2b311da0b@radxa.com>
 <20251014184905.GA896847@bhelgaas>
 <5ivvb3wctn65obgqvnajpxzifhndza65rsoiqgracfxl7iiimt@oym345d723o2>
 <823262AB21C8D981+8c1b9d50-5897-432b-972e-b7bb25746ba5@radxa.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <823262AB21C8D981+8c1b9d50-5897-432b-972e-b7bb25746ba5@radxa.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_005033_996978_B297392B 
X-CRM114-Status: GOOD (  29.96  )
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

T24gV2VkLCBPY3QgMTUsIDIwMjUgYXQgMDQ6MTM6NDFQTSArMDkwMCwgRlVLQVVNSSBOYW9raSB3
cm90ZToKPiBIaSwKPiAKPiBPbiAxMC8xNS8yNSAxNToyNiwgTWFuaXZhbm5hbiBTYWRoYXNpdmFt
IHdyb3RlOgo+ID4gT24gVHVlLCBPY3QgMTQsIDIwMjUgYXQgMDE6NDk6MDVQTSAtMDUwMCwgQmpv
cm4gSGVsZ2FhcyB3cm90ZToKPiA+ID4gWytjYyByZWdyZXNzaW9uc10KPiA+ID4gCj4gPiA+IE9u
IFdlZCwgT2N0IDE1LCAyMDI1IGF0IDAxOjMwOjE2QU0gKzA5MDAsIEZVS0FVTUkgTmFva2kgd3Jv
dGU6Cj4gPiA+ID4gSGkgTWFuaXZhbm5hbiBTYWRoYXNpdmFtLAo+ID4gPiA+IAo+ID4gPiA+IEkn
dmUgbm90aWNlZCBhbiBpc3N1ZSBvbiBSYWR4YSBST0NLIDVBLzVCIGJvYXJkcywgd2hpY2ggYXJl
IGJhc2VkIG9uIHRoZQo+ID4gPiA+IFJvY2tjaGlwIFJLMzU4OChTKSBTb0MuCj4gPiA+ID4gCj4g
PiA+ID4gV2hlbiBydW5uaW5nIExpbnV4IHY2LjE4LXJjMSBvciBsaW51eC1uZXh0IHNpbmNlIDIw
MjUwOTI0LCB0aGUga2VybmVsIGVpdGhlcgo+ID4gPiA+IGZyZWV6ZXMgb3IgZmFpbHMgdG8gcHJv
YmUgTS4yIFdpLUZpIG1vZHVsZXMuIFRoaXMgaGFwcGVucyB3aXRoIHNldmVyYWwKPiA+ID4gPiBk
aWZmZXJlbnQgbW9kdWxlcyBJJ3ZlIHRlc3RlZCwgaW5jbHVkaW5nIHRoZSBSZWFsdGVrIFJUTDg4
NTJCRSwgTWVkaWFUZWsKPiA+ID4gPiBNVDc5MjFFLCBhbmQgSW50ZWwgQVgyMTAuCj4gPiA+ID4g
Cj4gPiA+ID4gSSd2ZSBmb3VuZCB0aGF0IHJldmVydGluZyB0aGUgZm9sbG93aW5nIGNvbW1pdCAo
aS5lLiwgdGhlIHBhdGNoIEknbSByZXBseWluZwo+ID4gPiA+IHRvKSByZXNvbHZlcyB0aGUgcHJv
YmxlbToKPiA+ID4gPiBjb21taXQgZjNhYzJmZjE0ODM0YTBhYTA1NmVlM2FlMGU0YjhjNjQxYzU3
OTk2MQo+ID4gPiAKPiA+ID4gVGhhbmtzIGZvciB0aGUgcmVwb3J0LCBhbmQgc29ycnkgZm9yIHRo
ZSByZWdyZXNzaW9uLgo+ID4gPiAKPiA+ID4gU2luY2UgdGhpcyBhZmZlY3RzIHNldmVyYWwgZGV2
aWNlcyBmcm9tIGRpZmZlcmVudCBtYW51ZmFjdHVyZXJzIGFuZCAoSQo+ID4gPiBhc3N1bWUpIGRp
ZmZlcmVudCBkcml2ZXJzLCBpdCBzZWVtcyBsaWtlbHkgdGhhdCB0aGVyZSdzIHNvbWUgaXNzdWUK
PiA+ID4gd2l0aCB0aGUgUm9ja2NoaXAgZW5kLCBzaW5jZSBBU1BNIHByb2JhYmx5IHdvcmtzIG9u
IHRoZXNlIGRldmljZXMgaW4KPiA+ID4gb3RoZXIgc3lzdGVtcy4gIFNvIHdlIHNob3VsZCBmaWd1
cmUgb3V0IGlmIHRoZXJlJ3Mgc29tZXRoaW5nIHdyb25nCj4gPiA+IHdpdGggdGhlIHdheSB3ZSBj
b25maWd1cmUgQVNQTSwgd2hpY2ggd2UgY291bGQgcG90ZW50aWFsbHkgZml4LCBvciBpZgo+ID4g
PiB0aGVyZSdzIGEgaGFyZHdhcmUgaXNzdWUgYW5kIHdlIG5lZWQgc29tZSBraW5nIG9mIHF1aXJr
IHRvIHByZXZlbnQKPiA+ID4gdXNhZ2Ugb2YgQVNQTSBvbiB0aGUgYWZmZWN0ZWQgcGxhdGZvcm1z
Lgo+ID4gPiAKPiA+IAo+ID4gSSBiZWxpZXZlIGl0IGlzIHRoZSBsYXR0ZXIuIFRoZSBSb290IFBv
cnQgaXMgaGF2aW5nIHRyb3VibGUgd2l0aCBBU1BNLgo+ID4gCj4gPiBGVUtBVU1JIE5hb2tpLCBj
b3VsZCB5b3UgcGxlYXNlIHNoYXJlIHRoZSAnc3VkbyBsc3BjaSAtdnYnIG91dHB1dCBzbyB0aGF0
IHdlCj4gPiBrbm93IHdoYXQga2luZCBvZiBSb290IFBvcnQgd2UgYXJlIGRlYWxpbmcgd2l0aD8g
WW91IGNhbiByZXZlcnQgdGhlIG9mZmVuZGluZwo+ID4gcGF0Y2ggYW5kIHNoYXJlIHRoZSBvdXRw
dXQuCj4gCj4gSGVyZSBpcyBkbWVzZy9sc3BjaSBvdXRwdXQgb24gUk9DSyA1QShSSzM1ODhTKToK
PiAgaHR0cHM6Ly9naXN0LmdpdGh1Yi5jb20vUmFkeGFOYW9raS8xMzU1YTBiNDI3OGI2ZTUxYTYx
ZDg5ZGY3YTUzNWE1ZAo+IAoKVGhhbmtzISBDb3VsZCB5b3UgcGxlYXNlIHRyeSB0aGUgYmVsb3cg
ZGlmZiB3aXRoIGYzYWMyZmYxNDgzNCBhcHBsaWVkPwoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNp
L3F1aXJrcy5jIGIvZHJpdmVycy9wY2kvcXVpcmtzLmMKaW5kZXggMjE0ZWQwNjBjYTFiLi4wMDY5
ZDA2YzI4MmQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGNpL3F1aXJrcy5jCisrKyBiL2RyaXZlcnMv
cGNpL3F1aXJrcy5jCkBAIC0yNTI1LDYgKzI1MjUsMTUgQEAgc3RhdGljIHZvaWQgcXVpcmtfZGlz
YWJsZV9hc3BtX2wwc19sMShzdHJ1Y3QgcGNpX2RldiAqZGV2KQogICovCiBERUNMQVJFX1BDSV9G
SVhVUF9GSU5BTChQQ0lfVkVORE9SX0lEX0FTTUVESUEsIDB4MTA4MCwgcXVpcmtfZGlzYWJsZV9h
c3BtX2wwc19sMSk7CgorCitzdGF0aWMgdm9pZCBxdWlya19kaXNhYmxlX2FzcG1fYWxsKHN0cnVj
dCBwY2lfZGV2ICpkZXYpCit7CisgICAgICAgcGNpX2luZm8oZGV2LCAiRGlzYWJsaW5nIEFTUE1c
biIpOworICAgICAgIHBjaV9kaXNhYmxlX2xpbmtfc3RhdGUoZGV2LCBQQ0lFX0xJTktfU1RBVEVf
QUxMKTsKK30KKworREVDTEFSRV9QQ0lfRklYVVBfRklOQUwoUENJX1ZFTkRPUl9JRF9ST0NLQ0hJ
UCwgMHgzNTg4LCBxdWlya19kaXNhYmxlX2FzcG1fYWxsKTsKKwogLyoKICAqIFNvbWUgUGVyaWNv
bSBQQ0llLXRvLVBDSSBicmlkZ2VzIGluIHJldmVyc2UgbW9kZSBuZWVkIHRoZSBQQ0llIFJldHJh
aW4KICAqIExpbmsgYml0IGNsZWFyZWQgYWZ0ZXIgc3RhcnRpbmcgdGhlIGxpbmsgcmV0cmFpbiBw
cm9jZXNzIHRvIGFsbG93IHRoaXMKCgpGcm9tIHlvdXIgcHJldmlvdXMgY29tbWVudCwgSSBiZWxp
ZXZlIHRoZSBSb290IFBvcnQgaXMgaGF2aW5nIHRoZSBpc3N1ZXMgd2l0aApBU1BNIGFzIHlvdSBz
ZWVtIHRvIGhhdmUgdHJpZWQgY29ubmVjdGluZyBkaWZmZXJlbnQgZGV2aWNlcyB0byB0aGUgc2xv
dC4gU28gSQpkaXNhYmxlZCBBU1BNIGZvciB0aGUgUm9vdCBQb3J0IHdpdGggdGhlIGFib3ZlIGRp
ZmYuCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a
4K6/4K614K6u4K+NCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
