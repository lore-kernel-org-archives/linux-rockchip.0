Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FD46606A31B
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Oct 2026 12:53:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=x771//JY;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=AFcHvXIh
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=KNtMo+MYP3CAuAxDXmtaAauhJEjTNj7Gl8YH0oupZUA=; b=x771//JYQO/yfMNQ64K79S8PWF
	RnBh9k6O9jOSmJVDUugBwpExFYQ8SE3YW7mVkZUauwE8YeWBWsAp/R5LZ0wHo+utKEY/lyWH9tN4C
	rpvMXRrdEI+PfiH1D7IMX+sK2NU47wPoQmhqq3xALM68y2diyYv8KVJGwQifiKoBCMziCKHSX+e1J
	xCRMYTs7oemX/q0I1+/Kdjdb1kcilCdxh8nUQSIgJWtWPZ31sqyqaX2TU+BqRbL2mqiNhzYygtuLX
	iuHA8LI5tM9P7R3Kdi2R4uUj9mCwVs3C27E5Doi3hnsEvnTLwo6Iq6J1jKHoIA0hTgvw90abMA8gg
	Xu9vdZZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLggK-00000004ipL-3tnc;
	Tue, 27 Oct 2026 12:53:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLggG-00000004ioG-2PML;
	Tue, 27 Oct 2026 12:53:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=B3x+ve/3y8894hAz6Kf2M5B/2DKTWxmuPKSuFN/yyCo=; b=AFcHvXIhhGrKyfs9/MEEb2VHHP
	lneMt/MX28F0QNNgpDxTH+e7aeEYK1POI8mqG8oTD43odd/FssBI+at/TdQ46iYEWIhqQ9yAPEbki
	Zbv2J/jbVy0uXNymHAnB/CV1ql7+G7KKNLb+FM842Fs6NjFIVaUit6rp22B3MoT/ywKS60BfjzyP7
	qh2V/aPdZo+EXMYESreOURbgACsTKgBGqaHXbLjlJMsEf1RGP2ktznToxAwVwAxP6bEWaCaqcc5qR
	uBr8u2AlPqAx/n0iNfz29QRJgICC9ID81sbIPpdEJ4NARgRxkpmtgkY776RdUolbbVG5kL/UgIxZ5
	zs+Hxbag==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Cunhao Lu <1579567540@qq.com>, Krzysztof Kozlowski <krzk@kernel.org>
Cc: Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney+clk@redhat.com>,
 Jerome Brunet <jbrunet+clk@baylibre.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 Richard Cochran <richardcochran@gmail.com>, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
Subject: Re: [PATCH v3 1/3] dt-bindings: clock: rockchip: Add RK3572 CRU
Date: Tue, 27 Oct 2026 13:53:18 +0100
Message-ID: <22145329.0c2gjJ1VT2@diego>
In-Reply-To: <c1fc1868-5583-420f-b945-2bf934873713@kernel.org>
References: <20261026-add-board-ok3572-c-clk-v3-0-dbabfa39d692@qq.com>
 <3011736.yaVYbkx8dN@diego> <c1fc1868-5583-420f-b945-2bf934873713@kernel.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_055332_669204_C9B69A11 
X-CRM114-Status: GOOD (  23.28  )
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
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

QW0gRGllbnN0YWcsIDI3LiBPa3RvYmVyIDIwMjYsIDEyOjA3OjEyIE1pdHRlbGV1cm9ww6Rpc2No
ZSBOb3JtYWx6ZWl0IHNjaHJpZWIgS3J6eXN6dG9mIEtvemxvd3NraToKPiBPbiAyNy8xMC8yMDI2
IDExOjQzLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiA+IEFtIERpZW5zdGFnLCAyNy4gT2t0b2Jl
ciAyMDI2LCAxMToxNzowOCBNaXR0ZWxldXJvcMOkaXNjaGUgTm9ybWFsemVpdCBzY2hyaWViIEty
enlzenRvZiBLb3psb3dza2k6Cj4gPiAKPiA+IFdpdGggY29kZSBvcmlnaW5hdGluZyBpbiB0aGUg
dmVuZG9yIGtlcm5lbCwgaXQgaXMgbmljZSB0byBrbm93IHdoYXQgY2hhbmdlZCwKPiA+IGJ1dCBJ
IGd1ZXNzIHRoZXJlIGlzIGEgdHJhZGVvZmYgYmV0d2VlbiBicmV2aXR5IGFuZCBtb3JlIGRldGFp
bHMuCj4gCj4gSG9uZXN0bHkgSSBkaXNhZ3JlZSA6KS4gVmVuZG9yIGtlcm5lbCBjb21taXRzIGFu
ZCB0aGVpciBtZXNzYWdlcyBhcmUKPiBpcnJlbGV2YW50IHBlciBzZS4gVGhleSBhcmUgb25seSB1
c2VmdWwgYXMgc291cmNlIG9mIGtub3dsZWRnZSwgYnV0IHdoYXQKPiB3YXMgZXhhY3RseSB3cml0
dGVuIHRoZXJlIGRvZXMgbm90IG1hdHRlci4gUXVhbGl0eSBpcyBkdWJpb3VzLCBjb2RpbmcKPiBw
cmFjdGljZXMgYXJlIHRlcnJpYmxlLiBXZSB3YW50IHRvIGV4dHJhY3QgdGhlIGtub3dsZWRnZSwg
dGhlIGltcG9ydGFudAo+IGRldGFpbHMsIGJ1dCBub3QgdGhlIGV4YWN0IGNvbW1pdC4gV2UgZG8g
bm90IGNhcmUgd2hhdCBjaGFuZ2VkIGZyb20KPiBkb3duc3RyZWFtIHRvIHVwc3RyZWFtLCBiZWNh
dXNlIHdlIGtub3cgdGhhdCBkb3duc3RyZWFtIHN1Y2tzIHNvIG11Y2gKPiB0aGF0IHdlIGRvbid0
IGV2ZW4gd2FudCB0byB0b3VjaCBpdC4KCkhlcmUgSSBwYXJ0aWFsbHkgZGlzYWdyZWUgOi0pIC4K
CldlIHRyYWluZWQgUm9ja2NoaXAgc29tZXdoYXQgd2VsbCBvdmVyIHRoZSB5ZWFycyBpbiB0aGF0
IGZvciBleGFtcGxlCnRoZSBwZXItc29jIGNsb2NrIGRyaXZlcnMgZml0IHF1aWV0IG5pY2VseSBp
bnRvIHRoZSB1cHN0cmVhbSBmcmFtZXdvcmssCmFzIGJvdGggc2lkZXMgZm9sbG93IHRoZSBtYWlu
bGluZSBkcml2ZXIgc3RydWN0dXJlIEkgZGlkIGluIDIwMTMKKHdoaWNoIGlzIHN0aWxsIHN1cnBy
aXNpbmcgdGhhdCB0aGF0IG1vc3RseSBob2xkcykuCgpCdXQgeW91J3JlIHJpZ2h0IGZvciBvdGhl
ciBwYXJ0cyBsaWtlIHRoZSB3aG9sZSBncmFwaGljcyBzdGFjaywgd2hpY2gKZGl2ZXJ0ZWQgc28g
bXVjaCBmcm9tIG1haW5saW5lIHRoYXQgdGhpbmdzIGNhbid0IGdldCB0cmFuc3BsYW50ZWQgYXQg
YWxsLgoKCj4gPiBJIGd1ZXNzIHRoaXMgY291bGQgYmUgc2hvcnRlZCB0byBzb21ldGhpbmcgbGVz
cyB2ZXJib3NlLCBsaWtlCj4gPiAKPiA+ICsrKysrKysrKysrKysKPiA+IFNpZ25lZC1vZmYtYnk6
IEVsYWluZSBaaGFuZyA8emhhbmdxaW5nQHJvY2stY2hpcHMuY29tPgo+ID4gW2FkYXB0ZWQgdG8g
bWFpbmxpbmUgcm9ja2NoaXAgY2xvY2sgYW5kIHJlc2V0IGhhbmRsaW5nICh4aW4yNG0gaW5wdXQs
Cj4gPiAgIGRvbid0IGludHJvZHVjZSBDTEtfTlJfQ0xLUywgZXRjIF0KPiA+IFNpZ25lZC1vZmYt
Ynk6IEN1bmhhbyBMdSA8MTU3OTU2NzU0MEBxcS5jb20+Cj4gPiArKysrKysrKysrKysrCj4gCj4g
WWVzLCBpZiB0aGlzIGJyaW5ncyBhbnl0aGluZyB1c2VmdWwuIEZvciBleGFtcGxlIHJlbW92YWwg
b2YgQ0xLX05SX0NMS1MKPiBpcyBjb21wbGV0ZWx5IHBvaW50bGVzcyB0byBtZW50aW9uLiBIb3cg
ZG9lcyBpdCBleHBsYWluIHRoZSBoYXJkd2FyZSBvcgo+IGRlc2lnbiBjaG9pY2VzPyBIb3cgZG9l
cyBpdCBleHBsYWluIHdoeSB0aGlzIGRyaXZlciB3YXMgd3JpdHRlbiB0aGF0IG9yCj4gb3RoZXIg
d2F5Pwo+IAo+IEp1c3QgdGFrZSB0aGUgYXV0aG9yc2hpcCBvZiBkb3duc3RyZWFtIGNvbW1pdHMg
YW5kIHNlbmQgdGhlbSBhcyB5b3VyCj4gb3duLiBCb3RoIEdQTCBhbmQgRENPIGFsbG93IHRoaXMg
YW5kIGlmIGRvd25zdHJlYW0gZGlkIG5vdCBib3RoZXIgdG8KPiB1cHN0cmVhbSB0aGF0IHN0dWZm
LCB0aGV5IGRvIG5vdCBkZXNlcnZlIGNyZWRpdHMuCgpTbyBwZXJzb25hbGx5IEkgZG8gYmVsaWV2
ZSBpbiBnaXZpbmcgY3JlZGl0IHdoZXJlIGNyZWRpdCBpcyBkdWUgYW5kCnRyeWluZyB0byBtYWtl
IHRoZW0gYmV0dGVyIGNpdGl6ZW5zIGluc3RlYWQgb2YganVzdCB0ZWxsaW5nIHRoZSB2ZW5kb3IK
InlvdXIgY29kZSBzdWNrcyIgOy0pIC4KCgpUaGUgYXV0aG9yc2hpcCBxdWVzdGlvbiBpcyBsaWtl
bHkgbm90IGFzIHJlbGV2YW50IGZvciB0aGUgYmluZGluZywgYnV0CmZvciBleGFtcGxlIGZvciB0
aGUgY2xvY2sgZHJpdmVyIGl0c2VsZiwgd2hlcmUgRWxhaW5lIGRpZCBtb3N0IG9mIHRoZQp3b3Jr
IG1hdGNoaW5nIHRoZSBoYXJkd2FyZS0gZGVzY3JpcHRpb24gdG8gdGhlIGNsb2NrIHN0cnVjdHVy
ZSwgSSAgcmVhbGx5CmJlbGlldmUgdGhhdCBFbGFpbmUgc2hvdWxkIGdldCBjcmVkaXQgZm9yIHRo
YXQuCgoKSGVpa28KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
