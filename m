Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F3E8606A33B
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Oct 2026 14:01:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Tf66g1Jw;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=jWTWioPH
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j51gv0G3QVKtrDiVTqM/iSRtPVC8oW1hfwKEe210kXE=; b=Tf66g1JwK81+lT
	6AIye5cM7MZSxgKNMgfvK8ytJS/wqgZB9l8oyjsph00idY+sAVwtR5w61mL/8zXKkzdUblTGu/RbE
	VOP1D2HUmlhoWKAFUsnAJV8AKPqlAHCE2Maaj4cuY+oD44p2si9jkAvZgUKZKTPyFtb9DLKzbetMm
	tGQAXmZcAZzeqdD6A3+LMUgxtA574dheFRAL85tAIdb/8BbNVyoYgp84TGVVNrUP44I1iI1f5gyg9
	Q8ODYkfu8qkNRXAum6vrYXNfql+RSWchf1G5zy3Cg0dQjZo1dcnBziaNphdUBRsS0Y2ahooEviDa8
	DO/zAABG0psOzF8D3qyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJAPA-00000009riJ-1FsP;
	Tue, 20 Oct 2026 14:01:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJAP7-00000009rhZ-3FDO
	for linux-rockchip@lists.infradead.org;
	Tue, 20 Oct 2026 14:01:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=0bUQjAy/+HgHeFngLeIpJDoghjVcttx7fZ4ozEEqOMw=; b=jWTWioPHjWdtEUPywVH7ZhPBhh
	AHxvaOS9uxIQLdfJk/KzSgO4X6c72R5uHznY2428ow6HPgYOmA3eN1SSBNitSgthcvxjHWNN3wLwr
	rLM2159dqLgwBTJ2eT5KwoaQ3F4r8zZpFgQ0H0k2IFz0dAZkQoyKapydj3v5tq6S5E4c/TX2ddR7M
	yMa9vKjnt1xlxnD+NLj/k5XORRKcnrivhfchTpgqHWQGVhZyHCdbbf0m/NTVx6Hj26CjBqTrh1PY9
	98zFZx0ZDtzeVWjlwHFoa9MfrpN8/LJ+ha2e6PAovaOD041UjzNcGwh6cKhhCpEJRURfFoFng+6Dx
	LYDI9w1g==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Igor Paunovic <royalnet026@gmail.com>,
 Jan =?UTF-8?B?Q2xhdcOfZW4=?= <jan.claussen10@web.de>
Subject: Re: [PATCH v2] drm/rockchip: dw_hdmi_qp: attach the HDMI Colorspace connector
 property
Date: Tue, 20 Oct 2026 16:01:11 +0200
Message-ID: <2318151.NgBsaNRSFp@diego>
In-Reply-To: <2070944.yKVeVyVuyW@diego>
References: <20260805153416.8459-1-royalnet026@gmail.com>
 <20260909112543.6913-1-royalnet026@gmail.com> <2070944.yKVeVyVuyW@diego>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_070125_810107_70720951 
X-CRM114-Status: GOOD (  19.77  )
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

QW0gRGllbnN0YWcsIDIwLiBPa3RvYmVyIDIwMjYsIDE1OjU5OjE4IE1pdHRlbGV1cm9ww6Rpc2No
ZSBTb21tZXJ6ZWl0IHNjaHJpZWIgSGVpa28gU3TDvGJuZXI6Cj4gSGV5IElnb3IsCj4gCj4gQW0g
TWl0dHdvY2gsIDkuIFNlcHRlbWJlciAyMDI2LCAxMzoyNTo0MCBNaXR0ZWxldXJvcMOkaXNjaGUg
U29tbWVyemVpdCBzY2hyaWViIElnb3IgUGF1bm92aWM6Cj4gPiBHZW50bGUgcGluZyBvbiB0aGlz
IG9uZSAtIGl0IGhhcyBiZWVuIGEgbW9udGggd2l0aG91dCByZXZpZXcuCj4gPiAKPiA+IEkgcmUt
Y2hlY2tlZCBpdCB0b2RheSByYXRoZXIgdGhhbiBhc3N1bWluZzogaXQgc3RpbGwgYXBwbGllcyBj
bGVhbmx5IG9uCj4gPiBkcm0tbWlzYy1uZXh0ICg4Y2UyNmIwOWY2NTIpLCB3aXRoIG5vIG9mZnNl
dCBhbmQgbm8gZnV6eiwgYW5kIG5vdGhpbmcKPiA+IG1lcmdlZCBzaW5jZSBhdHRhY2hlcyB0aGUg
Q29sb3JzcGFjZSBwcm9wZXJ0eSBmb3IgdGhpcyBjb25uZWN0b3IuIFNvIHRoZQo+ID4gZ2FwIGlz
IHN0aWxsIHRoZXJlOiB3aXRob3V0IGl0IEtXaW4gcmVwb3J0cyB0aGUgb3V0cHV0cyBhcyAiSERS
Ogo+ID4gaW5jYXBhYmxlIiBvbiBSSzM1ODggZXZlbiB0aG91Z2ggdGhlIHNpbmtzIGFuZCB0aGUg
cmVzdCBvZiB0aGUga2VybmVsCj4gPiBzaWRlIGFyZSByZWFkeS4KPiA+IAo+ID4gVGhlIHBhdGNo
IGlzIGluZGVwZW5kZW50IG9mIENyaXN0aWFuJ3MgZHctaGRtaS1xcCBIRE1JIDIuMCBzZXJpZXM7
IHRoYXQKPiA+IHNlcmllcyBpcyBub3QgaW4gZHJtLW1pc2MtbmV4dCB5ZXQsIGFuZCB3aGVuIGl0
IGxhbmRzIGl0cyBwYXRjaCAzNCB3aWxsCj4gPiB0b3VjaCB0aGUgZmlyc3QgY29udGV4dCBsaW5l
IG9mIG15IGh1bmssIHNvIEkgd2lsbCByZWJhc2UgYW5kIHJlc2VuZCBhcwo+ID4gdjMgYXQgdGhh
dCBwb2ludC4gVGhlIGNoYW5nZSBpdHNlbGYgZG9lcyBub3Qgb3ZlcmxhcCB3aXRoIGl0Lgo+ID4g
Cj4gPiBIYXBweSB0byByZXNwaW4gaWYgeW91IHdvdWxkIHJhdGhlciBoYXZlIGl0IG9uIHRvcCBv
ZiB0aGF0IHNlcmllcy4KPiAKPiB5ZXMsIHRoZSBoZG1pMi4wIHNlcmllcyBsYW5kZWQgbWVhbndo
aWxlLgo+IAo+IEJ1dCB0aGVyZSBpcyBhbHNvIAo+ICAgICBodHRwczovL2xvcmUua2VybmVsLm9y
Zy9kcmktZGV2ZWwvMjAyNjEwMTgxNDMxMzUuNTc0NS0zLWphbi5jbGF1c3NlbjEwQHdlYi5kZS8K
PiAKPiB3aGljaCBkb2VzIHdheSBtb3JlIHRvIHRoYXQgY29sb3JzcGFjZSB0aGluZywgZXNwZWNp
YWxseSBkb2luZyBzb21ldGhpbmcKPiBpbnRvIHRoZSBkaXJlY3Rpb24gb2YgSERSIHN1cHBvcnQg
aXQgc2VlbXMuCj4gCj4gU28gcmVhbGx5IG5vIGNsdWUgaG93IHRoYXQgYWxsIGlzIHN1cHBvc2Vk
IHRvIHdvcmsgOy0pCgphbmQgb2YgY291cnNlIHRoZXJlIGlzIGFsc28geW91ciBIRFInaXNoLXNl
cmllcyBpbgoJaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJpLWRldmVsLzIwMjYwODA4MDk1NzQ5
Ljk0MjgtMS1yb3lhbG5ldDAyNkBnbWFpbC5jb20vCgp3YXkgY29uZnVzaW5nLgoKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
