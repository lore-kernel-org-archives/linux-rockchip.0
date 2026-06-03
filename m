Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90901CD6E5D
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Jun 2026 01:29:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rWUvsJ83Crzur6IeXXEkd+LIdRL4qPV8ozlttbi248M=; b=v+ORvSBOwmtzh8
	BCLNGXMEAqZWhae7Au7plPGO2mV0MJEwXjE2W4lICFWKP/LC4UxbBubUJwmr4nXUR2m9X5A5dmTZJ
	lQGE/Md98aN3wMy6CFxtDSFXiwlCrpY3UHK60itYGIzmyd/YsqEfMtgxnUn/1T++8sj6sjx27sj3t
	abCvSgwzCmWMyM09B42bmduwABj1KwFF7NOanmWz9BQdDYnSU3yMdcClx0ImTVsBu0hy0xQymN/NG
	k2Hz3JSqang+ZoaW6idaMpXyPjfbLCWRPcN9KIrxsDZ4AQSrScSeHCylFslRRoQUi8ITY6dopS5aA
	Ne3oC628oSi5tGI51GTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUaPr-0000000E2vU-0Dma;
	Wed, 03 Jun 2026 01:29:07 +0000
Received: from mail-m158177.netease.com ([47.251.158.177])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUaPm-0000000E2uG-1yRU;
	Wed, 03 Jun 2026 01:29:05 +0000
Received: from [172.16.12.90] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 40d472abe;
	Wed, 3 Jun 2026 09:28:46 +0800 (GMT+08:00)
Message-ID: <91378132-8a8e-4bcc-9aa7-4de9fb135a6a@rock-chips.com>
Date: Wed, 3 Jun 2026 09:28:44 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] drm/rockchip: dsi: Add maximum per lane bit rate
 calculation
To: Heiko Stuebner <heiko@sntech.de>
Cc: Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Guochun Huang <hero.huang@rock-chips.com>, Chaoyi Chen <kernel@airkyi.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260324085838.90-1-kernel@airkyi.com> <4888940.6M6d0yLqnL@phil>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <4888940.6M6d0yLqnL@phil>
X-HM-Tid: 0a9e8b18ebda03a7kunma7a4b39932116e
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkaTU1NVktKGkhCGUhOSkodQ1YVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=DpCRBhYhHsk59imJ+FGOLy8d4MOtCjg9bDkKtXvNrDk5iWWBwZS1A4x0JDviW1oUGeFdDFS2d0NWdJVtU4YkUlRC3PajKAKdjolU8I8op2P1QcWAmkz2FKNW1VnFI1EwqOqeverIZpow5QyF0+1N/oei5IaiUWhLDi9TV/7d7fg=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=m1cnttQcMrvUZx5o8JPHBR3oI+NYB+tDa2bCbLIj358=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_182903_374317_6335C9AA 
X-CRM114-Status: GOOD (  16.87  )
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

SGkgSGVpa28sCgpPbiA2LzMvMjAyNiA0OjU5IEFNLCBIZWlrbyBTdHVlYm5lciB3cm90ZToKPiBB
bSBEaWVuc3RhZywgMjQuIE3DpHJ6IDIwMjYsIDA5OjU4OjM3IE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgQ2hhb3lpIENoZW46Cj4+IEZyb206IENoYW95aSBDaGVuIDxjaGFv
eWkuY2hlbkByb2NrLWNoaXBzLmNvbT4KPj4KPj4gRGlmZmVyZW50IGNoaXBzIGhhdmUgdmFyeWlu
ZyBzdXBwb3J0IGZvciB0aGUgbWF4aW11bSBiaXQgcmF0ZSBwZXIgbGFuZS4KPj4KPj4gQWRkIGNh
bGN1bGF0aW9uIGZvciB0aGUgbWF4aW11bSBwZXIgbGFuZSBiaXQgcmF0ZSBmb3IgdmFyaW91cyBj
aGlwCj4+IHBsYXRmb3JtcywgYW5kIHJlbGF4IHRoZSBiYW5kd2lkdGggbWFyZ2luIHJlcXVpcmVt
ZW50cy4KPj4KPj4gU2lnbmVkLW9mZi1ieTogQ2hhb3lpIENoZW4gPGNoYW95aS5jaGVuQHJvY2st
Y2hpcHMuY29tPgo+PiAtLS0KPj4gIC4uLi9ncHUvZHJtL3JvY2tjaGlwL2R3LW1pcGktZHNpLXJv
Y2tjaGlwLmMgICB8IDIxICsrKysrKysrKysrKysrKy0tLS0KPj4gIDEgZmlsZSBjaGFuZ2VkLCAx
NyBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL3JvY2tjaGlwL2R3LW1pcGktZHNpLXJvY2tjaGlwLmMgYi9kcml2ZXJzL2dwdS9k
cm0vcm9ja2NoaXAvZHctbWlwaS1kc2ktcm9ja2NoaXAuYwo+PiBpbmRleCAzNTQ3ZDkxYjI1ZDMu
LmQzYmFjZmFlMTc0ZSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3
LW1pcGktZHNpLXJvY2tjaGlwLmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3
LW1pcGktZHNpLXJvY2tjaGlwLmMKPj4gQEAgLTI2OCw2ICsyNjgsNyBAQCBzdHJ1Y3Qgcm9ja2No
aXBfZHdfZHNpX2NoaXBfZGF0YSB7Cj4+ICAKPj4gIAl1bnNpZ25lZCBpbnQgZmxhZ3M7Cj4+ICAJ
dW5zaWduZWQgaW50IG1heF9kYXRhX2xhbmVzOwo+PiArCXVuc2lnbmVkIGxvbmcgbWF4X2JpdF9y
YXRlX3Blcl9sYW5lOwo+PiAgfTsKPj4gIAo+PiAgc3RydWN0IGR3X21pcGlfZHNpX3JvY2tjaGlw
IHsKPj4gQEAgLTU2NSw3ICs1NjYsNyBAQCBkd19taXBpX2RzaV9nZXRfbGFuZV9tYnBzKHZvaWQg
KnByaXZfZGF0YSwgY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKm1vZGUsCj4+ICAJaW50
IGJwcDsKPj4gIAl1bnNpZ25lZCBsb25nIG1wY2xrLCB0bXA7Cj4+ICAJdW5zaWduZWQgaW50IHRh
cmdldF9tYnBzID0gMTAwMDsKPj4gLQl1bnNpZ25lZCBpbnQgbWF4X21icHMgPSBkcHBhX21hcFtB
UlJBWV9TSVpFKGRwcGFfbWFwKSAtIDFdLm1heF9tYnBzOwo+PiArCXVuc2lnbmVkIGludCBtYXhf
bWJwczsKPj4gIAl1bnNpZ25lZCBsb25nIGJlc3RfZnJlcSA9IDA7Cj4+ICAJdW5zaWduZWQgbG9u
ZyBmdmNvX21pbiwgZnZjb19tYXgsIGZpbiwgZm91dDsKPj4gIAl1bnNpZ25lZCBpbnQgbWluX3By
ZWRpdiwgbWF4X3ByZWRpdjsKPj4gQEAgLTU3Myw2ICs1NzQsNyBAQCBkd19taXBpX2RzaV9nZXRf
bGFuZV9tYnBzKHZvaWQgKnByaXZfZGF0YSwgY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUg
Km1vZGUsCj4+ICAJdW5zaWduZWQgbG9uZyBfZmJkaXYsIGJlc3RfZmJkaXY7Cj4+ICAJdW5zaWdu
ZWQgbG9uZyBtaW5fZGVsdGEgPSBVTE9OR19NQVg7Cj4+ICAKPj4gKwltYXhfbWJwcyA9IGRzaS0+
Y2RhdGEtPm1heF9iaXRfcmF0ZV9wZXJfbGFuZTsKPiAKPiBJIG1heSBiZSBibGluZCwgYnV0IGhv
dyBkbyB0aGUgdmFsdWVzIGNvbWUgdG9nZXRoZXI/Cj4gSW4gdGhlIGRwcGFfbWFwIHRhYmxlIHdl
IGhhdmUgbWJwcyB2YWx1ZXMgb2YgODkgdG8gMTUwMAo+IChNSHopCj4gCj4gV2hpbGUgYmVsb3cg
dGhlIHZhbHVlcyBzZXQgYXJlCj4gCS5tYXhfYml0X3JhdGVfcGVyX2xhbmUgPSAxNTAwMDAwMDAw
VUwsCj4gaW4gSHogSSBndWVzcwo+IAo+IEFuZCBJIGRvbid0IHNlZSB0aGUgbmVlZGVkIGNvbnZl
cnNpb24gc29tZWhvdy4KPiAKPgoKT2ghIEl0IHNob3VsZCBiZToKCm1heF9tYnBzID0gZHNpLT5j
ZGF0YS0+bWF4X2JpdF9yYXRlX3Blcl9sYW5lIC8gVVNFQ19QRVJfU0VDOwoKV2lsbCBmaXggaW4g
djIuCgo+PiAgCWRzaS0+Zm9ybWF0ID0gZm9ybWF0Owo+PiAgCWJwcCA9IG1pcGlfZHNpX3BpeGVs
X2Zvcm1hdF90b19icHAoZHNpLT5mb3JtYXQpOwo+PiAgCWlmIChicHAgPCAwKSB7Cj4+IEBAIC01
ODQsOCArNTg2LDggQEAgZHdfbWlwaV9kc2lfZ2V0X2xhbmVfbWJwcyh2b2lkICpwcml2X2RhdGEs
IGNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICptb2RlLAo+PiAgCj4+ICAJbXBjbGsgPSBE
SVZfUk9VTkRfVVAobW9kZS0+Y2xvY2ssIE1TRUNfUEVSX1NFQyk7Cj4+ICAJaWYgKG1wY2xrKSB7
Cj4+IC0JCS8qIHRha2UgMSAvIDAuOCwgc2luY2UgbWJwcyBtdXN0IGJpZyB0aGFuIGJhbmR3aWR0
aCBvZiBSR0IgKi8KPj4gLQkJdG1wID0gbXBjbGsgKiAoYnBwIC8gbGFuZXMpICogMTAgLyA4Owo+
PiArCQkvKiB0YWtlIDEgLyAwLjksIHNpbmNlIG1icHMgbXVzdCBiaWcgdGhhbiBiYW5kd2lkdGgg
b2YgUkdCICovCj4+ICsJCXRtcCA9IG1wY2xrICogKGJwcCAvIGxhbmVzKSAqIDEwIC8gOTsKPiAK
PiBQbGVhc2UgZG8gdGhpcyBpbiBhIHNlcGFyYXRlIHBhdGNoLCBlc3BlY2lhbGx5IGFzIEkgd291
bGQgZXhwZWN0IHNvbWUKPiBzb3J0IG9mIGV4cGxhbmF0aW9uIG9uIHdoeSB0aGlzIGlzIG9rIHRv
IGRvLgo+CgpTdXJlISBJJ2xsIHNwbGl0IHRoaXMgb3V0IGluIHRoZSBuZXcgc2VyaWVzLgoKLS0g
CkJlc3QsIApDaGFveWkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
