Return-Path: <SRS0=TltV=JL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1280BC433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 13:49:24 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 827FD611EE
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 13:49:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 827FD611EE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:Cc:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=B1XHi/Kd0pQrgBGEuky5OVC/lIorcV+cobsRdh77bu0=; b=JzLLfVIKXllEEk5xgaxgC0Kaj
	CuWPfBEqqcsfQi+k7GDPGWPwnEHcbWB82o51FCCnu07a01TMEeBmOwMfk9S/1NFysIxndIBOHfOxD
	cjXY0mXO57K8e5DQtvU4+gWj6V1JvrueiATCF4JOw8DDyydRj8jLLS9XfyqHq/ioxQYbihhfB+yph
	bRb1y5WuSmKQrsAplHXR7wq9CP9uUfATENXuLYRm2pM7cBTaJL+k6Hnr0VHrmQicva6Dp481g/sx7
	daXZy2YQRpsPSFTT+IUleO7m6v8WVtk94Heddq6Jl8frfFrbor7QLYrtB8U6vJnVdnH0Wv17Q8jYH
	BMCBfB0Bg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWftM-00CoSQ-GY; Wed, 14 Apr 2021 13:49:16 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWftI-00CoPd-JD
 for linux-rockchip@desiato.infradead.org; Wed, 14 Apr 2021 13:49:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:
 Message-ID:Sender:Reply-To:Content-ID:Content-Description;
 bh=j572eEQzUMjirRmKfadQ/BjFqE1ds3B1vBfKu2Gb+kI=; b=Lmj9LlBCQvtoJPU5nMRahJy6h/
 yFGF1pC6wTpweUX4WCwGSV7z06iCgDnG3zKX5yJxRs7oUdIO/xAsQ2DzX16wQSFA7eT2D3LgZJFpJ
 7sFUtjj36T/cy0B0jrSaYt3RFnP+5Y/gCoifgTwJ7pRQ4AViTP5UbrpqmQ9UMXB+6lfnFjlls67ij
 TzNqxoKKlmjyjfIaH+uf5X7sJpflblP4D1SmE/F47S1+qWJMh4ukcoJz9XDzGrUU7dAaP1bz5Vkpr
 d7Y3gXDlaeLeTXRdKWHAWT+ygT4R2r1Q/VYwDIvQwVhB+7fyfteEU94I78Zfcipo/ZjUvVRWZwwL8
 +yC9bKFw==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWftF-007oOT-54
 for linux-rockchip@lists.infradead.org; Wed, 14 Apr 2021 13:49:10 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id A595E1F423E5
Message-ID: <07eb0394bb98b8b4085f9febf6bcaad79a272f80.camel@collabora.com>
Subject: Re: [PATCH net-next 3/3] net: stmmac: Add RK3566/RK3568 SoC support
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Linux Kernel Network Developers <netdev@vger.kernel.org>, "open
 list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Jose Abreu
 <joabreu@synopsys.com>, Heiko Stuebner <heiko@sntech.de>,  "David S .
 Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, David Wu
 <david.wu@rock-chips.com>, kernel@collabora.com
Date: Wed, 14 Apr 2021 10:48:59 -0300
In-Reply-To: <CAMdYzYpyD1bTN+3Zaf4nGnN-O-c0u0koiCK45fLucL0T2+69+w@mail.gmail.com>
References: <CAMdYzYpv0dvz4X2JE4J6Qg-5D9mnkqe5RpiRC845wQpZhDKDPA@mail.gmail.com>
 <1412-60762b80-423-d9eaa5@27901112>
 <CAMdYzYpyD1bTN+3Zaf4nGnN-O-c0u0koiCK45fLucL0T2+69+w@mail.gmail.com>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_064909_342189_759076DF 
X-CRM114-Status: GOOD (  18.21  )
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

T24gV2VkLCAyMDIxLTA0LTE0IGF0IDA3OjAzIC0wNDAwLCBQZXRlciBHZWlzIHdyb3RlOgo+IE9u
IFR1ZSwgQXByIDEzLCAyMDIxIGF0IDc6MzcgUE0gRXplcXVpZWwgR2FyY2lhIDxlemVxdWllbEBj
b2xsYWJvcmEuY29tPiB3cm90ZToKPiA+IAo+ID4gT24gVHVlc2RheSwgQXByaWwgMTMsIDIwMjEg
MTk6NTEgLTAzLCBQZXRlciBHZWlzIDxwZ3dpcGVvdXRAZ21haWwuY29tPiB3cm90ZToKPiA+IAo+
ID4gPiBPbiBUdWUsIEFwciAxMywgMjAyMSBhdCA1OjAzIFBNIEV6ZXF1aWVsIEdhcmNpYSA8ZXpl
cXVpZWxAY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4gPiA+ID4gCj4gPiA+ID4gRnJvbTogRGF2aWQg
V3UgPGRhdmlkLnd1QHJvY2stY2hpcHMuY29tPgo+ID4gPiA+IAo+ID4gPiA+IEFkZCBjb25zdGFu
dHMgYW5kIGNhbGxiYWNrIGZ1bmN0aW9ucyBmb3IgdGhlIGR3bWFjIHByZXNlbnQKPiA+ID4gPiBv
biBSSzM1NjYgYW5kIFJLMzU2OCBTb0NzLiBBcyBjYW4gYmUgc2VlbiwgdGhlIGJhc2Ugc3RydWN0
dXJlCj4gPiA+ID4gaXMgdGhlIHNhbWUsIG9ubHkgcmVnaXN0ZXJzIGFuZCB0aGUgYml0cyBpbiB0
aGVtIG1vdmVkIHNsaWdodGx5Lgo+ID4gPiA+IAo+ID4gPiA+IFJLMzU2OCBzdXBwb3J0cyB0d28g
TUFDcywgYW5kIFJLMzU2NiBzdXBwb3J0IGp1c3Qgb25lLgo+ID4gPiAKPiA+ID4gVGVzdGVkIHRo
aXMgZHJpdmVyIG9uIHRoZSByazM1NjYtcXVhcnR6NjQuCj4gPiA+IEl0IGZhaWxzIHRvIGZ1bGx5
IHByb2JlIHRoZSBnbWFjIHdpdGggdGhlIGZvbGxvd2luZyBlcnJvcjoKPiA+ID4gW8KgwqDCoCA1
LjcxMTEyN10gcmtfZ21hYy1kd21hYyBmZTAxMDAwMC5ldGhlcm5ldDogSVJRIGV0aF9scGkgbm90
IGZvdW5kCj4gPiA+IFvCoMKgwqAgNS43MTQxNDddIHJrX2dtYWMtZHdtYWMgZmUwMTAwMDAuZXRo
ZXJuZXQ6IG5vIHJlZ3VsYXRvciBmb3VuZAo+ID4gPiBbwqDCoMKgIDUuNzE0NzY2XSBya19nbWFj
LWR3bWFjIGZlMDEwMDAwLmV0aGVybmV0OiBjbG9jayBpbnB1dCBvciBvdXRwdXQ/IChpbnB1dCku
Cj4gPiA+IFvCoMKgwqAgNS43MTU0NzRdIHJrX2dtYWMtZHdtYWMgZmUwMTAwMDAuZXRoZXJuZXQ6
IFRYIGRlbGF5KDB4NGYpLgo+ID4gPiBbwqDCoMKgIDUuNzE2MDU4XSBya19nbWFjLWR3bWFjIGZl
MDEwMDAwLmV0aGVybmV0OiBSWCBkZWxheSgweDI1KS4KPiA+ID4gW8KgwqDCoCA1LjcxNjY5NF0g
cmtfZ21hYy1kd21hYyBmZTAxMDAwMC5ldGhlcm5ldDogaW50ZWdyYXRlZCBQSFk/IChubykuCj4g
PiA+IFvCoMKgwqAgNS43MTg0MTNdIHJrX2dtYWMtZHdtYWMgZmUwMTAwMDAuZXRoZXJuZXQ6IGNs
b2NrIGlucHV0IGZyb20gUEhZCj4gPiA+IFvCoMKgwqAgNS43MjQxNDBdIHJrX2dtYWMtZHdtYWMg
ZmUwMTAwMDAuZXRoZXJuZXQ6IGluaXQgZm9yIFJHTUlJCj4gPiA+IFvCoMKgwqAgNS43MjY4MDJd
IHJrX2dtYWMtZHdtYWMgZmUwMTAwMDAuZXRoZXJuZXQ6IFZlcnNpb24gSUQgbm90IGF2YWlsYWJs
ZQo+ID4gPiBbwqDCoMKgIDUuNzI3NTI1XSBya19nbWFjLWR3bWFjIGZlMDEwMDAwLmV0aGVybmV0
OsKgwqDCoMKgwqDCoMKgwqAgRFdNQUMxMDAwCj4gPiA+IFvCoMKgwqAgNS43MjgwNjRdIHJrX2dt
YWMtZHdtYWMgZmUwMTAwMDAuZXRoZXJuZXQ6IERNQSBIVyBjYXBhYmlsaXR5Cj4gPiA+IHJlZ2lz
dGVyIHN1cHBvcnRlZAo+ID4gPiBbwqDCoMKgIDUuNzI5MDI2XSBya19nbWFjLWR3bWFjIGZlMDEw
MDAwLmV0aGVybmV0OiBOb3JtYWwgZGVzY3JpcHRvcnMKPiA+ID4gW8KgwqDCoCA1LjcyOTYyNF0g
cmtfZ21hYy1kd21hYyBmZTAxMDAwMC5ldGhlcm5ldDogUmluZyBtb2RlIGVuYWJsZWQKPiA+ID4g
W8KgwqDCoCA1LjczMTEyM10gcmtfZ21hYy1kd21hYyBmZTAxMDAwMC5ldGhlcm5ldDogVW5iYWxh
bmNlZCBwbV9ydW50aW1lX2VuYWJsZSEKPiA+ID4gW8KgwqDCoCA1Ljg3MzMyOV0gbGlicGh5OiBz
dG1tYWM6IHByb2JlZAo+ID4gPiBbwqDCoMKgIDUuOTA1NTk5XSBya19nbWFjLWR3bWFjIGZlMDEw
MDAwLmV0aGVybmV0OiBDYW5ub3QgcmVnaXN0ZXIgdGhlIE1ESU8gYnVzCj4gPiA+IFvCoMKgwqAg
NS45MDYzMzVdIHJrX2dtYWMtZHdtYWMgZmUwMTAwMDAuZXRoZXJuZXQ6IHN0bW1hY19kdnJfcHJv
YmU6IE1ESU8KPiA+ID4gYnVzIChpZDogMSkgcmVnaXN0cmF0aW9uIGZhaWxlZAo+ID4gPiBbwqDC
oMKgIDUuOTE0MzM4XSBya19nbWFjLWR3bWFjOiBwcm9iZSBvZiBmZTAxMDAwMC5ldGhlcm5ldCBm
YWlsZWQgd2l0aCBlcnJvciAtNQo+ID4gPiAKPiA+ID4gVGhpcyBpcyBkdWUgdG8gdGhlIGxhY2sg
b2Ygc2V0dGluZyBoYXNfZ21hYzQgPSB0cnVlLgo+ID4gPiAKPiA+IAo+ID4gWW91IGFyZSBwcm9i
YWJseSBtaXNzaW5nIGEgInNucHMsZHdtYWMtNC4yMGEiIGluIHlvdXIgY29tcGF0aWJsZSBzdHJp
bmcsIGkuZS46Cj4gPiDCoCBjb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzU2Ni1nbWFjIiwgInNu
cHMsZHdtYWMtNC4yMGEiOwo+IAo+IEFoIHllcywgSSBoYWQgZGlzYWJsZWQgdGhhdCBiZWNhdXNl
IG15IHZhcmlhbnQgdG9vayBhIGRpZmZlcmVudCBwYXRoLgo+IFRoYW5rcyEKPiAKCklzIHRoYXQg
YSBUZXN0ZWQtYnkgOi0pID8KClRoYW5rcywKRXplcXVpZWwKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
