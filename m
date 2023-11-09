Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45A70C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 10:22:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tuDyAd9Ll+DxXdyNX4i2tYjYzlEeGcfxQrb6h+U/fTU=; b=BBoijeYyoz/rAc
	+8My1AQ/KJJvFy9tBNytJdqvj+ig6VwD1Lm7ggYp28kIW1YeOappNYirk2swOdMtUN4fj0NctExjh
	zsm6J/WarW2F3/NsilonXJHFHMFnC/XUGAVWMhy+osvu1Mcsdvs64k/sYZgMP4xbAa6+5/cQRb4PT
	ZNbrtgolNqkZLmrpIUbMcRFHp/MHrfPmCUxVJUM6Ed0MYHot8grkE8ArPLl6nZyvxQHmbq63CAPBG
	ZYwGWNQW4VbLrzYdvgmdt3CSv++Oz7DUlXyqNGKbM8OUL4F4Al/n1rxupvNw9LjzDzo8jLbPdWqfy
	Qxfl5Dk05pzR37bwWebA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r12BJ-005vmi-1P;
	Thu, 09 Nov 2023 10:22:37 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r12BF-005vkv-30;
	Thu, 09 Nov 2023 10:22:35 +0000
Received: from [100.116.125.19] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 4FC5D660747A;
	Thu,  9 Nov 2023 10:22:31 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699525352;
	bh=5oMqGWhF9RtFUcxPr/fM8cd9uEm13ZIxqeJzzqdaq38=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=QUdgUF2fKcDypDFObSyWWny1FqwVvon5uDJzoGpZq+KMdCfSY3qXuj2XKRdTAnXwE
	 Z2OykGhHE/8XWjFLhkXY70fLSUchYhHr6AoB/jIDQHD2RU16NgTzcq0jL29x8dYNVN
	 fwh7M7lDgp4Be+7/x+PkiF4FDjqJCtN2++4JRDUNJE4MJkyHYxRcdjw0PBdl3nU6wL
	 KLHVNGYfieNT8lWgn8kB2adh0Ati2sqyf7xH6kwkBjEdFAT45Eii+R68fOtByXen43
	 yQxhUqOZ5+f48amEfmHmeDGILb/mVcKRd1IGNec0+TOU8Hbk+YHlJUs+aEoZm1ovRH
	 iLw1fZ8gx9QtQ==
Message-ID: <9ffdd38e-4c79-45c4-a99a-327d36728f44@collabora.com>
Date: Thu, 9 Nov 2023 11:22:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 27/56] media: coda: Stop direct calls to queue
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
 <20231031163104.112469-28-benjamin.gaignard@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20231031163104.112469-28-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_022234_105035_46BD9EDE 
X-CRM114-Status: GOOD (  12.68  )
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
b20+Cgo+IENDOiBQaGlsaXBwIFphYmVsIDxwLnphYmVsQHBlbmd1dHJvbml4LmRlPgo+IC0tLQo+
ICAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9jaGlwcy1tZWRpYS9jb2RhLWNvbW1vbi5jIHwgMiAr
LQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vY2hpcHMtbWVkaWEvY29kYS1jb21t
b24uYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vY2hpcHMtbWVkaWEvY29kYS1jb21tb24uYwo+
IGluZGV4IGNjNDg5MjEyOWFhZi4uZjFkODU3NThmNmRkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vY2hpcHMtbWVkaWEvY29kYS1jb21tb24uYwo+ICsrKyBiL2RyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vY2hpcHMtbWVkaWEvY29kYS1jb21tb24uYwo+IEBAIC03OTQsNyArNzk0
LDcgQEAgc3RhdGljIGludCBjb2RhX3NfZm10KHN0cnVjdCBjb2RhX2N0eCAqY3R4LCBzdHJ1Y3Qg
djRsMl9mb3JtYXQgKmYsCj4gICAKPiAgIAlpZiAodmIyX2lzX2J1c3kodnEpKSB7Cj4gICAJCXY0
bDJfZXJyKCZjdHgtPmRldi0+djRsMl9kZXYsICIlczogJXMgcXVldWUgYnVzeTogJWRcbiIsCj4g
LQkJCSBfX2Z1bmNfXywgdjRsMl90eXBlX25hbWVzW2YtPnR5cGVdLCB2cS0+bnVtX2J1ZmZlcnMp
Owo+ICsJCQkgX19mdW5jX18sIHY0bDJfdHlwZV9uYW1lc1tmLT50eXBlXSwgdmIyX2dldF9udW1f
YnVmZmVycyh2cSkpOwo+ICAgCQlyZXR1cm4gLUVCVVNZOwo+ICAgCX0KPiAgIAoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
