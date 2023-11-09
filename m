Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23A83C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 11:18:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wrLyNW3h/J9kLtzNGlGOtjVkqpinFF5LT6aKjjpoGpo=; b=EI3l/rhUkGEAHp
	QZpWLH824xqKYm45rWd3iVjJKIJRWHQrvpTTgDDIk5MIdU/3MuONWAkxbpW5Ub94gsGu7EvaF3NX7
	gWpP0N8c2ujs8nIvYNG6cl1vZZCl0wRlJfnuWk52q+JsaB6F4dV/XdEs/ShIR9BVhzqdOKNpDnHcP
	B57+nn7iU1RxiHaPlCFRoA1y1lC/smUuwjfTzZRN74vZ5vmM6UDVDOKlgsjR8OP1bgNz3CGV6b9+2
	fynQHogXytp94GYjC/kHTIQb4igUZmvQLr5AlyoPB+mjdh+xpa1s6tsaeweaJJz4Fkv0i4iLD09xl
	oSF86UUp2u8HRSBxfKxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1334-0062kO-3A;
	Thu, 09 Nov 2023 11:18:10 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1330-0062j5-3D;
	Thu, 09 Nov 2023 11:18:08 +0000
Received: from [100.116.125.19] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 4C5E86607421;
	Thu,  9 Nov 2023 11:18:02 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699528684;
	bh=I504Z+CG3YiZx4Vj5jJplJQXnwlNFB6qyZMvx/v7OwQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=LFpzg58qWNb9jJefSQAPJdRVV60nbfvp7R2wUIzcSIW2N9QkRCLFmKRwfrDgu8Alg
	 4W3q4maR60goIRKz1R9N53+n+g9fjlA4VtdRllKHxdLnpqywQtaROhkG13EPGidoqB
	 qDdL823VyFRpt7hNMzrpQQohW5EbNL1yYp868/cq75IGLDjkgBKloPw1BSC3ZxPMcy
	 UbnQRRIG+ax5xnlMokeOMPk/F7aispaGNIRmMwcOtuyFV8W3Al+k7TeZ/OR9II0HWJ
	 h7WSGoINBSqOTR7wId9VmZnEu2Ul/GxA5TqnW0fHMr0NYdHnUL2Qkkd0TOVO0Apd/a
	 K0BWxOR+w8cGQ==
Message-ID: <20023047-775a-4bd3-8bdb-932347e91c66@collabora.com>
Date: Thu, 9 Nov 2023 12:17:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 32/56] media: meson: vdec: Stop direct calls to queue
 num_buffers field
Content-Language: en-US
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
 tfiga@chromium.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, hverkuil-cisco@xs4all.nl,
 nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel@collabora.com,
 Neil Armstrong <neil.armstrong@linaro.org>
References: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
 <20231031163104.112469-33-benjamin.gaignard@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20231031163104.112469-33-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_031807_187623_D5E08562 
X-CRM114-Status: GOOD (  16.75  )
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

VyBkbml1IDMxLjEwLjIwMjMgb8KgMTc6MzAsIEJlbmphbWluIEdhaWduYXJkIHBpc3plOgo+IFVz
ZSB2YjJfZ2V0X251bV9idWZmZXJzKCkgdG8gYXZvaWQgdXNpbmcgcXVldWUgbnVtX2J1ZmZlcnMg
ZmllbGQgZGlyZWN0bHkuCj4gVGhpcyBhbGxvd3MgdXMgdG8gY2hhbmdlIGhvdyB0aGUgbnVtYmVy
IG9mIGJ1ZmZlcnMgaXMgY29tcHV0ZWQgaW4gdGhlCj4gZnV0dXJlLgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgoK
UmV2aWV3ZWQtYnk6IEFuZHJ6ZWogUGlldHJhc2lld2ljeiA8YW5kcnplai5wQGNvbGxhYm9yYS5j
b20+Cgo+IENDOiBOZWlsIEFybXN0cm9uZyA8bmVpbC5hcm1zdHJvbmdAbGluYXJvLm9yZz4KPiAt
LS0KPiAgIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9tZXNvbi92ZGVjL3ZkZWMuYyB8IDEzICsrKysr
KystLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25z
KC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9tZXNvbi92ZGVjL3Zk
ZWMuYyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9tZXNvbi92ZGVjL3ZkZWMuYwo+IGluZGV4IDIx
OTE4NWFhYTU4OC4uMWUyMzY5ZjEwNGM4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9t
ZWRpYS9tZXNvbi92ZGVjL3ZkZWMuYwo+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9tZXNv
bi92ZGVjL3ZkZWMuYwo+IEBAIC0xNjcsMjIgKzE2NywyMyBAQCBzdGF0aWMgdm9pZCBwcm9jZXNz
X251bV9idWZmZXJzKHN0cnVjdCB2YjJfcXVldWUgKnEsCj4gICAJCQkJYm9vbCBpc19yZXFidWZz
KQo+ICAgewo+ICAgCWNvbnN0IHN0cnVjdCBhbXZkZWNfZm9ybWF0ICpmbXRfb3V0ID0gc2Vzcy0+
Zm10X291dDsKPiAtCXVuc2lnbmVkIGludCBidWZmZXJzX3RvdGFsID0gcS0+bnVtX2J1ZmZlcnMg
KyAqbnVtX2J1ZmZlcnM7Cj4gKwl1bnNpZ25lZCBpbnQgcV9udW1fYnVmcyA9IHZiMl9nZXRfbnVt
X2J1ZmZlcnMocSk7Cj4gKwl1bnNpZ25lZCBpbnQgYnVmZmVyc190b3RhbCA9IHFfbnVtX2J1ZnMg
KyAqbnVtX2J1ZmZlcnM7Cj4gICAJdTMyIG1pbl9idWZfY2FwdHVyZSA9IHY0bDJfY3RybF9nX2N0
cmwoc2Vzcy0+Y3RybF9taW5fYnVmX2NhcHR1cmUpOwo+ICAgCj4gLQlpZiAocS0+bnVtX2J1ZmZl
cnMgKyAqbnVtX2J1ZmZlcnMgPCBtaW5fYnVmX2NhcHR1cmUpCj4gLQkJKm51bV9idWZmZXJzID0g
bWluX2J1Zl9jYXB0dXJlIC0gcS0+bnVtX2J1ZmZlcnM7Cj4gKwlpZiAocV9udW1fYnVmcyArICpu
dW1fYnVmZmVycyA8IG1pbl9idWZfY2FwdHVyZSkKPiArCQkqbnVtX2J1ZmZlcnMgPSBtaW5fYnVm
X2NhcHR1cmUgLSBxX251bV9idWZzOwo+ICAgCWlmIChpc19yZXFidWZzICYmIGJ1ZmZlcnNfdG90
YWwgPCBmbXRfb3V0LT5taW5fYnVmZmVycykKPiAtCQkqbnVtX2J1ZmZlcnMgPSBmbXRfb3V0LT5t
aW5fYnVmZmVycyAtIHEtPm51bV9idWZmZXJzOwo+ICsJCSpudW1fYnVmZmVycyA9IGZtdF9vdXQt
Pm1pbl9idWZmZXJzIC0gcV9udW1fYnVmczsKPiAgIAlpZiAoYnVmZmVyc190b3RhbCA+IGZtdF9v
dXQtPm1heF9idWZmZXJzKQo+IC0JCSpudW1fYnVmZmVycyA9IGZtdF9vdXQtPm1heF9idWZmZXJz
IC0gcS0+bnVtX2J1ZmZlcnM7Cj4gKwkJKm51bV9idWZmZXJzID0gZm10X291dC0+bWF4X2J1ZmZl
cnMgLSBxX251bV9idWZzOwo+ICAgCj4gICAJLyogV2UgbmVlZCB0byBwcm9ncmFtIHRoZSBjb21w
bGV0ZSBDQVBUVVJFIGJ1ZmZlciBsaXN0Cj4gICAJICogaW4gcmVnaXN0ZXJzIGR1cmluZyBzdGFy
dF9zdHJlYW1pbmcsIGFuZCB0aGUgZmlybXdhcmVzCj4gICAJICogYXJlIGZyZWUgdG8gY2hvb3Nl
IGFueSBvZiB0aGVtIHRvIHdyaXRlIGZyYW1lcyB0by4gQXMgc3VjaCwKPiAgIAkgKiB3ZSBuZWVk
IGFsbCBvZiB0aGVtIHRvIGJlIHF1ZXVlZCBpbnRvIHRoZSBkcml2ZXIKPiAgIAkgKi8KPiAtCXNl
c3MtPm51bV9kc3RfYnVmcyA9IHEtPm51bV9idWZmZXJzICsgKm51bV9idWZmZXJzOwo+ICsJc2Vz
cy0+bnVtX2RzdF9idWZzID0gcV9udW1fYnVmcyArICpudW1fYnVmZmVyczsKPiAgIAlxLT5taW5f
YnVmZmVyc19uZWVkZWQgPSBtYXgoZm10X291dC0+bWluX2J1ZmZlcnMsIHNlc3MtPm51bV9kc3Rf
YnVmcyk7Cj4gICB9Cj4gICAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
