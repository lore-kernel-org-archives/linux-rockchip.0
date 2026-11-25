Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87A5A606A329
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2026 20:38:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Chh/MiQk;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=LYGMw0Qv
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=PPIJbo14MONwZd8cP5cELkEV4prXG6fqRldqAaJ0cTc=; b=Chh/MiQk+ERSl+TnQgWYr8pBLL
	aD4+oIm8y21+qEqV1KHz4oP1hHaiA3VEWzpA9N7DMasJb4pKQOk0usMQjj9x2GLk5JUjlNMsA4cIQ
	L/8jjZdYW3L9sHd/sc4KO0b5MtvGf6TSSD1HJwmGaLxGBMqkHnsCL/UDgzGdIDcdibnAeCI6+yfFp
	1mEENrRMuMkNuzRhHRIDCt17fUm0PbPkDrWsiO/4CBrSObz3VdFwxkHSmkwQC95ju2i7Qm4TKBsVo
	tHKFZq8xMyGMet+jqpmI5xKnE3hS1BvUFqqXcAz7q/DK8aSgcD5XRTeipAOvLuBfE6FsEWkZxqrWn
	5CMbgMVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWJkg-0000000BIIX-01r0;
	Wed, 25 Nov 2026 20:38:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWJkd-0000000BII4-1lUm;
	Wed, 25 Nov 2026 20:38:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=FFJHi0dR0AO+OEGY4MeKs6pRNpL3MVWLGWF8iylf3Yc=; b=LYGMw0QvymQY6YdmN62UkknNG+
	Z+Lx1xbk1xdhB9GBln5d+V3iP61i9cFgCMFolwNC+rZeDR7YPZgkxRsuJNrBA4TzXeQOGM1laPY75
	lTW1mhlH1CPhVOQI8S/8dQNBUusr/ThV/HAqxP6Fq9atMkvCeghkY5r+B/tmh+QueDocp1SJMTWXx
	LKB58IPgucu2wfPcQxDtzU3D83KuWKaqu83RZRkAlGLzvzMZvObkvGOQne6zSrXzcOAdrLeBh8foZ
	Am09wnn7SVUWi4R0ot8fFx+ZB8r3QhxGNDrge7sy6S7sc5SO65Qx27kk0y33glvAWrsxdiwgNJlIv
	hnVdJwDw==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Midgy Balon <midgy971@gmail.com>,
 Chaoyi Chen <chaoyi.chen@rock-chips.com>,
 Diederik de Haas <diederik@cknow-tech.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 Freimut Diener <f.diener@pengutronix.de>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Freimut Diener <f.diener@pengutronix.de>
Subject: Re: [PATCH 1/2] dt-bindings: power: rockchip: Allow post-init-providers for
 domains
Date: Wed, 25 Nov 2026 21:37:49 +0100
Message-ID: <oJj2NKd1Svmsn320H8YWrg@sntech.de>
In-Reply-To: <20261125-rock5t-regulator-deps-v1-1-6a3470ad1855@pengutronix.de>
References: <20261125-rock5t-regulator-deps-v1-0-6a3470ad1855@pengutronix.de>
 <20261125-rock5t-regulator-deps-v1-1-6a3470ad1855@pengutronix.de>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_123759_489586_60DD8C3C 
X-CRM114-Status: GOOD (  14.97  )
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
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

QW0gTWl0dHdvY2gsIDI1LiBOb3ZlbWJlciAyMDI2LCAxMTozMzo1NyBNaXR0ZWxldXJvcMOkaXNj
aGUgTm9ybWFsemVpdCBzY2hyaWViIEZyZWltdXQgRGllbmVyOgo+IEEgUm9ja2NoaXAgcG93ZXIg
ZG9tYWluIGNhbiBoYXZlIGEgc3VwcGx5IHRoYXQgaXMgcmVxdWlyZWQgd2hlbgo+IHBvd2VyaW5n
IG9uIHRoZSBkb21haW4gYnV0IGlzIG5vdCByZXF1aXJlZCB0byBpbml0aWFsaXplIHRoZSBwb3dl
cgo+IGNvbnRyb2xsZXIuCj4gCj4gQWxsb3cgcG9zdC1pbml0LXByb3ZpZGVycyBvbiBwb3dlci1k
b21haW4gY2hpbGQgbm9kZXMgdG8gZGVzY3JpYmUKPiBzdWNoIGRlcGVuZGVuY2llcy4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBGcmVpbXV0IERpZW5lciA8Zi5kaWVuZXJAcGVuZ3V0cm9uaXguZGU+CgpJ
bnRlcmVzdGluZyB0aGF0IHRoaXMgZXhpc3RzIHNpbmNlIDIwMjQgYW5kIHRoaXMgd2lsbCBiZSB0
aGUgZmlyc3QKdXNlciBpdCBzZWVtcy4KCkkndmUgbG9va2VkIGF0IHRoZSBkdHNjaGVtYSBmb3Ig
aXQsIGFuZCB0aGlzIGxvb2tzIHJlYWxseSBncmVhdCBmb3IgdGhpcy4KClJldmlld2VkLWJ5OiBI
ZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgoKCj4gLS0tCj4gIERvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9wb3dlci9yb2NrY2hpcCxwb3dlci1jb250cm9sbGVyLnlhbWwg
fCAzICsrKwo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdp
dCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wb3dlci9yb2NrY2hpcCxwb3dl
ci1jb250cm9sbGVyLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcG93
ZXIvcm9ja2NoaXAscG93ZXItY29udHJvbGxlci55YW1sCj4gaW5kZXggYjQxZGI1NzZmOTVkZS4u
ZDJiNTEyZGQ5NWY2MyAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvcG93ZXIvcm9ja2NoaXAscG93ZXItY29udHJvbGxlci55YW1sCj4gKysrIGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bvd2VyL3JvY2tjaGlwLHBvd2VyLWNvbnRyb2xs
ZXIueWFtbAo+IEBAIC0xNDcsNiArMTQ3LDkgQEAgJGRlZnM6Cj4gICAgICAgICAgICBBIG51bWJl
ciBvZiBwaGFuZGxlcyB0byBxb3MgYmxvY2tzIHdoaWNoIG5lZWQgdG8gYmUgc2F2ZWQgYW5kIHJl
c3RvcmVkCj4gICAgICAgICAgICB3aGlsZSBwb3dlciBkb21haW4gc3dpdGNoZXMgc3RhdGUuCj4g
IAo+ICsgICAgICBwb3N0LWluaXQtcHJvdmlkZXJzOgo+ICsgICAgICAgICRyZWY6IC9zY2hlbWFz
L3Bvc3QtaW5pdC1wcm92aWRlcnMueWFtbCMvcHJvcGVydGllcy9wb3N0LWluaXQtcHJvdmlkZXJz
Cj4gKwo+ICAgICAgICAiI3Bvd2VyLWRvbWFpbi1jZWxscyI6Cj4gICAgICAgICAgZW51bTogWzAs
IDFdCj4gICAgICAgICAgZGVzY3JpcHRpb246Cj4gCj4gCgoKCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
