Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0ABE606A328
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Nov 2026 10:26:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=aMfOJCBP;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=A+8t5vjZ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Sz8N6pbYSmqsCd7OGTsSUzb4tT9hnLEvvb0Rw2k99lI=; b=aMfOJCBPb5cscIZJSBp3tOUQVG
	/NFcW+Yc7zq/nYJH8PKqF0kETBkLZGcPl2PWB8RW0qgmiBkgtpSbp9Eaww9y8E4r96v8CYkPEqC5l
	cboZYHxyGyAsyTg+j0QfSxPJhszooKk0DS0vK2wmtTUIaKicJh9kVQA3HQME0YreMJJZniyeGWxGe
	loclveXyXbZAXmHfhagK7BFyAIqHRU98V3/tTbpL2r0Q+blZ4di04gglW9qr1DXuG+l8EtWP6pkn5
	e4dukjyrDaSDZ2RcR8exTn3sZx19f5ufkBnPemECC15nPMXaG/wDxAHc/7CU3jdDdOJE9b8AdHaNA
	fgO//wWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOYBp-00000004zd9-1Zoi;
	Wed, 04 Nov 2026 10:25:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOYBm-00000004zc0-2Y3p;
	Wed, 04 Nov 2026 10:25:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=uRrdt0oAcAPfS+w2dQ61HkrI15khdaUCiJ5g7tU0p+Q=; b=A+8t5vjZqpreZvPSLqn2rWHCfk
	n20HzKOydnfedJfrqrbJoETErbWXGYMoVDxPotfS+pj30dhVa9kgt9ioE3h2XT9i+o0G+8YdGkx94
	c3QBYW5k2mk+ni5jhkwtbJ0XyA5dPKbn2W67WeyaIRUJ548XcG9M2F372a+JG9Z4saOhjOzo+w3oC
	eyhS0ZoraybqUEcq+Rs1ShIc64rINHDJig5KDlfjZqHUgloCWhUZhfDAow0U/X/rkbraLV4ZTsUbE
	L8NNkvSjhwcAGWUz3HAevwzEEWEfjFK3ykebZUp2dFTL+4ugzZ2Y132qKzJFggyFXmgKN48nvtd3S
	d5ApHuFg==;
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
Subject: Re: [PATCH v15 04/15] accel/rocket: let the core suspend after a reset
Date: Wed, 04 Nov 2026 11:25:30 +0100
Message-ID: <3373678.NnENhoQgcM@diego>
In-Reply-To: <20261101082307.151957-5-gahing@gahingwoo.com>
References: <20261101082307.151957-1-gahing@gahingwoo.com>
 <20261101082307.151957-5-gahing@gahingwoo.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261104_022554_650177_ECCA7A91 
X-CRM114-Status: GOOD (  17.52  )
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

QW0gU29ubnRhZywgMS4gTm92ZW1iZXIgMjAyNiwgMDk6MjI6NTYgTWl0dGVsZXVyb3DDpGlzY2hl
IE5vcm1hbHplaXQgc2NocmllYiBKaWF4aW5nIEh1Ogo+IHJvY2tldF9yZXNldCgpIGRyb3BzIHRo
ZSBpbi1mbGlnaHQgam9iJ3MgcnVudGltZSBQTSByZWZlcmVuY2Ugd2l0aAo+IHBtX3J1bnRpbWVf
cHV0X25vaWRsZSgpLCB3aGljaCByZXF1ZXN0cyBub3RoaW5nLCBzbyB0aGUgY29yZSBkb2VzIG5v
dAo+IHN1c3BlbmQgdW50aWwgc29tZXRoaW5nIGVsc2UgYXNrcyBhbmQgaXRzIHBvd2VyIGRvbWFp
biBkb2VzIG5vdCBjeWNsZS4gT24KPiBSSzM1NzYgdGhlIGRvbWFpbidzIHBvd2VyLW9uIHJlc2V0
cyB0aGUgTlBVIGJ1cyBpbnRlcmZhY2U7IHdpdGhvdXQgaXQgdGhlCj4gSU9NTVUgc3RvcHMgYW5z
d2VyaW5nIGFuZCB0aGUgam9iIGFmdGVyIGEgdGltZW91dCBmYWlscy4KPiAKPiBVc2UgcG1fcnVu
dGltZV9wdXRfYXV0b3N1c3BlbmQoKSwgYXMgdGhlIGNvbXBsZXRpb24gcGF0aCBkb2VzLiBPbiBh
IFJPQ0sgNEQKPiB0aGUgam9iIGFmdGVyIGEgdGltZW91dCBnb2VzIGZyb20gMCB0byAxMjggb2Yg
MTI4IGNoYW5uZWxzIGNvcnJlY3QuCj4gCj4gTGluazogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
YWxsLzIwMjYwODE5MDczNTMwLjYwODctMS1yb3lhbG5ldDAyNkBnbWFpbC5jb20vCj4gRml4ZXM6
IDA4MTBkNWFkODhhMSAoImFjY2VsL3JvY2tldDogQWRkIGpvYiBzdWJtaXNzaW9uIElPQ1RMIikK
PiBTaWduZWQtb2ZmLWJ5OiBKaWF4aW5nIEh1IDxnYWhpbmdAZ2FoaW5nd29vLmNvbT4KPiBUZXN0
ZWQtYnk6IElnb3IgUGF1bm92aWMgPHJveWFsbmV0MDI2QGdtYWlsLmNvbT4gIyBSSzM1ODgsIHRo
cmVlIGNvcmVzLCBpbmR1Y2VkIHJlc2V0LCBKT0JfVElNRU9VVF9NUz0yCj4gLS0tCj4gIGRyaXZl
cnMvYWNjZWwvcm9ja2V0L3JvY2tldF9qb2IuYyB8IDYgKysrLS0tCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvYWNjZWwvcm9ja2V0L3JvY2tldF9qb2IuYyBiL2RyaXZlcnMvYWNjZWwvcm9ja2V0L3JvY2tl
dF9qb2IuYwo+IGluZGV4IDViMmFiZjQwYjYxOC4uMTUyYTkwOTg2MzRiIDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvYWNjZWwvcm9ja2V0L3JvY2tldF9qb2IuYwo+ICsrKyBiL2RyaXZlcnMvYWNjZWwv
cm9ja2V0L3JvY2tldF9qb2IuYwo+IEBAIC00NjcsMTIgKzQ2NywxMiBAQCByb2NrZXRfcmVzZXQo
c3RydWN0IHJvY2tldF9jb3JlICpjb3JlLCBzdHJ1Y3QgZHJtX3NjaGVkX2pvYiAqYmFkKQo+ICAK
PiAgCS8qCj4gIAkgKiBObyBoYW5kbGVyIGlzIHJ1bm5pbmcgbm93LCBidXQgd2UgbWlnaHQgc3Rp
bGwgaGF2ZSBzdHVjayBqb2JzLiBMZXQncwo+IC0JICogbWFrZSBzdXJlIHRoZSBQTSBjb3VudGVy
cyBzdGF5IGJhbGFuY2VkIGJ5IG1hbnVhbGx5IGNhbGxpbmcKPiAtCSAqIHBtX3J1bnRpbWVfcHV0
X25vaWRsZSgpLgo+ICsJICogbWFrZSBzdXJlIHRoZSBQTSBjb3VudGVycyBzdGF5IGJhbGFuY2Vk
IGJ5IHB1dHRpbmcgdGhlIHJlZmVyZW5jZSB0aGUKPiArCSAqIGpvYiB0b29rLCBhbmQgcmVxdWVz
dCBpZGxlIHdoaWxlIGRvaW5nIGl0IHNvIHRoZSBjb3JlIGNhbiBzdXNwZW5kLgo+ICAJICovCgp3
aXRoIG15IGNvbW1lbnQgaW4gcGF0Y2ggMy8xNSBmaXhlZAoKUmV2aWV3ZWQtYnk6IEhlaWtvIFN0
dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+Cgo+ICAJc2NvcGVkX2d1YXJkKG11dGV4LCAmY29yZS0+
am9iX2xvY2spIHsKPiAgCQlpZiAoY29yZS0+aW5fZmxpZ2h0X2pvYikKPiAtCQkJcG1fcnVudGlt
ZV9wdXRfbm9pZGxlKGNvcmUtPmRldik7Cj4gKwkJCXBtX3J1bnRpbWVfcHV0X2F1dG9zdXNwZW5k
KGNvcmUtPmRldik7Cj4gIAo+ICAJCWlvbW11X2RldGFjaF9ncm91cChOVUxMLCBjb3JlLT5pb21t
dV9ncm91cCk7Cj4gIAo+IAoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
