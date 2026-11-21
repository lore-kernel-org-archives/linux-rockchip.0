Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B55AE606A683
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Nov 2026 00:02:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Jo7lt5ad;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=n5GJRzs9
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Cc:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=GR/GTJuYg8TKuNJA6ofEvwLzCYcYKTQGFS5v7+ne5tM=; b=Jo7lt5adj/JbVDWuH4NXpqRcBm
	tNFSRHVI6muii4upRKPxe5H5hCRRL60u1TqJck/aaMzzx0aO1IudI7jqm4QDWOMZAiipLjY1vpURI
	SZdoFQz1OI5vZAcGGQL5frbmOh7FmX3hvNqfvN1rVfOFUCadwBvI61XPQabRrCtM/Y6+dCPrRvf/t
	1G6lLDMX3/OsoZot3Uv0fo1vpIad2SMiUjhTcRtqKWCiyrARFOrsbroJOH+9MtGqEId8yp7bZPuO3
	FMZweK62g7G0igY6+uSvOcVx424CSGGK86lL6axRNuhDghBSUjnZMaOIvlBGOrLA4p1/omCfCkBgJ
	KV35ixHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUYYi-0000000GSbs-0ihA;
	Sat, 21 Nov 2026 00:02:24 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUYYg-0000000GSbZ-2Aq4;
	Sat, 21 Nov 2026 00:02:22 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 99E784051A;
	Sat, 21 Nov 2026 00:02:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43AD71F000CF;
	Sat, 21 Nov 2026 00:02:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795219341;
	bh=5oT62WpkqvQG1bllCQZAHu6BEqx9AIMOrpuD6eCPtoI=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=n5GJRzs9Z485qqcpHhRULwoD0w+4HXDdouFYqJZvFqbNqEtIj/LoieLf/eEa3yf3H
	 IgFe1HRN4ugJ4jQ2Fxoluy9faWOfAEL432IbD7XmvVvrCJTalonTnP16yaHnPltW+Z
	 TKQsRpxOvB/MgkzcbF8OfQommkTl0Mqfl2x3WxXgzjinZLPBhVwBjWhdGdJLFh6a8B
	 qMvHyV0kRA1rW4xKu38/XMpAxjQn4F0yxEWOdmm1euPxzUdY6f0crUEYRU28hhhe9k
	 PiG7uM5vQ3ornX44PSWB7MZ2+uwiPsmSa0wvqoq3AWYrNDUkWmCcDDbq9cQF90rnAr
	 qPFCd3H+10CaA==
Subject: Re: [PATCH net v10 05/10] can: rockchip_canfd: cancel bus-off restart
 before closing the device
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
Date: Sat, 21 Nov 2026 00:02:19 +0000
Message-ID: <179521933978.3131.189047644390163242@kernel.org>
In-Reply-To: <20261119-rockchip-canfd-restart-close-v10-5-df23913aa33a@qq.com>
References: <20261119-rockchip-canfd-restart-close-v10-5-df23913aa33a@qq.com>
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
bW9yZSBzZXZlcmUKaXNzdWUocykgaW4gb3RoZXIgcGF0Y2hlcyBvZiB0aGlzIHNlcmllcy4gVGhp
cyBtYWlsIGlzIG9ubHkgYW4gRllJLCBpbiBjYXNlCnlvdSB3YW50IHRvIGFkZHJlc3MgdGhlIG5p
dCBwaWNrcyBiZWxvdyB3aGVuIHlvdSByZXNwaW4uCgpMb3cgcHJpb3JpdHkgLyBuaXQgcGlja3Mg
Zm9yIHlvdXIgY29uc2lkZXJhdGlvbjoKCi0gW0xvd10gVGhlIGNvbW1pdCBtZXNzYWdlIHNheXMg
bGF0ZSByZXN0YXJ0IHdvcmsgKHF1ZXVlZCBieSBhIGJ1cy1vZmYKICBJUlEgYWZ0ZXIgdGhlIGVh
cmx5IGNsb3NlX2NhbmRldl9jYW5jZWxfcmVzdGFydF9zeW5jKCkgaW7igKYKCi0tCgpjYW46IHJv
Y2tjaGlwX2NhbmZkOiBjYW5jZWwgYnVzLW9mZiByZXN0YXJ0IGJlZm9yZSBjbG9zaW5nIHRoZSBk
ZXZpY2UKClRoaXMgcGF0Y2ggYWRkcyBhIGNhbGwgdG8gY2xvc2VfY2FuZGV2X2NhbmNlbF9yZXN0
YXJ0X3N5bmMoKSBhdCB0aGUgc3RhcnQKb2YgcmtjYW5mZF9zdG9wKCksIHNvIHRoYXQgYSBydW5u
aW5nIGJ1cy1vZmYgcmVzdGFydCBpcyBjYW5jZWxsZWQgd2hpbGUKdGhlIElSUSwgUlggb2ZmbG9h
ZCBhbmQgY29udHJvbGxlciBhcmUgc3RpbGwgYXZhaWxhYmxlLiBFY2hvIGNsZWFudXAgYW5kCnRo
ZSBmaW5hbCByZXN0YXJ0IGNhbmNlbGxhdGlvbiBzdGF5IGluIGNsb3NlX2NhbmRldigpLgoKPiBB
IGJ1cy1vZmYgSVJRIGNhbiBwYXNzIHRoZSBzY2hlZHVsaW5nIGNoZWNrIGJlZm9yZSBjbG9zZSwg
dGhlbiBxdWV1ZQo+IHJlc3RhcnQgd29yayBhZnRlciB0aGUgZWFybHkgY2FuY2VsbGF0aW9uLiBU
aGUgZmluYWwgY2FuY2VsbGF0aW9uIGFmdGVyCj4gZnJlZV9pcnEoKSBkcmFpbnMgdGhhdCBsYXRl
IHdvcmsgc28gaXQgY2Fubm90IHN1cnZpdmUgY2xvc2UuCgpbU2V2ZXJpdHk6IExvd10KSXMgdGhp
cyBleHBsYW5hdGlvbiBjb21wbGV0ZT8gTGF0ZS1xdWV1ZWQgcmVzdGFydCB3b3JrIGRvZXMgbm90
IGhhdmUgdG8Kd2FpdCBmb3IgdGhlIGZpbmFsIGNhbmNlbC4gV2l0aCBhIHNob3J0IHJlc3RhcnRf
bXMgaXQgY2FuIHJ1biBhbnl3aGVyZQpiZXR3ZWVuIHRoZSBlYXJseSBjYW5jZWwgYW5kIGNsb3Nl
X2NhbmRldigpLgoKVGhhdCB3aW5kb3cgY292ZXJzIHJrY2FuZmRfY2hpcF9pbnRlcnJ1cHRzX2Rp
c2FibGUoKSwgZnJlZV9pcnEoKSwKY2FuX3J4X29mZmxvYWRfZGlzYWJsZSgpIGFuZCBya2NhbmZk
X2NoaXBfc3RvcF9zeW5jKCkuIFRoZSBmaW5hbApjYW5jZWxfZGVsYXllZF93b3JrX3N5bmMoKSBp
biBjbG9zZV9jYW5kZXYoKSBjYW4ndCB1bmRvIGEgcmVzdGFydCB0aGF0CmhhcyBhbHJlYWR5IHJ1
biB0aGVyZS4KCkluIHRoYXQgd2luZG93LCBvbmx5IHRoaXMgY2hlY2sgaW4gY2FuX3Jlc3RhcnQo
KSBzdG9wcyB0aGUgcmVzdGFydDoKCmRyaXZlcnMvbmV0L2Nhbi9kZXYvZGV2LmM6Y2FuX3Jlc3Rh
cnQoKSB7CiAgICAuLi4KCWlmICghbmV0aWZfcnVubmluZyhkZXYpKQoJCXJldHVybiAtRU5FVERP
V047CiAgICAuLi4KfQoKV2l0aG91dCB0aGF0IGNoZWNrLCB0aGUgd29yayB3b3VsZCByZWFjaCBy
a2NhbmZkX3NldF9tb2RlKCk6CgoJY2FzZSBDQU5fTU9ERV9TVEFSVDoKCQlya2NhbmZkX2NoaXBf
c3RhcnQocHJpdik7CgkJcmtjYW5mZF9jaGlwX2ludGVycnVwdHNfZW5hYmxlKHByaXYpOwoJCW5l
dGlmX3dha2VfcXVldWUobmRldik7CgpUaGF0IGNoZWNrLCBhbmQgdGhlICJzY2hlZHVsaW5nIGNo
ZWNrIiBpbiBjYW5fYnVzX29mZigpOgoKCXJlc3RhcnQgPSBwcml2LT5yZXN0YXJ0X21zICYmIG5l
dGlmX3J1bm5pbmcoZGV2KTsKCmJvdGggY29tZSBmcm9tIHRoZSBlYXJsaWVyIHBhdGNoIGluIHRo
aXMgc2VyaWVzLCAiY2FuOiBkZXY6IGNoZWNrCm5ldGlmX3J1bm5pbmcoKSBiZWZvcmUgYnVzLW9m
ZiByZWNvdmVyeSIuCgpOZWl0aGVyIHRoZSBjb21taXQgbWVzc2FnZSBub3IgdGhlIENjOiBzdGFi
bGUgdGFnIG5hbWVzIHRoYXQgZGVwZW5kZW5jeS4KVGhlIHBhdGNoIG9ubHkgbmVlZHMgImNhbjog
ZGV2OiBhZGQgY2xvc2VfY2FuZGV2X2NhbmNlbF9yZXN0YXJ0X3N5bmMoKSIKdG8gYnVpbGQuIFNv
IGEgYmFja3BvcnQgdGhhdCB0YWtlcyB0aGlzIHBhdGNoIGFuZCB0aGUgaGVscGVyLCBidXQgbm90
CnRoZSBuZXRpZl9ydW5uaW5nKCkgcGF0Y2gsIHdvdWxkIGJ1aWxkIGNsZWFubHkgYW5kIHN0aWxs
IGhhdmUgdGhlCnJlc3RhcnQtYWZ0ZXItdGVhcmRvd24gcmFjZS4KCkNvdWxkIHRoZSBjb21taXQg
bWVzc2FnZSBzYXkgdGhhdCBsYXRlIHdvcmsgd2hpY2ggcnVucyBiZWZvcmUgdGhlIGZpbmFsCmNh
bmNlbCBpcyBzdG9wcGVkIGJ5IHRoZSBuZXRpZl9ydW5uaW5nKCkgY2hlY2sgaW4gY2FuX3Jlc3Rh
cnQoKT8gQ291bGQKdGhlIG5ldGlmX3J1bm5pbmcoKSBwYXRjaCBhbHNvIGJlIGxpc3RlZCBhcyBh
IHN0YWJsZSBwcmVyZXF1aXNpdGU/Cgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9jYW4vcm9j
a2NoaXAvcm9ja2NoaXBfY2FuZmQtY29yZS5jIGIvZHJpdmVycy9uZXQvY2FuL3JvY2tjaGlwL3Jv
Y2tjaGlwX2NhbmZkLWNvcmUuYwo+IGluZGV4IDFjYWU4Njk3M2RhNWEuLjU5YTc5ZmUwNTdlNjYg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQvY2FuL3JvY2tjaGlwL3JvY2tjaGlwX2NhbmZkLWNv
cmUuYwo+ICsrKyBiL2RyaXZlcnMvbmV0L2Nhbi9yb2NrY2hpcC9yb2NrY2hpcF9jYW5mZC1jb3Jl
LmMKPiBAQCAtNzU4LDYgKzc1OCw3IEBAIHN0YXRpYyBpbnQgcmtjYW5mZF9zdG9wKHN0cnVjdCBu
ZXRfZGV2aWNlICpuZGV2KQo+ICB7Cj4gIAlzdHJ1Y3QgcmtjYW5mZF9wcml2ICpwcml2ID0gbmV0
ZGV2X3ByaXYobmRldik7Cj4gIAo+ICsJY2xvc2VfY2FuZGV2X2NhbmNlbF9yZXN0YXJ0X3N5bmMo
bmRldik7Cj4gIAluZXRpZl9zdG9wX3F1ZXVlKG5kZXYpOwo+ICAKPiAgCXJrY2FuZmRfY2hpcF9p
bnRlcnJ1cHRzX2Rpc2FibGUocHJpdik7CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6
Ly9uZXRkZXYtYWkuYm90cy5saW51eC5kZXYvc2FzaGlrby8jL3BhdGNoc2V0LzIwMjYxMTE5LXJv
Y2tjaGlwLWNhbmZkLXJlc3RhcnQtY2xvc2UtdjEwLTAtZGYyMzkxM2FhMzNhJTQwcXEuY29tCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
