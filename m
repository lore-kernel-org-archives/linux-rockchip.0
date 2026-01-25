Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F260EE63C8E
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Jan 2026 13:23:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5QdnDgY98NlCZ5aqALdBCxIiK7vMcCCfP6gVp0SOTuY=; b=UZY6MNjrYZAEto
	Xk6Vd590Nf5eMcGSct2T6SkPZ3/vlxFMZgZk8Qz+XrK8+Mu5yuQqugi4bI5G604e1aT3MogJq0Jz6
	pVoTFd17x36oyYGx4HsE7k1zKLCnusoum2U+HewufyT7kU+IoVS6Z3Dpeo94i9Lsg6uxPa05Q6mUa
	UBMOfO/BJ9Y5gqR9gQiRFD1p04wgh+BbcrqGpUhkwhpyzrmYL2IIhTGo6sZDEBa1DF3r+Fi5u/wPP
	hVaWhECPckkNs1Dj3QuP8u7bYSp3LJqcjmHsXGkWSv8n/W2MKLCnD76KyVtDHAJhRbtYFI5iNFdWg
	h/raeErzCpwpsgKLyMYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vk05X-0000000BCbh-1iAG;
	Sun, 25 Jan 2026 13:23:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vk05U-0000000BCbC-1Gpm;
	Sun, 25 Jan 2026 13:23:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=P8vete4FbKroUDiRsh85INSljLEWw5LQXDMx6H8GOzY=; b=GiRoqnVctapf8D73oIl+VcQoSK
	6CiTaCejwRnjct4AodOKsGYEZJdeNllg4S7XvXd65TIIJukiJBfwvb0INXLJOKoxVUIQOwA7iix8s
	bwiNySsDdPrQ5BW21njQnYa/jipQU1tpjTbqTB1lZRpePn7BVkQNNAf10olIK/KrbFCewYl+ga94o
	G8opkJnPo7K44QbZpMCJvHpO1W3QYrlcdsRScz0ZPvG4AAsKzCpaWT4OVaCLu2vUEQfoVvWWAxmIL
	UZKikeeEm5oxRzVE3fMcArnFqYN69ZeTdqq+fA+BEOx45JOlzH93BwlVMrXbsGEziERIkPZAImjrf
	RI80mr8g==;
Received: from i53875a33.versanet.de ([83.135.90.51] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vk05L-004Jy1-0F; Sun, 25 Jan 2026 14:23:23 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Robin Murphy <robin.murphy@arm.com>, Bartosz Golaszewski <brgl@kernel.org>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
 Linus Walleij <linusw@kernel.org>, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Bartosz Golaszewski <brgl@kernel.org>
Subject: Re: [PATCH] gpio: rockchip: mark the GPIO controller as sleeping
Date: Sun, 25 Jan 2026 14:23:20 +0100
Message-ID: <3204984.tdWV9SEqCh@diego>
In-Reply-To: <CAMRc=MfUawHpDgxj=fP2OF_-qg1O+P3oM_cSvGsbvAdLRB=+hw@mail.gmail.com>
References: <20260106090011.21603-1-bartosz.golaszewski@oss.qualcomm.com>
 <cb13c3df-be09-4cf3-b679-4431862d7264@arm.com>
 <CAMRc=MfUawHpDgxj=fP2OF_-qg1O+P3oM_cSvGsbvAdLRB=+hw@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260125_052332_441488_C7E2EA9E 
X-CRM114-Status: GOOD (  17.05  )
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

QW0gU2Ftc3RhZywgMjQuIEphbnVhciAyMDI2LCAyMjowNzoxMiBNaXR0ZWxldXJvcMOkaXNjaGUg
Tm9ybWFsemVpdCBzY2hyaWViIEJhcnRvc3ogR29sYXN6ZXdza2k6Cj4gT24gU2F0LCAyNCBKYW4g
MjAyNiAwMDo0NToyNSArMDEwMCwgUm9iaW4gTXVycGh5IDxyb2Jpbi5tdXJwaHlAYXJtLmNvbT4g
c2FpZDoKPiA+IE9uIDIwMjYtMDEtMjMgOTo1MiBwbSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cgpb
IHNuaXAgdG8gZ2V0IHRvIHRoZSBjb3JlIHF1ZXN0aW9uIGF0IHRoZSBib3R0b20gXQoKPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL3BpbmN0cmwvcGluY3RybC1yb2NrY2hpcC5jIGIvZHJpdmVycy9w
aW5jdHJsL3BpbmN0cmwtcm9ja2NoaXAuYwo+ID4gaW5kZXggZTQ0ZWYyNjJiZWVjLi4yZmM2N2Fl
YWZkYjMgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL3BpbmN0cmwvcGluY3RybC1yb2NrY2hpcC5j
Cj4gPiArKysgYi9kcml2ZXJzL3BpbmN0cmwvcGluY3RybC1yb2NrY2hpcC5jCj4gPiBAQCAtMzU0
NSwxMCArMzU0NSw5IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfcG14X3NldChzdHJ1Y3QgcGluY3Ry
bF9kZXYgKnBjdGxkZXYsIHVuc2lnbmVkIHNlbGVjdG9yLAo+ID4gICAJcmV0dXJuIDA7Cj4gPiAg
IH0KPiA+Cj4gPiAtc3RhdGljIGludCByb2NrY2hpcF9wbXhfZ3Bpb19zZXRfZGlyZWN0aW9uKHN0
cnVjdCBwaW5jdHJsX2RldiAqcGN0bGRldiwKPiA+IC0JCQkJCSAgIHN0cnVjdCBwaW5jdHJsX2dw
aW9fcmFuZ2UgKnJhbmdlLAo+ID4gLQkJCQkJICAgdW5zaWduZWQgb2Zmc2V0LAo+ID4gLQkJCQkJ
ICAgYm9vbCBpbnB1dCkKPiA+ICtzdGF0aWMgaW50IHJvY2tjaGlwX3BteF9ncGlvX3JlcXVlc3Rf
ZW5hYmxlKHN0cnVjdCBwaW5jdHJsX2RldiAqcGN0bGRldiwKPiA+ICsJCQkJCSAgICBzdHJ1Y3Qg
cGluY3RybF9ncGlvX3JhbmdlICpyYW5nZSwKPiA+ICsJCQkJCSAgICB1bnNpZ25lZCBpbnQgb2Zm
c2V0KQo+ID4gICB7Cj4gPiAgIAlzdHJ1Y3Qgcm9ja2NoaXBfcGluY3RybCAqaW5mbyA9IHBpbmN0
cmxfZGV2X2dldF9kcnZkYXRhKHBjdGxkZXYpOwo+ID4gICAJc3RydWN0IHJvY2tjaGlwX3Bpbl9i
YW5rICpiYW5rOwo+ID4gQEAgLTM1NjIsNyArMzU2MSw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
cGlubXV4X29wcyByb2NrY2hpcF9wbXhfb3BzID0gewo+ID4gICAJLmdldF9mdW5jdGlvbl9uYW1l
CT0gcm9ja2NoaXBfcG14X2dldF9mdW5jX25hbWUsCj4gPiAgIAkuZ2V0X2Z1bmN0aW9uX2dyb3Vw
cwk9IHJvY2tjaGlwX3BteF9nZXRfZ3JvdXBzLAo+ID4gICAJLnNldF9tdXgJCT0gcm9ja2NoaXBf
cG14X3NldCwKPiA+IC0JLmdwaW9fc2V0X2RpcmVjdGlvbgk9IHJvY2tjaGlwX3BteF9ncGlvX3Nl
dF9kaXJlY3Rpb24sCj4gPiArCS5ncGlvX3JlcXVlc3RfZW5hYmxlCT0gcm9ja2NoaXBfcG14X2dw
aW9fcmVxdWVzdF9lbmFibGUsCj4gPiAgIH07Cj4gPgo+ID4gICAvKgo+ID4KPiAKPiBJJ20gbm90
IHN1cmUgd2hhdCdzIGdvaW5nIG9uIGhlcmUuIFlvdSBkb24ndCByZWFsbHkgbmVlZCB0byBjYWxs
Cj4gcGluY3RybF9ncGlvX2RpcmVjdGlvbl9pbnB1dC9vdXRwdXQoKT8KCk5vIHdlIGFjdHVhbGx5
IGRvbid0LgoKVGhlIGN1cnJlbnQgX3NldF9kaXJlY3Rpb24gZnVuY3Rpb246CgpzdGF0aWMgaW50
IHJvY2tjaGlwX3BteF9ncGlvX3NldF9kaXJlY3Rpb24oc3RydWN0IHBpbmN0cmxfZGV2ICpwY3Rs
ZGV2LAoJCQkJCSAgIHN0cnVjdCBwaW5jdHJsX2dwaW9fcmFuZ2UgKnJhbmdlLAoJCQkJCSAgIHVu
c2lnbmVkIG9mZnNldCwKCQkJCQkgICBib29sIGlucHV0KQp7CglzdHJ1Y3Qgcm9ja2NoaXBfcGlu
Y3RybCAqaW5mbyA9IHBpbmN0cmxfZGV2X2dldF9kcnZkYXRhKHBjdGxkZXYpOwoJc3RydWN0IHJv
Y2tjaGlwX3Bpbl9iYW5rICpiYW5rOwoKCWJhbmsgPSBwaW5fdG9fYmFuayhpbmZvLCBvZmZzZXQp
OwoJcmV0dXJuIHJvY2tjaGlwX3NldF9tdXgoYmFuaywgb2Zmc2V0IC0gYmFuay0+cGluX2Jhc2Us
IFJLX0ZVTkNfR1BJTyk7Cn0KCnJlYWxseSBvbmx5IGV2ZXIgdG91Y2hlcyB0aGUgcGlubXV4IGFu
ZCBoYXMgbm90aGluZyB0byBkbyB3aXRoIHNldHRpbmcKdGhlIGRpcmVjdGlvbiwgd2hpY2ggaXMg
c29sZWx5IHRoZSB0YXNrIG9mIHRoZSBncGlvLWNvbnRyb2xsZXIvLWRyaXZlci4KClNvIG1vdmlu
ZyB0aGF0IHRvIHRoZSByZXF1ZXN0IGNhbGxiYWNrIHdvdWxkIGxpa2VseSBzb2x2ZSBhbGwgb3Vy
IGN1cnJlbnQKcHJvYmxlbXM/CgpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
