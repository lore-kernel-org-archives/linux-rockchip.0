Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06CCD606A32A
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2026 22:32:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=1dN9Qp0R;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=WK1SZ2ty
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Cc:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=moxs1s2Uba2oEGPG9fq/cLZ3gN9L5UX/AUzYE/dCvIY=; b=1dN9Qp0RweFXfOHVORJZ5eyu89
	ySYT0Cdq9JWlrkEkWfCp5DzyQ7C36cDk8uq/SyMVY16mobxSWJG6MwRHz+oeysOOERDz1Fgjo8XpS
	QfznK+wUiCHINqpF+k+Pxd8Un+7f7gr+fGlGGna+Okabe93N6pmmoR6B3nAYhVZCspk1P+om60mGu
	+o+iN0G85eryfueUH11U1bxa5uwTOOiuoggVEVwNw6b0Et6G3lr04K7wgNkoqn3Lgt/z+Ora65Bj8
	mNdQ18XFCZXyddZ5Z+26j+NaSqDPeZQLBCp/eNGMYVoUgi0gURLdljapRTUuKU662gfDmjFpoKbY3
	YAvnOxyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRdLV-0000000BAb5-2SWA;
	Thu, 12 Nov 2026 22:32:41 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRdL4-0000000BAKt-3Vxa;
	Thu, 12 Nov 2026 22:32:14 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8BA6944E62;
	Thu, 12 Nov 2026 22:32:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68B8B1F000C9;
	Thu, 12 Nov 2026 22:32:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794522734;
	bh=48VJYDAuIt0iLg0S1Cc71k3C6Jpv8GbdLJgMXR02WJE=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=WK1SZ2tyrMYhJF/bZa4tEgn7hNxQSuUHNriOZekpe0FEf805H9H30EWWPUzGdG7ZS
	 f7dFNPDMTUlTK6k6D75/z7hCezGI6bgRaNl6oSBghVHoMYD7rdlST0RoxoBQxJG+e0
	 RSnR8GmZyArpwpmvQ/eKbVkZLDmX3l1txiaQ+H2uNYyFZcRXI21LbkxrxWrRKZniHF
	 07g5RCfvQp+KYJlx7oF45NucDumEpUZCq2rWM3gJk5i8HbbQpnT2wmVSK7Qznn0mdB
	 /GIlK/W6mEITS/+PzTCZjOosbMjnuKZcnyDNwEu/fvNL38lZxAYFOodbg7rdU4emV/
	 SR2CImU1I8o2g==
Subject: Re: [PATCH net v9 06/10] can: rockchip_canfd: cancel bus-off restart
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
Date: Thu, 12 Nov 2026 22:32:12 +0000
Message-ID: <179452273299.488853.8253978964891645481@kernel.org>
In-Reply-To: <20261111-rockchip-canfd-restart-close-v9-6-6643f3825ba3@qq.com>
References: <20261111-rockchip-canfd-restart-close-v9-6-6643f3825ba3@qq.com>
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
Zm9yIHlvdXIgY29uc2lkZXJhdGlvbjoKCi0gW0xvd10gVGhlIHBhdGNoIGhhcyBhIG1pc3Npbmcg
c3RhYmxlIGRlcGVuZGVuY3kgYW5ub3RhdGlvbi4KCi0tCgpjYW46IHJvY2tjaGlwX2NhbmZkOiBj
YW5jZWwgYnVzLW9mZiByZXN0YXJ0IGJlZm9yZSBjbG9zaW5nIHRoZSBkZXZpY2UKClRoZSBwYXRj
aCBhZGRzIGEgY2FsbCB0byBjbG9zZV9jYW5kZXZfY2FuY2VsX3Jlc3RhcnRfc3luYygpIGF0IHRo
ZSBzdGFydApvZiBya2NhbmZkX3N0b3AoKS4gVG9kYXkgcmVzdGFydF93b3JrIGlzIG9ubHkgY2Fu
Y2VsbGVkIGluIGNsb3NlX2NhbmRldigpLAp3aGljaCBydW5zIGFmdGVyIHRoZSBJUlEgaGFzIGJl
ZW4gZnJlZWQgYW5kIHRoZSBjb250cm9sbGVyIHN0b3BwZWQuIFRoZQplYXJsaWVyIGNhbmNlbCBp
cyBtZWFudCB0byBzdG9wIGEgY29uY3VycmVudCBidXMtb2ZmIHJlc3RhcnQgZnJvbSB0dXJuaW5n
CnRoZSBjb250cm9sbGVyIGJhY2sgb24gYWZ0ZXIgSVJRIHRlYXJkb3duLgoKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9uZXQvY2FuL3JvY2tjaGlwL3JvY2tjaGlwX2NhbmZkLWNvcmUuYyBiL2RyaXZl
cnMvbmV0L2Nhbi9yb2NrY2hpcC9yb2NrY2hpcF9jYW5mZC1jb3JlLmMKPiBpbmRleCAxY2FlODY5
NzNkYTVhLi41OWE3OWZlMDU3ZTY2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbmV0L2Nhbi9yb2Nr
Y2hpcC9yb2NrY2hpcF9jYW5mZC1jb3JlLmMKPiArKysgYi9kcml2ZXJzL25ldC9jYW4vcm9ja2No
aXAvcm9ja2NoaXBfY2FuZmQtY29yZS5jCj4gQEAgLTc1OCw2ICs3NTgsNyBAQCBzdGF0aWMgaW50
IHJrY2FuZmRfc3RvcChzdHJ1Y3QgbmV0X2RldmljZSAqbmRldikKPiAgewo+ICAJc3RydWN0IHJr
Y2FuZmRfcHJpdiAqcHJpdiA9IG5ldGRldl9wcml2KG5kZXYpOwo+ICAKPiArCWNsb3NlX2NhbmRl
dl9jYW5jZWxfcmVzdGFydF9zeW5jKG5kZXYpOwo+ICAJbmV0aWZfc3RvcF9xdWV1ZShuZGV2KTsK
PiAgCj4gIAlya2NhbmZkX2NoaXBfaW50ZXJydXB0c19kaXNhYmxlKHByaXYpOwoKW1NldmVyaXR5
OiBMb3ddClRoaXMgcGF0Y2ggaGFzIEZpeGVzOiBmZjYwYmZiYWY2N2YgYW5kIENjOiBzdGFibGVA
dmdlci5rZXJuZWwub3JnLiBXaWxsIGl0CmJ1aWxkIHdoZW4gYmFja3BvcnRlZCBvbiBpdHMgb3du
PwoKVGhlIGNsb3NlX2NhbmRldl9jYW5jZWxfcmVzdGFydF9zeW5jKCkgaGVscGVyIGlzIG9ubHkg
YWRkZWQgdG8KaW5jbHVkZS9saW51eC9jYW4vZGV2LmggYnkgdGhlIGVhcmxpZXIgY29tbWl0ICJj
YW46IGRldjogYWRkCmNsb3NlX2NhbmRldl9jYW5jZWxfcmVzdGFydF9zeW5jKCkiLiBUaGF0IGNv
bW1pdCBoYXMgbm8gRml4ZXM6IHRhZyBhbmQgbm8KQ2M6IHN0YWJsZSB0YWc6CgpzdGF0aWMgaW5s
aW5lIHZvaWQgY2xvc2VfY2FuZGV2X2NhbmNlbF9yZXN0YXJ0X3N5bmMoc3RydWN0IG5ldF9kZXZp
Y2UgKmRldikKewoJc3RydWN0IGNhbl9wcml2ICpwcml2ID0gbmV0ZGV2X3ByaXYoZGV2KTsKCglj
YW5jZWxfZGVsYXllZF93b3JrX3N5bmMoJnByaXYtPnJlc3RhcnRfd29yayk7Cn0KClRoZSBlYXJs
eSBjYW5jZWwgYWxzbyBhcHBlYXJzIHRvIGRlcGVuZCBvbiB0aGUgZWFybGllciBjb21taXQgImNh
bjogZGV2OgpjaGVjayBuZXRpZl9ydW5uaW5nKCkgYmVmb3JlIGJ1cy1vZmYgcmVjb3ZlcnkiLiBU
aGF0IGNvbW1pdCBhZGRzIHRoZXNlCmNoZWNrcyBpbiBkcml2ZXJzL25ldC9jYW4vZGV2L2Rldi5j
OgoKY2FuX2J1c19vZmYoKToKCXJlc3RhcnQgPSBwcml2LT5yZXN0YXJ0X21zICYmIG5ldGlmX3J1
bm5pbmcoZGV2KTsKCmNhbl9yZXN0YXJ0KCk6CglpZiAoIW5ldGlmX3J1bm5pbmcoZGV2KSkKCQly
ZXR1cm4gLUVORVRET1dOOwoKV2l0aG91dCB0aG9zZSBjaGVja3MsIGEgYnVzLW9mZiBJUlEgY2Fu
IHN0aWxsIGFycml2ZSBhZnRlciB0aGUgbmV3IGVhcmx5CmNhbmNlbCBidXQgYmVmb3JlIGZyZWVf
aXJxKCkuIEluIHRoYXQgY2FzZSBjYW5fYnVzX29mZigpIHdvdWxkIHJlcXVldWUKcmVzdGFydF93
b3JrLgoKY2FuX3Jlc3RhcnQoKSB3b3VsZCB0aGVuIGNhbGwgZG9fc2V0X21vZGUoQ0FOX01PREVf
U1RBUlQpIHVuY29uZGl0aW9uYWxseToKCmNhbl9yZXN0YXJ0X3dvcmsoKQogIGNhbl9yZXN0YXJ0
KCkKICAgIHByaXYtPmRvX3NldF9tb2RlKGRldiwgQ0FOX01PREVfU1RBUlQpCiAgICAgIHJrY2Fu
ZmRfc2V0X21vZGUoKQogICAgICAgIHJrY2FuZmRfY2hpcF9zdGFydCgpCgpUaGF0IHR1cm5zIHRo
ZSBjb250cm9sbGVyIGFuZCBpdHMgaW50ZXJydXB0cyBiYWNrIG9uIGFuZCBzY2hlZHVsZXMKdGlt
ZXN0YW1wIHdvcmsgYWZ0ZXIgZnJlZV9pcnEoKSBhbmQgcmtjYW5mZF9jaGlwX3N0b3Bfc3luYygp
LiBUaGlzIGlzIHRoZQpzYW1lIGZhaWx1cmUgdGhlIGNvbW1pdCBtZXNzYWdlIGRlc2NyaWJlcy4g
VGhlIGNhbmNlbF9kZWxheWVkX3dvcmtfc3luYygpCmluIGNsb3NlX2NhbmRldigpIHJ1bnMgYWZ0
ZXIgcmtjYW5mZF9jaGlwX3N0b3Bfc3luYygpLCBzbyBpdCBjb21lcyB0b28gbGF0ZQp0byBwcmV2
ZW50IGl0LgoKSW4gbWFpbmxpbmUgYm90aCBwcmVyZXF1aXNpdGVzIGNvbWUgZWFybGllciBpbiB0
aGUgc2VyaWVzLCBzbyB0aGUgaW4tdHJlZQpmaXggaXMgY29tcGxldGUuIE90aGVyIHBhdGNoZXMg
aW4gdGhpcyBzZXJpZXMgc2F5IHdoYXQgdGhlaXIgYmFja3BvcnRzIG5lZWQKKGZvciBleGFtcGxl
LCB0aGUgIkJhY2twb3J0cyBtdXN0IGluY2x1ZGUgLi4uIiBub3RlcyBpbiAiY2FuOgpyb2NrY2hp
cF9jYW5mZDogcmV0cnkgdGhlIG91dHN0YW5kaW5nIFRYIGJ1ZmZlciIgYW5kICJjYW46IHJvY2tj
aGlwX2NhbmZkOgpzZXJpYWxpemUgVFggc3RhdGUgYW5kIGNvbW1hbmQgd3JpdGVzIikuCgpDb3Vs
ZCB0aGlzIHBhdGNoIGNhcnJ5IGEgc2ltaWxhciBub3RlLCBvciBTdGFibGUtZGVwLW9mIGFubm90
YXRpb25zLCBmb3IKYm90aCBvZiB0aGVzZSBkZXBlbmRlbmNpZXM/CgotLSAKU2FzaGlrbyBBSSBy
ZXZpZXcgwrcgaHR0cHM6Ly9uZXRkZXYtYWkuYm90cy5saW51eC5kZXYvc2FzaGlrby8jL3BhdGNo
c2V0LzIwMjYxMTExLXJvY2tjaGlwLWNhbmZkLXJlc3RhcnQtY2xvc2UtdjktMC02NjQzZjM4MjVi
YTMlNDBxcS5jb20KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
