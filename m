Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00E79606A332
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2026 11:00:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=LQiRm53V;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=csgAyA94
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=dpywzQgXg8CZwHx4AYdXaMqCnKl6q6/e5DPk9JVV5Ek=; b=LQiRm53Vx/QCdZFIg1Lb3kbo9A
	Z1B8kSw0C1ItWukgPPKCnbrEgZU2C2PUL8ezTfek1shJxn1w0bGpTw6rbemSWxNrFONz6om6ZC9V4
	Xg/9Tcrg4iz1OjPp5nBI/aq5zcn46Nyfl5fX3CMwAL1LXFjj1ofBlifBWqD5JMAdZLSNJLdqjoq1/
	6txmro5IzvddlUUxpJOfN/0umKcwLi4WQ6cxvTcXSgiTHIMikBomvP616GoWW7iaC1uYg3uUvYD1/
	cMTBKgbLKNLN8aKx1LWLvXADL9/e21eWtWomTDkUHMdqrgWEDagjt5hQXlOdVnyu/31arksps49AO
	VTPdbbjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTdOX-00000008epg-3Ptj;
	Wed, 18 Nov 2026 11:00:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTdOO-00000008ens-03Xj;
	Wed, 18 Nov 2026 11:00:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=gulFkJpN4JJLUUrFDIJ1uZidMX2ZMDzwOEgh26q791E=; b=csgAyA947I7Hek8AbKzETrouaR
	jXnL/3/GGumOrnVFeD+BJYTZhH7hEFv4z9CFKgpka6tAX29J0S6jMIiR7WYAyJgKE0A2boaJ36Jdi
	zOAo5w3EwQgtGs6gPXVJIzI42Upimekp6sbZ8iG70k1LAMP59gDzUdjMZUC3zkZbxPTM5ljO32+QQ
	gP20K/mN5fkscnOV0CLcWAjQyZ9ZxZyJk3HS0K3JzGURqbxUctZvT77o4+/iXLVOd+WUwP2/XsG9q
	ncyIOaU/gr3Ns7sSi+JOBOoKRlYLXwuvlvKBPgWwHkoH5xaBBYQbzmrfTEJbRyfIY2WFZR4AgWmap
	W/iWnt6Q==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: broonie@kernel.org, linux-spi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 quentin.schulz@cherry.de, Lee Jones <lee@kernel.org>,
 Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: Re: [PATCH v3 6/7] spi: rockchip: Move to pm_runtime_resume_and_get
Date: Wed, 18 Nov 2026 11:59:50 +0100
Message-ID: <_LGRfnuzREyWei8rJ7BZTA@sntech.de>
In-Reply-To: <ldw_Vn7fRw2QdWAMZ2npBw@sntech.de>
References: <20261117235021.2013719-1-heiko@sntech.de> <av0CaMF_jOyqMYA0@venus>
 <ldw_Vn7fRw2QdWAMZ2npBw@sntech.de>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_025956_053581_F62906DB 
X-CRM114-Status: GOOD (  18.64  )
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

QW0gTWl0dHdvY2gsIDE4LiBOb3ZlbWJlciAyMDI2LCAxMTo1NDowMiBNaXR0ZWxldXJvcMOkaXNj
aGUgTm9ybWFsemVpdCBzY2hyaWViIEhlaWtvIFN0w7xibmVyOgo+IEFtIE1pdHR3b2NoLCAxOC4g
Tm92ZW1iZXIgMjAyNiwgMDI6NTM6MzIgTWl0dGVsZXVyb3DDpGlzY2hlIE5vcm1hbHplaXQgc2No
cmllYiBTZWJhc3RpYW4gUmVpY2hlbDoKPiA+IEhpLAo+ID4gCj4gPiBPbiBXZWQsIE5vdiAxOCwg
MjAyNiBhdCAxMjo1MDoyMEFNICswMTAwLCBIZWlrbyBTdHVlYm5lciB3cm90ZToKPiA+ID4gRnJv
bTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvLnN0dWVibmVyQGNoZXJyeS5kZT4KPiA+ID4gCj4gPiA+
IEN1cnJlbnRseSBwbV9ydW50aW1lX2dldF9zeW5jKCkgaXMgdXNlZCwgd2hpY2ggaW5jcmVtZW50
cyB0aGUgdXNhZ2UKPiA+ID4gY291bnQgZXZlbiBpZiB0aGUgcmVzdW1lIHdhcyBub3Qgc3VjY2Vz
c2Z1bC4KPiA+ID4gCj4gPiA+IE1vdmUgdG8gdGhlIG1vcmUgbW9kZXJuIHBtX3J1bnRpbWVfcmVz
dW1lX2FuZF9nZXQoKSB3aGljaCBoYW5kbGVzIHRoZQo+ID4gPiB1c2FnZSBjb3VudGVyIGJldHRl
ci4KPiA+ID4gCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrby5zdHVl
Ym5lckBjaGVycnkuZGU+Cj4gPiA+IC0tLQo+ID4gCj4gPiBUaGlzIG9ubHkgbWFrZXMgc2Vuc2Ug
d2hlbiBjb21iaW5lZCB3aXRoIGVycm9yIGhhbmRsaW5nLiBLZWVwaW5nCj4gPiB0aGUgdXNlIGNv
dW50IGluY3JlYXNlZCBtYWtlcyBtb3JlIHNlbnNlIGZvciB0aGUgY3VycmVudCBjb2RlOgo+ID4g
Cj4gPiBwbV9ydW50aW1lX2dldF9zeW5jKCk7IC8vIGtlZXAgdXNlIGNvdW50IGluY3JlYXNlZCBv
biBmYWlsdXJlCj4gPiByYW5kb21fY29kZSgpOwo+ID4gcG1fcnVudGltZV9wdXQoKTsgLy8gYWx3
YXlzIGRlY3JlYXNlIHRoZSBSUE0gdXNlIGNvdW50Cj4gPiAKPiA+IE1lYW53aGlsZSB5b3VyIG5l
dyBjb2RlIHdvdWxkIHJlc3VsdCBpbiBkb3VibGUgZGVjcmVhc2Ugb24gZXJyb3I6Cj4gCj4gZGFy
biwgb25lIHNob3VsZCBub3QgZ28gImVoLCBsZXQncyBqdXN0IHVzZSB0aGUgc2FtZSBwbS1ydW50
aW1lIHBhdHRlcm4sCj4gc2hvdWxkIGJlIGVhc3kiIDstKSAuCj4gCj4gQnV0IEkgZ3Vlc3MgcmVh
bCBlcnJvciBoYW5kbGluZyBpbiB0aG9zZSBjYXNlcyBtaWdodCBhY3R1YWxseSBkZXNpcmVhYmxl
LgoKYXQgbGVhc3QgaW4gc2V0dXAgLi4uIHRoZSBvdGhlcnMgZG9uJ3QgaGF2ZSBzdWl0YWJsZSBy
ZXR1cm4gdmFsdWVzIGF0IGFsbAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
