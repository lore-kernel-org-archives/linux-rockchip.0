Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAC8C606A321
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2026 22:32:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=k/pPZvXk;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=MzC3q/kC
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Cc:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=PV0N9tHiOB2dyto4O+JLFzr4cP6MtIN+EZrulrNqjYw=; b=k/pPZvXkwRfcLxXscr8ikvuPSw
	UAQEa/aSN+PFCIYWxO1olLnb0iISKfr79ZqXNNLVXFdbCeaFG3hg0TavLHEw7JzCXSlJizfAMl9a5
	oFRtzGn/D1s7VBekK1K0F5beI3bjFysFkQ2ZuQglxLwL0STEaRAogO3ACoG+rCBpqbzyeRAVcjVDt
	g4bPkfHcb6GQHI0ScHJTnHAn6+WJSPJZI5rgBKbAYULYbBSiBqgdgXr2PlGOf4sl2sFk1I1w2UDZv
	DyJaEgpx4rPxMLQ4hVkZATnsRDr4cBmIfQp3IpoviOYaggVLR8xZqt8+RXuLMDTEA6ChnRr67tqKK
	xi2EFHzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRdLN-0000000BAX0-2aXh;
	Thu, 12 Nov 2026 22:32:33 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRdL3-0000000BAK8-0fW1;
	Thu, 12 Nov 2026 22:32:13 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id E499540792;
	Thu, 12 Nov 2026 22:32:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1C3F1F000CD;
	Thu, 12 Nov 2026 22:32:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794522732;
	bh=OH+0WymoBgcUXGycaB4LMqft3m6k34R9ciQ53jyzM9o=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=MzC3q/kClS6U+kXLRaoowhQjOzZ63Z0TSjrBiLo+2gXsCGgsZg/DvhPVGPzQN0ab3
	 Wm8lXXAOcEv3RbykuHY8mMukhtoSIq2GT1ZcL7yOWJ1WvxiWo/VuhBIiCwjb6cgOTc
	 RlNbBw4eAT2IwrqW5kkDKAbkwbCOuym1fZqAmnnJ7rFlxDMKytJnZgk0y8wY1wwv4t
	 r3ougT1O1IWbiWG6vYwfqF/fEj18XVAETxLyvyznpH8x9OXfritCFEvi9HY7qoTeuw
	 EKqTf1fXoBgEb0PPlG3UC6QC6KCysBDHpr8PEhr4u5ueCUpgcxoUk9PEh/oejeQSNt
	 313pXofxZFk9g==
Subject: Re: [PATCH net v9 05/10] can: dev: add close_candev_cancel_restart_sync()
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
Date: Thu, 12 Nov 2026 22:32:11 +0000
Message-ID: <179452273127.488853.12768732215259424178@kernel.org>
In-Reply-To: <20261111-rockchip-canfd-restart-close-v9-5-6643f3825ba3@qq.com>
References: <20261111-rockchip-canfd-restart-close-v9-5-6643f3825ba3@qq.com>
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
Zm9yIHlvdXIgY29uc2lkZXJhdGlvbjoKCi0gW0xvd10gVGhlIHBhdGNoIGFkZHMgY2xvc2VfY2Fu
ZGV2X2NhbmNlbF9yZXN0YXJ0X3N5bmMoKSBhcyBhIHN0YXRpYwogIGlubGluZSBpbiBpbmNsdWRl
L2xpbnV4L2Nhbi9kZXYuaCBhbmQgbW92ZXMgY2xvc2VfY2FuZGV2KCkgb250byBpdC4KCi0tCgpj
YW46IGRldjogYWRkIGNsb3NlX2NhbmRldl9jYW5jZWxfcmVzdGFydF9zeW5jKCkKClRoaXMgY29t
bWl0IGFkZHMgYSBzdGF0aWMgaW5saW5lIGhlbHBlciwgY2xvc2VfY2FuZGV2X2NhbmNlbF9yZXN0
YXJ0X3N5bmMoKSwKdG8gaW5jbHVkZS9saW51eC9jYW4vZGV2LmguIFRoZSBoZWxwZXIgc3luY2hy
b25vdXNseSBjYW5jZWxzIHRoZSBDQU4gY29yZQpidXMtb2ZmIHJlc3RhcnQgd29yaywgYW5kIGNs
b3NlX2NhbmRldigpIG5vdyBjYWxscyBpdC4gRHJpdmVycyBjYW4gdGhlbgp3YWl0IGZvciByZWNv
dmVyeSB0byBmaW5pc2ggYmVmb3JlIHRoZXkgdGVhciBkb3duIElSUSBhbmQgaGFyZHdhcmUKcmVz
b3VyY2VzLCBhbmQgZWNobyBza2IgY2xlYW51cCBzdGF5cyBpbiBjbG9zZV9jYW5kZXYoKS4KCj4g
ZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvY2FuL2Rldi5oIGIvaW5jbHVkZS9saW51eC9jYW4v
ZGV2LmgKPiBpbmRleCAzNDZmYWRkZWUwMmViLi4yYTI4NmY5MDYzOTRiIDEwMDY0NAo+IC0tLSBh
L2luY2x1ZGUvbGludXgvY2FuL2Rldi5oCj4gKysrIGIvaW5jbHVkZS9saW51eC9jYW4vZGV2LmgK
ClsgLi4uIF0KCj4gQEAgLTExNSw2ICsxMTYsMjIgQEAgc3RydWN0IGNhbl9wcml2ICpzYWZlX2Nh
bmRldl9wcml2KHN0cnVjdCBuZXRfZGV2aWNlICpkZXYpOwo+ICAKPiAgaW50IG9wZW5fY2FuZGV2
KHN0cnVjdCBuZXRfZGV2aWNlICpkZXYpOwo+ICB2b2lkIGNsb3NlX2NhbmRldihzdHJ1Y3QgbmV0
X2RldmljZSAqZGV2KTsKPiArCj4gKy8qKgo+ICsgKiBjbG9zZV9jYW5kZXZfY2FuY2VsX3Jlc3Rh
cnRfc3luYygpIC0gY2FuY2VsIGJ1cy1vZmYgcmVzdGFydCBzeW5jaHJvbm91c2x5Cj4gKyAqIEBk
ZXY6IENBTiBuZXR3b3JrIGRldmljZQo+ICsgKgo+ICsgKiBDYWxsIGJlZm9yZSB0ZWFyaW5nIGRv
d24gcmVzb3VyY2VzIHVzZWQgYnkgdGhlIHJlc3RhcnQgY2FsbGJhY2suCj4gKyAqIFRoZSBkcml2
ZXIgbXVzdCBxdWllc2NlIHJlc3RhcnQgd29yayBwcm9kdWNlcnMgYmVmb3JlIGNhbGxpbmcKPiAr
ICogY2xvc2VfY2FuZGV2KCkgZm9yIHRoZSBmaW5hbCBjbGVhbnVwLgo+ICsgKi8KPiArc3RhdGlj
IGlubGluZSB2b2lkIGNsb3NlX2NhbmRldl9jYW5jZWxfcmVzdGFydF9zeW5jKHN0cnVjdCBuZXRf
ZGV2aWNlICpkZXYpCj4gK3sKPiArCXN0cnVjdCBjYW5fcHJpdiAqcHJpdiA9IG5ldGRldl9wcml2
KGRldik7Cj4gKwo+ICsJY2FuY2VsX2RlbGF5ZWRfd29ya19zeW5jKCZwcml2LT5yZXN0YXJ0X3dv
cmspOwo+ICt9CgpbU2V2ZXJpdHk6IExvd10KVGhpcyBpc24ndCBhIHJ1bnRpbWUgYnVnLCBidXQg
c2hvdWxkIHRoaXMgcGF0Y2ggY2FycnkgYSBzdGFibGUgdGFnPyBUaGUKYWx0ZXJuYXRpdmUgd291
bGQgYmUgZm9yIHRoZSBmb2xsb3dpbmcgUm9ja2NoaXAgZml4IHRvIGxpc3QgaXQgYXMgYQpwcmVy
ZXF1aXNpdGUuCgpUaGUgbmV4dCBwYXRjaCBpbiB0aGUgc2VyaWVzLCAiY2FuOiByb2NrY2hpcF9j
YW5mZDogY2FuY2VsIGJ1cy1vZmYgcmVzdGFydApiZWZvcmUgY2xvc2luZyB0aGUgZGV2aWNlIiwg
aGFzIEZpeGVzOiBmZjYwYmZiYWY2N2YgYW5kCkNjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnLiBJ
dCBjYWxscyB0aGUgbmV3IGhlbHBlciBhdCB0aGUgc3RhcnQgb2YKcmtjYW5mZF9zdG9wKCkgaW4g
ZHJpdmVycy9uZXQvY2FuL3JvY2tjaGlwL3JvY2tjaGlwX2NhbmZkLWNvcmUuYzoKCiAgICBjbG9z
ZV9jYW5kZXZfY2FuY2VsX3Jlc3RhcnRfc3luYyhuZGV2KTsKClRoaXMgY29tbWl0IGhhcyBubyBD
Yzogc3RhYmxlIHRhZywgYW5kIHRoZSBSb2NrY2hpcCBmaXggZG9lcyBub3QgbmFtZSBpdAphcyBh
IGRlcGVuZGVuY3kuCgpJZiBzdGFibGUgcGlja3MgdXAgb25seSB0aGUgdGFnZ2VkIFJvY2tjaGlw
IGZpeCwgd291bGQgdGhlIGJhY2twb3J0IGZhaWwKdG8gYnVpbGQ/IGNsb3NlX2NhbmRldl9jYW5j
ZWxfcmVzdGFydF9zeW5jKCkgd291bGQgYmUgdW5kZWZpbmVkIHRoZXJlLgoKRG9jdW1lbnRhdGlv
bi9wcm9jZXNzL3N0YWJsZS1rZXJuZWwtcnVsZXMucnN0IGdpdmVzIHRoaXMgZm9ybSBmb3IKcHJl
cmVxdWlzaXRlczoKCiAgICBDYzogPHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmc+ICMgeC55Lno6IDxz
aGE+OiA8c3ViamVjdD4KCk90aGVyIHBhdGNoZXMgaW4gdGhlIHNlcmllcyBhbHJlYWR5IHN0YXRl
IHRoZWlyIGJhY2twb3J0IGRlcGVuZGVuY2llcy4KVGhlIGVhcmxpZXIgY29yZSBwYXRjaCAiY2Fu
OiBkZXY6IGNoZWNrIG5ldGlmX3J1bm5pbmcoKSBiZWZvcmUgYnVzLW9mZgpyZWNvdmVyeSIgaXMg
YWxzbyB0YWdnZWQgZm9yIHN0YWJsZS4KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczov
L25ldGRldi1haS5ib3RzLmxpbnV4LmRldi9zYXNoaWtvLyMvcGF0Y2hzZXQvMjAyNjExMTEtcm9j
a2NoaXAtY2FuZmQtcmVzdGFydC1jbG9zZS12OS0wLTY2NDNmMzgyNWJhMyU0MHFxLmNvbQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
