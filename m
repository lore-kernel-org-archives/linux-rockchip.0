Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 600B3606D81B
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Nov 2026 14:50:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=IukngZRw;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=XYuv4fYM
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=6yZvYf7M5DZyclCpP+Jl7B8u/UqeZhkcCSFGjt88qCQ=; b=IukngZRwlxpsRTWq2c0XUHwURt
	9ocU5ZWr/r+1iqqF30fw4gTT4Wjjnp8d3a3ILPw5uNoKmSOvOaXmrtMSjsN3raKRx8hX6IQA0Yase
	rZG74xgfXw7QStgLzVCEOZFMy4xjzmtg5pMjAjiZEePPcyUxDSOoCEfqypo6QOVdS0Wj7ylXhiqEs
	FpHVGXLOsLtB1Y2yddSNXOmJq3n9cpl7qsOtUBNuau0wG2D4Eop/BK+6QQGA6C6G9iJclmhzx+K6H
	S2MRfZ/XyScqOO+hauy1gIb+aXWHND7lIOP/w2H55Znb/y7E393WR62fPMK5lNBloBC3FLY9IEwIB
	cSjaPt0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPhk6-0000000Er2l-2PMf;
	Sat, 07 Nov 2026 14:50:06 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPhk3-0000000Er28-3cG8;
	Sat, 07 Nov 2026 14:50:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=rCtCLaXuoBajgUckhWEDWeKqUiY5Jp/q685S3dMTOBU=; b=XYuv4fYMGfp8WiLCq7bsTniChM
	x8V2AxaJTLLbaFlm3r5jQWBGYPawdLNVgYZ3MJX8dPrAcBBZU7fgEAfk+qJ0Jgc94vK6gMgg9HGCa
	ty3mMgbt1Wl5eUiXOJMA5ZZNq6AcIFaEIO5aMZweUrTusjxTGXtN2IQdnQ1K/c0zaNeEN1y3NA/wv
	Z2Uc4uXtjeGObyJf+ElqpA5FQci4z8n4oH+1tE6muB/lYxBW5MGNxybGdZJloi110/LC2IGU5yLkN
	Ew0cFYosZD3ERCzLVZq4r29Mspj9YRYuv2mauBKSy6esUH3tT6nnjaYbw0L69ngw4jSJerd17qZcX
	EWTDz4cw==;
From: Heiko Stuebner <heiko@sntech.de>
To: rafael@kernel.org, Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
Cc: Daniel Lezcano <daniel.lezcano@kernel.org>, Shuah Khan <shuah@kernel.org>,
 Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
 Lukasz Luba <lukasz.luba@arm.com>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kselftest@vger.kernel.org
Subject: Re: [PATCH v5 3/6] powercap: dtpm: Remove duplicate RK3399 CPU hierarchy
 nodes
Date: Sat, 07 Nov 2026 15:49:56 +0100
Message-ID: <2454229.bcXerOTE6V@phil>
In-Reply-To: <f9b6ff8250f27e117facd372735b6c1f46e74926.1793666444.git.daniel.lezcano@oss.qualcomm.com>
References: <cover.1793666444.git.daniel.lezcano@oss.qualcomm.com>
 <f9b6ff8250f27e117facd372735b6c1f46e74926.1793666444.git.daniel.lezcano@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261107_065003_928177_506C20F1 
X-CRM114-Status: GOOD (  19.88  )
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

QW0gRGllbnN0YWcsIDMuIE5vdmVtYmVyIDIwMjYsIDA1OjQ4OjE3IE1pdHRlbGV1cm9ww6Rpc2No
ZSBOb3JtYWx6ZWl0IHNjaHJpZWIgRGFuaWVsIExlemNhbm86Cj4gVGhlIERUUE0gQ1BVIGJhY2tl
bmQgcmVnaXN0ZXJzIG9uZSBwb3dlcmNhcCB6b25lIHBlciBjcHVmcmVxIHBvbGljeSwKPiBub3Qg
cGVyIENQVS4gT24gUkszMzk5LCBDUFVzIHNoYXJpbmcgdGhlIHNhbWUgY3B1ZnJlcSBwb2xpY3kg
dGhlcmVmb3JlCj4gbWFwIHRvIHRoZSBzYW1lIERUUE0gem9uZS4KPiAKPiBSZW1vdmUgdGhlIHJl
ZHVuZGFudCBDUFUgbm9kZXMgZnJvbSB0aGUgUkszMzk5IGhpZXJhcmNoeSBhbmQga2VlcCBvbmx5
Cj4gb25lIENQVSBub2RlIHBlciBjcHVmcmVxIHBvbGljeS4gVGhlIGJhY2tlbmQgYWxyZWFkeSBz
dXBwcmVzc2VzIGR1cGxpY2F0ZQo+IHJlZ2lzdHJhdGlvbiB0aHJvdWdoIGl0cyBwZXItQ1BVIHN0
YXRlLCBzbyB0aGUgcmVtb3ZlZCBlbnRyaWVzIGFyZQo+IHJlZHVuZGFudCBkZXNjcmlwdGlvbnMg
b2YgdGhlIHNhbWUgem9uZXMuIEtlZXAgYm90aCBDUFUgcG9saWN5IGRvbWFpbnMKPiBhbmQgdGhl
IEdQVSBpbiB0aGUgaGllcmFyY2h5LCBwcmVwYXJpbmcgZm9yIG9uZSBjcmVhdGVkIHpvbmUgcGVy
IGdlbmVyaWMKPiBoaWVyYXJjaHkgbm9kZS4KPiAKPiBBbHNvIGZpeCBpbmRlbnRhdGlvbiBpbiB0
aGUgUm9ja2NoaXAgZGV2aWNlIG1hdGNoIHRhYmxlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IERhbmll
bCBMZXpjYW5vIDxkYW5pZWwubGV6Y2Fub0Bvc3MucXVhbGNvbW0uY29tPgo+IFJldmlld2VkLWJ5
OiBMdWthc3ogTHViYSA8bHVrYXN6Lmx1YmFAYXJtLmNvbT4KPiAtLS0KPiBDaGFuZ2VzIGluIHY1
IChzaW5jZSB2NCk6Cj4gLSBBZGQgUmV2aWV3ZWQtYnkgZnJvbSBMdWthc3ogTHViYTsgbm8gY29k
ZSBjaGFuZ2VzLgo+IAo+IENoYW5nZXMgaW4gdjQgKHNpbmNlIHYzKToKPiAtIFJlYmFzZSBvbiB2
Ny4zOyBubyBjb2RlIG9yIGNvbW1pdC1kZXNjcmlwdGlvbiBjaGFuZ2VzLgo+IAo+IENoYW5nZXMg
aW4gdjMgKHNpbmNlIHYyKToKPiAtIFJlYmFzZSBvbiB2Ny4zLXJjNy4KPiAtIEZpeCBSb2NrY2hp
cCBtYXRjaC10YWJsZSBpbmRlbnRhdGlvbiBoZXJlIHJhdGhlciB0aGFuIGluIHBhdGNoIDEuCj4g
LSBDbGFyaWZ5IHRoYXQgdGhlIGV4aXN0aW5nIGJhY2tlbmQgc3VwcHJlc3NlcyBkdXBsaWNhdGUg
cmVnaXN0cmF0aW9uLgo+IAo+ICBkcml2ZXJzL3NvYy9yb2NrY2hpcC9kdHBtLmMgfCAyMiArKysr
Ky0tLS0tLS0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDE3
IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3NvYy9yb2NrY2hpcC9kdHBt
LmMgYi9kcml2ZXJzL3NvYy9yb2NrY2hpcC9kdHBtLmMKPiBpbmRleCBiMzZkNGY3NTJjMzAuLmU3
MWYzMTVmYmI2YiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3NvYy9yb2NrY2hpcC9kdHBtLmMKPiAr
KysgYi9kcml2ZXJzL3NvYy9yb2NrY2hpcC9kdHBtLmMKPiBAQCAtMjAsMzAgKzIwLDE4IEBAIHN0
YXRpYyBzdHJ1Y3QgZHRwbV9ub2RlIF9faW5pdGRhdGEgcmszMzk5X2hpZXJhcmNoeVtdID0gewo+
ICAJWzJdID0geyAubmFtZSA9ICIvY3B1cy9jcHVAMCIsCj4gIAkJLnR5cGUgPSBEVFBNX05PREVf
RFQsCj4gIAkJLnBhcmVudCA9ICZyazMzOTlfaGllcmFyY2h5WzFdIH0sCj4gLQlbM10gPSB7IC5u
YW1lID0gIi9jcHVzL2NwdUAxIiwKPiArCVszXSA9IHsgLm5hbWUgPSAiL2NwdXMvY3B1QDEwMCIs
Cj4gIAkJLnR5cGUgPSBEVFBNX05PREVfRFQsCj4gIAkJLnBhcmVudCA9ICZyazMzOTlfaGllcmFy
Y2h5WzFdIH0sCj4gLQlbNF0gPSB7IC5uYW1lID0gIi9jcHVzL2NwdUAyIiwKPiArCVs0XSA9IHsg
Lm5hbWUgPSAiL2dwdUBmZjlhMDAwMCIsCj4gIAkJLnR5cGUgPSBEVFBNX05PREVfRFQsCj4gIAkJ
LnBhcmVudCA9ICZyazMzOTlfaGllcmFyY2h5WzFdIH0sCj4gLQlbNV0gPSB7IC5uYW1lID0gIi9j
cHVzL2NwdUAzIiwKPiAtCQkudHlwZSA9IERUUE1fTk9ERV9EVCwKPiAtCQkucGFyZW50ID0gJnJr
MzM5OV9oaWVyYXJjaHlbMV0gfSwKPiAtCVs2XSA9IHsgLm5hbWUgPSAiL2NwdXMvY3B1QDEwMCIs
Cj4gLQkJLnR5cGUgPSBEVFBNX05PREVfRFQsCj4gLQkJLnBhcmVudCA9ICZyazMzOTlfaGllcmFy
Y2h5WzFdIH0sCj4gLQlbN10gPSB7IC5uYW1lID0gIi9jcHVzL2NwdUAxMDEiLAo+IC0JCS50eXBl
ID0gRFRQTV9OT0RFX0RULAo+IC0JCS5wYXJlbnQgPSAmcmszMzk5X2hpZXJhcmNoeVsxXSB9LAo+
IC0JWzhdID0geyAubmFtZSA9ICIvZ3B1QGZmOWEwMDAwIiwKPiAtCQkudHlwZSA9IERUUE1fTk9E
RV9EVCwKPiAtCQkucGFyZW50ID0gJnJrMzM5OV9oaWVyYXJjaHlbMV0gfSwKPiAtCVs5XSA9IHsg
Lyogc2VudGluZWwgKi8gfQo+ICsJWzVdID0geyAvKiBzZW50aW5lbCAqLyB9Cj4gIH07Cj4gIAo+
ICBzdGF0aWMgc3RydWN0IG9mX2RldmljZV9pZCBfX2luaXRkYXRhIHJvY2tjaGlwX2R0cG1fbWF0
Y2hfdGFibGVbXSA9IHsKPiAtICAgICAgICB7IC5jb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzM5
OSIsIC5kYXRhID0gcmszMzk5X2hpZXJhcmNoeSB9LAo+IC0gICAgICAgIHt9LAo+ICsJeyAuY29t
cGF0aWJsZSA9ICJyb2NrY2hpcCxyazMzOTkiLCAuZGF0YSA9IHJrMzM5OV9oaWVyYXJjaHkgfSwK
PiArCXt9LAo+ICB9Owo+ICAKPiAgc3RhdGljIGludCBfX2luaXQgcm9ja2NoaXBfZHRwbV9pbml0
KHZvaWQpCgpjaGVja2VkIGFnYWluc3QgdGhlIGNwdSBjbHVzdGVycywgdGhpcyBvZiBjb3Vyc2Ug
bG9va3MgY29ycmVjdAoKUmV2aWV3ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2gu
ZGU+CgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
