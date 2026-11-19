Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249DE606A324
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Nov 2026 12:22:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=BKbEDjkH;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=nTyJfWrW
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=EOFWxwb1BMQ27SwD+Si7mGpWV2YGu8BVt6+bUAomu1w=; b=BKbEDjkHHW+o2kmjMBxUcAycoI
	PxVoo1N6xIEsYG0nakFWU+4Hmt6TT75kAMs2c4BDnsecTVNeYRPuuaQN5YB1nPiLL84hxRdp122Zs
	/02WFcSauQxib4vJR0n92TRUM7S7vl3DdxWqnWLh23A6wZLf8GU08SasbhAwQ2UsdKc1fO4uvG8gD
	HSUkZGiGT7GAduz3Kbe/sBpy4O1zahT9rYYQS3id2UXFINaBpbu3cTk3aWB5Su+7UaNvFTFimMELk
	+R4JEVMFzWSuGGU3b3f4p+qPkO1Uq+KcPtsy8vHZkZ1gUctwAJWN/KNRwpYgLGvdVfBkx48fPsaYO
	yLGidNzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU1AA-0000000Bpak-3t7p;
	Thu, 19 Nov 2026 12:22:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU1A8-0000000BpZw-0LTM;
	Thu, 19 Nov 2026 12:22:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=SXp9CsGNZ9198vKxlERJhM6rRFDt3TB+h3sLDmsTvqY=; b=nTyJfWrWs9J3Bu0dcnPPw1Xcqx
	ZO2GJv25OsuW9y9A57I18j8nIIfCDI7VHEQv86ieSX7TES3LM+hYTzU7SymfMmFvB9BdEeM2gqV6r
	HTu2YbhRKfMz6brmeSa/unjcrRJAO8UCQyFKRExx3QqpOLnpwcNSJh8UKqO1eKB4HF6JgbwH5FLi+
	1+ORZqXIYASY4NsdhOC8TfulyD9jNrTj8Qf6J7mKNhjp/n/mkfSC4HUK5YOykRaLQPupkehsn67LI
	osXstr2pmhNujJ5cis957d8XLpXXkoBMvjBCxBp+NSqHha4HCFUFTXaSeV9OZH3XtUCrjFersvJEL
	zfMJGMVQ==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Coia Prant <coiaprant@gmail.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, netdev@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Coia Prant <coiaprant@gmail.com>
Subject: Re: [PATCH net-next] net: stmmac: dwmac-rk: split gmac_clk_enable into
 enable/disable
Date: Thu, 19 Nov 2026 13:22:38 +0100
Message-ID: <Jocs6e4zRiOpvEViMS_OjA@sntech.de>
In-Reply-To: <20261117182502.3045841-2-coiaprant@gmail.com>
References: <20261117182502.3045841-2-coiaprant@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261119_042248_218261_A6BA293C 
X-CRM114-Status: GOOD (  12.19  )
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

QW0gRGllbnN0YWcsIDE3LiBOb3ZlbWJlciAyMDI2LCAxOToyNTowMyBNaXR0ZWxldXJvcMOkaXNj
aGUgTm9ybWFsemVpdCBzY2hyaWViIENvaWEgUHJhbnQ6Cj4gQXMgdGhlIGdyZWF0IExpbnVzIFRv
cnZhbGRzIG9uY2Ugc2FpZCBpbgo+IERvY3VtZW50YXRpb24vcHJvY2Vzcy9jb2Rpbmctc3R5bGUu
cnN0Ogo+IAo+ICAgIklmIHlvdSBuZWVkIG1vcmUgdGhhbiAzIGxldmVscyBvZiBpbmRlbnRhdGlv
biwgeW91J3JlIHNjcmV3ZWQgYW55d2F5LAo+ICAgIGFuZCBzaG91bGQgZml4IHlvdXIgcHJvZ3Jh
bS4iCj4gCj4gVGhlIGdtYWNfY2xrX2VuYWJsZSgpIGZ1bmN0aW9uIHByZXZpb3VzbHkgdXNlZCBh
ICdib29sIGVuYWJsZScgcGFyYW1ldGVyCj4gdG8gaGFuZGxlIGJvdGggY2xvY2sgZW5hYmxpbmcg
YW5kIGRpc2FibGluZy4gVGhpcyByZXN1bHRlZCBpbiBkZWVwbHkKPiBuZXN0ZWQgaWYvZWxzZSBi
bG9ja3MsIHdoaWNoIG1hZGUgdGhlIGVycm9yIGhhbmRsaW5nIGFuZCByb2xsYmFjayBwYXRocwo+
IGN1bWJlcnNvbWUgYW5kIHByb25lIHRvIGJ1Z3MuCj4gCj4gVGhpcyBjb21wbGV4aXR5IGhhcyBs
ZWQgdG8gYnVncywgc3VjaCBhcyB0aGUgYnVsayBjbG9jayBsZWFrIGZpeGVkIGJ5Cj4gY29tbWl0
IDhkYjY3YmI2YTFmZiAoIm5ldDogZXRoZXJuZXQ6IHN0bW1hYzogZHdtYWMtcms6IGZpeCBidWxr
IGNsb2NrIGxlYWsgd2hlbiB0aGUgUEhZIGNsb2NrIGZhaWxzIikuCj4gCj4gU3BsaXQgdGhlIGZ1
bmN0aW9uIGludG8gdHdvIGRpc3RpbmN0IGhlbHBlcnM6IGdtYWNfY2xrX2VuYWJsZSgpIGFuZAo+
IGdtYWNfY2xrX2Rpc2FibGUoKS4gVGhpcyBmbGF0dGVucyB0aGUgY29kZSwgcmVtb3ZlcyB0aGUg
Ym9vbGVhbiBmbGFnLAo+IG1ha2VzIHRoZSBjYWxsZXIncyBpbnRlbnQgbXVjaCBjbGVhcmVyLCBh
bmQgc2ltcGxpZmllcyB0aGUgZXJyb3IKPiB1bndpbmRpbmcgbG9naWMuCj4gCj4gQWRkaXRpb25h
bGx5LCB0aGlzIHJlZmFjdG9yaW5nIGFpZHMgY29tcGlsZXIgaW5saW5pbmcgYW5kIENQVSBicmFu
Y2gKPiBwcmVkaWN0aW9uICh0cnVzdCBtZSkuIFRoZSByZWFzb24gaXMgc2ltcGxlOiBubyBicmFu
Y2gsIG5vIHByZWRpY3Rpb24uCj4gV2hpbGUgdGhlIGNvbXBpbGVyIG1pZ2h0IG9wdGltaXplIGl0
LCB0aGVyZSdzIG5vIGd1YXJhbnRlZSBpdCB3aWxsIDpQCj4gCj4gU2lnbmVkLW9mZi1ieTogQ29p
YSBQcmFudCA8Y29pYXByYW50QGdtYWlsLmNvbT4KClJldmlld2VkLWJ5OiBIZWlrbyBTdHVlYm5l
ciA8aGVpa29Ac250ZWNoLmRlPgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
