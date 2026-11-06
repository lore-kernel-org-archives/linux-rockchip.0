Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0822606A334
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Nov 2026 12:50:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=C7a9O4Kn;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=WHEv8Bmz
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=FN2voaeahbG1GlApp/6a3LFxpm/gbDsdimzhe/qBVjs=; b=C7a9O4Kna72m/8bqgYFrOlSgwc
	PCPKsRgoRmb+5tj05GOqzjWUrUF768ZV7LLhJglObcaKEYmQEygOqaTfZ+e7RmYrZwW75KSe6BWT5
	rMJ5HsTIuf1W/IXb6g6nRbTpxUjoK2PqZq9Qv1gHpKbMWunIb/BoHd3CBO+egRGexoqcyIRjabp6l
	LPjnQYpB/e3JdW2f7S7OsjPt8Dfa48TAnDfteF4d/TnEVsQfDdJ8ttw4f9q4vvhLFV4GGG6RM/izM
	MIx+fRQf6tNT0Uh4FZTiX515xOfaGCFFx995tuq7Yy6uoCtK5nnXiEyjVz31hjIBynvpzUfykksuK
	z6GSHwUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPJP1-0000000CLv7-2SFc;
	Fri, 06 Nov 2026 12:50:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPJOx-0000000CLuH-3kBj;
	Fri, 06 Nov 2026 12:50:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=FBjIBgDWbZCo9SaA6U+cSq8TU+erFs29CF/2hr/QbOQ=; b=WHEv8BmzZlBskbtiRsC4Yz/6tF
	lVJsH/z7pFdPbcrteUfO96lrIzu6yFa42ask2ACLtB8O6uGMAjJ5FkSqxMKs8yMyT7o7Hs0ZuH/2N
	4GkPXRnZ7UYI7WmuDLcVG55y5hJJHUVGaRsnVFAvyX9zV/fjb9Uw1RfdJCS97gPuNrho07j/aW+1F
	pOJern4i9oeuE7j8otJl9949EwHRfUv+7LRx9Kd4TbmcROCdlLLufc3Qteg0RmyjsU3rG6JeoPs2K
	k++dAKZdxZIbbcOTn+0G93w14T0clcHEu2gUYgi3SOM1wcSDowGQdPNb/nXXKvmf4sWXrtqwqUcHH
	TaIrvW+A==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Marc Kleine-Budde <mkl@pengutronix.de>,
 Vincent Mailhol <mailhol@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Wolfgang Grandegger <wg@grandegger.com>,
 Oliver Hartkopp <socketcan@hartkopp.net>, kernel@pengutronix.de,
 Eric Dumazet <edumazet@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>, 1579567540@qq.com
Cc: Cunhao Lu <1579567540@qq.com>, linux-can@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH net v7 0/7] can: fix bus-off restart and device close races
Date: Fri, 06 Nov 2026 13:50:20 +0100
Message-ID: <16255046.uLZWGnKmhe@diego>
In-Reply-To: <20261106-rockchip-canfd-restart-close-v7-0-accdb11bc845@qq.com>
References: <20261106-rockchip-canfd-restart-close-v7-0-accdb11bc845@qq.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261106_045040_173631_18B4C159 
X-CRM114-Status: GOOD (  13.87  )
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
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGksCgpBbSBGcmVpdGFnLCA2LiBOb3ZlbWJlciAyMDI2LCAxMDozNzoxOSBNaXR0ZWxldXJvcMOk
aXNjaGUgTm9ybWFsemVpdCBzY2hyaWViIEN1bmhhbyBMdSB2aWEgQjQgUmVsYXk6Cj4gVGhpcyB3
b3JrIHN0YXJ0ZWQgZnJvbSBhIHJlYWwgZmFpbHVyZSBvbiBhIHByb2R1Y3Rpb24gcm9ib3QgdXNp
bmcgYQo+IEx1YmFuQ2F0LTVJTyB3aXRoIGFuIFJLMzU4OC4gUlggY29udGludWVkLCBidXQgdGhl
IFRYIHF1ZXVlIHJlbWFpbmVkCj4gc3RvcHBlZCBhbmQgc3Vic2VxdWVudCBzZW5kcyByZXR1cm5l
ZCBFTk9CVUZTLiBUaGUgaW50ZXJmYWNlIHN0aWxsCj4gcmVwb3J0ZWQgRVJST1ItQUNUSVZFLCBh
bmQgdGhlIGhhcmR3YXJlIGluZGljYXRlZCBuZWl0aGVyIGEgYnVzLW9mZgo+IGNvbmRpdGlvbiBu
b3IgYSBwZW5kaW5nIFRYIHJlcXVlc3QuCgpbLi4uXQoKPiBUaGlzIHNlcmllcyBkZXBlbmRzIG9u
IHRoZSB0aHJlZSBwYXRjaGVzIGluICJjYW46IHNrYjogbWFrZSBDQU4gc2tiCj4gZnJlZWluZyBz
YWZlIGluIGFueSBJUlEgY29udGV4dCIgWzFdIGFuZCB0aGUgdGhyZWUgcGF0Y2hlcyBpbiAiY2Fu
Ogo+IHJvY2tjaGlwX2NhbmZkOiBmaXggVFggc3RhbGxzIGFuZCByYWNlcyIgWzJdLgo+IAo+IFsx
XSBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1jYW4vdGVuY2VudF9DRDA1RjAyMEJBRkIy
NTM3RjVEMUY0Q0JCNDI1NTg4RUE4MEFAcXEuY29tLwo+IFsyXSBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9saW51eC1jYW4vdGVuY2VudF9FMjVDOUJFNjY4OTI2NEU0MTM4QTQ2NDgwM0I4MTBGREZE
MDlAcXEuY29tLwoKQm90aCB0aGVzZSBzZXJpZXMgYXJlIGZyb20ganVseSBhbmQgc2VlbWluZ2x5
IGZyb20gYmVmb3JlIHlvdSBzdGFydGVkCnVzaW5nIHRoZSBiNC1yZWxheS4gU28gdGhleSBtYXkg
b3IgbWF5IG5vdCBoYXZlIHN1cnZpdmVkIHRoZSBrZXJuZWwKcmVsZWFzZXMgYW5kIHRoZWlyIHRo
cmVhZGluZyBpcyBicm9rZW4gYm90aCBvbiBsb3JlIGFuZCBpbiBhbnkgbWFpYm94CnRoZXkgYXJy
aXZlZCBpbi4KCkFuZCBpZiB0aGVyZSBoYXZlbid0IGJlZW4gYW55IHJlc3BvbnNlcyB0byB0aGVt
IHNpbmNlIHRoZW4sIEknZCB0aGluawp0aGV5IGhhdmUgYmVlbiBsb3N0IG9yIHNvLgoKU28gSSdk
IHN1Z2dlc3Qgcm9sbGluZyBib3RoIHlvdXIgZGVwZW5kZW5jaWVzIGZvcndhcmQgb24gdG9wIG9m
IHRoZSBjYW4KdHJlZSBhbmQgc2VuZGluZyB0aGVtIGFzIGEgbmV3IHZlcnNpb24sIHNvIHRoYXQg
cmV2aWV3ZXJzIGNhbiBmaW5kIHRoZW0/CgoKSGVpa28KCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
