Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CF07C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 09:23:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=emY4tqcpXxkqlsy0wURD+ByDxcHTdT4ZrqoPVQ/QR9A=; b=XGQ7U9fTVIKBfa
	Ju4EJLXg/2AbkIYHlfARNS4GeK/Fc6j6oKGGvj4Hq3MThGznJKc8DklKVAxacAEO2zwaL1wvxqOYO
	vcKu08z6XEoRxU2aIVh6tZm62bMGwIuE9raZ6zzOCgNKpyaTpWWCShKfSxXeOu7RvkDBViYtQqDhY
	p6PtKqPWRWLo/xVAj753FjUiaw01fbNEn5aSeND0Bv2ySNCSP9O1A7RLF/OBH9bAWERirGcpIf+ms
	Cq6TSTXwfdcSL24BkZ8HhN2HZ+leKeEQGvAhMvRpqyfLn0aFDOUW43YT5IfZ/9Y/ja+UVVIVb5N/L
	dMrHa8sgkW6eSnRN4CnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r11Fn-005lg2-0U;
	Thu, 09 Nov 2023 09:23:11 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r11Fj-005lee-27;
	Thu, 09 Nov 2023 09:23:09 +0000
Received: from [100.116.125.19] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id CA8AD6607410;
	Thu,  9 Nov 2023 09:23:04 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699521786;
	bh=79QW7iQquBnwYm14N3AIvehKWVXP1fEi05nVMlo3R2M=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=d7i3viPTau1TXKkUDV057Kz7FIJc20TwGqpUXPN+RkCqA1YQ3Tm6xQQbJTKXbrGk7
	 vDybVoh3QyJP++z4JQrE7N5ofEZhnFMCP4NPewB8oI6+6QvA2gEWidVxXZh0YackUg
	 d3SkTIWIUe3tGLxgwnFadAiSuq0bRQVUQ6OjhZz/JbKfsaUuA4aRa7fhSu4PkrAdP9
	 uMZsnimIy3G6B/BMeub95Bk+EN7LtM8m6Q/iKTrnobb2jkAeue+VYticlFOdZlx3Sk
	 EGMRuhtS2jn2RN2fJRVWJcyHl7TTombrj3pnJKbUtEHRzuJHDRwWbUW2o+jefxNNVw
	 wjGXQQbgfVWrg==
Message-ID: <aca318c9-8d6d-4c04-afdf-8eacb80f79d8@collabora.com>
Date: Thu, 9 Nov 2023 10:23:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 13/56] media: mediatek: vcodec: Stop direct calls to
 queue num_buffers field
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
 Bin Liu <bin.liu@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>
References: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
 <20231031163104.112469-14-benjamin.gaignard@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20231031163104.112469-14-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_012307_827755_252A0A56 
X-CRM114-Status: GOOD (  14.97  )
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

U29ycnkgZm9yIHRoZSBub2lzZSwgSSBtYWRlIGEgdHlwbyBpbiBteSBlbWFpbCBhZGRyZXNzLiBS
ZXNlbmRpbmcgd2l0aCBhIHByb3BlciBvbmUuCgpXIGRuaXUgMzEuMTAuMjAyMyBvwqAxNzozMCwg
QmVuamFtaW4gR2FpZ25hcmQgcGlzemU6Cj4gVXNlIHZiMl9nZXRfbnVtX2J1ZmZlcnMoKSB0byBh
dm9pZCB1c2luZyBxdWV1ZSBudW1fYnVmZmVycyBmaWVsZCBkaXJlY3RseS4KPiBUaGlzIGFsbG93
cyB1cyB0byBjaGFuZ2UgaG93IHRoZSBudW1iZXIgb2YgYnVmZmVycyBpcyBjb21wdXRlZCBpbiB0
aGUKPiBmdXR1cmUuCj4gCj4gU2lnbmVkLW9mZi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmph
bWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+CgpSZXZpZXdlZC1ieTogQW5kcnplaiBQaWV0cmFz
aWV3aWN6IDxhbmRyemVqLnBAY29sbGFib3JhLmNvbT4KCj4gQ0M6IEJpbiBMaXUgPGJpbi5saXVA
bWVkaWF0ZWsuY29tPgo+IENDOiBNYXR0aGlhcyBCcnVnZ2VyIDxtYXR0aGlhcy5iZ2dAZ21haWwu
Y29tPgo+IC0tLQo+ICAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9tZWRpYXRlay92Y29kZWMvZW5j
b2Rlci9tdGtfdmNvZGVjX2VuYy5jIHwgMiArLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxh
dGZvcm0vbWVkaWF0ZWsvdmNvZGVjL2VuY29kZXIvbXRrX3Zjb2RlY19lbmMuYyBiL2RyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vbWVkaWF0ZWsvdmNvZGVjL2VuY29kZXIvbXRrX3Zjb2RlY19lbmMuYwo+
IGluZGV4IGViMzgxZmE2ZTdkMS4uMTgxODg0ZTc5OGZkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vbWVkaWF0ZWsvdmNvZGVjL2VuY29kZXIvbXRrX3Zjb2RlY19lbmMuYwo+
ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vbWVkaWF0ZWsvdmNvZGVjL2VuY29kZXIvbXRr
X3Zjb2RlY19lbmMuYwo+IEBAIC05MTIsNyArOTEyLDcgQEAgc3RhdGljIGludCB2YjJvcHNfdmVu
Y19zdGFydF9zdHJlYW1pbmcoc3RydWN0IHZiMl9xdWV1ZSAqcSwgdW5zaWduZWQgaW50IGNvdW50
KQo+ICAgCXJldHVybiAwOwo+ICAgCj4gICBlcnJfc3RhcnRfc3RyZWFtOgo+IC0JZm9yIChpID0g
MDsgaSA8IHEtPm51bV9idWZmZXJzOyArK2kpIHsKPiArCWZvciAoaSA9IDA7IGkgPCB2YjJfZ2V0
X251bV9idWZmZXJzKHEpOyArK2kpIHsKPiAgIAkJc3RydWN0IHZiMl9idWZmZXIgKmJ1ZiA9IHZi
Ml9nZXRfYnVmZmVyKHEsIGkpOwo+ICAgCj4gICAJCS8qCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
