Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED82A606A332
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 19:30:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=TBa7BQEe;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=UHDE/nC6
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Gz1/LbmfKd2c7MxKOhdCjAJBazlty3+nFQvujdFOELE=; b=TBa7BQEekgh5s0tYOxQht+HgS8
	CltARmxh0DEnubLZcScEhcsJSBxdESSB5ELoy75eQM4pMi0ejKc/fFRIS4Y7/UKBjQxGtpUuc/V3J
	bV9pGLUz1kQHY+36psyEDIyvSNWbQYFlU7wReyqHNbtNdL2rWUICZJq+kQpykCsUOs2pb7nfBoULZ
	MyXXpRpA8LxQ7L6OwARgzqfG4fte958KwySMIMHxzwBZxbm6H0oiKq8Lv1DCWkwMCeOPG92d9XakL
	6HXfgKUAr0anOUplLofr786k7YrewaKHMagR8JQgw88Tiz5PZr29H2ZsW1l1BvtarSt5sIFC/w25w
	t1gfyYJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRwyv-0000000EBXT-11Ec;
	Fri, 13 Nov 2026 19:30:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRwys-0000000EBW1-12xl;
	Fri, 13 Nov 2026 19:30:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=5RUUEU4Zs98a2BCCEhrllG9CzAbnewWKsXy+kzkBWDs=; b=UHDE/nC64QzET9Ce0UvDM2RQ6T
	cdqX2AjGf9mjFgYKSyF/IpJrgzvFq7ghx5upx7ykxnyq9Vnbk4tr9LGV2nEvlDglE89JkK+xz7yxs
	LT+GX0Tc+pASWuEmdN2DysSE81m1uNwSGZ26dd/B+peLkUZuZL8/LDNWstvwlTFecdIsan1O+lU+h
	demp951nfGj7dQ0EKBFr0z+GCGf8EcVziv6YERLuguZ1A5PrP2ygFXhNnbAwp7d97lOYmOJYv8Sve
	BatOCE1AUsLmV4Qv47RO7XUBKoyiDRIdmO7WRGLmzj8uCQzAXuRfoAFMb8X5qyXfPVv3X6VUlI4k5
	Q/hscLoA==;
From: Heiko Stuebner <heiko@sntech.de>
To: Lee Jones <lee@kernel.org>, Yaozhong Li <yaozhonguwl@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chris Zhong <zyw@rock-chips.com>,
 Zhang Qing <zhangqing@rock-chips.com>, Joseph Chen <chenjh@rock-chips.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Yaozhong Li <yaozhonguwl@gmail.com>, mfd@lists.linux.dev,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 2/3] mfd: rk8xx: Release the power hold GPIOs before powering
 off
Date: Fri, 13 Nov 2026 20:30:17 +0100
Message-ID: <R_CRTELbTC-4nNJy2OQEFg@sntech.de>
In-Reply-To: <20261101154053.3874-3-yaozhonguwl@gmail.com>
References: <20261101154053.3874-1-yaozhonguwl@gmail.com>
 <20261101154053.3874-3-yaozhonguwl@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_113038_388691_60A1666C 
X-CRM114-Status: GOOD (  23.23  )
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

QW0gU29ubnRhZywgMS4gTm92ZW1iZXIgMjAyNiwgMTY6NDA6NTEgTWl0dGVsZXVyb3DDpGlzY2hl
IE5vcm1hbHplaXQgc2NocmllYiBZYW96aG9uZyBMaToKPiByazgwOF9wb3dlcl9vZmYoKSB3cml0
ZXMgdGhlIFBNSUMncyBzaHV0ZG93biBiaXQgZGlyZWN0bHkuIE9uIGJvYXJkcyB3aGVyZQo+IGxp
bmVzIGRyaXZlbiBieSB0aGUgU29DIGdhdGUgdGhlIFBNSUMncyBwb3dlci1vZmYgcGF0aCwgYSBz
aHV0ZG93bgo+IHBlcmZvcm1lZCB0aGlzIHdheSBkb2VzIG5vdCBzdGljazogdGhlIHJhaWxzIGRy
b3AgYW5kIGltbWVkaWF0ZWx5IGNvbWUKPiBiYWNrIHVwLCBzbyB0aGUgYm9hcmQgcmVzdGFydHMg
aW5zdGVhZCBvZiBzdGF5aW5nIG9mZi4gVS1Cb290IHJlcG9ydHMgdGhlCj4gcmVzdWx0IGFzIGEg
cG93ZXItb24gcmVzZXQuCj4gCj4gVGFrZSB0aG9zZSBsaW5lcyBhcyBhbiBvcHRpb25hbCBHUElP
IGFycmF5LCBob2xkIHRoZW0gYXNzZXJ0ZWQgd2hpbGUgdGhlCj4gc3lzdGVtIHJ1bnMgYW5kIHJl
bGVhc2UgdGhlbSAtIHdhaXRpbmcgcG93ZXItaG9sZC1kZWxheS1tcyAtIGJlZm9yZQo+IHdyaXRp
bmcgdGhlIHNodXRkb3duIGJpdC4gRGV2aWNlIHRyZWVzIHdpdGhvdXQgdGhlIHByb3BlcnR5IHJl
dGFpbiB0aGUKPiBleGlzdGluZyBiZWhhdmlvdXIuCj4gCj4gVGhlIGFycmF5IGlzIGNsYWltZWQg
YmVmb3JlIGFueSBjaGlsZCBkZXZpY2UgaXMgcmVnaXN0ZXJlZCwgc28gdGhhdCBhCj4gLUVQUk9C
RV9ERUZFUiBmcm9tIHRoZSBHUElPIHByb3ZpZGVyIGRvZXMgbm90IHRlYXIgZG93biB0aGUgcmVn
dWxhdG9ycywKPiBSVEMgYW5kIGNsb2NrcyB0aGF0IGRldm1fbWZkX2FkZF9kZXZpY2VzKCkgaGFz
IGFscmVhZHkgcmVnaXN0ZXJlZC4KPiAKPiBPbiBhIEZpcmVmbHktUkszMzk5IHRoZSBzaHV0ZG93
biBzdHVjayB3aGVuIHN1Y2ggYSBsaW5lIHdlbnQgZnJvbSBoaWdoIHRvCj4gbG93IGJlZm9yZSB0
aGUgc2h1dGRvd24gYml0IHdhcyB3cml0dGVuLCBhbmQgZGlkIG5vdCB3aGVuIHRoZSBsaW5lIHdh
cwo+IG5ldmVyIGRyaXZlbi4KPiAKPiBBc3Npc3RlZC1ieTogTExNCj4gU2lnbmVkLW9mZi1ieTog
WWFvemhvbmcgTGkgPHlhb3pob25ndXdsQGdtYWlsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9tZmQv
cms4eHgtY29yZS5jICB8IDQ5ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKyst
LQo+ICBpbmNsdWRlL2xpbnV4L21mZC9yazgwOC5oIHwgIDMgKysrCj4gIDIgZmlsZXMgY2hhbmdl
ZCwgNTAgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9tZmQvcms4eHgtY29yZS5jIGIvZHJpdmVycy9tZmQvcms4eHgtY29yZS5jCj4gaW5kZXgg
M2RjZjZhYi4uMTM3YWIyMCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21mZC9yazh4eC1jb3JlLmMK
PiArKysgYi9kcml2ZXJzL21mZC9yazh4eC1jb3JlLmMKPiBAQCAtMTEsNiArMTEsOCBAQAo+ICAg
Ki8KPiAgCj4gICNpbmNsdWRlIDxsaW51eC9iaXRmaWVsZC5oPgo+ICsjaW5jbHVkZSA8bGludXgv
ZGVsYXkuaD4KPiArI2luY2x1ZGUgPGxpbnV4L2dwaW8vY29uc3VtZXIuaD4KPiAgI2luY2x1ZGUg
PGxpbnV4L2ludGVycnVwdC5oPgo+ICAjaW5jbHVkZSA8bGludXgvbWZkL3JrODA4Lmg+Cj4gICNp
bmNsdWRlIDxsaW51eC9tZmQvY29yZS5oPgo+IEBAIC03MDMsNiArNzA1LDIyIEBAIHN0YXRpYyBp
bnQgcms4MDhfcG93ZXJfb2ZmKHN0cnVjdCBzeXNfb2ZmX2RhdGEgKmRhdGEpCj4gIAlkZWZhdWx0
Ogo+ICAJCXJldHVybiBOT1RJRllfRE9ORTsKPiAgCX0KPiArCj4gKwkvKgo+ICsJICogU29tZSBi
b2FyZHMgcm91dGUgInBvd2VyIGhvbGQiIGxpbmVzIGZyb20gdGhlIFNvQyBpbnRvIHRoZSBib2Fy
ZCdzCj4gKwkgKiBwb3dlciBjaXJjdWl0cnkuIFRoZXkgaGF2ZSB0byBiZSBoZWxkIGFzc2VydGVk
IHdoaWxlIHRoZSBzeXN0ZW0gaXMKPiArCSAqIHJ1bm5pbmcgYW5kIHJlbGVhc2VkIGJlZm9yZSB0
aGUgUE1JQyBzaHV0ZG93biByZXF1ZXN0IGlzIHdyaXR0ZW4sCj4gKwkgKiBvdGhlcndpc2UgdGhl
IHJhaWxzIGNhbiBkcm9wIGFuZCBjb21lIGJhY2sgdXAgaW5zdGVhZCBvZiBzdGF5aW5nCj4gKwkg
KiBvZmYuIFJlbGVhc2luZyB0aGVtIGhlcmUgcmF0aGVyIHRoYW4gZnJvbSBhIHNlcGFyYXRlIGhh
bmRsZXIga2VlcHMKPiArCSAqIHRoZSBvcmRlcmluZyBhZ2FpbnN0IHRoZSBJMkMgd3JpdGUgZXhw
bGljaXQuCgp0aGlzIHdpbGwgYmUgY2FsbGVkIGZyb20gYm90aCB0aGUgSTJDIGFuZCBTUEkgdmFy
aWFudHMgb2YgdGhlIGNvbnRyb2xsZXIuCkFsc28gcGxlYXNlIHNob3J0ZW4gdGhhdCBjb21tZW50
IGJsb2NrLgoKPiArCSAqLwo+ICsJaWYgKHJrODA4LT5wb3dlcl9ob2xkX2dwaW9zKSB7Cgp1bnNp
Z25lZCBpbnQgbGluZTsgaGVyZSBub3QgaW4gZm9yKCkgLi4uIGNvdWxkIGFsc28ganVzdCBiZSAi
aSIsIGFzIGl0J3MKc2ltcGx5IGNvdW50aW5nCgo+ICsJCWZvciAodW5zaWduZWQgaW50IGxpbmUg
PSAwOyBsaW5lIDwgcms4MDgtPnBvd2VyX2hvbGRfZ3Bpb3MtPm5kZXNjczsgbGluZSsrKQo+ICsJ
CQlncGlvZF9zZXRfdmFsdWVfY2Fuc2xlZXAocms4MDgtPnBvd2VyX2hvbGRfZ3Bpb3MtPmRlc2Nb
bGluZV0sIDApOwoKVGhpcyBjb2RlIGlzIChub3cgYWdhaW4gYW5kIG1vcmUgY29ycmVjdGx5KSBy
dW5uaW5nIHdoZW4gaXJxcyBoYXZlCmFscmVhZHkgYmVlbiB0dXJuZWQgb2ZmLCBzbyBub3RoaW5n
IGlzIGFsbG93ZWQgdG8gc2xlZXAgaGVyZQoKV2hlbiB5b3UgZW5hYmxlCkNPTkZJR19ERUJVR19B
VE9NSUNfU0xFRVA9eQp5b3Ugc2hvdWxkIGdldCBuaWNlIHdhcm5pbmcgc3BsYXQgYWJvdXQgdGhh
dC4KCgpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
