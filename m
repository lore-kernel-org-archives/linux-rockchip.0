Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CB35C04E83
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 10:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tayXdHPZ0NLI5GGYzuMmjxzLv2VG3biQnQ+RP1Wekxw=; b=YgUCWi2oVKzob6
	IdDuWNDXUv8e6JTwOi9bTcpxsXnXZMbk7c4MrUwo9dLhmVIxnB/ch5y305y0luAJpBQcK+wSgLGg2
	3rze/ZUCc+fI61O/tC92O/Z0Q/Sv1xL0kcaVoGOZXab/z5gslq67Wtd6jWK2ucKu7v7qaDDYqbXMc
	fOHEUck3wFFiafPIxmmDo6srt9WdqIb3F8aaGP2pblGdSyl+hz7OZ+jS+ztTq9ytXyHjoN8pPjw7a
	GznoqlVWcJp+VHxrq/xkzw4u40OU7GfuSJNWV/iH7tgcm6vMl6BR7xFaEkIMDZKkUb/LAHw3dQowe
	5GAKVUEFZ4eWiOkQNHuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r123m-005tej-2i;
	Thu, 09 Nov 2023 10:14:50 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r123j-005tcQ-0s;
	Thu, 09 Nov 2023 10:14:48 +0000
Received: from [100.98.136.55] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 16FA0660745F;
	Thu,  9 Nov 2023 10:14:43 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699524884;
	bh=DYQUOdQcPcJ4Aq46KvrXHshkkZ0xtkz1temE8dvo4hY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=jGFnl9QYxLTR1iCasDsKgh5KjX0WEiVITzhb2iP3q2GV6W7TaWBnb8T3n4llYsxIT
	 7foTAs37hfm+thUbvOafvV6atzvZBSxXd+IYp+P97xkAA34AGjDhixQHoTJFQNS6Hb
	 QsnIe4dAkBAnWYUHUiKV3HHD9Cl33RYsFbJGwgkb/54LkLTIWZUL3ZWPeffNrD1M/o
	 ReO1b1RAmKUUeFqiEF29N3EQibA1Px8cNTrth7gkES0UPscm2JQbvpDeUHJLQysYPh
	 15JWxvJm1jX7z737UZrErqZ7swEBsl+XDlYV6vGCU4k+EfuyGJ+EBKg6RjOQZZzS+B
	 uGhYi+jKIeUvQ==
Message-ID: <a8bbf1b7-5f9b-4466-84ec-88f3fb2568dc@collabora.com>
Date: Thu, 9 Nov 2023 11:14:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 19/56] media: dvb-core: Do not initialize twice queue
 num_buffer field
Content-Language: en-US
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>, mchehab@kernel.org,
 tfiga@chromium.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, hverkuil-cisco@xs4all.nl,
 nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel@collabora.com
References: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
 <20231031163104.112469-20-benjamin.gaignard@collabora.com>
 <fc11c361-7d5b-493f-96c8-8495293f2544@collabora.com>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <fc11c361-7d5b-493f-96c8-8495293f2544@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_021447_464691_5C20B279 
X-CRM114-Status: GOOD (  14.61  )
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

CkxlIDA5LzExLzIwMjMgw6AgMTA6NTAsIEFuZHJ6ZWogUGlldHJhc2lld2ljeiBhIMOpY3JpdMKg
Ogo+IEhpIEJlbmphbWluLAo+Cj4gVyBkbml1IDMxLjEwLjIwMjMgb8KgMTc6MzAsIEJlbmphbWlu
IEdhaWduYXJkIHBpc3plOgo+PiBUaGUgYWJvdmUgbWVtc2V0IGFscmVhZHkgemVyb2VkIGFsbCB0
aGUgY3R4IGZpZWxkcywgaXQgaXMgdXNlbGVzcwo+PiB0byBkbyBpdCBoZXJlIGFnYWluLgo+Pgo+
PiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29s
bGFib3JhLmNvbT4KPj4gLS0tCj4+IMKgIGRyaXZlcnMvbWVkaWEvZHZiLWNvcmUvZHZiX3ZiMi5j
IHwgMSAtCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAxIGRlbGV0aW9uKC0pCj4+Cj4+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL21lZGlhL2R2Yi1jb3JlL2R2Yl92YjIuYyAKPj4gYi9kcml2ZXJzL21lZGlh
L2R2Yi1jb3JlL2R2Yl92YjIuYwo+PiBpbmRleCAzYTk2NmZkZjgxNGMuLmE3MzFiNzU1YTBiOSAx
MDA2NDQKPj4gLS0tIGEvZHJpdmVycy9tZWRpYS9kdmItY29yZS9kdmJfdmIyLmMKPj4gKysrIGIv
ZHJpdmVycy9tZWRpYS9kdmItY29yZS9kdmJfdmIyLmMKPj4gQEAgLTE3Nyw3ICsxNzcsNiBAQCBp
bnQgZHZiX3ZiMl9pbml0KHN0cnVjdCBkdmJfdmIyX2N0eCAqY3R4LCBjb25zdCAKPj4gY2hhciAq
bmFtZSwgaW50IG5vbmJsb2NraW5nKQo+PiDCoMKgwqDCoMKgIHEtPm9wcyA9ICZkdmJfdmIyX3Fv
cHM7Cj4+IMKgwqDCoMKgwqAgcS0+bWVtX29wcyA9ICZ2YjJfdm1hbGxvY19tZW1vcHM7Cj4+IMKg
wqDCoMKgwqAgcS0+YnVmX29wcyA9ICZkdmJfdmIyX2J1Zl9vcHM7Cj4+IC3CoMKgwqAgcS0+bnVt
X2J1ZmZlcnMgPSAwOwo+Cj4gQSBmZXcgbGluZXMgYWJvdmUgdGhpcyBvbmUgaXMgdGhpczoKPgo+
IMKgwqDCoMKgcS0+aXNfb3V0cHV0ID0gMDsKPgo+IENhbiB0aGlzIGFsc28gYmUgaW5jbHVkZWQg
aW4gdGhpcyAoY2xlYW51cCkgcGF0Y2g/CgpOaWNlIGNhdGNoLCBJIHdpbGwgYWRkIGl0LgoKVGhh
bmtzLApCZW5qYW1pbgoKPgo+IFJlZ2FyZHMsCj4KPiBBbmRyemVqCj4KPj4gwqDCoMKgwqDCoCBy
ZXQgPSB2YjJfY29yZV9xdWV1ZV9pbml0KHEpOwo+PiDCoMKgwqDCoMKgIGlmIChyZXQpIHsKPj4g
wqDCoMKgwqDCoMKgwqDCoMKgIGN0eC0+c3RhdGUgPSBEVkJfVkIyX1NUQVRFX05PTkU7Cj4KPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEtlcm5lbCBt
YWlsaW5nIGxpc3QgLS0ga2VybmVsQG1haWxtYW4uY29sbGFib3JhLmNvbQo+IFRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8ga2VybmVsLWxlYXZlQG1haWxtYW4uY29sbGFib3JhLmNvbQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
