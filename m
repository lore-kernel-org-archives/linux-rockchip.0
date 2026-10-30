Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 931DF606A325
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2026 10:22:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Rtiw8SXP;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=A0gP2Okt
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=jqM54p6TTZMSaKWhxDPFd3wf/qZ5NKrOrRnRjWdtfS4=; b=Rtiw8SXP+m1DVJrfetmDwlikNM
	NFt43s8KJCSFwtIFXcO07wq69u+DYAx1JRKwxsCU1LBT+KPqkrukifo+XoIowvqI7Zhz7mllR9ciQ
	hG4QdhaPtePnkeJ+M2cEaxMiEGoz+LkCbL5ZcWu44XtwBACBuWTk9ZdJ4IYWfM//nElorigz1scQl
	M3RDYVsr4tqL22iQqbOY7nemhY0bAFYc09+LWr2Pl4VXZtaBhxBz7kiVURyvxaGlJc1QSS0AU86uR
	ULC9RODP3/ATE2go9RNE2xoEg8AkAQLAzUZkv93I7shudqBHdzyrx+YGxISS18fs+V0KE8ucssNgX
	fyNF0L0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMjkv-0000000BNgz-3MEx;
	Fri, 30 Oct 2026 10:22:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMjks-0000000BNg2-2nAe;
	Fri, 30 Oct 2026 10:22:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=kpTyrdA1i+y2556zUDjgson9wJKQHizmCV0pLv7Ag1Y=; b=A0gP2OktV3j0APACgbuDn/vfC2
	R3sA4Q36DZns9JdO1IT+O/9UkkNOBE62zjXIXx0UtsF9ctWF8OPUNfvIMifVFoGTOADx349TDwvTe
	MX+NdE5/T6osdEP7XHBhhDjyMU7vbQdcPF2ZzgjP82jvOuUAMwRDGddyf4Buf2KdKP2vvDOrtoYeP
	eiAnQHDiYnipbpt7KT/Su4XXhRawNLJbikqhYiRcj5/LTB+9wC+XWw+RUzACeWmbBAoyP2WxkmKk+
	6aZoSEfjFokA1E/1yUMhUH9n/wRtkCuagTsCw7gBbRnSJcYMH36v8/8WobtK4mmoREtsnY3KlJQMA
	utG7TZsA==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: =?UTF-8?B?WWFsw6fEsW4=?= Can <ylcncn@gmail.com>
Cc: Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH] ARM: rockchip: rk3066: set soc_remap before starting secondary
 cores
Date: Fri, 30 Oct 2026 11:22:32 +0100
Message-ID: <1940718.QZUTf85G27@diego>
In-Reply-To: <20261030073647.164416-1-ylcncn@gmail.com>
References: <20261030073647.164416-1-ylcncn@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_032238_762065_97BDFFBC 
X-CRM114-Status: GOOD (  17.82  )
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

SGksCgpBbSBGcmVpdGFnLCAzMC4gT2t0b2JlciAyMDI2LCAwODozNjo0NyBNaXR0ZWxldXJvcMOk
aXNjaGUgTm9ybWFsemVpdCBzY2hyaWViIFlhbMOnxLFuIENhbjoKPiBBIENvcnRleC1BOSBjb3Jl
IG9uIHRoZSByazMwNjYgc3RhcnRzIGF0IGFkZHJlc3MgMCB3aGVuIGl0IGlzIHBvd2VyZWQgdXAu
Cj4gVGhlIFNNUCBjb2RlIGNvcGllcyBhIHRyYW1wb2xpbmUgdG8gdGhlIHN0YXJ0IG9mIHRoZSBp
bnRlcm5hbCBzcmFtIGFuZAo+IHJlbGllcyBvbiBHUkZfU09DX0NPTjAgc29jX3JlbWFwIChiaXQg
MTIpIG1hcHBpbmcgdGhlIHNyYW0gYXQgYWRkcmVzcyAwLgo+IFRoZSB2ZW5kb3IgbG9hZGVyIHNl
dHMgdGhhdCBiaXQgYmVmb3JlIHN0YXJ0aW5nIHRoZSBrZXJuZWwsIGJ1dCBhIGJvb3QKPiBsb2Fk
ZXIgc3RhcnRlZCBkaXJlY3RseSBieSB0aGUgYm9vdHJvbSBsZWF2ZXMgaXQgY2xlYXJlZC4gVGhl
IGNvcmUgdGhlbgo+IHJ1bnMgdGhlIGJvb3Ryb20gaW5zdGVhZCwgd2hpY2ggcGFya3MgaXQgYW5k
IGFsc28gd3JpdGVzIGludG8gdGhlIHN0YXJ0IG9mCj4gdGhlIHNyYW0sIHNvIHRoZSB0cmFtcG9s
aW5lJ3MgdGFyZ2V0IHdvcmQgaXMgb3ZlcndyaXR0ZW4gYXMgd2VsbCwgYW5kIHRoZQo+IGJvb3Qg
bG9ncyAiQ1BVMTogZmFpbGVkIHRvIGNvbWUgb25saW5lIi4KPiAKPiBTZXQgc29jX3JlbWFwIGFm
dGVyIHRoZSBzZWNvbmRhcnkgY29yZXMgaGF2ZSBiZWVuIHBvd2VyZWQgZG93biBhbmQgYmVmb3Jl
Cj4gdGhlIHRyYW1wb2xpbmUgaXMgY29waWVkLiBUaGUgcmszMTg4IHNoYXJlcyB0aGVzZSBzbXAg
b3BlcmF0aW9uczsgaXRzIGdyZgo+IGhhcyBhIGRpZmZlcmVudCBjb21wYXRpYmxlIGFuZCBpcyBs
ZWZ0IGFsb25lLgo+IAo+IFRlc3RlZCBvbiBhbiBSSzMwNjZhIGJvYXJkIChNSzgwOEIpIHdpdGgg
VS1Cb290IHN0YXJ0ZWQgZnJvbSB0aGUgTkFORCBJRAo+IGJsb2NrcyBieSB0aGUgYm9vdHJvbTog
YmVmb3JlLCBDUFUxIG5ldmVyIGNhbWUgb25saW5lIChHUkZfU09DX0NPTjAgYml0IDEyCj4gY2xl
YXIsIHNyYW0rNCByZWFkIDB4MDAwMDAwMDEgaW5zdGVhZCBvZiB0aGUgcGh5c2ljYWwgYWRkcmVz
cyBvZgo+IHNlY29uZGFyeV9zdGFydHVwKTsgd2l0aCB0aGlzIHBhdGNoIGJvdGggY29yZXMgY29t
ZSB1cCBhdCBib290LCB0aHJlZQo+IG9mZmxpbmUvb25saW5lIGN5Y2xlcyBvZiBjcHUxIHdvcmss
IGFuZCB0aGUgYm9hcmQgcmVzdGFydHMgbm9ybWFsbHkgYWZ0ZXIKPiBhIHJlYm9vdCBhbmQgYWZ0
ZXIgYSBmb3JjZWQgcGFuaWMuIEJvb3RpbmcgdGhyb3VnaCB0aGUgdmVuZG9yIGxvYWRlciwgd2hp
Y2gKPiBhbHJlYWR5IHNldHMgdGhlIGJpdCwgaXMgdW5jaGFuZ2VkLiBOb3QgdGVzdGVkIG9uIHJr
MzE4OC4KPiAKPiBGaXhlczogYTdhMmIzMTE4YjQxICgiQVJNOiByb2NrY2hpcDogYWRkIHNtcCBi
cmluZ3VwIGNvZGUiKQo+IEFzc2lzdGVkLWJ5OiBDbGF1ZGU6Y2xhdWRlLW9wdXMtNS01Cj4gU2ln
bmVkLW9mZi1ieTogWWFsw6fEsW4gQ2FuIDx5bGNuY25AZ21haWwuY29tPgoKdGhlcmUgaXMgYW5v
dGhlciBwYXRjaCBmcm9tIEpvaGFuIHBlbmRpbmcgWzBdLCB3aGljaCBJIHBsYW4gdG8gYXBwbHkg
YWZ0ZXIKdGhlIG1lcmdlLXdpbmRvdywgdGhhdCBtb3ZlcyBhbGwgb2YgdGhlIEE5IGNvcmVzIG92
ZXIgdG8gYm9vdGluZyB2aWEKdGhlIFNvQ3MgYm9vdHJvbSBhbmQgZ2V0cyByaWQgb2YgdGhlIHdo
b2xlIHRyYW1wb2xpbmUgY29kZS4KCgpIZWlrbwoKClswXSBodHRwczovL2xvcmUua2VybmVsLm9y
Zy9saW51eC1yb2NrY2hpcC8yMDI2MTAxNy1jcHUtdjMtMS0yNWQ4ZjRiMDYzNjJAZ21haWwuY29t
LwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
