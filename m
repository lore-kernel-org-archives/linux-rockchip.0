Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11146C48260
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Feb 2024 08:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U5IOnXz7MgjbHiLPJ7yeYRtp87bxHGnW3+TV4+RBx1c=; b=z6Ad6P7EQ7yVNa
	FzyEQ3/GxliAwYfJvRTkmCnDEltdoT1BD5N6WXFA0LTHrjBd5BRHytr2lwDUXUNHKeyQbOBHaJyrt
	wnZ4ivEdPh9HDARpLeUa3X8QGr03Q+WmWV9H7PHn9F1RE0rEj+t2PizyTMnd9XxFPi49u4nDzJ6uQ
	uSoWNj63aOJfv2VXpEsE2qAUVjnsLVRyxjzuGwMdaP16Vpej6tGroeLsp4Cr6NQ91Bxp7OZgGQX3S
	pD+2UUbht1an+BG6DGl4LuMjVwo9BcsMm/iR0qTEYWU9Iac9pBZZzOEwFoXPCv5r0I7iZdATSWUdp
	CVVAI9HiCAaVJFytnCyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbzOQ-00000009fz0-29Je;
	Mon, 19 Feb 2024 08:52:54 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbzOL-00000009fww-3mlx;
	Mon, 19 Feb 2024 08:52:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1708332766;
	bh=4X90vGi+S3GMD8xcunMsqdnSAQ5bq0oM8thgSR31da0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=c1+wIJB9dLAkFFYkLTsVtGo2Or1NO0CJwUEHlS8GwLHyT9hnJGRE9px9PHnthYq2a
	 XOuT1I79SybuczGIRRiJu2VegJUKqo/qpckhL+4Ze4fpu1PXiL2ypsMASzj/9A8bER
	 p3K3LddVkPhsm0xRfNmPDd+eEH3qf1Wbzd8JTRYey0LxDZ7KU8oo8qzlQwNXdroJpA
	 gjt2OFWM1ENlTG/ggT6h+l+aOQh3k1vUlLnz6BE6cQrcxF02ufERfuW7qjETqRAJFy
	 /dDV501hps75ck2b29IKbXCk82qu1Ju7gla2X3XGfYbMibxVhoQuj4f7VaW0ENycD3
	 sDWRU+FszXeWA==
Received: from [100.66.96.193] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: vignesh)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id D764D37820BF;
	Mon, 19 Feb 2024 08:52:43 +0000 (UTC)
Message-ID: <e1f56317-b70d-0b81-75f0-fef50616e026@collabora.com>
Date: Mon, 19 Feb 2024 14:22:41 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v3 9/9] drm/ci: uprev IGT and update testlist
Content-Language: en-US
To: =?UTF-8?Q?Ma=c3=adra_Canal?= <mcanal@igalia.com>,
 dri-devel@lists.freedesktop.org
Cc: linux-rockchip@lists.infradead.org, guilherme.gallo@collabora.com,
 sergi.blanch.torne@collabora.com, linux-kernel@vger.kernel.org,
 david.heidelberg@collabora.com, helen.koike@collabora.com,
 linux-mediatek@lists.infradead.org, amd-gfx@lists.freedesktop.org,
 daniel@ffwll.ch, linux-amlogic@lists.infradead.org, airlied@gmail.com
References: <20240130150340.687871-1-vignesh.raman@collabora.com>
 <20240130150340.687871-10-vignesh.raman@collabora.com>
 <26f6426d-dcb6-4b14-b031-368b2248e9e7@igalia.com>
 <799653a3-e079-4e17-9d68-c0e384a216b0@igalia.com>
From: Vignesh Raman <vignesh.raman@collabora.com>
In-Reply-To: <799653a3-e079-4e17-9d68-c0e384a216b0@igalia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_005250_257768_113E6B8E 
X-CRM114-Status: GOOD (  16.15  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgTWHDrXJhLAoKT24gMTAvMDIvMjQgMjM6NTAsIE1hw61yYSBDYW5hbCB3cm90ZToKPiBPbiAy
LzEwLzI0IDE1OjE3LCBNYcOtcmEgQ2FuYWwgd3JvdGU6Cj4+IE9uIDEvMzAvMjQgMTI6MDMsIFZp
Z25lc2ggUmFtYW4gd3JvdGU6Cj4+PiBVcHJldiBJR1QgYW5kIGFkZCBhbWQsIHYzZCwgdmM0IGFu
ZCB2Z2VtIHNwZWNpZmljCj4+PiB0ZXN0cyB0byB0ZXN0bGlzdC4gSGF2ZSB0ZXN0bGlzdC50eHQg
cGVyIGRyaXZlcgo+Pj4gYW5kIGluY2x1ZGUgYSBiYXNlIHRlc3RsaXN0IHNvIHRoYXQgdGhlIGRy
aXZlcgo+Pj4gc3BlY2lmaWMgdGVzdHMgd2lsbCBydW4gb25seSBvbiB0aG9zZSBoYXJkd2FyZS4K
Pj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBWaWduZXNoIFJhbWFuIDx2aWduZXNoLnJhbWFuQGNvbGxh
Ym9yYS5jb20+Cj4+PiAtLS0KPj4+Cj4+PiB2MzoKPj4+IMKgwqAgLSBOZXcgcGF0Y2ggaW4gc2Vy
aWVzIHRvIHVwcmV2IElHVCBhbmQgdXBkYXRlIHRlc3RsaXN0Lgo+Pj4KPj4+IC0tLQo+Pj4gwqAg
ZHJpdmVycy9ncHUvZHJtL2NpL2dpdGxhYi1jaS55bWzCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCB8wqDCoCAyICstCj4+PiDCoCBkcml2ZXJzL2dwdS9kcm0vY2kvaWd0X3J1bm5lci5zaMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCAxMiArLQo+Pj4gwqAgZHJpdmVycy9ncHUvZHJtL2Np
L3Rlc3RsaXN0LWFtZGdwdS50eHTCoMKgwqDCoMKgwqDCoCB8IDE1MSArKysrKysrKysrKysrKysr
KysKPj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9jaS90ZXN0bGlzdC1tc20udHh0wqDCoMKgwqDCoMKg
wqDCoMKgwqAgfMKgIDUwICsrKysrKwo+Pj4gwqAgZHJpdmVycy9ncHUvZHJtL2NpL3Rlc3RsaXN0
LXBhbmZyb3N0LnR4dMKgwqDCoMKgwqAgfMKgIDE3ICsrCj4+PiDCoCBkcml2ZXJzL2dwdS9kcm0v
Y2kvdGVzdGxpc3QtdjNkLnR4dMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCA3MyArKysrKysrKysK
Pj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9jaS90ZXN0bGlzdC12YzQudHh0wqDCoMKgwqDCoMKgwqDC
oMKgwqAgfMKgIDQ5ICsrKysrKwo+Pj4gwqAgZHJpdmVycy9ncHUvZHJtL2NpL3Rlc3RsaXN0LnR4
dMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAxMDAgKysrKy0tLS0tLS0tCj4+PiDCoCAu
Li4vZ3B1L2RybS9jaS94ZmFpbHMvYW1kZ3B1LXN0b25leS1mYWlscy50eHQgfMKgIDI0ICsrLQo+
Pj4gwqAgLi4uL2RybS9jaS94ZmFpbHMvYW1kZ3B1LXN0b25leS1mbGFrZXMudHh0wqDCoMKgIHzC
oMKgIDkgKy0KPj4+IMKgIC4uLi9ncHUvZHJtL2NpL3hmYWlscy9hbWRncHUtc3RvbmV5LXNraXBz
LnR4dCB8wqAgMTAgKy0KPj4+IMKgIDExIGZpbGVzIGNoYW5nZWQsIDQyNyBpbnNlcnRpb25zKCsp
LCA3MCBkZWxldGlvbnMoLSkKPj4+IMKgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9k
cm0vY2kvdGVzdGxpc3QtYW1kZ3B1LnR4dAo+Pj4gwqAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZl
cnMvZ3B1L2RybS9jaS90ZXN0bGlzdC1tc20udHh0Cj4+PiDCoCBjcmVhdGUgbW9kZSAxMDA2NDQg
ZHJpdmVycy9ncHUvZHJtL2NpL3Rlc3RsaXN0LXBhbmZyb3N0LnR4dAo+Pj4gwqAgY3JlYXRlIG1v
ZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9jaS90ZXN0bGlzdC12M2QudHh0Cj4+PiDCoCBjcmVh
dGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2NpL3Rlc3RsaXN0LXZjNC50eHQKPj4+Cj4+
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2NpL2dpdGxhYi1jaS55bWwgCj4+PiBiL2Ry
aXZlcnMvZ3B1L2RybS9jaS9naXRsYWItY2kueW1sCj4+PiBpbmRleCBiYzhjYjM0MjA0NzYuLmUy
YjAyMTYxNmE4ZSAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9jaS9naXRsYWItY2ku
eW1sCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vY2kvZ2l0bGFiLWNpLnltbAo+Pj4gQEAgLTUs
NyArNSw3IEBAIHZhcmlhYmxlczoKPj4+IMKgwqDCoCBVUFNUUkVBTV9SRVBPOiBnaXQ6Ly9hbm9u
Z2l0LmZyZWVkZXNrdG9wLm9yZy9kcm0vZHJtCj4+PiDCoMKgwqAgVEFSR0VUX0JSQU5DSDogZHJt
LW5leHQKPj4+IC3CoCBJR1RfVkVSU0lPTjogZDJhZjEzZDlmNWJlNWNlMjNkOTk2ZTRhZmQzZTQ1
OTkwZjVhYjk3Nwo+Pj4gK8KgIElHVF9WRVJTSU9OOiBiMGNjODE2MGViZGM4N2NlMDhiN2ZkODNi
YjNjOTlmZjdhNGQ4NjEwCj4+PiDCoMKgwqAgREVRUF9SVU5ORVJfR0lUX1VSTDogCj4+PiBodHRw
czovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvYW5ob2x0L2RlcXAtcnVubmVyLmdpdAo+Pj4gwqDC
oMKgIERFUVBfUlVOTkVSX0dJVF9UQUc6IHYwLjE1LjAKPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vY2kvaWd0X3J1bm5lci5zaCAKPj4+IGIvZHJpdmVycy9ncHUvZHJtL2NpL2lndF9y
dW5uZXIuc2gKPj4+IGluZGV4IGYwMDFlMDE1ZDEzNS4uMmZkMDliOWI3Y2Y2IDEwMDc1NQo+Pj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2NpL2lndF9ydW5uZXIuc2gKPj4+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9jaS9pZ3RfcnVubmVyLnNoCj4+PiBAQCAtNjQsMTAgKzY0LDIwIEBAIGlmICEgZ3Jl
cCAtcSAiY29yZV9nZXR2ZXJzaW9uIiAKPj4+IC9pbnN0YWxsL3Rlc3RsaXN0LnR4dDsgdGhlbgo+
Pj4gwqAgZmkKPj4+IMKgIHNldCArZQo+Pj4gK2lmIFsgIiREUklWRVJfTkFNRSIgPSAiYW1kZ3B1
IiBdOyB0aGVuCj4+PiArwqDCoMKgIFRFU1RfTElTVD0iL2luc3RhbGwvdGVzdGxpc3QtYW1kZ3B1
LnR4dCIKPj4+ICtlbGlmIFsgIiREUklWRVJfTkFNRSIgPSAibXNtIiBdOyB0aGVuCj4+PiArwqDC
oMKgIFRFU1RfTElTVD0iL2luc3RhbGwvdGVzdGxpc3QtbXNtLnR4dCIKPj4+ICtlbGlmIFsgIiRE
UklWRVJfTkFNRSIgPSAicGFuZnJvc3QiIF07IHRoZW4KPj4+ICvCoMKgwqAgVEVTVF9MSVNUPSIv
aW5zdGFsbC90ZXN0bGlzdC1wYW5mcm9zdC50eHQiCj4+PiArZWxzZQo+Pj4gK8KgwqDCoCBURVNU
X0xJU1Q9Ii9pbnN0YWxsL3Rlc3RsaXN0LnR4dCIKPj4+ICtmaQo+Pj4gKwo+Pgo+PiBJc24ndCBW
M0QgYW5kIFZDNCB0ZXN0bGlzdHMgbWlzc2luZz8KClllcy4gV2UgbmVlZCB0byBhZGQgY2kgam9i
cyB0byB0ZXN0IHYzZC92YzQuIFRoZSBpbml0aWFsIGlkZWEgd2FzIGp1c3QgCnRvIHNwbGl0IHRo
ZSB0ZXN0bGlzdCBwZXIgZHJpdmVyIGFuZCBhZGQgdmM0L3YzZCB0ZXN0cyBzbyB0aGF0IGl0IGNh
biBiZSAKdXNlZCBpbiBmdXR1cmUuIEkgd2lsbCBhZGQgdGhlIGpvYnMgYXMgcGFydCBvZiB2NC4K
Cj4+IEl0IHdvdWxkIGJlIG5pY2UgaWYgeW91IGNvdWxkIHByb3ZpZGUgdXMgYSBsaW5rIHRvIGEg
d29ya2luZyBwaXBlbGluZS4KCldpbGwgcHJvdmlkZSB0aGUgd29ya2luZyBwaXBlbGluZSBsaW5r
IGluIG5leHQgc2VyaWVzLgoKPj4gQWxzbywgaWYgcG9zc2libGUsIEkgd291bGQgbGlrZSB0byBi
ZSBDQ2VkIG9uIHRoZSBuZXh0IHZlcnNpb24gb2YgdGhpcwo+PiBwYXRjaCwgYXMgSSBoYXZlIGlu
dGVyZXN0IGluIHRoZSBWM0QvVkM0IHRlc3RzLgoKU3VyZSwgd2lsbCBkby4KCj4gQWgsIG9uZSB0
aGluZzogaXQgd291bGQgYmUgbmljZSB0byBhZGQgdGhlIHRlc3RsaXN0cyB0byB0aGUgTUFJTlRB
SU5FUlMKPiBmaWxlLiBUaGlzIHdheSwgbWFpbnRhaW5lcnMgY2FuIGtlZXAgdHJhY2sgb2YgYW55
IGNoYW5nZXMuCgpZZXMsIHdpbGwgYWRkIHRoZSB0ZXN0bGlzdHMgdG8gTUFJTlRBSU5FUlMgZmls
ZS4KClRoYW5rcyBmb3IgdGhlIHJldmlldyBhbmQgZmVlZGJhY2suCgpSZWdhcmRzLApWaWduZXNo
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
