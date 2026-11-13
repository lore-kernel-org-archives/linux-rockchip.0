Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5486606C164
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 18:30:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=4saSNvZg;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=cdJSjMcA
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Zbpdg6FHno4LumTIsj9oajzjLfzdhpoXG3yilQBhUos=; b=4saSNvZgG7pew68cqGRtoWbxad
	W/8IRodfh6NW8wb5RqbviGc1nkwMpvBUvkcs9wZKJwOZm/Wtg6JYAGhK5/D1hPSUGY5T4j5giRQGf
	F0F5DVc6qugotfMkwtTuVytUjT5Yke3VuwgSP8P3snjrAS3B0T7FU+H/BHb3eYroI5s2HSAQ+V63E
	6E5seg/sLrWuFax7GdOdoFJGHCKC62EbwAOZJKdV95ipRLbh+vKFpMt8y/lRIMvO/O9AN6EYov/6t
	lKMLujCYbMlVW6pEeu3rmwsJdklqHEjJkHIC5yL2dwYalTP/GzO+splxOCZbNh444Tsb8zw6aOvxx
	NaUkVZdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRw2r-0000000Dx8H-1k6Q;
	Fri, 13 Nov 2026 18:30:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRw2n-0000000Dx6F-02iK;
	Fri, 13 Nov 2026 18:30:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=wM1IQoyS/kff0hQA3Z9PrPD6GnekMw+h/sWii7GLcYc=; b=cdJSjMcA7tYehsdP/mIhTaa/V+
	+xCLtgQUJ2lX7T5NPZZM1uyX6sFUu6pT9LUQ3ePCv9OTxuAX/NOwx5FD0CRsAAm7N/EE3nZVlyzRq
	dZb796O3CQT5YuD+vv/h/CXo70cyvubmjkdWzMI86a9VDzCYExMSB0hxCUU3I+csq00wKYzDkhixA
	gOIBNWELLZx5Ahp8iNkNtGJpqjSjx6HJW7GKENmC9VrTGjJhgpynJPxs3jQt+vVKwS1RhqF4kDgdf
	+TzkqzS07OJ+9k7kf1gDt2NXOL/FmJALu70PXY2hhCCwioH9P160aExjmFZjTdn5gt0LXV1tXvFA2
	K4IPxDzw==;
From: Heiko Stuebner <heiko@sntech.de>
To: broonie@kernel.org
Cc: linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, quentin.schulz@cherry.de,
 Lee Jones <lee@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: Re: [PATCH v2 2/6] spi: Export spi_set_cs() function
Date: Fri, 13 Nov 2026 19:30:33 +0100
Message-ID: <m57rhfeHSi6wilRDC92EGA@sntech.de>
In-Reply-To: <9kep3BO9ROGEepQWTWqwnA@sntech.de>
References: <20261113135017.1047959-1-heiko@sntech.de>
 <20261113135017.1047959-3-heiko@sntech.de> <9kep3BO9ROGEepQWTWqwnA@sntech.de>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_103037_124469_A5F4C67B 
X-CRM114-Status: GOOD (  15.68  )
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

QW0gRnJlaXRhZywgMTMuIE5vdmVtYmVyIDIwMjYsIDE0OjU2OjMzIE1pdHRlbGV1cm9ww6Rpc2No
ZSBOb3JtYWx6ZWl0IHNjaHJpZWIgSGVpa28gU3TDvGJuZXI6Cj4gQW0gRnJlaXRhZywgMTMuIE5v
dmVtYmVyIDIwMjYsIDE0OjUwOjEzIE1pdHRlbGV1cm9ww6Rpc2NoZSBOb3JtYWx6ZWl0IHNjaHJp
ZWIgSGVpa28gU3R1ZWJuZXI6Cj4gPiBGcm9tOiBIZWlrbyBTdHVlYm5lciA8aGVpa28uc3R1ZWJu
ZXJAY2hlcnJ5LmRlPgo+ID4gCj4gPiBXaGlsZSBzcGlfc2V0X2NzIGlzIGN1cnJlbnRseSBvbmx5
IHVzZWQgd2hlbiB0aGUgU1BJIGZyYW1ld29yayBtYW5hZ2VzCj4gPiB0aGUgY29yZSB0cmFuc2Zl
ciBmdW5jdGlvbiwgaXQgY29udGFpbnMgYSBsb3Qgb2YgZnVuY3Rpb25hbGl0eSB0aGF0Cj4gPiBj
YW4gYmUgdXNlZCBmb3IgdGhlIHVwY29taW5nIGF0b21pYyB0cmFuc2ZlcnMsIHdoZXJlIGEgZHJp
dmVyIGltcGxlbWVudGluZwo+ID4gdGhhdCBhdG9taWMgdHJhbnNmZXIgY291bGQgcHJvZml0IGZy
b20gbm90IGhhdmluZyB0byBkdXBsaWNhdGUgdGhlCj4gPiBjaGlwLXNlbGVjdCBmdW5jdGlvbmFs
aXR5Lgo+ID4gCj4gPiBUaGUgb25seSBzbGVlcGluZyBwYXJ0IHdhcyB0aGUgc3BpX2RlbGF5X2V4
ZWMgZnVuY3Rpb24gZG9pbmcgdGhlCj4gPiBjaGlwLXNlbGVjdCBkZWxheXMsIHdoaWNoIGNhbiBu
b3cgYWxzbyBydW4gaW4gYXRvbWljIGNvbnRleHRzLgo+ID4gCj4gPiBTbyBleHBvcnQgdGhlIGZ1
bmN0aW9uLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa28uc3R1
ZWJuZXJAY2hlcnJ5LmRlPgo+ID4gLS0tCj4gCj4gRGFuZywgb3Zlcmxvb2tlZCBzcGlfdG9nZ2xl
X2NzZ3Bpb2QoKSBjYWxsZWQgaW4gc3BpX3NldF9jcygpLCB3aGljaCBkb2VzCj4gZ3Bpb2Rfc2V0
X3ZhbHVlX2NhbnNsZWVwKCkuCgpzcGlfdG9nZ2xlX2NzZ3Bpb2QoKSBjYW4gb2YgY291cnNlIGFs
c28gZGlmZmVyZW50aWF0ZSBiZXR3ZWVuIHVzaW5nCl9jYW5fc2xlZXAgbm9ybWFsbHkgYW5kIHN3
aXRjaGluZyB0byB0aGUgbm8tc2xlZXAgdmFyaWFudCBpbiB0aGUgYXRvbWljCm1vZGUuCgpTbyBi
ZWZvcmUgdGhpcyB3aG9sZSBzZXJpZXMgYSBzcGxhdCBpcyBhbHJlYWR5IGNyZWF0ZWQgaWYgYSBn
cGlvLWNzIGF0CnRoZSBsYXRlIHN0YWdlLCBzbyBhZnRlciB0aGlzLCB0aGUgc3BsYXQgd291bGQg
b25seSBvY2N1ciwgaWYgc29tZW9uZQp1c2VzIGEgc2xlZXBpbmcgZ3BpbygtZXhwYW5kZXIpIGZv
ciBzb21ldGhpbmcgd2FudGluZyB0byBwb3dlcm9mZiBhCnN5c3RlbS4KCgpBbnl3YXksIEkndmUg
Y3JlYXRlZCBhIHBhdGNoIGZvciBzcGlfdG9nZ2xlX2NzZ3Bpb2QoKSBidXQgd2lsbCB3YWl0CnRp
bGwgbW9uZGF5IHRvIG1heWJlIGdldCBzb21lIG1vcmUgY29tbWVudHMgYmVmb3JlaGFuZC4KCgpI
ZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
