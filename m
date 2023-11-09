Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50744C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 11:29:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YG6+WZD50VucOc1LXzqC9xpcu4suOGEv2KBsD5NWK+I=; b=ImhRvNBdtfzyVw
	VZnbT8BzkmoTHiMReRPQuKTm4AT+8eeyMcmVSbiiOik+cg7NdY+PJYyw+I9kbe83Ip96FvuvoQJjF
	Bxj5f3pgfYzWa0A5k3wj1zMkKv0aqG0h/qq2tpPoc4lu50kJ67TxxYs/somGsLITnqzE2w27VwEQ6
	gE92XT1WrJ0xnZoPPLDhcISxtxAs7iUKF+foeiNHN1Sqs++z9a0GDuAuxI1dJG3wFe46QreHpFeST
	GYlidihLQnQV6M0MzAAcz9KmVHK28CzTPt131xvJQuPi87/nDFDbVQFEgzj11JnmQD6V+IBShIWlR
	BH8Tf6xiREuiCfKkzkww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r13E2-0064LF-2n;
	Thu, 09 Nov 2023 11:29:30 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r13Dz-0064KL-1R;
	Thu, 09 Nov 2023 11:29:28 +0000
Received: from [100.116.125.19] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 16C196607421;
	Thu,  9 Nov 2023 11:29:23 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699529366;
	bh=MbNXLia+jC7hLR3GZ2i7bjau3A6rpAnLgPDOnuSzDCA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=b+9kQAiwNaExBK6WtWt4ggbc6a2sRS3psYkGAorlUhLSWPtH5rxieRN1SgFbmVkna
	 uWYH4S2KLRX/J9rp4KtO+ufMlyRaE4d49N6b2SnF7GrC7x8NdMfWgKfU+9V/IbEv11
	 KCi2qK8jc89URqTt0LrBrD4n0yDsLBCLzUS9ycG1JrqUchTFktA0rYow+gA1gFV4Oc
	 +zlMc2JiE2TvRHM7edTgA66BqUEgKOCnLBsq62N3DHykNVQaMgLdbxckeLjFLb7/sw
	 wIl/3GDcyTKABMTes1GiWFN9ffnerxmxbLPg1HixHSh9GqRt8NG9Kn6b7QUSErF/py
	 O0SDTZK3ws2HA==
Message-ID: <47aad456-30e8-4b42-bbe4-d40bd808d155@collabora.com>
Date: Thu, 9 Nov 2023 12:29:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 36/56] media: nuvoton: Stop direct calls to queue
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
 Joseph Liu <kwliu@nuvoton.com>, Marvin Lin <kflin@nuvoton.com>
References: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
 <20231031163104.112469-37-benjamin.gaignard@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20231031163104.112469-37-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_032927_610678_06064FFE 
X-CRM114-Status: GOOD (  14.07  )
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
b20+Cgo+IENDOiBKb3NlcGggTGl1IDxrd2xpdUBudXZvdG9uLmNvbT4KPiBDQzogTWFydmluIExp
biA8a2ZsaW5AbnV2b3Rvbi5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL251
dm90b24vbnBjbS12aWRlby5jIHwgMiArLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZv
cm0vbnV2b3Rvbi9ucGNtLXZpZGVvLmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL251dm90b24v
bnBjbS12aWRlby5jCj4gaW5kZXggYjllNjc4MmY1OWI0Li5mOWI0ZTM2YTUxNzUgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9udXZvdG9uL25wY20tdmlkZW8uYwo+ICsrKyBi
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vbnV2b3Rvbi9ucGNtLXZpZGVvLmMKPiBAQCAtMzkzLDcg
KzM5Myw3IEBAIHN0YXRpYyB2b2lkIG5wY21fdmlkZW9fZnJlZV9kaWZmX3RhYmxlKHN0cnVjdCBu
cGNtX3ZpZGVvICp2aWRlbykKPiAgIAlzdHJ1Y3QgcmVjdF9saXN0ICp0bXA7Cj4gICAJdW5zaWdu
ZWQgaW50IGk7Cj4gICAKPiAtCWZvciAoaSA9IDA7IGkgPCB2aWRlby0+cXVldWUubnVtX2J1ZmZl
cnM7IGkrKykgewo+ICsJZm9yIChpID0gMDsgaSA8IHZiMl9nZXRfbnVtX2J1ZmZlcnMoJnZpZGVv
LT5xdWV1ZSk7IGkrKykgewo+ICAgCQloZWFkID0gJnZpZGVvLT5saXN0W2ldOwo+ICAgCQlsaXN0
X2Zvcl9lYWNoX3NhZmUocG9zLCBueCwgaGVhZCkgewo+ICAgCQkJdG1wID0gbGlzdF9lbnRyeShw
b3MsIHN0cnVjdCByZWN0X2xpc3QsIGxpc3QpOwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
