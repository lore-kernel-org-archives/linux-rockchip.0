Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D978606A328
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2026 22:34:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Q3CpbbiZ;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=VjdJDFys
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=gdv2a3l2L9cgY0aiOfQGFoqHbm2bwZpwcLkdu5GUbF0=; b=Q3CpbbiZzfLvvF6Z6w0EhPiA3t
	Il+0A9ZGpD+tSwehqr/q3Hk6MC/SxN355jmBFMmXDdTH20kW0HDhwzQUuZJvUlqde021vd7/4+duI
	ws0Ij6V9bC+qx+20GysmxMJYsPfseyyNgmZS7GCEUjuysEX632Mq0KXg8XWvGm4j9lEv5MkQfUbVq
	D6stN2KmebNPOZoclyNJcfGiaUxtoQAt2K8z5r43bLQbudMUW8RvOGedma2sNTkWDKst+BqNy1cEl
	UxJ6Qxo6Sv0e5Qa49RRI6a6un7AdJj95Oy9peQfh7+kg3RPqpYNXCoQSJEHOPe2LeqyixBehbpDFn
	rrmAhpVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xON5V-00000003rJl-1b2S;
	Tue, 03 Nov 2026 22:34:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xON5S-00000003rJ6-2h77;
	Tue, 03 Nov 2026 22:34:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=mUVAYeIeS0pGb++9O7IAV5dyWYaWTCaE2wpCDRchVW4=; b=VjdJDFyskLCLPZlvGcegvYUdtF
	+OTeh3I0nCog7bs/WfDEV64J1B5qA7R1NWQ8hZWr256a6gHP3zQxK4CvdVfM2HopgnLlIF0hutX6P
	1IE5pccn3hwjD2EhdDExhb/EtmNTXPuOYI2LERzqMeo+zXX+V6mbgRO7J1ehgqzQr60hncPg0oY6H
	eyZ8S/WMRM80RLeUWRR+RN58B3frtNwnUjiSKKyFffCP1Vt0UjEYUx5LTGQUYYg2sUEU+QRaEV6Cw
	5+bqAhJzyAC6wOn0AfHdBdjjQvxQsg9QGWRYWEnC7k6zo7mJ2JrH14y5Ua/RbrxzTiFqjAagRdV1l
	/2XSHJzQ==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: tomeu@tomeuvizoso.net, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, joro@8bytes.org, will@kernel.org, robin.murphy@arm.com,
 ulfh@kernel.org, p.zabel@pengutronix.de, ogabbay@kernel.org,
 zhangqing@rock-chips.com, Jiaxing Hu <gahing@gahingwoo.com>
Cc: royalnet026@gmail.com, abel.vesa@oss.qualcomm.com,
 sebastian.reichel@collabora.com, sidong.yang@furiosa.ai,
 u.kleine-koenig@baylibre.com, chaoyi.chen@rock-chips.com,
 diederik@cknow-tech.com, alchark@flipper.net, leonard@lausen.nl,
 jeff.hugo@oss.qualcomm.com, rfoss@kernel.org,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 iommu@lists.linux.dev, linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Jiaxing Hu <gahing@gahingwoo.com>
Subject: Re: [PATCH v15 09/15] pmdomain: rockchip: add optional per-domain power-on
 settle delay
Date: Tue, 03 Nov 2026 23:34:12 +0100
Message-ID: <1846076.jNaZZp9DzI@diego>
In-Reply-To: <20261101082307.151957-10-gahing@gahingwoo.com>
References: <20261101082307.151957-1-gahing@gahingwoo.com>
 <20261101082307.151957-10-gahing@gahingwoo.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_143438_681159_9B45A505 
X-CRM114-Status: GOOD (  10.99  )
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

QW0gU29ubnRhZywgMS4gTm92ZW1iZXIgMjAyNiwgMDk6MjM6MDEgTWl0dGVsZXVyb3DDpGlzY2hl
IE5vcm1hbHplaXQgc2NocmllYiBKaWF4aW5nIEh1Ogo+IFRoZSBSSzM1NzYgTlBVIGRvbWFpbnMg
bmVlZCBhIHNob3J0IHNldHRsZSB0aW1lIGFmdGVyIHRoZSBpZGxlIHJlcXVlc3QgaXMKPiByZWxl
YXNlZCBiZWZvcmUgdGhlIHJlZ2lzdGVycyBiZWhpbmQgdGhlIGRvbWFpbiBhbnN3ZXIuIFdpdGhv
dXQgaXQgdGhlIFFvUwo+IHdyaXRlcyB0aGF0IHJvY2tjaGlwX3BtdV9yZXN0b3JlX3FvcygpIGlz
c3VlcyBsYW5kIHdoaWxlIHRoZSBkb21haW4gaXMKPiBzdGlsbCBjb21pbmcgdXAsIGFuZCB0aGUg
TlBVIHRocm93cyBhbiBhc3luYyBTRXJyb3Igb24gdGhlIGZpcnN0IGNvbGQKPiBwb3dlci1vbi4K
PiAKPiBHaXZlIHJvY2tjaGlwX2RvbWFpbl9pbmZvIGFuIG9wdGlvbmFsIGRlbGF5X3VzIGFuZCB3
YWl0IGZvciBpdCBiZXR3ZWVuCj4gcmVsZWFzaW5nIGlkbGUgYW5kIHJlc3RvcmluZyBRb1MuIFJl
bmFtZSBET01BSU5fTV9PX1JfRyB0bwo+IERPTUFJTl9NX09fUl9HX1cgZm9yIHRoZSBzZXR0bGUg
ZGVsYXkgaXQgbm93IGNhcnJpZXM7IFJLMzU3NiBpcyBpdHMgb25seQo+IHVzZXIsIHNvIHRoZSBv
bGQgc3BlbGxpbmcgaXMgbm90IGtlcHQgYXJvdW5kLgo+IAo+IFRoZSBtYWNybyBhbHNvIHRha2Vz
IHRoZSByZWd1bGF0b3IgYXJndW1lbnQgRE9NQUlOX01fT19SIGFuZCBET01BSU5fTV9SCj4gYWxy
ZWFkeSBoYXZlLCBhbmQgUkszNTc2X1BEX05QVSBwYXNzZXMgdHJ1ZSwgc28KPiByb2NrY2hpcF9w
bV9hZGRfb25lX2RvbWFpbigpIHBvd2VycyB0aGF0IGRvbWFpbiBvZmYgYXQgcHJvYmUgYW5kIHRo
ZSBkZWxheQo+IHJ1bnMgb24gdGhlIGZpcnN0IHBvd2VyLW9uIGV2ZW4gd2hlbiBhIGJvb3Rsb2Fk
ZXIgbGVmdCB0aGUgTlBVIHVwLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEppYXhpbmcgSHUgPGdhaGlu
Z0BnYWhpbmd3b28uY29tPgo+IFJldmlld2VkLWJ5OiBBYmVsIFZlc2EgPGFiZWwudmVzYUBvc3Mu
cXVhbGNvbW0uY29tPgoKClJldmlld2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNo
LmRlPgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
