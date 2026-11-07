Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFA16606A32E
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Nov 2026 14:55:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=H/jFH1TP;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=Vx4J4G9N
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=P4vdRPx1+mCGSug6b/nW/YKQRd5YpD+Tnfn/Y/7AEXw=; b=H/jFH1TPKmS2sWp55gqpqJ0EJw
	jpGPnZSORPYZxzu7n9rnGYbeSreA00RzN1oaoFekYswvLvMIg0T7Lik6lGRo4G6YmCl5iwClPS4rz
	RKeWBva4YoqUtyet798JY8pq1QW6IrtZdnwsSpmvYdX4skgn1vce4Ci8W023D8d8Io5oNiawm6LNK
	RFfVgVmrBenUO+6SHGdhIRFi5q9di08MLWkCTzQvdmAVKprYownj1tGbPdRvK6v/X6t5SDJ1X9Xu/
	5KEkiuQMwGh6L0vtrmK2pVChXJJprCXzpq4uMfjJnkJM3mRQoKEubZa3WRdXRjW1ItZjeV0I2WZuB
	5h0gSlJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPhpD-0000000EroG-05vC;
	Sat, 07 Nov 2026 14:55:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPhpA-0000000ErmP-3BW1;
	Sat, 07 Nov 2026 14:55:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=9fZSnTYT8MA9EbRBaUvLqKYLQu5iORlXOvx+G3Uf2Jc=; b=Vx4J4G9No9bGRJ4Vs0GPjrqjeT
	ToMpI2Vl+Ww2kkw+zMNU1/iDDpUDu3YRotlBkpj9gKNB74bBHTypCnSy/xC6d1DK5LDIQooU3Vn91
	o6AcmQvggAkz/uvzI1jyu03Km0tXEYX8qPdITP2+kuMINdoUeyob16qSdX45z4wObi5ieN66BW4ue
	BlgYsfBOIb2JOxJ6hUKlbwpjiJbWc7qZq7ZNfsQWKZFAPa6g2PANLncMplYImLQAgsqbMNE5yxtfy
	EccGTLdNgh9J4QLQXaN9VRoPbwqYorjGX0D+jkVxeA1ntzsyI4FcN8YGopY6zSra3Nd5Q2S7OUulz
	BvedVQwA==;
From: Heiko Stuebner <heiko@sntech.de>
To: rafael@kernel.org, Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
Cc: Daniel Lezcano <daniel.lezcano@kernel.org>, Shuah Khan <shuah@kernel.org>,
 Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
 Lukasz Luba <lukasz.luba@arm.com>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kselftest@vger.kernel.org
Subject: Re: [PATCH v5 4/6] powercap: dtpm: Use generic powercap hierarchy helpers
Date: Sat, 07 Nov 2026 15:55:14 +0100
Message-ID: <4204877.2iPT33SAM4@phil>
In-Reply-To: <bded992091c92baa7246b939f266297f99c8942b.1793666444.git.daniel.lezcano@oss.qualcomm.com>
References: <cover.1793666444.git.daniel.lezcano@oss.qualcomm.com>
 <bded992091c92baa7246b939f266297f99c8942b.1793666444.git.daniel.lezcano@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261107_065520_801112_4112397A 
X-CRM114-Status: GOOD (  18.62  )
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

QW0gRGllbnN0YWcsIDMuIE5vdmVtYmVyIDIwMjYsIDA1OjQ4OjE4IE1pdHRlbGV1cm9ww6Rpc2No
ZSBOb3JtYWx6ZWl0IHNjaHJpZWIgRGFuaWVsIExlemNhbm86Cj4gRFRQTSBpbXBsZW1lbnRzIGl0
cyBvd24gaGllcmFyY2h5IGNyZWF0aW9uIGFuZCBkZXN0cnVjdGlvbiBsb2dpYyB3aGlsZQo+IHRo
ZSBwb3dlcmNhcCBjb3JlIG5vdyBwcm92aWRlcyBnZW5lcmljIGhlbHBlcnMgZm9yIHRoaXMgcHVy
cG9zZS4KPiAKPiBDb252ZXJ0IERUUE0gdG8gdXNlIHRoZSBnZW5lcmljIHBvd2VyY2FwIGhpZXJh
cmNoeSBpbmZyYXN0cnVjdHVyZS4KPiBEdXBsaWNhdGUgdGhlIHBsYXRmb3JtIGhpZXJhcmNoeSBi
ZWZvcmUgY3JlYXRpbmcgaXQsIGFuZCB1c2UKPiBwb3dlcmNhcF9oaWVyYXJjaHlfY3JlYXRlKCkg
YW5kIHBvd2VyY2FwX2hpZXJhcmNoeV9kZXN0cm95KCkgdG8gbWFuYWdlCj4gdGhlIERUUE0gem9u
ZXMuCj4gCj4gQWRkIERUUE0gY2FsbGJhY2tzIHRvIGNyZWF0ZSBhbmQgZGVzdHJveSB0aGUgem9u
ZXMgYXNzb2NpYXRlZCB3aXRoIGVhY2gKPiBwb3dlcmNhcCBoaWVyYXJjaHkgbm9kZS4gQWRhcHQg
dGhlIENQVSBhbmQgZGV2ZnJlcSBiYWNrZW5kcyB0byByZXR1cm4KPiB0aGUgY3JlYXRlZCBEVFBN
IGluc3RhbmNlIGFuZCB1c2UgdGhlIG5vZGUgbmFtZSBwcm92aWRlZCBieSB0aGUKPiBoaWVyYXJj
aHkuCj4gCj4gQ29udmVydCB0aGUgUm9ja2NoaXAgUkszMzk5IGRlc2NyaXB0aW9uIHRvIHN0cnVj
dCBwb3dlcmNhcF9oaWVyYXJjaHkKPiBhbmQga2VlcCB0aGUgZGV2aWNlIHRyZWUgcGF0aCBhcyBE
VFBNLXNwZWNpZmljIG5vZGUgZGF0YS4KPiAKPiBUaGlzIHJlbW92ZXMgdGhlIERUUE0tc3BlY2lm
aWMgaGllcmFyY2h5IHRyYXZlcnNhbCBhbmQgZGVzdHJ1Y3Rpb24gY29kZQo+IGFuZCBsZWF2ZXMg
dGhlIGhpZXJhcmNoeSBtYW5hZ2VtZW50IHRvIHRoZSBwb3dlcmNhcCBjb3JlLgo+IAo+IFByZXNl
cnZlIGJlc3QtZWZmb3J0IGNyZWF0aW9uOiBhbiB1bmF2YWlsYWJsZSBiYWNrZW5kIHJldHVybnMg
TlVMTCB0bwo+IHNraXAgaXRzIGJyYW5jaCwgYW5kIHNldHVwIGZhaWx1cmVzIGFyZSB3YXJuZWQg
YWJvdXQgYW5kIHNraXBwZWQgcmF0aGVyCj4gdGhhbiByb2xsaW5nIGJhY2sgaW5kZXBlbmRlbnQg
em9uZXMuIEludmFsaWQgbm9kZSBkZXNjcmlwdG9ycyByZW1haW4KPiBmYXRhbC4gUmVqZWN0IGEg
RFQgbm9kZSB3aXRoIGEgTlVMTCBwYXRoIGJlZm9yZSBjYWxsaW5nCj4gb2ZfZmluZF9ub2RlX2J5
X3BhdGgoKSwgdHJlYXRpbmcgaXQgYXMgYW4gaW52YWxpZCBkZXNjcmlwdG9yIHJhdGhlcgo+IHRo
YW4gYW4gdW5hdmFpbGFibGUgYmFja2VuZC4KPiAKPiBXaGVuIHRoZSByZXByZXNlbnRhdGl2ZSBD
UFUgaXMgb2ZmbGluZSwgZmluZCBhbiBhY3RpdmUgcG9saWN5IHRocm91Z2ggYW4KPiBvbmxpbmUg
c2libGluZyB3aG9zZSByZWxhdGVkX2NwdXMgbWFzayBjb250YWlucyBpdC4gSG9sZCB0aGUgQ1BV
IGhvdHBsdWcKPiByZWFkIGxvY2sgZHVyaW5nIHNlbGVjdGlvbiBhbmQgc2V0dXAsIGFuZCBpbml0
aWFsaXplIHRoZSB6b25lIHRocm91Z2ggdGhlCj4gcG9saWN5J3MgYWN0aXZlIENQVSB3aGlsZSBr
ZWVwaW5nIHRoZSBoaWVyYXJjaHktcHJvdmlkZWQgbmFtZS4gQW4gZW50aXJlbHkKPiBvZmZsaW5l
IHBvbGljeSBzdGlsbCBoYXMgbm8gYWN0aXZlIENQVSB0byBpbml0aWFsaXplIHRocm91Z2guCj4g
Cj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIExlemNhbm8gPGRhbmllbC5sZXpjYW5vQG9zcy5xdWFs
Y29tbS5jb20+Cj4gLS0tCj4gQ2hhbmdlcyBpbiB2NSAoc2luY2UgdjQpOgo+IC0gUmVqZWN0IGEg
TlVMTCBEVCBub2RlIHBhdGggd2l0aCAtRUlOVkFMIGJlZm9yZSBpbnZva2luZwo+ICAgZHRwbV9z
ZXR1cF9kdCgpLCBhcyBzdWdnZXN0ZWQgYnkgTHVrYXN6IEx1YmEuCj4gLSBEb2N1bWVudCB0aGF0
IGEgbWlzc2luZyBwYXRoIGlzIGFuIGludmFsaWQgaGllcmFyY2h5IGRlc2NyaXB0b3IuCj4gCj4g
Q2hhbmdlcyBpbiB2NCAoc2luY2UgdjMpOgo+IC0gUmViYXNlIG9uIHY3LjM7IG5vIGNvZGUgb3Ig
Y29tbWl0LWRlc2NyaXB0aW9uIGNoYW5nZXMuCj4gCj4gQ2hhbmdlcyBpbiB2MyAoc2luY2UgdjIp
Ogo+IC0gUmViYXNlIG9uIHY3LjMtcmM3Lgo+IC0gUHJlc2VydmUgYmVzdC1lZmZvcnQgYnJhbmNo
IGNyZWF0aW9uIHVzaW5nIHRoZSBnZW5lcmljIE5VTEwgcmVzdWx0Lgo+IC0gRmluZCBhbiBvbmxp
bmUgcG9saWN5IHNpYmxpbmcgZm9yIG9mZmxpbmUgQ1BVIHJlcHJlc2VudGF0aXZlcyBhbmQKPiAg
IHByb3RlY3QgcG9saWN5IHNlbGVjdGlvbiBhbmQgc2V0dXAgYWdhaW5zdCBDUFUgaG90cGx1Zy4K
PiAtIEtlZXAgZ2VuZXJpYyBBUEkgYmVoYXZpb3IgYW5kIGRvY3VtZW50YXRpb24gaW4gcGF0Y2gg
MS4KPiAtIEZpeCBfX2luaXRkYXRhIHBsYWNlbWVudDsgbWF0Y2gtdGFibGUgaW5kZW50YXRpb24g
aXMgaGFuZGxlZCBpbiBwYXRjaCAzLgo+IC0gTmFtZSBzZXR1cCBjYWxsYmFjayBhcmd1bWVudHMg
YW5kIHJlbW92ZSB3aGl0ZXNwYWNlLW9ubHkgbGluZXMuCj4gLSBVcGRhdGUgdGhlIGRlc2NyaXB0
aW9uLgo+IAo+ICBkcml2ZXJzL3Bvd2VyY2FwL2R0cG0uYyAgICAgICAgIHwgMTgwICsrKysrKysr
KysrKysrKy0tLS0tLS0tLS0tLS0tLS0tCj4gIGRyaXZlcnMvcG93ZXJjYXAvZHRwbV9jcHUuYyAg
ICAgfCAgNjIgKysrKysrKystLS0KPiAgZHJpdmVycy9wb3dlcmNhcC9kdHBtX2RldmZyZXEuYyB8
ICAyMiArKy0tCj4gIGRyaXZlcnMvc29jL3JvY2tjaGlwL2R0cG0uYyAgICAgfCAgNjcgKysrKysr
KysrLS0tCj4gIGluY2x1ZGUvbGludXgvZHRwbS5oICAgICAgICAgICAgfCAgIDYgKy0KPiAgNSBm
aWxlcyBjaGFuZ2VkLCAxOTggaW5zZXJ0aW9ucygrKSwgMTM5IGRlbGV0aW9ucygtKQoKSSB0cmll
ZCB0byBmb2xsb3cgYWxvbmcgYW5kIHRoZSBjaGFuZ2VzIGxvb2sgb2ssIGJ1dCBJIGRvbid0IGtu
b3cgdGhlCm1vcmUgaW50cmljYXRlIGRldGFpbHMsIHNvCgpBY2tlZC1ieTogSGVpa28gU3R1ZWJu
ZXIgPGhlaWtvQHNudGVjaC5kZT4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
