Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7861C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 11:37:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TcFYH4QKTAe2i1RPME3zVZzi6Flq4vN6mh6JT7HqLr8=; b=WejvBv8ykHUl/C
	lfz4ec6iKmxO6oiAMQIw7zW2o17vHBqF3vcv3kN9d8SgLyAohSiUf1dzNXhb8A7z1W5soSZ4eD+Z5
	YeSXsc/popN8L5STPrZHy7yBecY7O2VF07GGi4yJQJuTB9oQLlhjQoyDO9tFoy0pFpl+4fnwSwaZx
	L0C2Us/rHcMLwVaydXbmj4LvcVjuB+0LgY9jpRUqsAAQIyUhwXHurKv3CLyxXXb8qzo0cnd5ZZBer
	pmhHneOz/oxpQDalXSSQV00cpEMdQGpw1cutgKLOWgZwT+layTSp5IOEBvecfxNVQ6L8j+36fX18V
	9XCoH1AOHudoeDiYrT1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r13Lb-0065a0-2z;
	Thu, 09 Nov 2023 11:37:19 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r13LY-0065Y6-1M;
	Thu, 09 Nov 2023 11:37:17 +0000
Received: from [100.116.125.19] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id D800F660748C;
	Thu,  9 Nov 2023 11:37:13 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699529835;
	bh=wUHoc5zpet6eywYkyKBwFgxm3jsVkAzT68bGG5YHoIY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=nkL9i3Il5m690763T3RMOIMD67YVb03EoPmOSqYCDXOlmo75ZLTIXKuy//GXgwLul
	 uHn26mhT0z35qefwsRtuufOwdrvykYJ8yyJxfdZYR35hTqHqOwkvo+PZqZNnqGsIbd
	 SU6USvy4GtCn+VvxmLwPKldxc/wQZo5JRJ7DozA1H1nunrbt4KeMQQersrLbciEYSn
	 WxOMSIeKEp8qJPfQRDgBgiJPjFO3xp+Xw2LSYJQOJJyVpdFFXAKd/Jy1k3El9zI0e9
	 PQj0GdJqxJ6wQZTY/33Fb8MpBnn2SFQNtLojwoPhM00+gFhQZMh5KLSVfO7ckAd9Mp
	 FBE0SBgZySLyA==
Message-ID: <71cfb62d-1ad0-41cf-ac7e-f0a9ac6fe926@collabora.com>
Date: Thu, 9 Nov 2023 12:37:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 42/56] media: usb: usbtv: Stop direct calls to queue
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
 linux-staging@lists.linux.dev, kernel@collabora.com
References: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
 <20231031163104.112469-43-benjamin.gaignard@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20231031163104.112469-43-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_033716_609110_266D277A 
X-CRM114-Status: GOOD (  14.33  )
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
b20+Cgo+IC0tLQo+ICAgZHJpdmVycy9tZWRpYS91c2IvdXNidHYvdXNidHYtdmlkZW8uYyB8IDUg
KysrLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0p
Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvdXNiL3VzYnR2L3VzYnR2LXZpZGVvLmMg
Yi9kcml2ZXJzL21lZGlhL3VzYi91c2J0di91c2J0di12aWRlby5jCj4gaW5kZXggMWUzMGUwNTk1
M2RjLi42MmE1ODMwNDBjZDQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS91c2IvdXNidHYv
dXNidHYtdmlkZW8uYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvdXNiL3VzYnR2L3VzYnR2LXZpZGVv
LmMKPiBAQCAtNzI2LDkgKzcyNiwxMCBAQCBzdGF0aWMgaW50IHVzYnR2X3F1ZXVlX3NldHVwKHN0
cnVjdCB2YjJfcXVldWUgKnZxLAo+ICAgewo+ICAgCXN0cnVjdCB1c2J0diAqdXNidHYgPSB2YjJf
Z2V0X2Rydl9wcml2KHZxKTsKPiAgIAl1bnNpZ25lZCBzaXplID0gVVNCVFZfQ0hVTksgKiB1c2J0
di0+bl9jaHVua3MgKiAyICogc2l6ZW9mKHUzMik7Cj4gKwl1bnNpZ25lZCBpbnQgcV9udW1fYnVm
cyA9IHZiMl9nZXRfbnVtX2J1ZmZlcnModnEpOwo+ICAgCj4gLQlpZiAodnEtPm51bV9idWZmZXJz
ICsgKm5idWZmZXJzIDwgMikKPiAtCQkqbmJ1ZmZlcnMgPSAyIC0gdnEtPm51bV9idWZmZXJzOwo+
ICsJaWYgKHFfbnVtX2J1ZnMgKyAqbmJ1ZmZlcnMgPCAyKQo+ICsJCSpuYnVmZmVycyA9IDIgLSBx
X251bV9idWZzOwo+ICAgCWlmICgqbnBsYW5lcykKPiAgIAkJcmV0dXJuIHNpemVzWzBdIDwgc2l6
ZSA/IC1FSU5WQUwgOiAwOwo+ICAgCSpucGxhbmVzID0gMTsKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
