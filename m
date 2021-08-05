Return-Path: <SRS0=V4ex=M4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F78BC4338F
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Aug 2021 12:07:25 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BF9DD61102
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Aug 2021 12:07:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org BF9DD61102
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ucp9f65b+LH1GTLFBVtMB/Sfufr49RDgZDXYV3RsflY=; b=VfInPHtmm2qtR1
	MTPC9VeS5K3ptzpdLzj+rZxo2nvfYcNo3zOiiJogW14Ij4fcadRv5AMRjBXFw/ztWeoYcQDx6mB3f
	jRYpXX5ItCQw4CPpC6gZkemc1O5ANMWjhkfqI0t8uDid/RPR9AOrOcCwXfQXYe6n1PmRTI9bf82vY
	JSbj9+mq0+qWbEOKfn/w+uIrPHhfvpjZ2L3Q9rVuN3/O6KYWBG/3zTuRi1WlrIDluJjaDzqUbBF+q
	2dj9p3mN3kIrfDjNghlejXQs+uY1Myvve789Zq50PR6bFJels5bO8J4e/K0PPhjPt1ve5EAyax2m5
	1effCCxGUYJwYelASPZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBc9g-009N0d-9g; Thu, 05 Aug 2021 12:07:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBc9c-009Mw3-Mw
 for linux-rockchip@lists.infradead.org; Thu, 05 Aug 2021 12:07:18 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mBc9S-0006hh-QB; Thu, 05 Aug 2021 14:07:06 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 David Wu <david.wu@rock-chips.com>
Cc: Simon Xue <xxm@rock-chips.com>, Jonathan Cameron <jic23@kernel.org>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, Johan Jonker <jbx6244@gmail.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, linux-iio@vger.kernel.org
Subject: Re: [PATCH] iio: adc: rockchip_saradc: just get referenced voltage
 once at probe
Date: Thu, 05 Aug 2021 14:07:05 +0200
Message-ID: <8912224.VV5PYv0bhD@diego>
In-Reply-To: <8f5385a1-701c-4446-d238-90bee1c03675@rock-chips.com>
References: <20210802090929.37970-1-xxm@rock-chips.com>
 <20210803135124.000072fe@Huawei.com>
 <8f5385a1-701c-4446-d238-90bee1c03675@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210805_050716_813263_8A87E707 
X-CRM114-Status: GOOD (  40.16  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

SGkgRGF2aWQsCgpBbSBEb25uZXJzdGFnLCA1LiBBdWd1c3QgMjAyMSwgMTM6NTY6MTggQ0VTVCBz
Y2hyaWViIERhdmlkIFd1Ogo+IEhpIEpvbmF0aGFuLAo+IAo+IOWcqCAyMDIxLzgvMyDkuIvljYg4
OjUxLCBKb25hdGhhbiBDYW1lcm9uIOWGmemBkzoKPiA+IE9uIFR1ZSwgMyBBdWcgMjAyMSAxMTow
OTo0NyArMDgwMAo+ID4gRGF2aWQgV3UgPGRhdmlkLnd1QHJvY2stY2hpcHMuY29tPiB3cm90ZToK
PiA+IAo+ID4+IEhpIEpvbmF0aGFuLAo+ID4+Cj4gPj4g5ZyoIDIwMjEvOC8yIOS4i+WNiDY6NDIs
IEpvbmF0aGFuIENhbWVyb24g5YaZ6YGTOgo+ID4+PiBPbiBNb24sIDIgQXVnIDIwMjEgMTc6MDk6
MjkgKzA4MDAKPiA+Pj4gU2ltb24gWHVlIDx4eG1Acm9jay1jaGlwcy5jb20+IHdyb3RlOgo+ID4+
PiAgICAKPiA+Pj4+IEZyb206IERhdmlkIFd1IDxkYXZpZC53dUByb2NrLWNoaXBzLmNvbT4KPiA+
Pj4+Cj4gPj4+PiBUaGUgcmVmZXJlbmNlZCB2b2x0YWdlIGlzIG5vdCBjaGFuZ2VkIGFmdGVyIGlu
aXRpYXRpb24sIHNvIGp1c3Qgb25seQo+ID4+Pj4gZ2V0IHJlZmVyZW5jZWQgdm9sdGFnZSBvbmNl
Lgo+ID4+PiBIaSBEYXZpZCwKPiA+Pj4KPiA+Pj4gSXNuJ3QgdGhpcyBhbiBleHRlcm5hbCByZWZl
cmVuY2Ugdm9sdGFnZT8gIElmIHNvIGhvdyBkbyB5b3Uga25vdwo+ID4+PiBpdCBpcyBub3QgY2hh
bmdlZCBhdCBydW50aW1lPyAgSXQgbWlnaHQgYmUgdW5saWtlbHkgYW5kIG5vdCBoYXBwZW4KPiA+
Pj4gb24gcGFydGljdWxhciBwbGF0Zm9ybXMsIGJ1dCB0aGF0J3Mgbm90IGhlIHNhbWUgYXMgc2F5
aW5nIGl0IGNhbiBuZXZlcgo+ID4+PiBoYXBwZW4uICBDbGVhcmx5IGl0J3MgcmFjZXkgYW55d2F5
IGlmIHRoYXQgZG9lcyBoYXBwZW4sIGJ1dCB3ZSBkZWZpbml0ZWx5Cj4gPj4+IGRvbid0IGV4cGVj
dCBmcmVxdWVudCB2b2x0YWdlIGNoYW5nZXMuCj4gPj4+ICAgIAo+ID4+Cj4gPj4gVGhlIGN1cnJl
bnQgcmVndWxhdG9yIGlzIG5vdCBjaGFuZ2VkIGFuZCBub3Qgc3ViamVjdCB0byBleHRlcm5hbAo+
ID4+IGNoYW5nZXMsIHRoaXMgY2FuIHJlZHVjZSB0aGUgZ2V0dGluZyB2b2x0YWdlLiBBc3N1bWlu
ZyB0aGF0IHRoZXJlIHdpbGwKPiA+PiBiZSBjaGFuZ2VzIGluIHRoZSBmdXR1cmUsIHdlIHRoZW4g
YWRkIHRoZSBub3RpZnkgb2YgdGhlIHJlZ3VsYXRvciwgc28KPiA+PiB0aGF0IHRoZSB2b2x0YWdl
IGNoYW5nZSBjYW4gYmUgb2J0YWluZWQuCj4gPiAKPiA+IElmIHRoaXMgcGF0Y2ggYWRkZWQgdGhl
IG5vdGlmaWVyIHRoYXQgd291bGQgYmUgYSBuaWNlIHNvbHV0aW9uLCBidXQKPiA+IHJpZ2h0IG5v
dyBpdCBwb3RlbnRpYWxseSBpbnRyb2R1Y2VkIGEgcmVncmVzc2lvbi4gWW91IGhhdmUgbWFkZSBt
ZSBhIGxpdHRsZSBjdXJpb3VzLi4uCj4gPiBBcmUgeW91IHNlZWluZyBhIHNpZ25pZmljYW50IGNv
c3QgdG8gcXVlcnlpbmcgdGhhdCByZWd1bGF0b3Igdm9sdGFnZT8KPiA+IElmIHNvLCBJJ2QgaW1h
Z2luZSBpdCdzIGEgbGFjayBvZiBjYWNoaW5nIGluIHRoZSByZWd1bGF0b3IgZHJpdmVyIG9yIHNp
bWlsYXIuCj4gPiBTY2FsZSByZWFkYmFjayB2aWEgc3lzZnMgc2hvdWxkbid0IGJlIGluIGEgZmFz
dCBwYXRoIGFueXdheS4KPiA+IAo+ID4gWW91IGNhbid0IGRlcGVuZCBvbiB3aGF0IGJvYXJkcyB0
b2RheSBkbywgYmVjYXVzZSBzb21lb25lIHdpdGggYSBib2FyZAo+ID4gYnVpbHQgdG9tb3Jyb3cg
bWF5IHdlbGwgdXNlIGFuIG9sZCBrZXJuZWwgd2hpY2ggc3VwcG9ydHMgdGhlIHZvbHRhZ2UKPiA+
IGNoYW5naW5nLCBhbmQgdGhlbiBzZWUgYSByZWdyZXNzaW9uIHdoZW4gdGhleSB1cGdyYWRlIHRv
IHRoZSBrZXJuZWwKPiA+IGNvbnRhaW5pbmcgdGhpcyBwYXRjaC4KPiA+IAo+IAo+IEZvciBhbGwg
Y3VycmVudCBjaGlwcywgdGhlIGV4cGVjdGVkIHZvbHRhZ2UgaXMgYSBmaXhlZCB2b2x0YWdlLCBh
bmQgCj4gZG9uJ3Qgd2FudCB0byBjaGFuZ2UgaXQgaW4gYW55IHByb2Nlc3MuOi0pCj4gCj4gU28s
IGlmIHRoZSB2b2x0YWdlIGhlcmUgZG9lcyBub3QgY2hhbmdlLCB0aGVuIGl0IGNhbiBiZSBvYnRh
aW5lZCBvbmNlIGluIAo+IHByb2JlKCksIHdoaWNoIGNhbiBzYXZlIHRoZSB0aW1lIG9mIGVhY2gg
YWNxdWlzaXRpb24uIEZvciBleGFtcGxlLCB0aGUgCj4gdm9sdGFnZSBvZiB0aGlzIHJlZ3VsYXRv
ciBpcyBvYnRhaW5lZCB0aHJvdWdoIGkyYywgd2hpY2ggd2lsbCBpbmNyZWFzZSAKPiBzb21lIGNv
bnN1bXB0aW9uIGV2ZXJ5IHRpbWUuCgpKb25hdGhhbnMgcmVxdWVzdCB3YXMgdG8gbm90IHRoaW5r
IGFib3V0ICJhbGwgY3VycmVudCBjaGlwcyIgYnV0IHRoZQpnZW5lcmFsIGNhc2UsIGFuZCBhcyBK
b25hdGhhbiBzYWlkLCBhZGRpbmcgdGhhdCByZWd1bGF0b3Igbm90aWZpZXIgeW91CmFscmVhZHkg
bWVudGlvbmVkIHdvdWxkIGJlIHRoZSBuaWNlc3Qgc29sdXRpb24uCgpTbyBJIHRoaW5rIHRoZSBl
YXNpZXN0IHdheSBpcyB0byBqdXN0IGFkZCB0aGUgdm9sdGFnZSBub3RpZmllciB0byB5b3VyIHBh
dGNoCnRvIG1ha2UgZXZlcnlvbmUgaGFwcHkgOy0pIC4KCgpIZWlrbwoKPiAKPiA+IEpvbmF0aGFu
Cj4gPiAKPiA+Pgo+ID4+PiBKb25hdGhhbgo+ID4+PiAgICAKPiA+Pj4+Cj4gPj4+PiBTaWduZWQt
b2ZmLWJ5OiBTaW1vbiBYdWUgPHh4bUByb2NrLWNoaXBzLmNvbT4KPiA+Pj4+IFNpZ25lZC1vZmYt
Ynk6IERhdmlkIFd1IDxkYXZpZC53dUByb2NrLWNoaXBzLmNvbT4KPiA+Pj4+IC0tLQo+ID4+Pj4g
ICAgZHJpdmVycy9paW8vYWRjL3JvY2tjaGlwX3NhcmFkYy5jIHwgMTYgKysrKysrKysrLS0tLS0t
LQo+ID4+Pj4gICAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMo
LSkKPiA+Pj4+Cj4gPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9paW8vYWRjL3JvY2tjaGlwX3Nh
cmFkYy5jIGIvZHJpdmVycy9paW8vYWRjL3JvY2tjaGlwX3NhcmFkYy5jCj4gPj4+PiBpbmRleCBm
M2ViOGQyZTUwZGMuLmNkMzNjMGI5ZDNlYiAxMDA2NDQKPiA+Pj4+IC0tLSBhL2RyaXZlcnMvaWlv
L2FkYy9yb2NrY2hpcF9zYXJhZGMuYwo+ID4+Pj4gKysrIGIvZHJpdmVycy9paW8vYWRjL3JvY2tj
aGlwX3NhcmFkYy5jCj4gPj4+PiBAQCAtNDksNiArNDksNyBAQCBzdHJ1Y3Qgcm9ja2NoaXBfc2Fy
YWRjIHsKPiA+Pj4+ICAgIAlzdHJ1Y3QgY2xrCQkqY2xrOwo+ID4+Pj4gICAgCXN0cnVjdCBjb21w
bGV0aW9uCWNvbXBsZXRpb247Cj4gPj4+PiAgICAJc3RydWN0IHJlZ3VsYXRvcgkqdnJlZjsKPiA+
Pj4+ICsJaW50CQkJdXZfdnJlZjsKPiA+Pj4+ICAgIAlzdHJ1Y3QgcmVzZXRfY29udHJvbAkqcmVz
ZXQ7Cj4gPj4+PiAgICAJY29uc3Qgc3RydWN0IHJvY2tjaGlwX3NhcmFkY19kYXRhICpkYXRhOwo+
ID4+Pj4gICAgCXUxNgkJCWxhc3RfdmFsOwo+ID4+Pj4gQEAgLTEwNSwxMyArMTA2LDcgQEAgc3Rh
dGljIGludCByb2NrY2hpcF9zYXJhZGNfcmVhZF9yYXcoc3RydWN0IGlpb19kZXYgKmluZGlvX2Rl
diwKPiA+Pj4+ICAgIAkJbXV0ZXhfdW5sb2NrKCZpbmRpb19kZXYtPm1sb2NrKTsKPiA+Pj4+ICAg
IAkJcmV0dXJuIElJT19WQUxfSU5UOwo+ID4+Pj4gICAgCWNhc2UgSUlPX0NIQU5fSU5GT19TQ0FM
RToKPiA+Pj4+IC0JCXJldCA9IHJlZ3VsYXRvcl9nZXRfdm9sdGFnZShpbmZvLT52cmVmKTsKPiA+
Pj4+IC0JCWlmIChyZXQgPCAwKSB7Cj4gPj4+PiAtCQkJZGV2X2VycigmaW5kaW9fZGV2LT5kZXYs
ICJmYWlsZWQgdG8gZ2V0IHZvbHRhZ2VcbiIpOwo+ID4+Pj4gLQkJCXJldHVybiByZXQ7Cj4gPj4+
PiAtCQl9Cj4gPj4+PiAtCj4gPj4+PiAtCQkqdmFsID0gcmV0IC8gMTAwMDsKPiA+Pj4+ICsJCSp2
YWwgPSBpbmZvLT51dl92cmVmIC8gMTAwMDsKPiA+Pj4+ICAgIAkJKnZhbDIgPSBjaGFuLT5zY2Fu
X3R5cGUucmVhbGJpdHM7Cj4gPj4+PiAgICAJCXJldHVybiBJSU9fVkFMX0ZSQUNUSU9OQUxfTE9H
MjsKPiA+Pj4+ICAgIAlkZWZhdWx0Ogo+ID4+Pj4gQEAgLTQxMCw2ICs0MDUsMTMgQEAgc3RhdGlj
IGludCByb2NrY2hpcF9zYXJhZGNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikK
PiA+Pj4+ICAgIAkJcmV0dXJuIHJldDsKPiA+Pj4+ICAgIAl9Cj4gPj4+PiAgICAKPiA+Pj4+ICsJ
aW5mby0+dXZfdnJlZiA9IHJlZ3VsYXRvcl9nZXRfdm9sdGFnZShpbmZvLT52cmVmKTsKPiA+Pj4+
ICsJaWYgKGluZm8tPnV2X3ZyZWYgPCAwKSB7Cj4gPj4+PiArCQlkZXZfZXJyKCZwZGV2LT5kZXYs
ICJmYWlsZWQgdG8gZ2V0IHZvbHRhZ2VcbiIpOwo+ID4+Pj4gKwkJcmV0ID0gaW5mby0+dXZfdnJl
ZjsKPiA+Pj4+ICsJCXJldHVybiByZXQ7Cj4gPj4+PiArCX0KPiA+Pj4+ICsKPiA+Pj4+ICAgIAly
ZXQgPSBjbGtfcHJlcGFyZV9lbmFibGUoaW5mby0+cGNsayk7Cj4gPj4+PiAgICAJaWYgKHJldCA8
IDApIHsKPiA+Pj4+ICAgIAkJZGV2X2VycigmcGRldi0+ZGV2LCAiZmFpbGVkIHRvIGVuYWJsZSBw
Y2xrXG4iKTsKPiA+Pj4KPiA+Pj4KPiA+Pj4KPiA+Pj4gICAgCj4gPj4KPiA+Pgo+ID4gCj4gPiAK
PiA+IAo+ID4gCj4gCj4gCj4gCgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
