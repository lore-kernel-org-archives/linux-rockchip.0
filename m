Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEE69606A9E7
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Nov 2026 15:14:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=u4KdfAw7;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=ANlytgWy
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=08dJpvBlceLri1+yKwBp7fVRi+VrQivwN+Be84hCVA0=; b=u4KdfAw7SMvdhZxhAopac6wSCs
	767bBkCvCQDZ+5PTcMpBD+9J/p3Hya1JFNKOMU2lt8IUAJuv1N6w38Bv71Qe4iTWrVdUpTIccW1GR
	W4FCGT+Uz1GB5H3Fv0X8yH2fnLvQSd7WknKNDva+Mg7dMEMwrRJCfIlWj8OzzBFRT4KFJE8sPxEMk
	nlCel2SOZ/ZVhrgeGVYAr6UCngbEtlwDNi6WVpMkV3q3YUDIMnzw7IiI4KHxzgaDJhB4mDI2K4J1d
	YdUVqrnj07tB5euxC7MXNW0CGgQ/PP8ud+bLH+MSw0GP2afUcLxNOMiCLzz0+FZYryjM37lUpGAtI
	xRZo4q9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPi7T-0000000Esvt-1S39;
	Sat, 07 Nov 2026 15:14:15 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPi7R-0000000EsvA-0WKf;
	Sat, 07 Nov 2026 15:14:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=AM2+ROYz6zHyjM9qbGIPn3yG3QGJhtGkC3tgAmCv0WE=; b=ANlytgWyNbxksTlctB1IPmnOyw
	eVN8ZWy4Jk9Woz7x9MdiIUjtWgomTH3Zh3oLQLaWjyNesR8IAVyvb9htWNi0VjAJl5dImAwJ/2jhH
	4SO1BZKBOHp6QrMer/QOFmpOaPFFmv0FfchFRa2BZWwnH4tkavdWhHimHgzkzP6VM7iHox0J22vWp
	CrjI2E3FIyQQDpA8jkpGXZDEZPO/8UBflGmtaFZUzzQtUCarH4Chp36byFQyTGz9cvS+y18IMLX7B
	xdmvp03YJGwy2H0Kfg7A4+TskVQ9C4X4gxt60WeIJ41YdJhAgQXIiZsK1Mb3jikC525CkgbDGm8N9
	oVk5Kxuw==;
From: Heiko Stuebner <heiko@sntech.de>
To: rafael@kernel.org, Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
Cc: Daniel Lezcano <daniel.lezcano@kernel.org>, Shuah Khan <shuah@kernel.org>,
 Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
 Lukasz Luba <lukasz.luba@arm.com>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kselftest@vger.kernel.org
Subject: Re: [PATCH v5 6/6] powercap: dtpm: Add RK3588 hierarchy
Date: Sat, 07 Nov 2026 16:14:06 +0100
Message-ID: <17421425.hlxOUv9cDv@phil>
In-Reply-To: <973998404b628e5a995a06fbd0febce0802f79bd.1793666444.git.daniel.lezcano@oss.qualcomm.com>
References: <cover.1793666444.git.daniel.lezcano@oss.qualcomm.com>
 <973998404b628e5a995a06fbd0febce0802f79bd.1793666444.git.daniel.lezcano@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261107_071413_166406_C2125702 
X-CRM114-Status: GOOD (  12.31  )
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgRGFuaWVsLAoKQW0gRGllbnN0YWcsIDMuIE5vdmVtYmVyIDIwMjYsIDA1OjQ4OjIwIE1pdHRl
bGV1cm9ww6Rpc2NoZSBOb3JtYWx6ZWl0IHNjaHJpZWIgRGFuaWVsIExlemNhbm86Cj4gVGhlIFJL
MzU4OCBoYXMgdGhyZWUgQ1BVIGZyZXF1ZW5jeSBkb21haW5zLCB3aXRoIENQVXMgZ3JvdXBlZCBp
bnRvCj4gdGhyZWUgY3B1ZnJlcSBwb2xpY2llcy4KPiAKPiBBZGQgYSBEVFBNIGhpZXJhcmNoeSBm
b3IgdGhlIFJLMzU4OCB3aXRoIG9uZSBDUFUgbm9kZSBwZXIgY3B1ZnJlcQo+IHBvbGljeSwgcmVw
cmVzZW50ZWQgYnkgY3B1QDAsIGNwdUA0MDAgYW5kIGNwdUA2MDAuIEdyb3VwIHRoZSB0aHJlZSBD
UFUKPiBkb21haW5zIHVuZGVyIGEgdmlydHVhbCBwYWNrYWdlIG5vZGUgYXR0YWNoZWQgdG8gdGhl
IFJLMzU4OCByb290IG5vZGUuCj4gCj4gQWRkIHRoZSBSSzM1ODggY29tcGF0aWJsZSB0byB0aGUg
Um9ja2NoaXAgRFRQTSBtYXRjaCB0YWJsZSB0byBzZWxlY3QKPiB0aGUgbmV3IGhpZXJhcmNoeS4K
PiAKPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgTGV6Y2FubyA8ZGFuaWVsLmxlemNhbm9Ab3NzLnF1
YWxjb21tLmNvbT4KPiBSZXZpZXdlZC1ieTogTHVrYXN6IEx1YmEgPGx1a2Fzei5sdWJhQGFybS5j
b20+CgpbLi4uXQoKPiAgc3RhdGljIHN0cnVjdCBvZl9kZXZpY2VfaWQgX19pbml0ZGF0YSByb2Nr
Y2hpcF9kdHBtX21hdGNoX3RhYmxlW10gPSB7Cj4gIAl7IC5jb21wYXRpYmxlID0gInJvY2tjaGlw
LHJrMzM5OSIsIC5kYXRhID0gJnJrMzM5OV9oaWVyYXJjaHkgfSwKPiArCXsgLmNvbXBhdGlibGUg
PSAicm9ja2NoaXAscmszNTg4IiwgLmRhdGEgPSAmcmszNTg4X2hpZXJhcmNoeSB9LAo+ICAJe30s
Cj4gIH07Cgp0aGUgY2hhbmdlIGl0c2VsZiBsb29rcyBnb29kIGZvciB0aGUgUkszNTg4ICh3aXRo
b3V0IHZhcmlhbnRzKSwgc28KClJldmlld2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250
ZWNoLmRlPgoKCmJ1dCBzdXBwb3J0IGZvciB0aGUgZmFtaWx5IGlzIHNvcnQgb2YgaW5jb21wbGV0
ZSA6LSkKV2UgaGF2ZQotIHRoZSByb2NrY2hpcCxyazM1ODhzIChzYW1lIGFzIHRoZSByazM1ODgg
aW4gdGVybXMgb2YgY29yZXMsCiAgYnV0IGRpZmZlcmVudCBjb21wYXRpYmxlIC0gc2VlIGFsbCB0
aGUgcmszNTg4cy0qIGJvYXJkcykKLSB0aGUgUkszNTgyIC4uLiB3aXRoIGEgY29tcGF0aWJsZSBv
ZgogICJyb2NrY2hpcCxyazM1ODIiLCAicm9ja2NoaXAscmszNTg4cyIKICBCZWNhdXNlIHRoaXMg
aXMgc29tZSBzb3J0IG9mIGNoaXAgd2l0aCBwcm9kdWN0aW9uIGRlZmVjdHMKICB3aGVyZSB0d28g
X3JhbmRvbV8gYmlnIGRvIG5vdCB3b3JrIG9yIHNvIGFuZCBnZXQgZGlzYWJsZWQKICBieSBmaXJt
d2FyZSBzZWUgWzBdIGFuZCBtYXJrcyB0aGVtIGFzICJmYWlsIgoKU28gYXMgSSBzYWlkIHRoZSBj
aGFuZ2UgYWxvbmUgaXMgZmluZSwgYnV0IHRoZXJlIGFyZSBhZGRpdGlvbmFsIHZhcmlhbnRzCnRv
IG1heWJlIGZpZ3VyZSBvdXQgaW4gdGhlIGZ1dHVyZS4KCgpIZWlrbwoKCgpbMF0gaHR0cHM6Ly9w
YXRjaHdvcmsub3psYWJzLm9yZy9wcm9qZWN0L3Vib290L2NvdmVyLzIwMjUwODEwMjIyNjQ0LjQw
OTUwNzItMS1qb25hc0Brd2lib28uc2UvCgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
