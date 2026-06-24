Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36401CDB47F
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Jun 2026 11:49:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CyRQLvUOAsb50bVTsnlYfH3+wj+uES4/0Gj40HP8xTk=; b=Rj6Szw4C9qVAU3
	xiRIm0gDYjB9zJxEHuyDcr+cD9jISDiHnyomIz/6nICZ3C3lMshvcbLGjJDsv0HrUazTLQJqbro3r
	1agNK771+oJFfEBWKJREPti95AhswUDiQ0d4sUJewXiHq4VCcYYiQweNZiaOMJ/mnJ0wvdaol54Qs
	Ca9zFsmX3sITUTqvVj/+4C12jw672MRVv8zdGXYHueF/6Z1w9q17Ky6als5EpWt1c00wHD8j+OX74
	MAMracNMMMty8agCU9UYFAFFyTbLOH4Ef00URweE5xecLlw6IfkBfG4YXqzjboO8Rqbopg1Kl57c6
	kECNbky3oZUvUrmkdsog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcM6l-00000007hwC-2yrM;
	Wed, 24 Jun 2026 11:49:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcM6i-00000007huw-1NkL;
	Wed, 24 Jun 2026 11:49:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=Js+56ANKxPxs/46/PFzp/qZpp2mD0OpgfX8pfIomZwQ=; b=u+3l0513/jiVxcbyjkOiqN809G
	2FAxCcySH/27vGu51RIwGdzd7RdgsJzIElKLg5bvVdTYm5QR7ZuKjBe569yP2AMIi8NDorLSrXCjl
	+8EQngoG7F2CYbr6uBNs0PzsaEvGa9M3L/unrNeyXQxmck47zQB5//XBCQVNNSKWassX+h8GXcbom
	NU74uh7PQGCZvPUQD5k+n1KOp0Aho5ASE8t9dsdQQif1MKnvK5F70scLZSG1ntG+48DX0PbLuGVah
	7w2yjr982EGHwzmGmO/raYZ8htGjQmOSy4ovTLsfZepdyc6fOdag4SZtfNmsLJd5cYO1RBg8Il9Nr
	N4iyrrhQ==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 David Wu <david.wu@rock-chips.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Yanan He <grumpycat921013@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 Yanan He <grumpycat921013@gmail.com>
Subject: Re: [PATCH 4/7] net: stmmac: dwmac-rk: Enable refout clock for RGMII
Date: Wed, 24 Jun 2026 13:49:12 +0200
Message-ID: <4954560.rnE6jSC6OK@diego>
In-Reply-To: <20260624-rv1126-alientek-dlrv1126-v1-4-5aef608a3f64@gmail.com>
References: <20260624-rv1126-alientek-dlrv1126-v1-0-5aef608a3f64@gmail.com>
 <20260624-rv1126-alientek-dlrv1126-v1-4-5aef608a3f64@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260624_044928_379051_C3844F99 
X-CRM114-Status: GOOD (  18.04  )
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

SGksCgpBbSBNaXR0d29jaCwgMjQuIEp1bmkgMjAyNiwgMTA6NDQ6NDEgTWl0dGVsZXVyb3DDpGlz
Y2hlIFNvbW1lcnplaXQgc2NocmllYiBZYW5hbiBIZToKPiBTb21lIFJvY2tjaGlwIEdNQUMgaW50
ZWdyYXRpb25zIHVzZSBjbGtfbWFjX3JlZm91dCBhcyBhbiBleHRlcm5hbCBQSFkKPiByZWZlcmVu
Y2UgY2xvY2sgZXZlbiB3aGVuIHRoZSBNQUMgaXMgY29uZmlndXJlZCBmb3IgUkdNSUkuCj4gCj4g
UlYxMTI2IGJvYXJkcyBjYW4gcm91dGUgQ0xLX0dNQUNfRVRIRVJORVRfT1VUIHRvIHRoZSBleHRl
cm5hbCBQSFkgYXMgYQo+IDI1IE1IeiByZWZlcmVuY2UgY2xvY2suIElmIHRoZSBkcml2ZXIgZG9l
cyBub3QgYWNxdWlyZSBhbmQgZW5hYmxlIHRoaXMKPiBjbG9jayBpbiBSR01JSSBtb2RlLCB0aGUg
Y29tbW9uIGNsb2NrIGZyYW1ld29yayBtYXkgZGlzYWJsZSBpdCBhcyB1bnVzZWQKPiBhbmQgdGhl
IFBIWSBjYW4gbG9zZSBpdHMgcmVmZXJlbmNlIGNsb2NrLgo+IAo+IEVuYWJsZSB0aGUgcmVmb3V0
IGNsb2NrIGhhbmRsaW5nIGZvciBSR01JSSBpbiBhZGRpdGlvbiB0byBSTUlJLgoKdGhlIGNsb2Nr
IHlvdXIgcmVmZXJlbmNpbmcgaXMgbm90IGxpbWl0ZWQgdG8geW91ciBydjExMjYgYnV0IGluc3Rl
YWQKcHJlc2VudCBvbiBtb3N0IChhbGw/KSBSb2NrY2hpcCBTb0NzLgoKQW5kIGl0IGlzIGFuIGlu
cHV0IGNsb2NrIGZvciB0aGUgcGh5IGl0c2VsZiwgc28gc2hvdWxkIGJlIGhhbmRsZWQgdGhlcmUu
CgpTZWUgZm9yIGV4YW1wbGUKICAgIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51
eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90cmVlL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTg4LXRpZ2VyLmR0c2kjbjMxMwphcyBhIHJlZmVyZW5jZS4KCgpIZWlrbwoK
PiBTaWduZWQtb2ZmLWJ5OiBZYW5hbiBIZSA8Z3J1bXB5Y2F0OTIxMDEzQGdtYWlsLmNvbT4KPiAt
LS0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvc3RtaWNyby9zdG1tYWMvZHdtYWMtcmsuYyB8IDYg
KysrKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0p
Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L3N0bWljcm8vc3RtbWFjL2R3
bWFjLXJrLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9zdG1pY3JvL3N0bW1hYy9kd21hYy1yay5j
Cj4gaW5kZXggOGQ3MDQyZTY4OTI2Li5mNmZkYzBjNWI0NzUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvc3RtaWNyby9zdG1tYWMvZHdtYWMtcmsuYwo+ICsrKyBiL2RyaXZlcnMv
bmV0L2V0aGVybmV0L3N0bWljcm8vc3RtbWFjL2R3bWFjLXJrLmMKPiBAQCAtMTExMiw3ICsxMTEy
LDggQEAgc3RhdGljIGludCBya19nbWFjX2Nsa19pbml0KHN0cnVjdCBwbGF0X3N0bW1hY2VuZXRf
ZGF0YSAqcGxhdCkKPiAgCWJzcF9wcml2LT5jbGtfZW5hYmxlZCA9IGZhbHNlOwo+ICAKPiAgCWJz
cF9wcml2LT5udW1fY2xrcyA9IEFSUkFZX1NJWkUocmtfY2xvY2tzKTsKPiAtCWlmIChwaHlfaWZh
Y2UgPT0gUEhZX0lOVEVSRkFDRV9NT0RFX1JNSUkpCj4gKwlpZiAocGh5X2lmYWNlID09IFBIWV9J
TlRFUkZBQ0VfTU9ERV9STUlJIHx8Cj4gKwkgICAgcGh5X2lmYWNlID09IFBIWV9JTlRFUkZBQ0Vf
TU9ERV9SR01JSSkKPiAgCQlic3BfcHJpdi0+bnVtX2Nsa3MgKz0gQVJSQVlfU0laRShya19ybWlp
X2Nsb2Nrcyk7Cj4gIAo+ICAJYnNwX3ByaXYtPmNsa3MgPSBkZXZtX2tjYWxsb2MoZGV2LCBic3Bf
cHJpdi0+bnVtX2Nsa3MsCj4gQEAgLTExMjMsNyArMTEyNCw4IEBAIHN0YXRpYyBpbnQgcmtfZ21h
Y19jbGtfaW5pdChzdHJ1Y3QgcGxhdF9zdG1tYWNlbmV0X2RhdGEgKnBsYXQpCj4gIAlmb3IgKGkg
PSAwOyBpIDwgQVJSQVlfU0laRShya19jbG9ja3MpOyBpKyspCj4gIAkJYnNwX3ByaXYtPmNsa3Nb
aV0uaWQgPSBya19jbG9ja3NbaV07Cj4gIAo+IC0JaWYgKHBoeV9pZmFjZSA9PSBQSFlfSU5URVJG
QUNFX01PREVfUk1JSSkgewo+ICsJaWYgKHBoeV9pZmFjZSA9PSBQSFlfSU5URVJGQUNFX01PREVf
Uk1JSSB8fAo+ICsJICAgIHBoeV9pZmFjZSA9PSBQSFlfSU5URVJGQUNFX01PREVfUkdNSUkpIHsK
PiAgCQlmb3IgKGogPSAwOyBqIDwgQVJSQVlfU0laRShya19ybWlpX2Nsb2Nrcyk7IGorKykKPiAg
CQkJYnNwX3ByaXYtPmNsa3NbaSsrXS5pZCA9IHJrX3JtaWlfY2xvY2tzW2pdOwo+ICAJfQo+IAo+
IAoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
