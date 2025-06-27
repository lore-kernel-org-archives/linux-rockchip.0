Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7424BC77B7F
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Jun 2025 19:05:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ii3mHJBUhhcB3UDmcgMYhiQhos1ZWX2JYcXPLD5hpLo=; b=oWTkHNiKvmwHvA
	vIEtLyRw5YFJgr3Br6qFEnA2OynVYY9BQsX5UAnf6yPa8+vTN+lm5fnpriSNiTyQ3UCI06OQy4tIY
	GReS2Uom+/t0xLJkEnX/G7A+dJLVyA6N/cZ/i5grpvtw4dKfJFfxB46F8hNquu9dkmXorGqrsb4OD
	f0ihhFM8PcRes7fPv8tVneAD8q3pvlNAVyYkTvGoUAeB2k8JPE2vqihm7Hj2gBtp4pbiTmLTQW7iQ
	FKfO2j3SqPeYgYUErUy5WOr+l2oC8uZNRI3m5ZTtyqIrY/YVWjA3rDi2aWLfZ+P/PjOXjxdTB+2HL
	TAvDbnQi3Fm7o4L6EbQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVENv-0000000FZch-1h1v;
	Fri, 27 Jun 2025 19:05:15 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVDlN-0000000FUqs-351N;
	Fri, 27 Jun 2025 18:25:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=AcyZ33LazzChsEAUzIIB359Y93Og/rELjwXfNDaBkEM=; b=HcpRcSSz1aCLDictpkpp3PuP8n
	016GmdmvMyFTr8Fp3goWlzDWt6g+Qg1UQnq19KLPDu5XfrsfGy54AeysX+I7b5EKWhJNwc3G3aIJH
	6MxIeD5TZRDXYXkEWWwhUorD+HAPmBCXbYiEQpcYsK/60fbQ0QiNT3BCc6XsT51j7ylorjGHgyvk4
	LAjIG7D8xgOgYJRBYlD+t4WGvJJeL6GUaYKKgk3KDs7mBXsxLku1ItYfQivQjw4M44RFKl8xpAIZY
	xWjreGFjjXbkK3L6Nl9gPdT6tXt2AXij+qt7dHgCcjrz+03Ba6odHEvAXf8WmjOJYwo7Z+2oqYMv+
	LNt1qWzQ==;
Received: from i53875b81.versanet.de ([83.135.91.129] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uVDl7-0006Qj-Ee; Fri, 27 Jun 2025 20:25:09 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Quentin Schulz <quentin.schulz@cherry.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Diederik de Haas <didi.debian@cknow.org>
Cc: Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/8] arm64: dts: rockchip: Refactor DSI nodes on rk3399 boards
Date: Fri, 27 Jun 2025 20:25:07 +0200
Message-ID: <5121698.88bMQJbFj6@diego>
In-Reply-To: <DAXGZG0DEKS2.7RLXKSDO0C9T@cknow.org>
References: <20250627152645.740981-1-didi.debian@cknow.org>
 <b1c789bf-1369-42ec-8bb3-d7a45c92abf0@cherry.de>
 <DAXGZG0DEKS2.7RLXKSDO0C9T@cknow.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250627_112525_799564_3A6684EC 
X-CRM114-Status: GOOD (  26.91  )
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

QW0gRnJlaXRhZywgMjcuIEp1bmkgMjAyNSwgMTg6NTI6MDggTWl0dGVsZXVyb3DDpGlzY2hlIFNv
bW1lcnplaXQgc2NocmllYiBEaWVkZXJpayBkZSBIYWFzOgo+IEhpIFF1ZW50aW4sCj4gCj4gVGhh
bmtzIGZvciB0YWtpbmcgYSBsb29rLgo+IAo+IE9uIEZyaSBKdW4gMjcsIDIwMjUgYXQgNjoxMCBQ
TSBDRVNULCBRdWVudGluIFNjaHVseiB3cm90ZToKPiA+IE9uIDYvMjcvMjUgNToxNiBQTSwgRGll
ZGVyaWsgZGUgSGFhcyB3cm90ZToKPiA+PiBUaGUgI2FkZHJlc3MtY2VsbHMgYW5kICNzaXplLWNl
bGxzIHByb3BlcnRpZXMgYXJlIG5vdCB1c2VmdWwgb24gdGhlIERTSQo+ID4+IGNvbnRyb2xsZXIg
bm9kZXM7IHRoZXkgYXJlIG9ubHkgdXNlZnVsL3JlcXVpcmVkIG9uIHBvcnRzIGFuZCBwYW5lbChz
KS4KPiA+PiBTbyByZW1vdmUgdGhlbSBmcm9tIHRoZSBjb250cm9sbGVyIG5vZGUgYW5kIGFkZCB0
aGVtIHdoZXJlIGFjdHVhbGx5Cj4gPj4gbmVlZGVkIG9uIHRoZSB2YXJpb3VzIHJrMzM5OSBiYXNl
ZCBib2FyZHMuCj4gPj4gCj4gPj4gTmV4dCB0byB0aGF0LCB0aGVyZSB3ZXJlIHNldmVyYWwgKGV4
YWN0KSByZWRlZmluaXRpb25zIG9mIG5vZGVzIHdoaWNoCj4gPj4gYXJlIGFscmVhZHkgcHJlc2Vu
dCBpbiByazMzOTktYmFzZS5kdHNpIHRvIGFkZCBhIG1pcGlfb3V0IGVuZHBvaW50Lgo+ID4+IFNp
bXBsaWZ5IHRoYXQgYnkgcmVmZXJlbmNpbmcgdGhlIG1pcGlfb3V0IHBoYW5kbGUgYW5kIGFkZCB0
aGUgZW5kcG9pbnQKPiA+PiB0byB0aGF0LCB3aGljaCBhbGxvd3MgdGhlIHJlbW92ZWFsIG9mIHRo
ZSBwb3J0cyByZWRlZmluaXRpb24uCj4gPj4gCj4gPj4gQW5kIGZpeCAxIGluc3RhbmNlIHdoZXJl
IHRoZSBtaXBpX291dCByZWZlcmVuY2VkIG5vZGUgd2FzIG5vdCBzb3J0ZWQKPiA+PiBjb3JyZWN0
bHkuCj4gPj4gCj4gPj4gVGhpcyBmaXhlcyB0aGUgZm9sbG93aW5nIERUQiB2YWxpZGF0aW9uIHdh
cm5pbmdzOgo+ID4+IAo+ID4+ICAgIHVubmVjZXNzYXJ5ICNhZGRyZXNzLWNlbGxzLyNzaXplLWNl
bGxzIHdpdGhvdXQgInJhbmdlcyIsCj4gPj4gICAgImRtYS1yYW5nZXMiIG9yIGNoaWxkICJyZWci
IHByb3BlcnR5Cj4gPj4gCj4gPgo+ID4gVG9vIG1hbnkgdW5yZWxhdGVkIGNoYW5nZXMgaW4gdGhp
cyBjb21taXQsIHBsZWFzZSBzcGxpdCBpbnRvIG11bHRpcGxlIAo+ID4gY29tbWl0cy4KPiA+Cj4g
PiBJIGNvdWxkIGlkZW50aWZ5Ogo+ID4KPiA+IC0gbW92aW5nIGFkZHJlc3MtY2VsbHMvc2l6ZS1j
ZWxscyBmcm9tIFNvQy5kdHNpIHRvIGJvYXJkIGR0cyhpKXMsCj4gPiAtIHJlb3JkZXJpbmcgcHJv
cGVydGllcyB0byBiZXR0ZXIgbWF0Y2ggRFQgY29kaW5nIHN0eWxlIAo+ID4gaHR0cHM6Ly93d3cu
a2VybmVsLm9yZy9kb2MvaHRtbC9sYXRlc3QvZGV2aWNldHJlZS9iaW5kaW5ncy9kdHMtY29kaW5n
LXN0eWxlLmh0bWwjb3JkZXItb2YtcHJvcGVydGllcy1pbi1kZXZpY2Utbm9kZQo+ID4gLSB1c2Ug
cGhhbmRsZSB0byBkaXJlY3RseSBhY2Nlc3MgcG9ydHMsCj4gPiAtIHJlb3JkZXIgRFQgbm9kZSB0
byBiZXR0ZXIgbWF0Y2ggRFQgY29kaW5nIHN0eWxlIAo+ID4gaHR0cHM6Ly93d3cua2VybmVsLm9y
Zy9kb2MvaHRtbC9sYXRlc3QvZGV2aWNldHJlZS9iaW5kaW5ncy9kdHMtY29kaW5nLXN0eWxlLmh0
bWwjb3JkZXItb2Ytbm9kZXMKPiAKPiBJIGluaXRpYWxseSBoYWQgaXQgYXMgc2V2ZXJhbCBjb21t
aXRzLCBidXQgdGhhdCByZXN1bHRlZCBpbiAoZi5lLikgMQo+IGlzc3VlIGJlaW5nIGZpeGVkLCBi
dXQgMSAob3IgbW9yZSkgb3RoZXJzIHdvdWxkIHBvcCB1cC4KPiBUaG9zZSB3ZXJlIHRoZW4gZml4
ZWQgaW4gZm9sbG93LXVwIGNvbW1pdHMsIGJ1dCBJIGFzc3VtZWQgSSdkIGdldCBSb2Incwo+IGJv
dCBzY3JlYW1pbmcgYXQgbWUgZm9yIGludHJvZHVjaW5nIG5ldyB3YXJuaW5ncyAoZmlyc3QpLgo+
IAo+IEFuZCBhcyB0aGV5IGFsbCByZWxhdGUoZCkgdG8gZml4aW5nIHRoZSBkc2kgbm9kZSwgSSB0
aGVuIGNob29zZSB0bwo+IGNvbWJpbmUgdGhlbSAoYnV0IHN0aWxsIHNlcGFyYXRlZCBieSBTb0Mp
Lgo+IElNTyB0aGVyZSBhcmUgc2V2ZXJhbCB3YXlzIHRvIG9yZ2FuaXplIHRoZSBjb21taXRzIGFu
ZCBlYWNoIHdvdWxkIGhhdmUKPiB0aGVpciBwcm9zIGFuZCBjb25zLCBzbyBJICdzZXR0bGVkJyBm
b3IgdGhpcyBhcnJhbmdlbWVudC4KPiAKPiBTbyBJIHByZWZlciB0byB3YWl0IGZvciBvdGhlciBw
ZW9wbGUncyBvcGluaW9uIGZpcnN0IGJlZm9yZSByZW9yZ2FuaXppbmcKPiB0aGUgY29tbWl0cyBh
Z2FpbiAoaWYgdGhlcmUncyBhIGRpZmZlcmVudCBjb25zZW5zdXMpLgoKcGVyc29uYWxseSwgSSBj
YW4gbGl2ZSB3aXRoIHRoZSBjdXJyZW50IHNldHVwIGhlcmUsIGJlY2F1c2UgYXMgeW91IHNhaWQK
aXQncyBhbGwgRFNJIHJlbGF0ZWQsIGFuZCBhbHNvIG5vdCBhIGZ1bmN0aW9uYWwgY2hhbmdlIDst
KSAuCgpJIGd1ZXNzIHlvdSBfY291bGRfIG1vdmUgdGhlIGNsb2NrLW1hc3RlciArIHN0YXR1cyBt
b3ZlcyBpbnRvIGEgc2VwYXJhdGUKcGF0Y2gsIGFzIHRoYXQgc2hvdWxkIG5vdCB0cmlnZ2VyIGFu
eSB3YXJuaW5ncy4KCgo+ID4gVGhlIGNoYW5nZSBmb3IgUkszMzk5IFB1bWEgSGFpa291IFZpZGVv
IERlbW8gRFRTTyBpcyBmaW5lIGZvciBtZS4KPiAKPiBUaGFua3MgOikKPiAKPiBDaGVlcnMsCj4g
ICBEaWVkZXJpawo+IAoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
