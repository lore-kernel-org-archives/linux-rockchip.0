Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18148C3ABC9
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 May 2025 12:46:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oO07UiMu1dOjWfDgS/BdwawCOrn494ya/oWYyuP9ZBM=; b=fDBR2CRrfc+lG+
	k6YveVPZgGLNJrfhZEVNxFoIHpG7917Lv1822TDlnb2Vqa1uGRsbHRk2tZb0IZdWMC1rLsbKPrPPw
	94e9bAB9JjfmhiQ68HPmnQKDU7Ri0gQKf1q1tdxnBwolMZpCNFg3xMkxJxoqGWt5q9mBy1dZQLYZd
	Nc6ybRckozIhBDYiiGqktFSTsH8v92ExAqwANxqU0cXe1q1tqa/j0TbX4tz+W7juQTvvbMdwZeJJv
	OLUSwfQGK5OyzbDhm+Z1tvtQKTUTAQlUoOtyZwpQ3akgcFA30VKDxghUt5yCT2R20a+V45JXGojkO
	eyRaKdIDBEbg1YlTkTeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFXyi-00000000bg7-2jga;
	Thu, 15 May 2025 12:46:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFXul-00000000arb-31mN;
	Thu, 15 May 2025 12:42:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=cNTuXkkuvsEfgIEUL6i9vw+CjUWCFS2WGIry+JlM6nE=; b=fUJOgOU/hCDCJc+zM19+yxqn7g
	0/mus2JVBADogordoH1Hd0pvjYUCtObeMO8OUp8idsK/fAWkbuPrlWZ0ka5gonvaJt9WrUX5nLOF5
	rIbAoBjVetl1ZeFfXB4CXGNZJDAogS6jLHGXDmelUu80VDkosqbwY/saM6aulCkGCr7p2LNKcIT8R
	bHZb/c4ASQjnT7CrLJ64X+EeRmsEDbAgTsOOFnPdACjGhQ7nQbuaMhBrct6fkOv1gcQOAuyMKiV8J
	WFFK4M+PHBcmUvmrtdAMpZYHJNkf9VJkoRj701cxpfayEXfMhXsdtoMvILKBH+FdG8x4MqCUd/GT1
	fEtSkq2Q==;
Received: from i53875a50.versanet.de ([83.135.90.80] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uFXug-0004e2-L9; Thu, 15 May 2025 14:42:14 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Matthias Kaehlcke <mka@chromium.org>,
 Benjamin Bara <benjamin.bara@skidata.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 Lukasz Czechowski <lukasz.czechowski@thaumatec.com>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, stable@vger.kernel.org
Subject: Re: [PATCH v2 2/5] dt-bindings: usb: cypress,hx3: Add support for all
 variants
Date: Thu, 15 May 2025 14:42:13 +0200
Message-ID: <18791204.sWSEgdgrri@diego>
In-Reply-To: <2025051550-polish-prude-ed56@gregkh>
References: <20250425-onboard_usb_dev-v2-0-4a76a474a010@thaumatec.com>
 <3784948.RUnXabflUD@diego> <2025051550-polish-prude-ed56@gregkh>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250515_054219_756428_4FCE2BC0 
X-CRM114-Status: GOOD (  27.18  )
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

QW0gRG9ubmVyc3RhZywgMTUuIE1haSAyMDI1LCAxMzo0OToxOSBNaXR0ZWxldXJvcMOkaXNjaGUg
U29tbWVyemVpdCBzY2hyaWViIEdyZWcgS3JvYWgtSGFydG1hbjoKPiBPbiBUaHUsIE1heSAxNSwg
MjAyNSBhdCAwMTo0Mzo1OVBNICswMjAwLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiA+IEFtIEZy
ZWl0YWcsIDI1LiBBcHJpbCAyMDI1LCAxNzoxODowNyBNaXR0ZWxldXJvcMOkaXNjaGUgU29tbWVy
emVpdCBzY2hyaWViIEx1a2FzeiBDemVjaG93c2tpOgo+ID4gPiBUaGUgQ3lwcmVzcyBIWDMgaHVi
cyB1c2UgZGlmZmVyZW50IGRlZmF1bHQgUElEIHZhbHVlIGRlcGVuZGluZwo+ID4gPiBvbiB0aGUg
dmFyaWFudC4gVXBkYXRlIGNvbXBhdGlibGVzIGxpc3QuCj4gPiA+IEJlY2FzdXNlIGFsbCBodWIg
dmFyaWFudHMgdXNlIHRoZSBzYW1lIGRyaXZlciBkYXRhLCBhbGxvdyB0aGUKPiA+ID4gZHQgbm9k
ZSB0byBoYXZlIHR3byBjb21wYXRpYmxlczogbGVmdG1vc3Qgd2hpY2ggbWF0Y2hlcyB0aGUgSFcK
PiA+ID4gZXhhY3RseSwgYW5kIHRoZSBzZWNvbmQgb25lIGFzIGZhbGxiYWNrLgo+ID4gPiAKPiA+
ID4gRml4ZXM6IDFlY2E1MWY1OGExMCAoImR0LWJpbmRpbmdzOiB1c2I6IEFkZCBiaW5kaW5nIGZv
ciBDeXByZXNzIEhYMyBVU0IgMy4wIGZhbWlseSIpCj4gPiA+IENjOiBzdGFibGVAdmdlci5rZXJu
ZWwub3JnICMgNi42Cj4gPiA+IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnICMgQmFja3BvcnQg
b2YgdGhlIHBhdGNoICgiZHQtYmluZGluZ3M6IHVzYjogdXNiLWRldmljZTogcmVsYXggY29tcGF0
aWJsZSBwYXR0ZXJuIHRvIGEgY29udGFpbnMiKSBmcm9tIGxpc3Q6IGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL2xpbnV4LXVzYi8yMDI1MDQxOC1kdC1iaW5kaW5nLXVzYi1kZXZpY2UtY29tcGF0aWJs
ZXMtdjItMS1iMzAyOWYxNGU4MDBAY2hlcnJ5LmRlLwo+ID4gPiBDYzogc3RhYmxlQHZnZXIua2Vy
bmVsLm9yZyAjIEJhY2twb3J0IG9mIHRoZSBwYXRjaCBpbiB0aGlzIHNlcmllcyBmaXhpbmcgcHJv
ZHVjdCBJRCBpbiBvbmJvYXJkX2Rldl9pZF90YWJsZSBpbiBkcml2ZXJzL3VzYi9taXNjL29uYm9h
cmRfdXNiX2Rldi5jIGRyaXZlcgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBMdWthc3ogQ3plY2hvd3Nr
aSA8bHVrYXN6LmN6ZWNob3dza2lAdGhhdW1hdGVjLmNvbT4KPiA+IAo+ID4gTG9va2luZyBhdCBs
aW51eC1uZXh0LCBpdCBzZWVtcyBsaWtlIHBhdGNoMSBvZiB0aGlzIHNlcmllcyB3YXMgYXBwbGll
ZCBbMF0uCj4gCj4gSXQgaXMgaW4gNi4xNS1yYzYsIG5vdCAianVzdCIgbGludXgtbmV4dAoKeWVh
aCwgSSBtYWlubHkgdXNlZCBsaW51eC1uZXh0IHRvIHNlZSBpZiBhIHBhcnQgb2YgdGhpcyBzZXJp
ZXMgd2FzIGFwcGxpZWQKYW55d2hlcmUgOi0pIC4gQmVjYXVzZSBuZWl0aGVyIG15IGluYm94IG5v
ciB0aGUgbGlzdCBhcmNoaXZlcyBzZWVtIHRvIGhhdmUKZ290dGVuIGFueSBmb3JtIG9mICJwYXRj
aCBhcHBsaWVkIiBtYWlsLgoKCj4gPiBUaGUgZ2VuZXJhbCBjb252ZW50aW9uIHdvdWxkIGJlIGZv
ciB0aGUgYmluZGluZyAodGhpcyBwYXRjaCkgYWxzbyBnb2luZwo+ID4gdGhyb3VnaCBhIGRyaXZl
ciB0cmVlLgo+ID4gCj4gPiBJIGd1ZXNzIEkgX2NvdWxkXyBhcHBseSBpdCB0b2dldGhlciB3aXRo
IHRoZSBib2FyZC1sZXZlbCBwYXRjaGVzLCBidXQKPiA+IGZvciB0aGF0IHdvdWxkIG5lZWQgYW4g
QWNrIGZyb20gR3JlZyAuCj4gPiAKPiA+IEBHcmVnLCBkbyB5b3Ugd2FudCB0byBtZXJnZSB0aGlz
IHBhdGNoID8KPiAKPiBJIHRob3VnaHQgYSBuZXcgc2VyaWVzIHdhcyBnb2luZyB0byBiZSBzZW50
IGZvciBzb21lIHJlYXNvbiwgd2hpY2ggd291bGQKPiBtYWtlIHRoaXMgYSBsb3QgZWFzaWVyLiAg
QnV0IGlmIHlvdSB3YW50IHRvIGp1c3QgdGFrZSB0aGlzIG9uZSBub3csCj4gdGhhdCdzIGZpbmUg
d2l0aCBtZSBhcyBpdCdzIG5vdCBpbiBteSBxdWV1ZS4KCkFzIHdlJ3JlIGNsb3NlIHRvIC1yYzcg
bm93LCBJIGFzc3VtZSB0aGUgY2hhbmNlIGlzIGxvdyBvZiBzb21lb25lCm5lZWRpbmcgdGhpcyBi
ZWZvcmUgNi4xNi1yYzEsIHNvIHRoYW5rcyBmb3IgdGhlIGJsZXNzaW5nLCBJJ2xsIGRvIHRoYXQg
Oi0pIC4KCkhlaWtvCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
