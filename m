Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 073A6CDB474
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Oct 2023 09:59:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iYamTjiqLOi34X/cwhICGF56jj2sde2j3cBWfxUq9as=; b=UYWs4jlOeNbF9A
	1sbVC7ez/NAtUi08kFWkfJ804TQYccg1g6GFh4+BOXAXxXcmkIRsZEE7v6kqY5ef4Sr50a82opcDD
	QCG+kk9gxVFtvWgwb8grKc6HE6DlSA+gYjRbba3j6yVxEcSiv6St4bh2N8uoKXUAR9qHHU04hGIHr
	rwYlgS1EedunUriIKny3ojTFO8GLadp7gLi4x1bkGJBJnfuwzhwHOLYz6hokQJAnqvzjvKXaDYa6v
	Zs8U6uKGo1mIdIB41f+oUhfzuQxxvZcg2RjxH0YX/EMdiWje9gCO9ytZ//+r6Upd+q8nAmya7danI
	CniytbfsRNazQNrBln+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qsgrJ-00Bu39-2B;
	Tue, 17 Oct 2023 09:59:29 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qsgrF-00Bu2K-1S;
	Tue, 17 Oct 2023 09:59:26 +0000
Received: from [IPV6:2a01:e0a:120:3210:7205:da49:a7e8:59f8] (unknown [IPv6:2a01:e0a:120:3210:7205:da49:a7e8:59f8])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 8DF1B66072C1;
	Tue, 17 Oct 2023 10:59:23 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1697536764;
	bh=a5Sv7ioncBaZOFxcfAjDRAD0foGoDHh+LBV8taa+Qz4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Px3k7uZzN9kGzG9Xg2iO78mVd9HTmp+Z9chGKVONZxXA2n1f/p79WJkuf8d11/1Qm
	 PmbASDogOpGc2FRB8Uin7AgX9vy++S8VdiM0dqsLsIrn0L8kfK+8BOncmkJvgm+A0p
	 CsOjq1EAZn7FiOMLMtGqbScXi4YDAhvqmymF1xr15tPQa5El6/lU27chyxptRg9fkq
	 JHpiyJNMHP2UVTUcITlsu3vY/rNhVQmF9FK7Ik8ROYGAInsT91EOpxUAJT6X+GFQjN
	 3Hez6TtPgGLWvVE8zhGjm4Z9LoYoi/uiqguK6z/ENPB/ez6ixJ65jUzN35w4deqE6R
	 1Whj2tf7ZABOw==
Message-ID: <e13a2d7b-3288-4899-9469-bf9ea821e35d@collabora.com>
Date: Tue, 17 Oct 2023 11:59:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 41/56] media: cedrus: Stop direct calls to queue
 num_buffers field
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Cc: mchehab@kernel.org, tfiga@chromium.org, m.szyprowski@samsung.com,
 ming.qian@nxp.com, ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, hverkuil-cisco@xs4all.nl,
 nicolas.dufresne@collabora.com, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 kernel@collabora.com, Maxime Ripard <mripard@kernel.org>
References: <20231012114642.19040-1-benjamin.gaignard@collabora.com>
 <20231012114642.19040-42-benjamin.gaignard@collabora.com>
 <ZS5L4l2PzQgpJXua@aptenodytes>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <ZS5L4l2PzQgpJXua@aptenodytes>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231017_025925_629300_A45319C6 
X-CRM114-Status: GOOD (  21.66  )
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

CkxlIDE3LzEwLzIwMjMgw6AgMTA6NTQsIFBhdWwgS29jaWFsa293c2tpIGEgw6ljcml0wqA6Cj4g
SGkgQmVuamFtaW4sCj4KPiBPbiBUaHUgMTIgT2N0IDIzLCAxMzo0NiwgQmVuamFtaW4gR2FpZ25h
cmQgd3JvdGU6Cj4+IFVzZSB2YjJfZ2V0X251bV9idWZmZXJzKCkgYW5kIHF1ZXVlIG1heF9udW1f
YnVmZmVycyBmaWVsZAo+PiB0byBhdm9pZCB1c2luZyBxdWV1ZSBudW1fYnVmZmVyIGZpZWxkIGRp
cmVjdGx5Lgo+IFRoYW5rcyBmb3IgdGhlIHBhdGNoLCB0aGlzIGlzIGluZGVlZCBhIG5pY2UgY2xl
YW51cCBhbmQgc2FmZXIgdXNhZ2UuCj4gTWF5YmUgdGhlIGNvbW1pdCBtZXNzYWdlIG5lZWRzIHRv
IHJlZmxlY3Qgd2h5IHRoaXMgY2hhbmdlIGlzIHdlbGNvbWUsCj4gbm90IGp1c3Qgd2hhdCBpcyBi
ZWluZyBjaGFuZ2VkLgoKSSB3aWxsIGFkZCB0aGlzIGNvbW1lbnQgaW4gdGhlIGNvbW1pdCBtZXNz
YWdlOgpUaGlzIGFsbG93cyB1cyB0byBjaGFuZ2UgaG93IHRoZSBudW1iZXIgb2YgYnVmZmVycyBp
cyBjb21wdXRlZCBpbiB0aGUgZnV0dXIuCgo+Cj4+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWluIEdh
aWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+PiBDQzogTWF4aW1lIFJp
cGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPgo+PiBDQzogUGF1bCBLb2NpYWxrb3dza2kgPHBhdWwu
a29jaWFsa293c2tpQGJvb3RsaW4uY29tPgo+PiAtLS0KPj4gICBkcml2ZXJzL3N0YWdpbmcvbWVk
aWEvc3VueGkvY2VkcnVzL2NlZHJ1c19oMjY0LmMgfCA4ICsrKysrKy0tCj4+ICAgZHJpdmVycy9z
dGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNfaDI2NS5jIHwgOSArKysrKysrLS0KPj4g
ICAyIGZpbGVzIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4+Cj4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1c19o
MjY0LmMgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1c19oMjY0LmMK
Pj4gaW5kZXggZGZiNDAxZGYxMzhhLi45NWU0OTA1MzJhODcgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZl
cnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2gyNjQuYwo+PiArKysgYi9kcml2
ZXJzL3N0YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1c19oMjY0LmMKPj4gQEAgLTY1Myw4
ICs2NTMsMTIgQEAgc3RhdGljIHZvaWQgY2VkcnVzX2gyNjRfc3RvcChzdHJ1Y3QgY2VkcnVzX2N0
eCAqY3R4KQo+PiAgIAo+PiAgIAl2cSA9IHY0bDJfbTJtX2dldF92cShjdHgtPmZoLm0ybV9jdHgs
IFY0TDJfQlVGX1RZUEVfVklERU9fQ0FQVFVSRSk7Cj4+ICAgCj4+IC0JZm9yIChpID0gMDsgaSA8
IHZxLT5udW1fYnVmZmVyczsgaSsrKSB7Cj4+IC0JCWJ1ZiA9IHZiMl90b19jZWRydXNfYnVmZmVy
KHZiMl9nZXRfYnVmZmVyKHZxLCBpKSk7Cj4+ICsJZm9yIChpID0gMDsgaSA8IHZiMl9nZXRfbnVt
X2J1ZmZlcnModnEpOyBpKyspIHsKPj4gKwkJc3RydWN0IHZiMl9idWZmZXIgKnZiID0gdmIyX2dl
dF9idWZmZXIodnEsIGkpOwo+PiArCj4+ICsJCWlmICghdmIpCj4+ICsJCQljb250aW51ZTsKPiBQ
bGVhc2UgYWRkIGEgbmV3bGluZSBoZXJlIHRvIGJlIGNvbnNpc3RlbnQgd2l0aCB0aGUgb3RoZXIg
YmxvY2sgYmVpbmcgY2hhbmdlZC4KPgo+IFdpdGggdGhpcyBjaGFuZ2UgYW5kIHRoZSBjb21taXQg
bG9nIHJld29ya2VkLCB5b3UgY2FuIGNvbnNpZGVyIHRoaXM6Cj4gQWNrZWQtYnk6IFBhdWwgS29j
aWFsa293c2tpIDxwYXVsLmtvY2lhbGtvd3NraUBib290bGluLmNvbT4KClRoYXQgd2lsbCBiZSBk
b25lIGZvciB0aGUgbmV4dCB2ZXJzaW9uLgoKVGhhbmtzLAoKQmVuamFtaW4KCj4KPiBUaGFua3Mh
Cj4KPiBQYXVsCj4KPj4gKwkJYnVmID0gdmIyX3RvX2NlZHJ1c19idWZmZXIodmIpOwo+PiAgIAo+
PiAgIAkJaWYgKGJ1Zi0+Y29kZWMuaDI2NC5tdl9jb2xfYnVmX3NpemUgPiAwKSB7Cj4+ICAgCQkJ
ZG1hX2ZyZWVfYXR0cnMoZGV2LT5kZXYsCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcv
bWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1c19oMjY1LmMgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEv
c3VueGkvY2VkcnVzL2NlZHJ1c19oMjY1LmMKPj4gaW5kZXggZmM5Mjk3MjMyNDU2Li41MmU5NGM4
ZjJmMDEgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMv
Y2VkcnVzX2gyNjUuYwo+PiArKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVz
L2NlZHJ1c19oMjY1LmMKPj4gQEAgLTg2OSw4ICs4NjksMTMgQEAgc3RhdGljIHZvaWQgY2VkcnVz
X2gyNjVfc3RvcChzdHJ1Y3QgY2VkcnVzX2N0eCAqY3R4KQo+PiAgIAo+PiAgIAl2cSA9IHY0bDJf
bTJtX2dldF92cShjdHgtPmZoLm0ybV9jdHgsIFY0TDJfQlVGX1RZUEVfVklERU9fQ0FQVFVSRSk7
Cj4+ICAgCj4+IC0JZm9yIChpID0gMDsgaSA8IHZxLT5udW1fYnVmZmVyczsgaSsrKSB7Cj4+IC0J
CWJ1ZiA9IHZiMl90b19jZWRydXNfYnVmZmVyKHZiMl9nZXRfYnVmZmVyKHZxLCBpKSk7Cj4+ICsJ
Zm9yIChpID0gMDsgaSA8IHZiMl9nZXRfbnVtX2J1ZmZlcnModnEpOyBpKyspIHsKPj4gKwkJc3Ry
dWN0IHZiMl9idWZmZXIgKnZiID0gdmIyX2dldF9idWZmZXIodnEsIGkpOwo+PiArCj4+ICsJCWlm
ICghdmIpCj4+ICsJCQljb250aW51ZTsKPj4gKwo+PiArCQlidWYgPSB2YjJfdG9fY2VkcnVzX2J1
ZmZlcih2Yik7Cj4+ICAgCj4+ICAgCQlpZiAoYnVmLT5jb2RlYy5oMjY1Lm12X2NvbF9idWZfc2l6
ZSA+IDApIHsKPj4gICAJCQlkbWFfZnJlZV9hdHRycyhkZXYtPmRldiwKPj4gLS0gCj4+IDIuMzku
Mgo+PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
