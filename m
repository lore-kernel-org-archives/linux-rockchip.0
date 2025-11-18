Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5ACACED24E
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Nov 2025 10:25:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bITJSdWJ1VPhs3Mhv08XFvoNiLpRPr0Ma2Lt/d8U4zQ=; b=Swt+LYSk3mFRAY
	WW4n65FwnQuTg3N7FDQJkqZYsoNJMM6zdN/LkAfI6A728oF/l3z0DkCENsJ4/OYvwHGaoA6eYIE74
	+eNIHYeDGT1wZMBugkhDyY8o2U1E6aL4ixcAHSp5v+iwqks32xnVrzEsj6efRJ20EFGZWRUzU2aSs
	3pOMG4ZYZz3EhuKvV25hN4045LQGL5WySHs8d8RHP4vUTMhjhrmM6AfQpjAOZrRqjs8wASXLo7N/N
	IGbpUKJPTRVw0tIwHt/Jg8arF/T5RkBLBTQj6DcF3OielAsX77VxAj6Q518vQSjtsFm9fCoEyELNW
	DZrAMQpCbkAF7tdc6iig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLItM-00000000Erq-3Klf;
	Tue, 18 Nov 2025 10:24:56 +0000
Received: from sender3-pp-f112.zoho.com ([136.143.184.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLItJ-00000000EqM-2yiG;
	Tue, 18 Nov 2025 10:24:55 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1763461471; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=LdMLm3RLXrPOWV71tCfHSwoPdsQ11sEkhGvdVs3OMDVUyCDvCt678axHNax319WCianL0bTs5vIPZIYcgIZ2WEMP9t/cfZGA5Ro7SGrbBcPi7Y0ZldpiiMzfoSkF6OANRKIhU6agyVpFvvJMixlBvh+9V7UJ81NGTLPz4saoW1w=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1763461471; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=NAUSaA3KPKG9he/p30k6wBazwxquuoNqgQBZ6NGhy3w=; 
	b=Vvw3sr+sXOQGqA6b4hlh4rjQSJDT1LsDwCYm2obiu7c7oGDv22ky/BfGagYrsWeZHWCY7RXguivZWIM9gk4cw0Sv1Ap6UbW5op/+VmC4HXmrpgbMHE65uPqic+vtmPVbi9KzX3UAzUZ8W+2cXD0selsnE2rwBRmDqaCwSY8WUd4=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=louisalexis.eyraud@collabora.com;
	dmarc=pass header.from=<louisalexis.eyraud@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1763461471;
	s=zohomail; d=collabora.com; i=louisalexis.eyraud@collabora.com;
	h=Message-ID:Subject:Subject:From:From:To:To:Cc:Cc:Date:Date:In-Reply-To:References:Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Reply-To;
	bh=NAUSaA3KPKG9he/p30k6wBazwxquuoNqgQBZ6NGhy3w=;
	b=NcANy9/F4oSqxya+A0wXe59480FqEHR2ERhY5Xe3Xy/Pv0IRnf2hWGuUZ/oGiemg
	m/OfC+HWvFia3oV/Tx9vPNzVpIe2T/qx1Yry2/muFx5KqfF+vDBuV9yl1cJ3dDgGJ8P
	ep1hVRTwDVMKNA3m+CLM06C9AQf8Wn/jVYA/KRbE=
Received: by mx.zohomail.com with SMTPS id 1763461469257293.33494424404137;
	Tue, 18 Nov 2025 02:24:29 -0800 (PST)
Message-ID: <815d7300e19db00f84091f0925b2e509c4453fa0.camel@collabora.com>
Subject: Re: [PATCH v2 RESEND 4/9] phy: mediatek: phy-mtk-hdmi-mt8195:
 convert from round_rate() to determine_rate()
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
To: Brian Masney <bmasney@redhat.com>, Vinod Koul <vkoul@kernel.org>, Kishon
 Vijay Abraham I <kishon@kernel.org>, Chun-Kuang Hu
 <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
 <angelogioacchino.delregno@collabora.com>, Heiko Stuebner
 <heiko@sntech.de>, Stephen Boyd	 <sboyd@kernel.org>, Maxime Ripard
 <mripard@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
Date: Tue, 18 Nov 2025 11:24:22 +0100
In-Reply-To: <20251106-phy-clk-route-rate-v2-resend-v1-4-e2058963bfb1@redhat.com>
References: <20251106-phy-clk-route-rate-v2-resend-v1-0-e2058963bfb1@redhat.com>
	 <20251106-phy-clk-route-rate-v2-resend-v1-4-e2058963bfb1@redhat.com>
Organization: Collabora Ltd
User-Agent: Evolution 3.56.2 (3.56.2-2.fc42) 
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251118_022453_834034_1A868016 
X-CRM114-Status: GOOD (  14.44  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGksCgpPbiBUaHUsIDIwMjUtMTEtMDYgYXQgMTg6MjUgLTA1MDAsIEJyaWFuIE1hc25leSB3cm90
ZToKPiBUaGUgcm91bmRfcmF0ZSgpIGNsayBvcHMgaXMgZGVwcmVjYXRlZCwgc28gbWlncmF0ZSB0
aGlzIGRyaXZlciBmcm9tCj4gcm91bmRfcmF0ZSgpIHRvIGRldGVybWluZV9yYXRlKCkgdXNpbmcg
dGhlIENvY2NpbmVsbGUgc2VtYW50aWMgcGF0Y2gKPiBvbiB0aGUgY292ZXIgbGV0dGVyIG9mIHRo
aXMgc2VyaWVzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEJyaWFuIE1hc25leSA8Ym1hc25leUByZWRo
YXQuY29tPgo+IC0tLQo+IMKgZHJpdmVycy9waHkvbWVkaWF0ZWsvcGh5LW10ay1oZG1pLW10ODE5
NS5jIHwgMTAgKysrKystLS0tLQo+IMKgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwg
NSBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvbWVkaWF0ZWsvcGh5
LW10ay1oZG1pLW10ODE5NS5jCj4gYi9kcml2ZXJzL3BoeS9tZWRpYXRlay9waHktbXRrLWhkbWkt
bXQ4MTk1LmMKPiBpbmRleAo+IGIzOGYzYWUyNmIzZjNkOGM5ZTczYjQzZDg2NTEwYWNmNmNlZGI0
NzEuLjE0MjZhMmRiOTg0ZDUzYjkxMTI1YjE4Zjc3Mgo+IDU3MzhjNDRmMTk1NTUgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9waHkvbWVkaWF0ZWsvcGh5LW10ay1oZG1pLW10ODE5NS5jCj4gKysrIGIv
ZHJpdmVycy9waHkvbWVkaWF0ZWsvcGh5LW10ay1oZG1pLW10ODE5NS5jCj4gQEAgLTQxOCwxMyAr
NDE4LDEzIEBAIHN0YXRpYyBpbnQgbXRrX2hkbWlfcGxsX3NldF9yYXRlKHN0cnVjdCBjbGtfaHcK
PiAqaHcsIHVuc2lnbmVkIGxvbmcgcmF0ZSwKPiDCoAlyZXR1cm4gbXRrX2hkbWlfcGxsX2NhbGMo
aGRtaV9waHksIGh3LCByYXRlLCBwYXJlbnRfcmF0ZSk7Cj4gwqB9Cj4gwqAKPiAtc3RhdGljIGxv
bmcgbXRrX2hkbWlfcGxsX3JvdW5kX3JhdGUoc3RydWN0IGNsa19odyAqaHcsIHVuc2lnbmVkIGxv
bmcKPiByYXRlLAo+IC0JCQkJwqDCoMKgIHVuc2lnbmVkIGxvbmcgKnBhcmVudF9yYXRlKQo+ICtz
dGF0aWMgaW50IG10a19oZG1pX3BsbF9kZXRlcm1pbmVfcmF0ZShzdHJ1Y3QgY2xrX2h3ICpodywK
PiArCQkJCcKgwqDCoMKgwqDCoCBzdHJ1Y3QgY2xrX3JhdGVfcmVxdWVzdCAqcmVxKQo+IMKgewo+
IMKgCXN0cnVjdCBtdGtfaGRtaV9waHkgKmhkbWlfcGh5ID0gdG9fbXRrX2hkbWlfcGh5KGh3KTsK
PiDCoAo+IC0JaGRtaV9waHktPnBsbF9yYXRlID0gcmF0ZTsKPiAtCXJldHVybiByYXRlOwo+ICsJ
aGRtaV9waHktPnBsbF9yYXRlID0gcmVxLT5yYXRlOwo+ICsJcmV0dXJuIDA7Cj4gwqB9Cj4gwqAK
PiDCoHN0YXRpYyB1bnNpZ25lZCBsb25nIG10a19oZG1pX3BsbF9yZWNhbGNfcmF0ZShzdHJ1Y3Qg
Y2xrX2h3ICpodywKPiBAQCAtNDM5LDcgKzQzOSw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgY2xr
X29wcyBtdGtfaGRtaV9wbGxfb3BzID0gewo+IMKgCS5wcmVwYXJlID0gbXRrX2hkbWlfcGxsX3By
ZXBhcmUsCj4gwqAJLnVucHJlcGFyZSA9IG10a19oZG1pX3BsbF91bnByZXBhcmUsCj4gwqAJLnNl
dF9yYXRlID0gbXRrX2hkbWlfcGxsX3NldF9yYXRlLAo+IC0JLnJvdW5kX3JhdGUgPSBtdGtfaGRt
aV9wbGxfcm91bmRfcmF0ZSwKPiArCS5kZXRlcm1pbmVfcmF0ZSA9IG10a19oZG1pX3BsbF9kZXRl
cm1pbmVfcmF0ZSwKPiDCoAkucmVjYWxjX3JhdGUgPSBtdGtfaGRtaV9wbGxfcmVjYWxjX3JhdGUs
Cj4gwqB9Owo+IMKgClRlc3RlZCBPSyBvbiBNZWRpYXRlayBHZW5pbyA1MTAtRVZLIChNVDgzNzAp
IGFuZCBHZW5pbyAxMjAwLUVWSwooTVQ4Mzk1KSBib2FyZHMuCgpUZXN0ZWQtYnk6IExvdWlzLUFs
ZXhpcyBFeXJhdWQgPGxvdWlzYWxleGlzLmV5cmF1ZEBjb2xsYWJvcmEuY29tPgoKUmVnYXJkcywK
TG91aXMtQWxleGlzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
