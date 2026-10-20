Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4184606A31C
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Oct 2026 13:59:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=QnX8uV0r;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=NuocaDcd
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pI0W7Xzbwjm/TT62JXaGaMTI5nW0G1lzKwelXS1FFuA=; b=QnX8uV0r3eqoLQ
	Kr2hIieK0XMi1hxWLFjKPuXOiBELrl/v5w9NGdHleXFr6HG6Lf4lEPDupRAwwN9aSGKhPzX9aDYUa
	OeJATSFNEJ7cFT4fx4yFjEAJGljR10YEs4tIzV/J7v1JSFKoACgxsbN6imXC2dQ5dzvCkA/MkZ+in
	hgKUWR2p4clSVDtiNkMwkDqtriWGWq82wor9GMSX7Z8hV9qep6wjrgHBgooumexleU21x4UKw0vWl
	5jcbvovrHr8CdgsJYZGKT60G/twrnoFHs07E4MrhTtoqP1ln3fw+quRY5+jGeR3IwsH3dYD+JppnS
	rHNfM8MbH9+nQsadjQmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJANN-00000009rBU-1IJs;
	Tue, 20 Oct 2026 13:59:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJANK-00000009rA6-0Qzc
	for linux-rockchip@lists.infradead.org;
	Tue, 20 Oct 2026 13:59:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=gi9h6MhKLI+8CbZxDZaO/TkusHfcYIiLvinII2k5EJA=; b=NuocaDcd6ItZMuXVkkKB8/vP/H
	9BR5Hz8P935IaaKjf1JUXV+rAOXRDTG9QztLvd5me3zro4yZsI0aWjutCK/HRrUTs37Xct/Iz4v9J
	MaqhSE8hsY4cBEw7iumXb5RVieP0cbPmYke5i1pFqbIGLR/9zBb6wxKIJOV2l+k1k7Jj6OxHc1zpH
	+khB7ofuq9HsL9nYI3AUgXJgda4lmnRdP3BXvea+p5bu8+GH/N4t6IIe2YC6R94h5x+iJEivNwqlV
	jK5xd+yEzhYmP/HM6B5U7dWW2dvyEdYXkVJg4iimA/B4qot60MUqs7hj/vNwnW/JS5wBKlItSnQWS
	NJLJp9eg==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Igor Paunovic <royalnet026@gmail.com>,
 Jan =?UTF-8?B?Q2xhdcOfZW4=?= <jan.claussen10@web.de>
Subject: Re: [PATCH v2] drm/rockchip: dw_hdmi_qp: attach the HDMI Colorspace connector
 property
Date: Tue, 20 Oct 2026 15:59:18 +0200
Message-ID: <2070944.yKVeVyVuyW@diego>
In-Reply-To: <20260909112543.6913-1-royalnet026@gmail.com>
References: <20260805153416.8459-1-royalnet026@gmail.com>
 <20260909112543.6913-1-royalnet026@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_065934_142564_8B351FF2 
X-CRM114-Status: GOOD (  14.65  )
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
Cc: Igor Paunovic <royalnet026@gmail.com>, Sandy Huang <hjc@rock-chips.com>, Maxime Ripard <mripard@kernel.org>, Diederik de Haas <diederik@cknow-tech.com>, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, Andy Yan <andy.yan@rock-chips.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-4.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGV5IElnb3IsCgpBbSBNaXR0d29jaCwgOS4gU2VwdGVtYmVyIDIwMjYsIDEzOjI1OjQwIE1pdHRl
bGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgSWdvciBQYXVub3ZpYzoKPiBHZW50bGUg
cGluZyBvbiB0aGlzIG9uZSAtIGl0IGhhcyBiZWVuIGEgbW9udGggd2l0aG91dCByZXZpZXcuCj4g
Cj4gSSByZS1jaGVja2VkIGl0IHRvZGF5IHJhdGhlciB0aGFuIGFzc3VtaW5nOiBpdCBzdGlsbCBh
cHBsaWVzIGNsZWFubHkgb24KPiBkcm0tbWlzYy1uZXh0ICg4Y2UyNmIwOWY2NTIpLCB3aXRoIG5v
IG9mZnNldCBhbmQgbm8gZnV6eiwgYW5kIG5vdGhpbmcKPiBtZXJnZWQgc2luY2UgYXR0YWNoZXMg
dGhlIENvbG9yc3BhY2UgcHJvcGVydHkgZm9yIHRoaXMgY29ubmVjdG9yLiBTbyB0aGUKPiBnYXAg
aXMgc3RpbGwgdGhlcmU6IHdpdGhvdXQgaXQgS1dpbiByZXBvcnRzIHRoZSBvdXRwdXRzIGFzICJI
RFI6Cj4gaW5jYXBhYmxlIiBvbiBSSzM1ODggZXZlbiB0aG91Z2ggdGhlIHNpbmtzIGFuZCB0aGUg
cmVzdCBvZiB0aGUga2VybmVsCj4gc2lkZSBhcmUgcmVhZHkuCj4gCj4gVGhlIHBhdGNoIGlzIGlu
ZGVwZW5kZW50IG9mIENyaXN0aWFuJ3MgZHctaGRtaS1xcCBIRE1JIDIuMCBzZXJpZXM7IHRoYXQK
PiBzZXJpZXMgaXMgbm90IGluIGRybS1taXNjLW5leHQgeWV0LCBhbmQgd2hlbiBpdCBsYW5kcyBp
dHMgcGF0Y2ggMzQgd2lsbAo+IHRvdWNoIHRoZSBmaXJzdCBjb250ZXh0IGxpbmUgb2YgbXkgaHVu
aywgc28gSSB3aWxsIHJlYmFzZSBhbmQgcmVzZW5kIGFzCj4gdjMgYXQgdGhhdCBwb2ludC4gVGhl
IGNoYW5nZSBpdHNlbGYgZG9lcyBub3Qgb3ZlcmxhcCB3aXRoIGl0Lgo+IAo+IEhhcHB5IHRvIHJl
c3BpbiBpZiB5b3Ugd291bGQgcmF0aGVyIGhhdmUgaXQgb24gdG9wIG9mIHRoYXQgc2VyaWVzLgoK
eWVzLCB0aGUgaGRtaTIuMCBzZXJpZXMgbGFuZGVkIG1lYW53aGlsZS4KCkJ1dCB0aGVyZSBpcyBh
bHNvIAogICAgaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJpLWRldmVsLzIwMjYxMDE4MTQzMTM1
LjU3NDUtMy1qYW4uY2xhdXNzZW4xMEB3ZWIuZGUvCgp3aGljaCBkb2VzIHdheSBtb3JlIHRvIHRo
YXQgY29sb3JzcGFjZSB0aGluZywgZXNwZWNpYWxseSBkb2luZyBzb21ldGhpbmcKaW50byB0aGUg
ZGlyZWN0aW9uIG9mIEhEUiBzdXBwb3J0IGl0IHNlZW1zLgoKU28gcmVhbGx5IG5vIGNsdWUgaG93
IHRoYXQgYWxsIGlzIHN1cHBvc2VkIHRvIHdvcmsgOy0pCgoKSGVpa28KCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
