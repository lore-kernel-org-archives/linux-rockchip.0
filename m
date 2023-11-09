Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DFE0C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 10:13:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3t5gbNVHJktZBog8vb+oKG53d7obhlOAbCs2KU1v010=; b=uyU5Vvi1A+4ETv
	f8w+jD5JQfCtTOuspYQaCcFsePOtzb03F+r1zgOc2HQ041jVLBEkvNr8mKajWgbbK9kSs0IcZW7lR
	F9/GTxoDU3v/pXZU56SjcqnfCH++xkmuDbTO11JDEuXl4I3k4aLNxlX/QPkiSQj8yliNBrDwfPJtL
	uAGyAGBL/PGdePgJwylJknGbCDZytwO6Jv3/uKCzBWdfyLh76OOlJRii915PH4QTntVB4j84FrzbD
	skXhBaHjkWpE2CbSsBZbwSV/hP34K9nlQSOmxGZWnrbqePBrFUcYJvKeB3q0k/LcLLB38ikfPYk0L
	GN2dyKGnw6kqfyWGREaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r122c-005tOT-0d;
	Thu, 09 Nov 2023 10:13:38 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r122Y-005tN8-1Q;
	Thu, 09 Nov 2023 10:13:35 +0000
Received: from [100.116.125.19] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id BB51C660745D;
	Thu,  9 Nov 2023 10:13:31 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699524813;
	bh=tF00I9rvCUL/jzVG4vb3E9oiI67esankiKYonVaACl8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=iL0EXaSzBN2yXBqt+in7a4pGMkwKIY7NFpOgD7ZWB0RKGkReOXRfR2KOFHOZlmF2e
	 XnFpq97cHi8jlcDHVlUlbKYWUCHva3Vk3O8ZGybGOyJ0GlVH80bryLtHMeYCA4GN6E
	 zcLMXldER/e4h+WpVYXyahJgKhgRA8NJwrLinO9jL1fDQpal8aGE68DSOLh+aHIhfx
	 nXFi+GF7906kxKNhhIRSFrRNe4YQdozco1jRJDTp3ONQ/z0Ovf9P7Coz/xEKtbM8mg
	 +p/q7Z/0kwExiPmOen9bJS2pO2hOcxKkqDAWUwZlvOEuQCEEQ29yeodPb6koT+A/4I
	 y4kzLsW4dxrgw==
Message-ID: <99945dbe-194b-429c-b8ea-fc71dbc0b3b4@collabora.com>
Date: Thu, 9 Nov 2023 11:13:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 25/56] media: pci: tw68: Stop direct calls to queue
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
 Fabrizio Castro <fabrizio.castro.jz@renesas.com>
References: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
 <20231031163104.112469-26-benjamin.gaignard@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20231031163104.112469-26-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_021334_610207_9339D710 
X-CRM114-Status: GOOD (  16.27  )
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

SGkgQmVuamFtaW4sCgpXIGRuaXUgMzEuMTAuMjAyMyBvwqAxNzozMCwgQmVuamFtaW4gR2FpZ25h
cmQgcGlzemU6Cj4gVXNlIHZiMl9nZXRfbnVtX2J1ZmZlcnMoKSB0byBhdm9pZCB1c2luZyBxdWV1
ZSBudW1fYnVmZmVycyBmaWVsZCBkaXJlY3RseS4KPiBUaGlzIGFsbG93cyB1cyB0byBjaGFuZ2Ug
aG93IHRoZSBudW1iZXIgb2YgYnVmZmVycyBpcyBjb21wdXRlZCBpbiB0aGUKPiBmdXR1cmUuCj4g
Cj4gU2lnbmVkLW9mZi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNv
bGxhYm9yYS5jb20+Cj4gQ0M6IEZhYnJpemlvIENhc3RybyA8ZmFicml6aW8uY2FzdHJvLmp6QHJl
bmVzYXMuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9tZWRpYS9wY2kvdHc2OC90dzY4LXZpZGVvLmMg
fCA0ICsrLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25z
KC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGNpL3R3NjgvdHc2OC12aWRlby5j
IGIvZHJpdmVycy9tZWRpYS9wY2kvdHc2OC90dzY4LXZpZGVvLmMKPiBpbmRleCA3NzNhMTg3MDJk
MzYuLjM1Mjk2YzIyNjAxOSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3BjaS90dzY4L3R3
NjgtdmlkZW8uYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGNpL3R3NjgvdHc2OC12aWRlby5jCj4g
QEAgLTM2MCwxMyArMzYwLDEzIEBAIHN0YXRpYyBpbnQgdHc2OF9xdWV1ZV9zZXR1cChzdHJ1Y3Qg
dmIyX3F1ZXVlICpxLAo+ICAgCQkJICAgdW5zaWduZWQgaW50IHNpemVzW10sIHN0cnVjdCBkZXZp
Y2UgKmFsbG9jX2RldnNbXSkKPiAgIHsKPiAgIAlzdHJ1Y3QgdHc2OF9kZXYgKmRldiA9IHZiMl9n
ZXRfZHJ2X3ByaXYocSk7CgpXaHkgbm90CgoJdW5zaWduZWQgaW50IHFfbnVtX2J1ZnMgPSB2YjJf
Z2V0X251bV9idWZmZXJzKHZxKTsKCmp1c3QgbGlrZSBpbiBvdGhlciBwYXRjaGVzIGluIHRoZSBz
ZXJpZXM/CgpSZWdhcmRzLAoKQW5kcnplagoKPiAtCXVuc2lnbmVkIHRvdF9idWZzID0gcS0+bnVt
X2J1ZmZlcnMgKyAqbnVtX2J1ZmZlcnM7Cj4gKwl1bnNpZ25lZCB0b3RfYnVmcyA9IHZiMl9nZXRf
bnVtX2J1ZmZlcnMocSkgKyAqbnVtX2J1ZmZlcnM7Cj4gICAJdW5zaWduZWQgc2l6ZSA9IChkZXYt
PmZtdC0+ZGVwdGggKiBkZXYtPndpZHRoICogZGV2LT5oZWlnaHQpID4+IDM7Cj4gICAKPiAgIAlp
ZiAodG90X2J1ZnMgPCAyKQo+ICAgCQl0b3RfYnVmcyA9IDI7Cj4gICAJdG90X2J1ZnMgPSB0dzY4
X2J1ZmZlcl9jb3VudChzaXplLCB0b3RfYnVmcyk7Cj4gLQkqbnVtX2J1ZmZlcnMgPSB0b3RfYnVm
cyAtIHEtPm51bV9idWZmZXJzOwo+ICsJKm51bV9idWZmZXJzID0gdG90X2J1ZnMgLSB2YjJfZ2V0
X251bV9idWZmZXJzKHEpOwo+ICAgCS8qCj4gICAJICogV2UgYWxsb3cgY3JlYXRlX2J1ZnMsIGJ1
dCBvbmx5IGlmIHRoZSBzaXplaW1hZ2UgaXMgPj0gYXMgdGhlCj4gICAJICogY3VycmVudCBzaXpl
aW1hZ2UuIFRoZSB0dzY4X2J1ZmZlcl9jb3VudCBjYWxjdWxhdGlvbiBiZWNvbWVzIHF1aXRlCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
