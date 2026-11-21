Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14209606A6BD
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Nov 2026 00:03:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Dw73Q8mv;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=W9rz7AwU
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Cc:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ip/Yj6yqpJjpnEHxwP0KNjluTIqouPCdNJ/Cwk6eKjs=; b=Dw73Q8mv0WD1Ed7RRHY1LR3Tsq
	NSQPSnfyggs4K5YplERbCqbEYfFnvacdWVX22fpy8wvDRlwFGA1iEPrL6qlmdshuZ3IeBYEapDMaz
	qok13r8Y0jDoWFh3ksx3evyvs6vktQwcEBrPtq/80gGedvnzS52qbMOJasAdEZJtZXznlsMqAapv7
	aBbBYNK2MZgad7YHRc2KO1DdBSA0zlIiQXKxpLRFwEYf8yzNwgodDRra9AEFJiu8DlLyyrphCVaID
	mTbP4Bs85CZnfVC0pED1IEqZFi6NQ0sdbk7ItWTU4SW3HuEXt+BZfYb8DoecWfmlmL9+u2AkfengW
	54TSeZrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUYZK-0000000GStB-2hZd;
	Sat, 21 Nov 2026 00:03:02 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUYYl-0000000GSdM-3uAP;
	Sat, 21 Nov 2026 00:02:28 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 9C8C5411C8;
	Sat, 21 Nov 2026 00:02:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 639661F000C6;
	Sat, 21 Nov 2026 00:02:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795219347;
	bh=vVTWkhfLiH/QsLki+tG2g1OrDcp1ntC4ATOpIndsvv4=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=W9rz7AwUeMWreMrPywL+G/eoSE/ac2EveLkjzau1+l0PpgXWjbqzH2KWAYN5hxD/0
	 evRhjZHWufSyBIVEzlrjwmfIRXPIpt4QTk1ivutvkXBvV4bFQhJFI/26GRbX5pvHM3
	 EluX44uvrajwnxDAhlXrXaS9HMrM07H3/Ou6qQO3hPenvRQtCRv06l9uXteA/pLViA
	 O/TGDLSTfnS2YI04Br/iLpk4mLydKXSfwv1M7WJajGUA6OHjBWCG6swUWr+dJKhQ0M
	 WnI7u47mSRhMBbQggvz7GW8gE4F4+V8Q9YuTyV9In9Zwsf4s7HMXNClCq0SxgZhO/E
	 eRAYjIXBkfH8A==
Subject: Re: [PATCH net v10 10/10] can: rockchip_canfd: serialize timecounter
 timestamp conversion
From: netdev-bot+sashiko@kernel.org
To: 1579567540@qq.com
Cc: mkl@pengutronix.de, kernel@pengutronix.de, mailhol@kernel.org,
 heiko@sntech.de, socketcan@hartkopp.net, davem@davemloft.net,
 edumazet@kernel.org, kuba@kernel.org, pabeni@redhat.com, horms@kernel.org,
 corbet@lwn.net, skhan@linuxfoundation.org, rdunlap@infradead.org,
 wg@grandegger.com, linux-can@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
 stable@vger.kernel.org
Date: Sat, 21 Nov 2026 00:02:25 +0000
Message-ID: <179521934595.3131.13988876249908602124@kernel.org>
In-Reply-To: <20261119-rockchip-canfd-restart-close-v10-10-df23913aa33a@qq.com>
References: <20261119-rockchip-canfd-restart-close-v10-10-df23913aa33a@qq.com>
X-sashiko-severity: Low
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
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

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
bW9yZSBzZXZlcmUKaXNzdWUocykgaW4gb3RoZXIgcGF0Y2hlcyBvZiB0aGlzIHNlcmllcy4gVGhp
cyBtYWlsIGlzIG9ubHkgYW4gRllJLCBpbiBjYXNlCnlvdSB3YW50IHRvIGFkZHJlc3MgdGhlIG5p
dCBwaWNrcyBiZWxvdyB3aGVuIHlvdSByZXNwaW4uCgpMb3cgcHJpb3JpdHkgLyBuaXQgcGlja3Mg
Zm9yIHlvdXIgY29uc2lkZXJhdGlvbjoKCi0gW0xvd10gVGhlIHBhdGNoIGlzIHRhZ2dlZCBgQ2M6
IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmdgIHdpdGggYEZpeGVzOgogIDRlMWExOGJhYjEyNCAoImNh
bjogcm9ja2NoaXBfY2FuZmQ6IGFkZCBoYXJkd2FyZSB0aW1lc3RhbXBpbmfigKYKCi0tCgpjYW46
IHJvY2tjaGlwX2NhbmZkOiBzZXJpYWxpemUgdGltZWNvdW50ZXIgdGltZXN0YW1wIGNvbnZlcnNp
b24KClRoaXMgY29tbWl0IGhvbGRzIHByaXYtPnRpbWVzdGFtcF9sb2NrIGFyb3VuZCB0aW1lY291
bnRlcl9jeWMydGltZSgpIGluCnJrY2FuZmRfc2tiX3NldF90aW1lc3RhbXAoKS4gVGhhdCBzZXJp
YWxpemVzIHRoZSBSWCwgVFggY29tcGxldGlvbiBhbmQKZXJyb3ItZnJhbWUgdGltZXN0YW1wIGNv
bnZlcnNpb24gYWdhaW5zdCB0aW1lY291bnRlcl9yZWFkKCkgaW4gdGhlCnRpbWVzdGFtcCB3b3Jr
ZXIuIFRoZSBjb21tZW50IG9uIHRpbWVzdGFtcF9sb2NrIGluIHN0cnVjdCBya2NhbmZkX3ByaXYg
aXMKYWxzbyBjaGFuZ2VkIHRvIHNheSBpdCBwcm90ZWN0cyB0YyBhbmQgdGltZXN0YW1wX2FjdGl2
ZS4KCj4gSG9sZCB0aW1lc3RhbXBfbG9jayBhY3Jvc3MgdGltZWNvdW50ZXJfY3ljMnRpbWUoKSwg
dXNpbmcgdGhlIHNhbWUgbG9jawo+IGFzIHRpbWVjb3VudGVyX3JlYWQoKSBhbmQgdGltZWNvdW50
ZXJfaW5pdCgpLiBLZWVwIHRoZSBTS0IgdGltZXN0YW1wCj4gYXNzaWdubWVudCBvdXRzaWRlIHRo
ZSBjcml0aWNhbCBzZWN0aW9uLgoKWyAuLi4gXQoKPiBGaXhlczogNGUxYTE4YmFiMTI0ICgiY2Fu
OiByb2NrY2hpcF9jYW5mZDogYWRkIGhhcmR3YXJlIHRpbWVzdGFtcGluZyBzdXBwb3J0IikKPiBD
Yzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwoKW1NldmVyaXR5OiBMb3ddClNob3VsZCB0aGUgc3Rh
YmxlIHRhZyBtZW50aW9uIHRoYXQgdGhpcyBkZXBlbmRzIG9uIHRoZSBlYXJsaWVyIHBhdGNoIGlu
CnRoZSBzZXJpZXMsICJjYW46IHJvY2tjaGlwX2NhbmZkOiBwcmV2ZW50IHRpbWVzdGFtcCB3b3Jr
IGZyb20gcmVhcm1pbmcKYWZ0ZXIgYnVzLW9mZiI/CgpUaGUgdGltZXN0YW1wX2xvY2sgYW5kIHRp
bWVzdGFtcF9hY3RpdmUgbWVtYmVycyBvZiBzdHJ1Y3QgcmtjYW5mZF9wcml2IGFyZQpub3QgaW4g
NGUxYTE4YmFiMTI0LiBUaGUgZWFybGllciBwYXRjaCBhZGRzIHRoZW0uIEl0IGFsc28gcHV0cwp0
aW1lY291bnRlcl9yZWFkKCkgaW4gcmtjYW5mZF90aW1lc3RhbXBfd29yaygpIGFuZCB0aW1lY291
bnRlcl9pbml0KCkgaW4KcmtjYW5mZF90aW1lc3RhbXBfc3RhcnQoKSB1bmRlciB0aGUgbG9jazoK
CiAgICBzcGluX2xvY2tfaXJxc2F2ZSgmcHJpdi0+dGltZXN0YW1wX2xvY2ssIGZsYWdzKTsKICAg
IGlmIChwcml2LT50aW1lc3RhbXBfYWN0aXZlKQogICAgICAgIHRpbWVjb3VudGVyX3JlYWQoJnBy
aXYtPnRjKTsKICAgIHNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJnByaXYtPnRpbWVzdGFtcF9sb2Nr
LCBmbGFncyk7CgpJZiB0aGlzIHBhdGNoIGlzIHBpY2tlZCBvbiBpdHMgb3duIGZvciBhIHN0YWJs
ZSBrZXJuZWwgdGhhdCBvbmx5IGhhcwo0ZTFhMThiYWIxMjQsIGl0IHdpbGwgbm90IGJ1aWxkLiBB
IGJhY2twb3J0ZXIgY291bGQgYWRkIGp1c3QgdGhlIGxvY2sgdG8KZ2V0IGl0IGJ1aWxkaW5nLiB0
aW1lY291bnRlcl9yZWFkKCkgYW5kIHRpbWVjb3VudGVyX2luaXQoKSB3b3VsZCBzdGlsbApub3Qg
dGFrZSB0aGF0IGxvY2ssIHNvIHRoZSByYWNlIHdvdWxkIHN0YXkgb3Blbi4KCk90aGVyIHBhdGNo
ZXMgaW4gdGhlIHNlcmllcyBsaXN0IHRoZWlyIHN0YWJsZSBwcmVyZXF1aXNpdGVzLCBmb3IgZXhh
bXBsZQoiIyBwcmVyZXF1aXNpdGUgZm9yIHRoZSBSb2NrY2hpcCByZXN0YXJ0L2Nsb3NlIGZpeCIu
IFdvdWxkIHNvbWV0aGluZyBsaWtlCnRoaXMgd29yayBoZXJlPwoKICAgIENjOiBzdGFibGVAdmdl
ci5rZXJuZWwub3JnICMgZGVwZW5kcyBvbiAiY2FuOiByb2NrY2hpcF9jYW5mZDogcHJldmVudCB0
aW1lc3RhbXAgd29yayBmcm9tIHJlYXJtaW5nIGFmdGVyIGJ1cy1vZmYiCgotLSAKU2FzaGlrbyBB
SSByZXZpZXcgwrcgaHR0cHM6Ly9uZXRkZXYtYWkuYm90cy5saW51eC5kZXYvc2FzaGlrby8jL3Bh
dGNoc2V0LzIwMjYxMTE5LXJvY2tjaGlwLWNhbmZkLXJlc3RhcnQtY2xvc2UtdjEwLTAtZGYyMzkx
M2FhMzNhJTQwcXEuY29tCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
