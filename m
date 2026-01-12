Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 293D6C9EC6B
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jan 2026 11:02:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ucfEIAS7Eav34+J4FymRFsFIg5xxGin86ODSFvyNJBg=; b=IHgTGTLM9UC1Ff
	xanCnpvO1aclsSbzBa82MkXzFy1S1Vfor2MnZSy5qnTINRpUHEs1Sd5Yy83R+L6aOdAmSI9UELHHy
	yokEsMho0xHF17t/q75c2K8Jq0TfxNFUILIY0qvFFTAmK6NgLLGLKi6Vgwcm7CuU6hpvekvx/VCPR
	xKPtwQf8z7H8NsPvTGB9YlQwI55WLuw2MJsdKq5Wz80FFTzkRmFPxb30skJsms/OT3ZW2bI/HedIa
	7uz/GoaWHjbNz+NAdbseYMGTTQlNzKBOmS5C+vDNvxdq0ZYg5kuwXujdvIywlSDTfsAm+uXthmWJX
	2QF0YfvTa35JHMomMVOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfFhA-00000005DIj-39YW;
	Mon, 12 Jan 2026 11:02:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfFh8-00000005DHn-00OL;
	Mon, 12 Jan 2026 11:02:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=DWNPGMqaJKT2DTVjAZ8virInZYZelttbbbD/egipkf8=; b=Xv34hKlaaHbXVbZ1UG4gQg6bNI
	br6j8JxjmqssQQ91yiCYo9mrQWQSUln1AMH9KAB4TsARXI6SPRioylSyGp6v02G/8CD5co8bCCwtK
	b5DfISjQVKQEjUkLifa4DO65NYNqsJUvGdy5JmEMAoroY4nUNPpI38dDgRRYjoTHsnPHvKWW5rrHP
	gzWo65TeIr7HBUgkHICRJNd4cNLM7NNqpuYrwNUqpCvsQUZsxZ0H/LI4hQX4JdhtweNbkd1gZnQF4
	mbO01PhwlUpZK49RlHcMF8XLApeAOfE81/CErNpKWNtfj2ksKDae1S6ORIiXmH1JvLpRSQ0weWVXH
	bJSjBA9Q==;
Received: from i53875b6a.versanet.de ([83.135.91.106] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vfFgx-001wKN-TA; Mon, 12 Jan 2026 12:02:36 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Lee Jones <lee@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh@kernel.org>, Joseph Chen <chenjh@rock-chips.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Joseph Chen <chenjh@rock-chips.com>
Subject: Re: [PATCH v2 2/3] mfd: rk8xx: Add RK801 support
Date: Mon, 12 Jan 2026 12:02:35 +0100
Message-ID: <1980810.GKX7oQKdZx@diego>
In-Reply-To: <20260112102849.1479-3-chenjh@rock-chips.com>
References: <20260112102849.1479-1-chenjh@rock-chips.com>
 <20260112102849.1479-3-chenjh@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_030246_103881_C492EB52 
X-CRM114-Status: GOOD (  21.57  )
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

SGkgSm9zZXBoLAoKQW0gTW9udGFnLCAxMi4gSmFudWFyIDIwMjYsIDExOjI4OjQ4IE1pdHRlbGV1
cm9ww6Rpc2NoZSBOb3JtYWx6ZWl0IHNjaHJpZWIgSm9zZXBoIENoZW46Cj4gVGhlIFJLODAxIGlz
IGEgUG93ZXIgTWFuYWdlbWVudCBJQyAoUE1JQykgZm9yIG11bHRpbWVkaWEKPiBhbmQgaGFuZGhl
bGQgZGV2aWNlcy4gSXQgY29udGFpbnMgdGhlIGZvbGxvd2luZyBjb21wb25lbnRzOgo+IAo+IC0g
NCBCVUNLCj4gLSAyIExETwo+IC0gMSBTV0lUQ0gKPiAKPiBTaWduZWQtb2ZmLWJ5OiBKb3NlcGgg
Q2hlbiA8Y2hlbmpoQHJvY2stY2hpcHMuY29tPgo+IC0tLQo+ICBkcml2ZXJzL21mZC9LY29uZmln
ICAgICAgICAgICAgICAgICB8ICAgIDYgKy0KPiAgZHJpdmVycy9tZmQvcms4eHgtY29yZS5jICAg
ICAgICAgICAgfCAgIDgxICsrCj4gIGRyaXZlcnMvbWZkL3JrOHh4LWkyYy5jICAgICAgICAgICAg
IHwgICAzMyArLQo+ICBkcml2ZXJzL3JlZ3VsYXRvci9yazgwOC1yZWd1bGF0b3IuYyB8IDE5NjMg
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gIGluY2x1ZGUvbGludXgvbWZkL3JrODA4Lmgg
ICAgICAgICAgIHwgIDExOCArKwo+ICA1IGZpbGVzIGNoYW5nZWQsIDIzNCBpbnNlcnRpb25zKCsp
LCAxOTY3IGRlbGV0aW9ucygtKQo+ICBkZWxldGUgbW9kZSAxMDA2NDQgZHJpdmVycy9yZWd1bGF0
b3Ivcms4MDgtcmVndWxhdG9yLmMKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZmQvS2NvbmZp
ZyBiL2RyaXZlcnMvbWZkL0tjb25maWcKPiBpbmRleCA2Y2VjMTg1ODk0Ny4uNTQwNWU4NjMzYWEg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZmQvS2NvbmZpZwo+ICsrKyBiL2RyaXZlcnMvbWZkL0tj
b25maWcKPiBAQCAtMTM1NSwxNSArMTM1NSwxNSBAQCBjb25maWcgTUZEX1JLOFhYCj4gIAlzZWxl
Y3QgTUZEX0NPUkUKPiAgCj4gIGNvbmZpZyBNRkRfUks4WFhfSTJDCj4gLQl0cmlzdGF0ZSAiUm9j
a2NoaXAgUks4MDUvUks4MDgvUks4MDkvUks4MTYvUks4MTcvUks4MTggUG93ZXIgTWFuYWdlbWVu
dCBDaGlwIgo+ICsJdHJpc3RhdGUgIlJvY2tjaGlwIFJLODAxL1JLODA1L1JLODA4L1JLODA5L1JL
ODE2L1JLODE3L1JLODE4IFBvd2VyIE1hbmFnZW1lbnQgQ2hpcCIKCm5pdDogSSB0aGluayBhdCBz
b21lIHBvaW50IGl0J2QgYmUgdGltZSB0byBtYWtlIHRoYXQKCSJSb2NrY2hpcCBSWDh4eCBQb3dl
ciBNYW5hZ2VtZW50IENoaXBzIgpUaGUgY29uZmlnIGVudHJ5IGlzIGFscmVhZHkgbmFtZWQgdGhh
dCB3YXksIGFuZCB0aGF0IGxpc3Qgb2YgaW5kaXZpZHVhbApzdXBwb3J0ZWQgY2hpcHMgZ2V0cyB3
YXkgdG9vIGxvbmcuCgpBbHNvIHRoZSBpbmRpdmlkdWFsIHN1cHBvcnRlZCBjaGlwcyBfYXJlXyBs
aXN0ZWQgYmVsb3csIHNvIHRoZSB1bndpZWxkeQplbnRyeSBoZWFkbGluZSBjYW4gYmUgc2hvcnRl
bmVkLgoKPiAgCWRlcGVuZHMgb24gSTJDICYmIE9GCj4gIAlzZWxlY3QgTUZEX0NPUkUKPiAgCXNl
bGVjdCBSRUdNQVBfSTJDCj4gIAlzZWxlY3QgUkVHTUFQX0lSUQo+ICAJc2VsZWN0IE1GRF9SSzhY
WAo+ICAJaGVscAo+IC0JICBJZiB5b3Ugc2F5IHllcyBoZXJlIHlvdSBnZXQgc3VwcG9ydCBmb3Ig
dGhlIFJLODA1LCBSSzgwOCwgUks4MDksCj4gLQkgIFJLODE2LCBSSzgxNyBhbmQgUks4MTggUG93
ZXIgTWFuYWdlbWVudCBjaGlwcy4KPiArCSAgSWYgeW91IHNheSB5ZXMgaGVyZSB5b3UgZ2V0IHN1
cHBvcnQgZm9yIHRoZSBSSzgwMSwgUks4MDUsIFJLODA4LAo+ICsJICBSSzgwOSwgUks4MTYsIFJL
ODE3IGFuZCBSSzgxOCBQb3dlciBNYW5hZ2VtZW50IGNoaXBzLgo+ICAJICBUaGlzIGRyaXZlciBw
cm92aWRlcyBjb21tb24gc3VwcG9ydCBmb3IgYWNjZXNzaW5nIHRoZSBkZXZpY2UKPiAgCSAgdGhy
b3VnaCBJMkMgaW50ZXJmYWNlLiBUaGUgZGV2aWNlIHN1cHBvcnRzIG11bHRpcGxlIHN1Yi1kZXZp
Y2VzCj4gIAkgIGluY2x1ZGluZyBpbnRlcnJ1cHRzLCBSVEMsIExETyAmIERDREMgcmVndWxhdG9y
cywgYW5kIG9ua2V5LgoKWy4uLl0KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcmVndWxhdG9yL3Jr
ODA4LXJlZ3VsYXRvci5jIGIvZHJpdmVycy9yZWd1bGF0b3Ivcms4MDgtcmVndWxhdG9yLmMKPiBk
ZWxldGVkIGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAxZTgxNDI0Nzk2NS4uMDAwMDAwMDAwMDAK
PiAtLS0gYS9kcml2ZXJzL3JlZ3VsYXRvci9yazgwOC1yZWd1bGF0b3IuYwo+ICsrKyAvZGV2L251
bGwKCkxvb2tzIGxpa2Ugc29tZXRoaW5nIGRpZCBnbyB3cm9uZyBoZXJlLCBhcyB5b3UncmUgcmVt
b3ZpbmcgdGhlIHdob2xlCmRyaXZlcnMvcmVndWxhdG9yL3JrODA4LXJlZ3VsYXRvci5jIGZpbGUg
ZnJvbSB0aGUgTUZEIHBhdGNoLgoKClRoYW5rcwpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
