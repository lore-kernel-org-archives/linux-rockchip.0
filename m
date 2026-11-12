Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDC64606A31C
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2026 22:32:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=MDR18Uvy;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=WR3VWbUK
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Cc:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=hLMcllU/q+3b0kK8RTzvPM6NrBN/YV1lKELIESVRL0g=; b=MDR18Uvy21eTFVWfkbxBSNWkCR
	mbvAp1syIzj57HQUJkjiLwcNFItG+XnJArRBZH0HUQPU88RT+/x2Rs480YrWp7SSpglos0JBE6W/i
	lMlX3TTAT1MK06hRTXEIk9wH3i5Rm5DV6HVDs/n61tpYb+wLELmsqyj0/LUG73WJqVEI9GbePbrcl
	2Nxj2BbmKcRvnXLIsaN4GoQ1UGkmavgim4n5giEU1Ov/IvfKnzCPj6gSR1pAjZqlNe2Cjh7jPfRH2
	upQNz3HRNvgti7UkNt8YrUdTLpjMekpzW7GDAA/frl2NpiVeP7G5ivmzYF9KuXhasZPhEaOo4+IOD
	kbPDh4ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRdLj-0000000BAjC-02RH;
	Thu, 12 Nov 2026 22:32:55 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRdL8-0000000BANa-1ReV;
	Thu, 12 Nov 2026 22:32:18 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 114A6464D6;
	Thu, 12 Nov 2026 22:32:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B350D1F000C5;
	Thu, 12 Nov 2026 22:32:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794522737;
	bh=7I8Bl8j2DkVNE27qVMX3vqtaNvrvL7NhHRJK3KxV54A=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=WR3VWbUK1imnQlQmpNAhqSsCOW99QnIUHIcVwRERBUB4R/jAwYxqHbCFi1NkKzLoa
	 ++/G59vhWLixAa9mEUEFGaU4gePyrs3VnVA09595dCjvaKajFGHofoN8XhUcYErqHP
	 mChkoSGEKpddY3E1an1/DwCzTOeoAfXiiV55MWuRWtgoWvpRLoORurIa4d8gh/hEcp
	 K+epw8KzroVsBPW5kuFg8ur7b1k8r1APmZnYOG0rRYfEeEaF5aWQPJ6qMb639O7JbH
	 0Y8hT2yAVt9BfRDAyG2aNSLli4ZxHj62IV5iifmtuRZCbF+l9cL+Y+KQCwGeE9GoNI
	 XttgZKyF9yFfw==
Subject: Re: [PATCH net v9 09/10] can: rockchip_canfd: prevent timestamp work
 from rearming after bus-off
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
Date: Thu, 12 Nov 2026 22:32:16 +0000
Message-ID: <179452273623.488853.960003123754786062@kernel.org>
In-Reply-To: <20261111-rockchip-canfd-restart-close-v9-9-6643f3825ba3@qq.com>
References: <20261111-rockchip-canfd-restart-close-v9-9-6643f3825ba3@qq.com>
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
Zm9yIHlvdXIgY29uc2lkZXJhdGlvbjoKCi0gW0xvd10gQ29tbWl0ICJjYW46IHJvY2tjaGlwX2Nh
bmZkOiBwcmV2ZW50IHRpbWVzdGFtcCB3b3JrIGZyb20gcmVhcm1pbmcKICBhZnRlciBidXMtb2Zm
IiBpcyB0YWdnZWQgQ2M6IHN0YWJsZSBidXQgZG9lcyBub3Qgc2F5IGl0IGRlcGVuZHMgb24gdGhl
4oCmCgotLQoKY2FuOiByb2NrY2hpcF9jYW5mZDogcHJldmVudCB0aW1lc3RhbXAgd29yayBmcm9t
IHJlYXJtaW5nIGFmdGVyIGJ1cy1vZmYKCkFmdGVyIGJ1cy1vZmYsIHRoZSByb2NrY2hpcF9jYW5m
ZCB0aW1lc3RhbXAgd29ya2VyIGNvdWxkIHJlcXVldWUgaXRzZWxmCmFuZCBrZWVwIHBvbGxpbmcu
IFRoaXMgcGF0Y2ggc3dpdGNoZXMgdGhlIHdvcmtlciB0byBkaXNhYmxlX2RlbGF5ZWRfd29yaygp
CmFuZCBlbmFibGVfZGVsYXllZF93b3JrKCkgdG8gc3RvcCB0aGF0LiBJdCBhbHNvIGFkZHMgdGlt
ZXN0YW1wX2xvY2sgYW5kCnRpbWVzdGFtcF9hY3RpdmUgc28gY291bnRlciByZWFkcyBhcmUgc2Vy
aWFsaXplZCB3aXRoIHN0YXJ0IGFuZCBzdG9wLCBhbmQKcmtjYW5mZF90aW1lc3RhbXBfc3RvcF9z
eW5jKCkgbm93IGNhbGxzIHRoZSBub24tc3luYyBzdG9wIGJlZm9yZSBpdApjYW5jZWxzIHRoZSB3
b3JrLgoKPiBLZWVwIHdvcmtxdWV1ZSBvcGVyYXRpb25zIG91dHNpZGUgdGltZXN0YW1wX2xvY2s7
IHRoZSBJUlEgYW5kIHJlc3RhcnQKPiBwYXRocyBhbHJlYWR5IHNlcmlhbGl6ZSBzdGFydCBhbmQg
c3RvcC4gU3luY2hyb25vdXMgc3RvcCB3YWl0cyBmb3IgdGhlCj4gY2FsbGJhY2sgYmVmb3JlIHJl
aW5pdGlhbGl6YXRpb24gb3IgY2xvY2sgc2h1dGRvd24uCj4KPiBGaXhlczogNGUxYTE4YmFiMTI0
ICgiY2FuOiByb2NrY2hpcF9jYW5mZDogYWRkIGhhcmR3YXJlIHRpbWVzdGFtcGluZyBzdXBwb3J0
IikKPiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwoKW1NldmVyaXR5OiBMb3ddClRoaXMgZG9l
c24ndCBhZmZlY3QgdGhlIGN1cnJlbnQgdHJlZSwgYnV0IHNob3VsZCB0aGlzIHBhdGNoIHNheSB0
aGF0Cml0IGRlcGVuZHMgb24gdGhlIHByZXZpb3VzIGNvbW1pdCwgImNhbjogcm9ja2NoaXBfY2Fu
ZmQ6IHNlcmlhbGl6ZSBUWAp3aXRoIGJ1cy1vZmYgYW5kIHJlc3RhcnQiPwoKVGhhdCBjb21taXQg
Y3JlYXRlZCB0aGUgb25lLXRpbWUgcHJvYmUgaGVscGVyIHRoYXQgdGhpcyBwYXRjaCBleHRlbmRz
LgpJdCBtb3ZlZCBJTklUX0RFTEFZRURfV09SSygpIG91dCBvZiBya2NhbmZkX3RpbWVzdGFtcF9p
bml0KCksIHdoaWNoCnJ1bnMgb24gZXZlcnkgY2hpcCBzdGFydC4gV2l0aCB0aGlzIHBhdGNoLCBy
a2NhbmZkX3RpbWVzdGFtcF93b3JrX2luaXQoKQppbiByb2NrY2hpcF9jYW5mZC10aW1lc3RhbXAu
YyBiZWNvbWVzOgoKCXNwaW5fbG9ja19pbml0KCZwcml2LT50aW1lc3RhbXBfbG9jayk7Cglwcml2
LT50aW1lc3RhbXBfYWN0aXZlID0gZmFsc2U7CglJTklUX0RFTEFZRURfV09SSygmcHJpdi0+dGlt
ZXN0YW1wLCBya2NhbmZkX3RpbWVzdGFtcF93b3JrKTsKCWRpc2FibGVfZGVsYXllZF93b3JrKCZw
cml2LT50aW1lc3RhbXApOwoKVGhyZWUgY2FsbHMgbmVlZCB0byBzdGF5IGJhbGFuY2VkOiB0aGUg
ZGlzYWJsZSBhdCBwcm9iZSwKZW5hYmxlX2RlbGF5ZWRfd29yaygpIGluIHJrY2FuZmRfdGltZXN0
YW1wX3N0YXJ0KCksIGFuZApkaXNhYmxlX2RlbGF5ZWRfd29yaygpIGluIHJrY2FuZmRfdGltZXN0
YW1wX3N0b3AoKS4gVGhhdCBvbmx5IHdvcmtzIGlmCnRoZSB3b3JrIGlzIGluaXRpYWxpemVkIGV4
YWN0bHkgb25jZS4KClRoZSBzZW50ZW5jZSAidGhlIElSUSBhbmQgcmVzdGFydCBwYXRocyBhbHJl
YWR5IHNlcmlhbGl6ZSBzdGFydCBhbmQKc3RvcCIgYWxzbyByZWxpZXMgb24gdGhhdCBjb21taXQu
IEl0IGFkZGVkIHRoZSByZXN0YXJ0IHF1aWVzY2luZyBpbgpya2NhbmZkX3NldF9tb2RlKCkgZm9y
IENBTl9NT0RFX1NUQVJUOgoKCVdSSVRFX09OQ0UocHJpdi0+aXJxX3N1c3BlbmRlZCwgdHJ1ZSk7
CgkvKiBXYWl0IGZvciBoYW5kbGVycyB0aGF0IGFscmVhZHkgcGFzc2VkIHRoZSBzdXNwZW5kZWQg
Y2hlY2suICovCglzeW5jaHJvbml6ZV9pcnEobmRldi0+aXJxKTsKCXJrY2FuZmRfdGltZXN0YW1w
X3N0b3Bfc3luYyhwcml2KTsKCldpdGhvdXQgdGhlIHByZXJlcXVpc2l0ZSwgdGhpcyBwYXRjaCB3
b24ndCBhcHBseSB0byBzdGFibGUgdHJlZXMuClN1cHBvc2UgYSBiYWNrcG9ydCBmaXhlcyB0aGUg
Y29uZmxpY3QgYnkgaGFuZCBhbmQgbGVhdmVzCklOSVRfREVMQVlFRF9XT1JLKCkgaW4gcmtjYW5m
ZF90aW1lc3RhbXBfaW5pdCgpLiBUaGVuIGV2ZXJ5IGNoaXAgc3RhcnQKcmVzZXRzIHRoZSBkaXNh
YmxlIGNvdW50IHRvIDAganVzdCBiZWZvcmUgZW5hYmxlX2RlbGF5ZWRfd29yaygpIHJ1bnMuClRo
YXQgd291bGQgdHJpZ2dlciB0aGUgd29ya3F1ZXVlIGRpc2FibGUgY291bnQgdW5kZXJmbG93IHdh
cm5pbmcgYW5kCnVuZG8gdGhlIHJlcXVldWUgYmxvY2tpbmcgYWRkZWQgaGVyZS4KClRoZSBwcmVy
ZXF1aXNpdGUgaXMgaW4gdGhlIHNhbWUgc2VyaWVzIGFuZCBpcyBhbHNvIENjOiBzdGFibGUsIHNv
CnN0YWJsZSB0b29saW5nIHdvdWxkIG5vcm1hbGx5IGFwcGx5IGJvdGggaW4gb3JkZXIuIENvdWxk
IHRoZSBkZXBlbmRlbmN5CnN0aWxsIGJlIG1hZGUgZXhwbGljaXQ/IEEgcHJlcmVxdWlzaXRlIG5v
dGUgb24gdGhlIENjOiBzdGFibGUgbGluZSwgYXMKc3RhYmxlLWtlcm5lbC1ydWxlcy5yc3QgZGVz
Y3JpYmVzLCBvciBhICJCYWNrcG9ydHMgbXVzdCBpbmNsdWRlIC4uLiIKbGluZSB3b3VsZCBkbyBp
dC4KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL25ldGRldi1haS5ib3RzLmxpbnV4
LmRldi9zYXNoaWtvLyMvcGF0Y2hzZXQvMjAyNjExMTEtcm9ja2NoaXAtY2FuZmQtcmVzdGFydC1j
bG9zZS12OS0wLTY2NDNmMzgyNWJhMyU0MHFxLmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
