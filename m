Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13D50606A330
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Nov 2026 10:28:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=DP4ZGF3E;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=o5rbZXVq
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=XEohKn2ikoM8bqkMJUlD3RYtcvl03ILJ+RiX/lepoO4=; b=DP4ZGF3EDHLhc+7vZvbiJJxriY
	NOTKZuMv/qIOQ9qwMAFxRIz8pa0sS2IT2Q+zuANp2aB/ychCxjZ+3ITmHeZfgsAm52pcESPlhm5wn
	d0WIMh0s0jn8FWgF6KQExkmc9oNm2Wbb5OTiWgmhRCufO529dyEjgYze/D9jOXAaL0s1vCJr0vIVd
	KdA6TeC8N1jtDInb1CJZqT3hoLJLBNZMlqqKHsEERb3ZzXX/sVB4h1nxwX1mqWwg6/4m26IdmGMtO
	FK3+Cq0sIGck1p8x8Xvve9BmxsWVSoY1Xxw/VqwIWLZjorswOFOZdbKPEhiVB6g4UsZjixvzshkGi
	h6E5WX7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOYDv-0000000503U-17Mn;
	Wed, 04 Nov 2026 10:28:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOYDs-0000000502M-3DwL;
	Wed, 04 Nov 2026 10:28:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=GLaKKMhflH6c9HMj7tkIQiYSGOrte1eESSKQrGjfr70=; b=o5rbZXVqXBOPz9MgAOGvVCI9OH
	rfV9RhCslhaCfar5qBWNZHOGhTb40svSP/U9cZBARICeF1s85qeLm1BXEtT1FXRqf/AxyyViXG5JX
	uIkNbXx6TybQeiCckwatSpovab7geUmVJWT0K8/k6CSMM106OEhaJ5IuD+HJk93478dgXIlLq1V4r
	N9RVyxyPENrg82zAQ9/z5Ej+MN4xwZMgv64pxwVyEPWSqNSYhP4JmER2b3z8rz2+60vAtDieRB/ya
	3mLn1L8ZILnwjvn3P0wwDdv+BlF8gERII7sgsrW/Io66GFLsiGRYShcjIZh/lpt2g4xaPqN5nSVLE
	7GEI3XHg==;
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
Subject: Re: [PATCH v15 05/15] accel/rocket: factor the completion tail out of the IRQ
 handler
Date: Wed, 04 Nov 2026 11:27:41 +0100
Message-ID: <8888361.5OynTdThKG@diego>
In-Reply-To: <20261101082307.151957-6-gahing@gahingwoo.com>
References: <20261101082307.151957-1-gahing@gahingwoo.com>
 <20261101082307.151957-6-gahing@gahingwoo.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261104_022804_811134_C58738F4 
X-CRM114-Status: GOOD (  15.83  )
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

QW0gU29ubnRhZywgMS4gTm92ZW1iZXIgMjAyNiwgMDk6MjI6NTcgTWl0dGVsZXVyb3DDpGlzY2hl
IE5vcm1hbHplaXQgc2NocmllYiBKaWF4aW5nIEh1Ogo+IE1vdmUgdGhlIHBhcnQgb2Ygcm9ja2V0
X2pvYl9oYW5kbGVfaXJxKCkgdGhhdCBzdGFydHMgdGhlIG5leHQgdGFzayBvcgo+IHJldGlyZXMg
dGhlIGpvYiBpbnRvIHJvY2tldF9qb2JfbmV4dF9sb2NrZWQoKS4gTm8gZnVuY3Rpb25hbCBjaGFu
Z2UuCj4gCj4gU2lnbmVkLW9mZi1ieTogSmlheGluZyBIdSA8Z2FoaW5nQGdhaGluZ3dvby5jb20+
Cj4gUmV2aWV3ZWQtYnk6IElnb3IgUGF1bm92aWMgPHJveWFsbmV0MDI2QGdtYWlsLmNvbT4KCnRo
aXMgbWFrZXMgdGhlIGlycS1oYW5kbGVyIG1vcmUgZGVzY3JpcHRpdmUgaW4gd2hhdCBpdCBkb2Vz
CgpSZXZpZXdlZC1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KCj4gLS0tCj4g
IGRyaXZlcnMvYWNjZWwvcm9ja2V0L3JvY2tldF9qb2IuYyB8IDMxICsrKysrKysrKysrKysrKysr
KysrLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDIwIGluc2VydGlvbnMoKyksIDExIGRl
bGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2FjY2VsL3JvY2tldC9yb2NrZXRf
am9iLmMgYi9kcml2ZXJzL2FjY2VsL3JvY2tldC9yb2NrZXRfam9iLmMKPiBpbmRleCAxNTJhOTA5
ODYzNGIuLjQxN2Q1ZWYwNmMwOSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2FjY2VsL3JvY2tldC9y
b2NrZXRfam9iLmMKPiArKysgYi9kcml2ZXJzL2FjY2VsL3JvY2tldC9yb2NrZXRfam9iLmMKPiBA
QCAtMzY1LDYgKzM2NSwyNSBAQCBzdGF0aWMgc3RydWN0IGRtYV9mZW5jZSAqcm9ja2V0X2pvYl9y
dW4oc3RydWN0IGRybV9zY2hlZF9qb2IgKnNjaGVkX2pvYikKPiAgCXJldHVybiBFUlJfUFRSKHJl
dCk7Cj4gIH0KPiAgCj4gKy8qIFN0YXJ0IHRoZSBqb2IncyBuZXh0IHRhc2ssIG9yIHJldGlyZSBp
dC4gQ2FsbGVyIGhvbGRzIGpvYl9sb2NrLiAqLwo+ICtzdGF0aWMgdm9pZCByb2NrZXRfam9iX25l
eHRfbG9ja2VkKHN0cnVjdCByb2NrZXRfY29yZSAqY29yZSkKPiArewo+ICsJbG9ja2RlcF9hc3Nl
cnRfaGVsZCgmY29yZS0+am9iX2xvY2spOwo+ICsKPiArCWlmICghY29yZS0+aW5fZmxpZ2h0X2pv
YikKPiArCQlyZXR1cm47Cj4gKwo+ICsJaWYgKGNvcmUtPmluX2ZsaWdodF9qb2ItPm5leHRfdGFz
a19pZHggPCBjb3JlLT5pbl9mbGlnaHRfam9iLT50YXNrX2NvdW50KSB7Cj4gKwkJcm9ja2V0X2pv
Yl9od19zdWJtaXQoY29yZSwgY29yZS0+aW5fZmxpZ2h0X2pvYik7Cj4gKwkJcmV0dXJuOwo+ICsJ
fQo+ICsKPiArCWlvbW11X2RldGFjaF9ncm91cChOVUxMLCBpb21tdV9ncm91cF9nZXQoY29yZS0+
ZGV2KSk7Cj4gKwlkbWFfZmVuY2Vfc2lnbmFsKGNvcmUtPmluX2ZsaWdodF9qb2ItPmRvbmVfZmVu
Y2UpOwo+ICsJcG1fcnVudGltZV9wdXRfYXV0b3N1c3BlbmQoY29yZS0+ZGV2KTsKPiArCWNvcmUt
PmluX2ZsaWdodF9qb2IgPSBOVUxMOwo+ICt9Cj4gKwo+ICBzdGF0aWMgdm9pZCByb2NrZXRfam9i
X2hhbmRsZV9pcnEoc3RydWN0IHJvY2tldF9jb3JlICpjb3JlKQo+ICB7Cj4gIAlwbV9ydW50aW1l
X21hcmtfbGFzdF9idXN5KGNvcmUtPmRldik7Cj4gQEAgLTM3OCwxNyArMzk3LDcgQEAgc3RhdGlj
IHZvaWQgcm9ja2V0X2pvYl9oYW5kbGVfaXJxKHN0cnVjdCByb2NrZXRfY29yZSAqY29yZSkKPiAg
CQlyb2NrZXRfcGNfd3JpdGVsKGNvcmUsIE9QRVJBVElPTl9FTkFCTEUsIDB4MCk7Cj4gIAkJcm9j
a2V0X3BjX3dyaXRlbChjb3JlLCBJTlRFUlJVUFRfQ0xFQVIsIDB4MWZmZmYpOwo+ICAKPiAtCQlp
ZiAoY29yZS0+aW5fZmxpZ2h0X2pvYikgewo+IC0JCQlpZiAoY29yZS0+aW5fZmxpZ2h0X2pvYi0+
bmV4dF90YXNrX2lkeCA8IGNvcmUtPmluX2ZsaWdodF9qb2ItPnRhc2tfY291bnQpIHsKPiAtCQkJ
CXJvY2tldF9qb2JfaHdfc3VibWl0KGNvcmUsIGNvcmUtPmluX2ZsaWdodF9qb2IpOwo+IC0JCQkJ
cmV0dXJuOwo+IC0JCQl9Cj4gLQo+IC0JCQlpb21tdV9kZXRhY2hfZ3JvdXAoTlVMTCwgaW9tbXVf
Z3JvdXBfZ2V0KGNvcmUtPmRldikpOwo+IC0JCQlkbWFfZmVuY2Vfc2lnbmFsKGNvcmUtPmluX2Zs
aWdodF9qb2ItPmRvbmVfZmVuY2UpOwo+IC0JCQlwbV9ydW50aW1lX3B1dF9hdXRvc3VzcGVuZChj
b3JlLT5kZXYpOwo+IC0JCQljb3JlLT5pbl9mbGlnaHRfam9iID0gTlVMTDsKPiAtCQl9Cj4gKwkJ
cm9ja2V0X2pvYl9uZXh0X2xvY2tlZChjb3JlKTsKPiAgCX0KPiAgfQo+ICAKPiAKCgoKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
