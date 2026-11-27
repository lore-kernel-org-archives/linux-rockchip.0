Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4880606A31E
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Nov 2026 12:47:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=OfWrPQ9Q;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=1qdLnggx
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=y24WbUCEc+z2ynTcqBCPR7RhqnqWkzVP9At34JIEkZ0=; b=OfWrPQ9QyUDBr67MmDAIMYweTj
	r740KyPzwemgh/jEB3aECTkyYN/FmCWNewVQsu2Dp36cCkAuNsK96i0xlA6+aazuYeTT6VgJWoRFx
	S2uF7ak9/6YdzB3EDsJLGhDCZqLtE5Y/yDXu1ixzFRDC2yJjIwvUEZLnX4lxGRCyJaARPQFk3+rjP
	ZQzwmENvFUj1Bsfs7QLpQnDHEvfJbXHOndMoSBdeYb2S6X78uQw2Zz+ldZ0ngrGV2AOfpSsTbkVxq
	94t2ao38tzmVvcRgWLHL8M81jXzXflxDEHNeh73wYfryL2riRTLb/XhwAUaLa+r0jQe3mYoKjxis9
	hx2AONZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWvM5-0000000GBLz-2IM9;
	Fri, 27 Nov 2026 12:47:09 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWvM2-0000000GBKq-13mX;
	Fri, 27 Nov 2026 12:47:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=uPfpI50tb7D/+LMDNaFZyv1Wo1aup2sr8aIhOr5amnQ=; b=1qdLnggxochql+Dkqhr5X4AKRD
	ReaGpAvcLsFO9OI3C56HicPRmLbXl3eXd1/sqiVFncFWPwPKnoga/OuBeqYpiib1YBYC0RiFVLSYl
	I5l3hyzgouu29yGPhAYXlZMW/RESMaflKOWkPOjoAW4xYw4DqAxhqEwkNe/kuRgydtL+Ht/DanSSL
	PoGUmkpIrjIIbMR+10d8dEG5+ktRJMrh0xxWm6GS/8GhlvGL5kxni1mueOiU2LX5vbFuWwvXJC9pt
	hMwq0Ea/rxzEdqf5IwxjvofVeZbcgRTTiBULgeJ0zPI90Fs9ynXytIv4AhuvwowlA3rFKyaTRSBnF
	GM2u+dRw==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Andi Shyti <andi.shyti@kernel.org>, Wolfram Sang <wsa@kernel.org>,
 Jensen Huang <jensenhuang@friendlyarm.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-i2c@vger.kernel.org, kernel@collabora.com, stable@vger.kernel.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH] i2c: rk3x: Do not sleep in atomic polling transfers
Date: Fri, 27 Nov 2026 13:46:55 +0100
Message-ID: <7m4BPz_aRRWlgAirQmmfoQ@sntech.de>
In-Reply-To: <20261127-rk3x-atomic-transfer-fix-v1-1-076c94c07241@collabora.com>
References: <20261127-rk3x-atomic-transfer-fix-v1-1-076c94c07241@collabora.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_044706_310203_89A2B9A7 
X-CRM114-Status: GOOD (  19.99  )
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

QW0gRnJlaXRhZywgMjcuIE5vdmVtYmVyIDIwMjYsIDEzOjMzOjA1IE1pdHRlbGV1cm9ww6Rpc2No
ZSBOb3JtYWx6ZWl0IHNjaHJpZWIgU2ViYXN0aWFuIFJlaWNoZWw6Cj4gT24gdGhlIFJLMzU3NiBT
aWdlNSBkdXJpbmcgc2h1dGRvd24gdGhlIGZvbGxvd2luZyB0cmFjZSBhcHBlYXJzIG9uCj4ga2Vy
bmVscyB3aXRoIG11bHRpLWNvcmUgc3VwcG9ydCBhbmQgbG9ja2RlcCBlbmFibGVkOgo+IAo+IFsg
IDE2Ny45NjE5NDZdIFdBUk5JTkc6IGtlcm5lbC9pcnFfd29yay5jOjI5NiBhdCBpcnFfd29ya19z
eW5jCj4gLi4uCj4gWyAgMTY3Ljk2MzkwMl0gSGFyZHdhcmUgbmFtZTogQXJtU29NIFNpZ2U1IChE
VCkKPiAuLi4KPiBbICAxNjcuOTcyMjI4XSBDYWxsIHRyYWNlOgo+IFsgIDE2Ny45NzI0NDVdICBp
cnFfd29ya19zeW5jKzB4ZTgvMHhmOCAoUCkKPiBbICAxNjcuOTcyNzk2XSAgZGlzYWJsZV9pcnEr
MHg0NC8weDYwCj4gWyAgMTY3Ljk3MzEwMV0gIHJrM3hfaTJjX3hmZXJfY29tbW9uLmlzcmEuMCsw
eDI1NC8weDcwOAo+IFsgIDE2Ny45NzM1NDRdICByazN4X2kyY194ZmVyX3BvbGxpbmcrMHgyMC8w
eGEwCj4gWyAgMTY3Ljk3MzkyNV0gIF9faTJjX3RyYW5zZmVyKzB4MTgwLzB4OWQ4Cj4gWyAgMTY3
Ljk3NDI2OV0gIGkyY190cmFuc2ZlcisweGM0LzB4MTgwCj4gWyAgMTY3Ljk3NDU4OV0gIHJlZ21h
cF9pMmNfcmVhZCsweDY0LzB4YzAKPiBbICAxNjcuOTc0OTI0XSAgX3JlZ21hcF9yYXdfcmVhZCsw
eDEyMC8weDQ2OAo+IFsgIDE2Ny45NzUyODNdICBfcmVnbWFwX2J1c19yZWFkKzB4NGMvMHhhOAo+
IFsgIDE2Ny45NzU2MjZdICBfcmVnbWFwX3JlYWQrMHg2Yy8weDI2MAo+IFsgIDE2Ny45NzU5NDVd
ICBfcmVnbWFwX3VwZGF0ZV9iaXRzKzB4MTA0LzB4MTYwCj4gWyAgMTY3Ljk3NjMyNV0gIHJlZ21h
cF91cGRhdGVfYml0c19iYXNlKzB4NWMvMHg5MAo+IFsgIDE2Ny45NzY3MjBdICByazgwOF9wb3dl
cl9vZmYrMHg3MC8weDExMAo+IC4uLgo+IAo+IEF2b2lkIHdhaXRpbmcgZm9yIGEgaGFuZGxlciBm
cm9tIGFub3RoZXIgQ1BVIHRvIGZpbmlzaCB0byBmaXggdGhlCj4gcHJvYmxlbS4gQXQgc2h1dGRv
d24gdGltZSB0aGlzIHdvbid0IGhhcHBlbiBhcyB0aGUgb3RoZXIgQ1BVcyBhcmUKPiBhbHJlYWR5
IHN0b3BwZWQuIEFwYXJ0IGZyb20gdGhhdCBkaXNhYmxlX2lycV9ub3N5bmMoKSBzdGlsbCBwcmV2
ZW50cyBuZXcKPiBpbnZvY2F0aW9ucyBvZiB0aGUgaGFuZGxlciwgd2hpY2ggaXMgd2hhdCBhdm9p
ZHMgdGhlIHNwaW5sb2NrIHJlY3Vyc2lvbi4KPiBBIGhhbmRsZXIgYWxyZWFkeSBydW5uaW5nIG9u
IGFub3RoZXIgQ1BVIGlzIHNlcmlhbGl6ZWQgYWdhaW5zdCB0aGUgcG9sbAo+IGxvb3AgdmlhIGky
Yy0+bG9jay4KPiAKPiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwo+IEZpeGVzOiAxOWNkZTlj
OTJiOGQgKCJpMmM6IHJrM3g6IGZpeCBwb3RlbnRpYWwgc3BpbmxvY2sgcmVjdXJzaW9uIG9uIHBv
bGwiKQo+IFNpZ25lZC1vZmYtYnk6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hl
bEBjb2xsYWJvcmEuY29tPgoKUmV2aWV3ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRl
Y2guZGU+CgpXaXRoIENPTkZJR19ERUJVR19BVE9NSUNfU0xFRVAgYWN0aXZhdGVkLCB0aGlzIHNo
b3VsZCBhbHNvIGFscmVhZHkKYWxyZWFkeSB3YXJuIGZyb20gdGhlIG1pZ2h0X3NsZWVwKCkgaW4g
ZGlzYWJsZV9pcnEoKSwgSSB0aGluay4KCgoKPiAtLS0KPiAgZHJpdmVycy9pMmMvYnVzc2VzL2ky
Yy1yazN4LmMgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxl
dGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2kyYy9idXNzZXMvaTJjLXJrM3guYyBi
L2RyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtcmszeC5jCj4gaW5kZXggOWVjM2JlY2VkOWY5Li5hMDdj
NjBhYjA3YjQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1yazN4LmMKPiAr
KysgYi9kcml2ZXJzL2kyYy9idXNzZXMvaTJjLXJrM3guYwo+IEBAIC0xMDk2LDcgKzEwOTYsNyBA
QCBzdGF0aWMgaW50IHJrM3hfaTJjX3hmZXJfY29tbW9uKHN0cnVjdCBpMmNfYWRhcHRlciAqYWRh
cCwKPiAgCQkJdGltZV9sZWZ0ID0gd2FpdF9ldmVudF90aW1lb3V0KGkyYy0+d2FpdCwgIWkyYy0+
YnVzeSwKPiAgCQkJCQkJICAgICAgIG1zZWNzX3RvX2ppZmZpZXMoV0FJVF9USU1FT1VUKSk7Cj4g
IAkJfSBlbHNlIHsKPiAtCQkJZGlzYWJsZV9pcnEoaTJjLT5pcnEpOwo+ICsJCQlkaXNhYmxlX2ly
cV9ub3N5bmMoaTJjLT5pcnEpOwo+ICAJCQlyazN4X2kyY19zdGFydChpMmMpOwo+ICAKPiAgCQkJ
dGltZV9sZWZ0ID0gcmszeF9pMmNfd2FpdF94ZmVyX3BvbGwoaTJjKTsKPiAKPiAtLS0KPiBiYXNl
LWNvbW1pdDogZWViNjM5ODNkZWIyM2Q2OGRkYzQ3ZTVkMTk0NGE3ZDY0YWNkYWYyMgo+IGNoYW5n
ZS1pZDogMjAyNjExMjctcmszeC1hdG9taWMtdHJhbnNmZXItZml4LTIzZjJkNDNjMzhiNgo+IAo+
IEJlc3QgcmVnYXJkcywKPiAtLSAgCj4gU2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWlj
aGVsQGNvbGxhYm9yYS5jb20+Cj4gCj4gCgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
