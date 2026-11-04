Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 642C3606A328
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Nov 2026 10:54:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ilpTfVu/;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=zdYbA7OO
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ZSrgCfV45V/wuQbVEBVgZiXRtg1JJ3DCy0YG+MXdZug=; b=ilpTfVu/GQkHdq+hkg51OZplN8
	ogqOVRAtl2KY9RkNrU4ZPrQE/iJQH0fLiSrR4eAuAtnLQ1EedGd/TugGm/1F4FyW2CGDVtvwESuQ/
	pafahYpU1yB7zVT5Rz66l6i4/uLtoMXdq3UPBgGGLFg4G75upEk5CzypTGuyLBoBvBY0eBARo0EKu
	ig1JthIoh7JGhVgkx1FEwta9eGT1YYq8FRb1yEmSUH/j+aVg5uSe5nKg5KmXjGBqVN3NnMf0rkUPf
	loIFaHmKXl7cSbjU0UjEHbxdgFoLo4+q61qJpCn72REnojWEqZMqB6QMTt3v4Jdd63eZxNo2v/SWE
	5FyAyJGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOYdK-000000053ss-1unA;
	Wed, 04 Nov 2026 10:54:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOYdI-000000053sC-0CQF;
	Wed, 04 Nov 2026 10:54:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=advfz8qU7dnMlSXaKuDgnefU48uHbLndv3sHhQbWPMw=; b=zdYbA7OObWwvo7rs7AE3iCVGzj
	BDWigqB1/746eJLXXkDf5qazrTOAWtpR6IXVUy5F4lAy5LRoWZzSvOuDDxhuxlWORs7Qh69SwEZHc
	/9XupRpbA4WLdDHRfdMCjKF3Z6gu12ueLkcIdQmUVPxsP9aWKjSFXTyd9KVC5arkHdNzBjEbyymlN
	BWkvNbJCMZ/yMIKfdw/XZIRe7TItZc9UJTFoBH0IcZQYPT5jLnIgAPXCbtTEVaKoSrJRTb8+SKCSY
	LbXBS/G7gGrWxExn6fTQEFPtVasKqtTGmql2SVnWJq0h+v6qQkSjC7PI+cWefytkCnlECJnArTLKw
	e6i1O+cQ==;
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
 Jiaxing Hu <gahing@gahingwoo.com>, chaoyi.chen@rock-chips.com
Subject: Re: [PATCH v15 14/15] arm64: dts: rockchip: add NPU (RKNN) nodes to rk3576
Date: Wed, 04 Nov 2026 11:53:47 +0100
Message-ID: <2915499.MsWZr2WtbB@diego>
In-Reply-To: <20261101082307.151957-15-gahing@gahingwoo.com>
References: <20261101082307.151957-1-gahing@gahingwoo.com>
 <20261101082307.151957-15-gahing@gahingwoo.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261104_025420_094910_8A8EA12F 
X-CRM114-Status: GOOD (  15.38  )
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

QW0gU29ubnRhZywgMS4gTm92ZW1iZXIgMjAyNiwgMDk6MjM6MDYgTWl0dGVsZXVyb3DDpGlzY2hl
IE5vcm1hbHplaXQgc2NocmllYiBKaWF4aW5nIEh1Ogo+IEFkZCB0aGUgdHdvIFJLTk4gY29yZXMg
YW5kIHRoZWlyIElPTU1VcywgZGlzYWJsZWQsIGFuZCBsYWJlbCBQRF9OUFUgc28gYQo+IGJvYXJk
IGNhbiBnaXZlIGl0IHRoZSBOUFUgcmFpbC4gRWFjaCBjb3JlIGxpc3RzIGJvdGggY29yZSBkb21h
aW5zLCBpdHMgb3duCj4gZmlyc3QsIGFzIHRlc3RlZC4KPiAKPiBBc3NpZ24gQ0xLX1JLTk5fRFNV
MCA1OTQgTUh6LiBOb3RoaW5nIGluIG1haW5saW5lIHNldHMgaXRzIHJhdGUgb3IgdGhlIE5QVQo+
IHJhaWwsIGFuZCBhdCB0aGUgNzg2IE1IeiBpdCBjb21lcyB1cCBhdCwgb24gdGhlIDc1MCBtViBh
IFJPQ0sgNEQgYm9vdHMKPiB3aXRoLCB0d28gY29yZXMgcnVubmluZyB0b2dldGhlciB3cml0ZSB3
cm9uZyB3b3JkcywgMTEgdG8gMjUgaW4gZWFjaCBwYXNzCj4gb2YgNTQwMCByb3dzLiA1OTQgTUh6
IGlzIGNsZWFuLCBhbmQgUm9ja2NoaXAncyBPUFAgdGFibGUgYXNrcyBvbmx5IDcyNSBtVgo+IG9m
IGl0cyA1MDAgYW5kIDYwMCBNSHogc3RlcHMuCj4gCj4gU2lnbmVkLW9mZi1ieTogSmlheGluZyBI
dSA8Z2FoaW5nQGdhaGluZ3dvby5jb20+Cj4gLS0tCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTc2LmR0c2kgfCA3NCArKysrKysrKysrKysrKysrKysrKysrKy0KPiAgMSBmaWxl
IGNoYW5nZWQsIDczIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0
IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NzYuZHRzaSBiL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LmR0c2kKPiBpbmRleCBlYTkyMjliNmU2ZjUuLjgwOTQz
ZDc0OGJmYSAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3
Ni5kdHNpCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NzYuZHRzaQo+
IEBAIC0xMDU3LDcgKzEwNTcsNyBAQCBwb3dlcjogcG93ZXItY29udHJvbGxlciB7Cj4gIAkJCQkj
YWRkcmVzcy1jZWxscyA9IDwxPjsKPiAgCQkJCSNzaXplLWNlbGxzID0gPDA+Owo+ICAKPiAtCQkJ
CXBvd2VyLWRvbWFpbkBSSzM1NzZfUERfTlBVIHsKPiArCQkJCXBkX25wdTogcG93ZXItZG9tYWlu
QFJLMzU3Nl9QRF9OUFUgewo+ICAJCQkJCXJlZyA9IDxSSzM1NzZfUERfTlBVPjsKPiAgCQkJCQkj
cG93ZXItZG9tYWluLWNlbGxzID0gPDE+Owo+ICAJCQkJCSNhZGRyZXNzLWNlbGxzID0gPDE+Owo+
IEBAIC0xMjg0LDYgKzEyODQsNzggQEAgcG93ZXItZG9tYWluQFJLMzU3Nl9QRF9WTzEgewo+ICAJ
CQl9Owo+ICAJCX07Cj4gIAo+ICsJCXJrbm5fY29yZV8wOiBucHVAMjc3MDAwMDAgewo+ICsJCQlj
b21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzU3Ni1ya25uLWNvcmUiOwo+ICsJCQlyZWcgPSA8MHgw
IDB4Mjc3MDAwMDAgMHgwIDB4MTAwMD4sCj4gKwkJCSAgICAgIDwweDAgMHgyNzcwMTAwMCAweDAg
MHgxMDAwPiwKPiArCQkJICAgICAgPDB4MCAweDI3NzAzMDAwIDB4MCAweDEwMDA+Owo+ICsJCQly
ZWctbmFtZXMgPSAicGMiLCAiY25hIiwgImNvcmUiOwo+ICsJCQlpbnRlcnJ1cHRzID0gPEdJQ19T
UEkgMjQ3IElSUV9UWVBFX0xFVkVMX0hJR0g+Owo+ICsJCQljbG9ja3MgPSA8JmNydSBBQ0xLX1JL
Tk4wPiwgPCZjcnUgSENMS19SS05OX1JPT1Q+LAo+ICsJCQkJIDwmY3J1IENMS19SS05OX0RTVTA+
LCA8JmNydSBQQ0xLX05QVVRPUF9ST09UPiwKPiArCQkJCSA8JmNydSBBQ0xLX1JLTk5fQ0JVRj4s
IDwmY3J1IEhDTEtfUktOTl9DQlVGPjsKPiArCQkJY2xvY2stbmFtZXMgPSAiYWNsayIsICJoY2xr
IiwgIm5wdSIsICJwY2xrIiwKPiArCQkJCSAgICAgICJhY2xrX2NidWYiLCAiaGNsa19jYnVmIjsK
PiArCQkJYXNzaWduZWQtY2xvY2tzID0gPCZjcnUgQ0xLX1JLTk5fRFNVMD47Cj4gKwkJCWFzc2ln
bmVkLWNsb2NrLXJhdGVzID0gPDU5NDAwMDAwMD47Cj4gKwkJCXJlc2V0cyA9IDwmY3J1IFNSU1Rf
QV9SS05OMD47Cj4gKwkJCXJlc2V0LW5hbWVzID0gInNyc3RfYSI7Cj4gKwkJCXBvd2VyLWRvbWFp
bnMgPSA8JnBvd2VyIFJLMzU3Nl9QRF9OUFUwPiwgPCZwb3dlciBSSzM1NzZfUERfTlBVMT47CgpX
aHkgZG8geW91IG5lZWQgYm90aCBwb3dlci1kb21haW5zIGhlcmU/ClRoZSBuYW1pbmcgZG9lcyBz
dWdnZXN0IGVhY2ggYmVsb25ncyB0byBvbmUgY29yZSAtIHNpbWlsYXIgdG8gdGhlIHJrMzU4OD8K
CklmIGVhY2ggY29yZSByZWFsbHkgbmVlZHMgYm90aCBkb21haW5zLCBwbGVhc2Ugc3RhdGUgdGhp
cyBleHBsaWNpdGx5LgoKUm9ja2NoaXAgc2FkbHkgZG9lcyBub3QgcHJvdmlkZSBSS05OIGRvY3Vt
ZW50YXRpb24gdGhlIGZpcnN0CnR3byBwYXJ0cyBvZiB0aGUgVFJNLgoKCkhlaWtvCgoKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
