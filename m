Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC7D606A8B8
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 20:09:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=bSyylyHp;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=WSWhl2K6
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=z9DufBMKDgl5LAiL/gZi1XA0+OZdLh12JTfZwOWlfMw=; b=bSyylyHpc6X1HnRQLHxZ8wXopp
	W+gvcTr8FzJjTSIYFdq9HXG1IDJ3K+qzvm6t6xenPiCGNg8/PM+9tUMpF5qcDRjyOMUAxcUzWn7Os
	T6aIo0pSgGCveTZsIgkRc/quCHIzfoahd46rQaIJZwI5ZtkACknb+TRQXjIj8lTqagwXv2F4eyoCf
	Wi4KptrhJLMqK1nTpH1z1Uv8WZyzFn6x/MdPYkcG0ysA0zMBlq2Y55ceE+YyBob8+/dK5Vyg9glGS
	dsLADy7M33nmrJFesWNw7pKqVQOrLhEpahgt557LZhYMqAAhfumYmg/Uo2pk0Y0rFqYFVJvafDCrW
	MPcCdLYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRxaB-0000000ELWX-2Xj6;
	Fri, 13 Nov 2026 20:09:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRxa4-0000000ELVg-1Jcq;
	Fri, 13 Nov 2026 20:09:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=OzoadZhT6+7BRQ3IJcP5Fei5yMlRSCEB5hfbLUnwCWI=; b=WSWhl2K65oqcQXRPW3xwJqF/pO
	zFtu5vaJYoHz65FakgJo1v2gCjH/3pMRL5An5WODpB3VF4tU8B1kIEVDK70z/Z+OKmcPZr8lhisuc
	vYSSOWoFAW1Igw+OpjRecyGJ2ZIgMqjr44BiO3MXe030HObNNVx6RcAeq6i3dEaPndEPyYsWHu115
	oaq7Q+0o3At+Qv9pq0IPMNyxOW6BeaKnDGjS0/gc/iB9vE+7DD3FuorFsOtHO3OoPUZSio/IUCSzq
	bB1rIRoQR3aO0k3a2aTl+1DNMx//skVXripCpxQ7dzEG6hFYhbZar0ZChkWFdgP+A7dCdVObJ729D
	ff/NKobw==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, iav@iav.lv
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Igor Velkov <iav@iav.lv>
Subject: Re: [PATCH] arm64: dts: rockchip: Enable SDR104 on the ODROID-M1 SD card
Date: Fri, 13 Nov 2026 21:09:01 +0100
Message-ID: <ozv3Kw_6ToOMhu6IF4wDPQ@sntech.de>
In-Reply-To: <20261110-odroid-m1-sdr104-v1-1-8edc6d5c1bf6@iav.lv>
References: <20261110-odroid-m1-sdr104-v1-1-8edc6d5c1bf6@iav.lv>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_120904_356116_95465D1D 
X-CRM114-Status: GOOD (  20.29  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

QW0gRGllbnN0YWcsIDEwLiBOb3ZlbWJlciAyMDI2LCAwMzo1MDowMSBNaXR0ZWxldXJvcMOkaXNj
aGUgTm9ybWFsemVpdCBzY2hyaWViIElnb3IgVmVsa292IHZpYSBCNCBSZWxheToKPiBGcm9tOiBJ
Z29yIFZlbGtvdiA8aWF2QGlhdi5sdj4KPiAKPiBUaGUgU0QgY2FyZCBhbHJlYWR5IHN3aXRjaGVz
IHRvIDEuOCBWLCBidXQgb25seSBTRFI1MCBpcyBhbGxvd2VkLCBhbmQKPiBjbGtfc2RtbWMwIG9u
IFJLMzU2OCBpcyBhIG11eCB3aXRob3V0IGEgZGl2aWRlcjogZHdfbW1jLXJvY2tjaGlwIGFza3MK
PiBpdCBmb3IgdHdpY2UgdGhlIGNhcmQgY2xvY2ssIDIwMCBNSHogZm9yIFNEUjUwLCB0aGUgbXV4
IHJvdW5kcyBkb3duIHRvCj4gdGhlIDEwMCBNSHogcGFyZW50IGFuZCB0aGUgY2FyZCBydW5zIGF0
IDUwIE1Iei4KPiAKPiBBbGxvdyBTRFIxMDQgaW5zdGVhZDsgdGhlIE1NQyBjb3JlIHN0aWxsIGZh
bGxzIGJhY2sgdG8gU0RSNTAgZm9yIGNhcmRzCj4gd2l0aG91dCBTRFIxMDQuIFdpdGggdGhlIDE1
MCBNSHogbWF4LWZyZXF1ZW5jeSBmcm9tIHJrMzU2eC1iYXNlLmR0c2kKPiB0aGUgY2xvY2sgY29t
ZXMgZnJvbSB0aGUgMzAwIE1IeiBwYXJlbnQgYW5kIHRoZSBjYXJkIHJ1bnMgYXQgMTUwIE1Iei4K
PiBIYXJka2VybmVsJ3MgdmVuZG9yIGtlcm5lbCBhbHJlYWR5IHVzZXMgc2QtdWhzLXNkcjEwNCBv
biB0aGlzIGJvYXJkLgo+IFdpdGggYSBTYW5EaXNrIDEyOCBHQiBjYXJkLCBkaXJlY3QgcmVhZCBn
b2VzIGZyb20gMjIgTUIvcyB0bwo+IDU4LTY0IE1CL3MgYW5kIGRpcmVjdCB3cml0ZSBmcm9tIDIw
IE1CL3MgdG8gNDctNTAgTUIvcy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBJZ29yIFZlbGtvdiA8aWF2
QGlhdi5sdj4KPiAtLS0KPiBUZXN0ZWQgd2l0aCBhbiBBcm1iaWFuIDcuMy4zIGtlcm5lbCAocm9j
a2NoaXA2NCksIHRoZSBwcm9wZXJ0eSBhZGRlZCB0bwo+IHRoZSBEVEIgd2l0aCBmZHRwdXQ6IHJl
Ym9vdCwgc3lzcnEtYiwgd2F0Y2hkb2cgcmVzZXQsIHBvd2Vyb2ZmLCBzMmlkbGUsCj4gZGVlcCwg
aGliZXJuYXRlLCBoeWJyaWQtc2xlZXAgYW5kIHN1c3BlbmQtdGhlbi1oaWJlcm5hdGU7IHRoZSBj
YXJkCj4gcmUtdHVuZWQgYW5kIGNhbWUgYmFjayBpbiBTRFIxMDQgYXQgMTUwIE1IeiBpbiBhbGwg
MjkgcnVucy4KPiAtLS0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1Njgtb2Ry
b2lkLW0xLmR0cyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRl
bGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszNTY4LW9kcm9pZC1tMS5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2
OC1vZHJvaWQtbTEuZHRzCj4gaW5kZXggZWM0M2RlZTE4MDk0Li42Zjc3ZTczYWJjOGUgMTAwNjQ0
Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1Njgtb2Ryb2lkLW0xLmR0
cwo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LW9kcm9pZC1tMS5k
dHMKPiBAQCAtNjEwLDcgKzYxMCw3IEBAICZzZG1tYzAgewo+ICAJZGlzYWJsZS13cDsKPiAgCXBp
bmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gIAlwaW5jdHJsLTAgPSA8JnNkbW1jMF9idXM0ICZz
ZG1tYzBfY2xrICZzZG1tYzBfY21kICZzZG1tYzBfZGV0PjsKPiAtCXNkLXVocy1zZHI1MDsKPiAr
CXNkLXVocy1zZHIxMDQ7CgpZb3UgdGhlbiB3YW50IGJvdGggb2YgdGhlbSBpbiB0aGUgZmlsZS4K
VGhlIGRldmljZXRyZWUgZG9lcyBub3QgY2FyZSBhYm91dCB3aGF0IG1tYyBkcml2ZXJzIGRvIGlu
dGVybmFsbHksIGFrYQp0aGF0IGZhbGxiYWNrIGFuZCB0aGUgcHJvcGVydGllcyBkZXNjcmliZQoK
U0QgVUhTIFNEUjUwIHNwZWVkIGlzIHN1cHBvcnRlZAphbmQKU0QgVUhTIFNEUjEwNCBzcGVlZCBp
cyBzdXBwb3J0ZWQKClNvIGJvdGggYXJlIG5lZWRlZC4KClRoYW5rcwpIZWlrbwoKCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
