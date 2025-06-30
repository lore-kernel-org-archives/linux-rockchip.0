Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C717C83030
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Jun 2025 12:20:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=me20srOYsi1YrTv9v9RnpZgyQzaAqiLTbcL5ochwm/s=; b=jt5fBxwEz94EGS
	Idh85NeHrwIjU8iSNc7FiCYeCx/wHsBw0kW+4/IZwqRxCVN5Cp0NjVUvTn9ZffpZCGo9yVWJ+pxmA
	vbf818sQK9qo/xGJ2wy7nFpDte/qXL9Zr6zABixZZjKOFp8sLcght9V4LtPlNbo61c6N2cUJotneA
	yiie8+2yNcpXIZEb62Af1iQv5tgnzgaMKkKZgamOyn9lyy7Gq1+xquXrVgDjLQ2vdIkd58inhfdVg
	mKfMJ3+abQLbMtonA+u+vEEVX+il9CVLBeeXGWPIPHKYygu9lDXPOGoMb/5h7eGRNn9qOqI9+Agpd
	25zkcY1BaYmGlXwxPfJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWDUM-00000002A5P-3TKY;
	Mon, 30 Jun 2025 12:19:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWD0o-000000025vt-32Ui;
	Mon, 30 Jun 2025 11:49:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=PMhrsG/YsbxMt+IC5JLuz7E1CuFXsvedzQusYHZo2XA=; b=wYg2ujN0VisunfydIG9JuMA9QI
	jdxztCi+DTaQU7FBDGPgS0kip8gNcT6a/gOwmcq5E1PAzjNFcIIn6d+qGiEZ0hAI9VD//7WW69AP2
	P4+bxHVVS745eHOcDNiFgRv6mxEeOulfZ/U28poZdbApyEwvEtFTx93/iVnS0Hov49LycPdIYLcEM
	ndYLhkVqmsHVUz+XXBN2dk26TCOndtadsuCRQdSklXLGKfomBf/BQIrUwCRB3uFeKb3WfcEjyFzPn
	1CEtWLMgqyf5QcnwSp/pMlbeA/Ldz+SS+DclVI2tikLDQW8c8pYDrGq6+u5IY1pMuefaBhoR0gVeH
	OvRQGCvA==;
Received: from i53875bfd.versanet.de ([83.135.91.253] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uWD0k-00006g-14; Mon, 30 Jun 2025 13:49:22 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Subject: Re: [PATCH 2/4] Input: adc-keys - support types that aren't just keyboard
 keys
Date: Mon, 30 Jun 2025 13:49:21 +0200
Message-ID: <10163666.lvqk35OSZv@diego>
In-Reply-To: <20250630-rock4d-audio-v1-2-0b3c8e8fda9c@collabora.com>
References: <20250630-rock4d-audio-v1-0-0b3c8e8fda9c@collabora.com>
 <20250630-rock4d-audio-v1-2-0b3c8e8fda9c@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250630_044926_760958_56E3973B 
X-CRM114-Status: GOOD (  18.63  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-input@vger.kernel.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gTW9udGFnLCAzMC4gSnVuaSAyMDI1LCAxMjoxOToyNSBNaXR0ZWxldXJvcMOkaXNjaGUgU29t
bWVyemVpdCBzY2hyaWViIE5pY29sYXMgRnJhdHRhcm9saToKPiBJbnN0ZWFkIG9mIGRvaW5nIHNv
bWV0aGluZyBsaWtlIHdoYXQgZ3Bpby1rZXlzIGlzIGRvaW5nLCBhZGMta2V5cwo+IGhhcmRjb2Rl
cyB0aGF0IGFsbCBrZXljb2RlcyBtdXN0IGJlIG9mIHR5cGUgRVZfS0VZLgo+IAo+IFRoaXMgbGlt
aXRzIHRoZSB1c2VmdWxuZXNzIG9mIGFkYy1rZXlzLCBhbmQgb3ZlcmNvbXBsaWNhdGVzIHRoZSBj
b2RlCj4gd2l0aCBtYW51YWwgYml0LXNldHRpbmcgbG9naWMuCj4gCj4gSW5zdGVhZCwgcmVmYWN0
b3IgdGhlIGNvZGUgdG8gcmVhZCB0aGUgbGludXgsaW5wdXQtdHlwZSBmd25vZGUgcHJvcGVydHks
Cj4gYW5kIGdldCByaWQgb2YgdGhlIGN1c3RvbSBiaXQgc2V0dGluZyBsb2dpYywgcmVwbGFjaW5n
IGl0IHdpdGgKPiBpbnB1dF9zZXRfY2FwYWJpbGl0eSBpbnN0ZWFkLiBpbnB1dF9yZXBvcnRfa2V5
IGlzIHJlcGxhY2VkIHdpdGgKPiBpbnB1dF9ldmVudCwgd2hpY2ggYWxsb3dzIHVzIHRvIGV4cGxp
Y2l0bHkgcGFzcyB0aGUgdHlwZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBOaWNvbGFzIEZyYXR0YXJv
bGkgPG5pY29sYXMuZnJhdHRhcm9saUBjb2xsYWJvcmEuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2lu
cHV0L2tleWJvYXJkL2FkYy1rZXlzLmMgfCAxNiArKysrKysrKysrKystLS0tCj4gIDEgZmlsZSBj
aGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2lucHV0L2tleWJvYXJkL2FkYy1rZXlzLmMgYi9kcml2ZXJzL2lucHV0L2tleWJv
YXJkL2FkYy1rZXlzLmMKPiBpbmRleCBmMTc1MzIwNzQyOWRiMDJjZTY1MTBlNWVjMGRhOWIyNGQ5
ZWRiNjFkLi4zMzlkZDRkNGEwODQyMTA4ZGEyYzYxMzZiMWUwMDk4Y2QxZjZhM2NkIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvaW5wdXQva2V5Ym9hcmQvYWRjLWtleXMuYwo+ICsrKyBiL2RyaXZlcnMv
aW5wdXQva2V5Ym9hcmQvYWRjLWtleXMuYwo+IEBAIC0xOSwxMiArMTksMTQgQEAKPiAgc3RydWN0
IGFkY19rZXlzX2J1dHRvbiB7Cj4gIAl1MzIgdm9sdGFnZTsKPiAgCXUzMiBrZXljb2RlOwoKbml0
OiBjb25zaXN0ZW5jeSAuLi4gdGhlIGFib3ZlIGlzIHN0aWxsICJrZXljb2RlIgpOYW1pbmcgdGhp
bmdzICJjb2RlIiBsaWtlIGluIGdwaW8ta2V5cyBtaWdodCBtYWtlIHNlbnNlIG1heWJlPwpUaG91
Z2ggSSBndWVzcywgaXQgY291bGQgYWxzbyBqdXN0IGJlIG5lZWRsZXNzIGNodXJuCgo+ICsJdTMy
IHR5cGU7Cj4gIH07Cj4gIAo+ICBzdHJ1Y3QgYWRjX2tleXNfc3RhdGUgewo+ICAJc3RydWN0IGlp
b19jaGFubmVsICpjaGFubmVsOwo+ICAJdTMyIG51bV9rZXlzOwo+ICAJdTMyIGxhc3Rfa2V5OwoK
Xl4gc2FtZQoKSSd2IGNoZWNrZWQgdGhhdCB0aGUgZnVuY3Rpb24gdHJhbnNpc3Rpb25zIAotIF9f
c2V0X2JpdCAtPiBpbnB1dF9zZXRfY2FwYWJpbGl0eQotIGlucHV0X3JlcG9ydF9rZXkgLT4gaW5w
dXRfZXZlbnQKCmRvIHRoZSByaWdodCB0aGluZywKClJldmlld2VkLWJ5OiBIZWlrbyBTdHVlYm5l
ciA8aGVpa29Ac250ZWNoLmRlPgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
