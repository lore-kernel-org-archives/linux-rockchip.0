Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5720EC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 09:30:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aGW7BiL5xtAGuNRBXNfjIb9YwEwxAfaBT+NRE5hPVQI=; b=OVFKOQpUOlAcUd
	xHFiTb5DjzcwG6m3xWEL0J+oEtkfj123Qrmkmgc4Na5rPX0W7JwFj/qTbDnvutIaTDd4IiZc0N9nM
	4SPgEzTfUq5SzyarM4M5alYlo0ufOk7ktN4V3GswRKxT9t20EYDyipkf3VgwugzsBoJn04Av+Sriz
	PKR3pWGM15ziaR7DdC+eOE8xHirMPIBbnFpVyG5pzQ0kjJlek9eln+M67/ZKvqnCpw+PDtIDbpWpn
	whw7glK7WIykb3i/u39orAwzKOlt5D8nxs+K6GogXdtyQuO2ys6Dj63v9MNPVZ5gtKeocjgDUpAK0
	Rq70fUGMwaPhcdZfmKcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r11MX-005mkS-13;
	Thu, 09 Nov 2023 09:30:09 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r11MT-005miy-2Z;
	Thu, 09 Nov 2023 09:30:07 +0000
Received: from [100.116.125.19] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 0D57B6607410;
	Thu,  9 Nov 2023 09:30:01 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699522203;
	bh=9DyG7QadW/ZB77/AoaK7eHY4Fj3oy5z9XOUorXxwg9M=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=S4rtDO/y59Vlxzgq+9apsVQ+c0wLEonjrqKtts9FP/zBEeFqFUQ3t/yUeGkMA1NBl
	 mMGxINOPTbW55hhfHMMdk04M7yfVHd8dBtvbF+ExamdW7pYgsqohm+OyICXc7e1qRN
	 F75S7r/aXl7CECgk2bH2+sOPnQ+ik3eZdmKzxTAQtoYr7ZV81MSVYPfPunWB4jBEvS
	 MyNgISo6khl5tK1iS4f4Q4sIQqynZJKFH0YTq2CZTmlU1jyrfI6EvzHgcAqeinL8kI
	 xjxbqc3pGRoLPg3AhuajlyvcQmTmhO2CZjKcc+koKP1JXPV9v8OYqOPHAHgZ2ZSvDc
	 bKujPujjg4Gjw==
Message-ID: <1d9c20f8-9735-4957-b718-7e0835ba7096@collabora.com>
Date: Thu, 9 Nov 2023 10:29:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 14/56] media: sti: hva: Use vb2_get_buffer() instead
 of directly access to buffers array
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
 Jean-Christophe Trotin <jean-christophe.trotin@foss.st.com>
References: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
 <20231031163104.112469-15-benjamin.gaignard@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20231031163104.112469-15-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_013005_989847_78D37CE5 
X-CRM114-Status: GOOD (  19.07  )
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
cmQgcGlzemU6Cj4gVXNlIHZiMl9nZXRfYnVmZmVyKCkgaW5zdGVhZCBvZiBkaXJlY3QgYWNjZXNz
IHRvIHRoZSB2YjJfcXVldWUgYnVmcyBhcnJheS4KPiBUaGlzIGFsbG93cyB1cyB0byBjaGFuZ2Ug
dGhlIHR5cGUgb2YgdGhlIGJ1ZnMgaW4gdGhlIGZ1dHVyZS4KPiBBZnRlciBlYWNoIGNhbGwgdG8g
dmIyX2dldF9idWZmZXIoKSB3ZSBuZWVkIHRvIGJlIHN1cmUgdGhhdCB3ZSBnZXQKPiBhIHZhbGlk
IHBvaW50ZXIgc28gY2hlY2sgdGhlIHJldHVybiB2YWx1ZSBvZiBhbGwgb2YgdGhlbS4KPiBSZW1v
dmUgaW5kZXggcmFuZ2UgdGVzdCBzaW5jZSBpdCBpcyBkb25lIGJ5IHZiMl9nZXRfYnVmZmVyKCku
CgpBY3R1YWxseSwgdGhlIHBhdGNoIHVzZXMgdmIyX2dldF9idWZmZXIoKSBpbnN0ZWFkIG9mIHVz
aW5nIHZiMl9nZXRfYnVmZmVyKCkuCklPVyB2YjJfZ2V0X2J1ZmZlcigpIGNvbnRpbnVlcyB0byBi
ZSB1c2VkIGJlZm9yZSBhbmQgYWZ0ZXIgdGhpcyBwYXRjaCBpcyBhcHBsaWVkLgoKSSdkIHJhdGhl
ciByZWZvcm11bGF0ZSB0aGUgY29tbWl0IG1lc3NhZ2UgYm9keSB0byBzYXkgdGhhdCB3ZSByZW1v
dmUKaW5kZXggY2hlY2sgYmVjYXVzZSBpdCBpcyBhbHJlYWR5IHBlcmZvcm1lZCBieSB2YjJfZ2V0
X2J1ZmZlcigpLCBidXQKaW50cm9kdWNlIGEgY2hlY2sgZm9yIGEgTlVMTCByZXN1bHQuCgpSZWdh
cmRzLAoKQW5kcnplagoKPiAKPiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVu
amFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4KPiBDQzogSmVhbi1DaHJpc3RvcGhlIFRyb3Rp
biA8amVhbi1jaHJpc3RvcGhlLnRyb3RpbkBmb3NzLnN0LmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vc3Qvc3RpL2h2YS9odmEtdjRsMi5jIHwgOSArKystLS0tLS0KPiAgIDEg
ZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3Qvc3RpL2h2YS9odmEtdjRsMi5jIGIvZHJp
dmVycy9tZWRpYS9wbGF0Zm9ybS9zdC9zdGkvaHZhL2h2YS12NGwyLmMKPiBpbmRleCAzYTg0OGNh
MzJhMGUuLmNmZTgzZTlkYzAxYiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3Jt
L3N0L3N0aS9odmEvaHZhLXY0bDIuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3Qv
c3RpL2h2YS9odmEtdjRsMi5jCj4gQEAgLTU2OSwxNCArNTY5LDExIEBAIHN0YXRpYyBpbnQgaHZh
X3FidWYoc3RydWN0IGZpbGUgKmZpbGUsIHZvaWQgKnByaXYsIHN0cnVjdCB2NGwyX2J1ZmZlciAq
YnVmKQo+ICAgCQlzdHJ1Y3QgdmIyX2J1ZmZlciAqdmIyX2J1ZjsKPiAgIAo+ICAgCQl2cSA9IHY0
bDJfbTJtX2dldF92cShjdHgtPmZoLm0ybV9jdHgsIGJ1Zi0+dHlwZSk7Cj4gLQo+IC0JCWlmIChi
dWYtPmluZGV4ID49IHZxLT5udW1fYnVmZmVycykgewo+IC0JCQlkZXZfZGJnKGRldiwgIiVzIGJ1
ZmZlciBpbmRleCAlZCBvdXQgb2YgcmFuZ2UgKCVkKVxuIiwKPiAtCQkJCWN0eC0+bmFtZSwgYnVm
LT5pbmRleCwgdnEtPm51bV9idWZmZXJzKTsKPiArCQl2YjJfYnVmID0gdmIyX2dldF9idWZmZXIo
dnEsIGJ1Zi0+aW5kZXgpOwo+ICsJCWlmICghdmIyX2J1Zikgewo+ICsJCQlkZXZfZGJnKGRldiwg
IiVzIGJ1ZmZlciBpbmRleCAlZCBub3QgZm91bmRcbiIsIGN0eC0+bmFtZSwgYnVmLT5pbmRleCk7
Cj4gICAJCQlyZXR1cm4gLUVJTlZBTDsKPiAgIAkJfQo+IC0KPiAtCQl2YjJfYnVmID0gdmIyX2dl
dF9idWZmZXIodnEsIGJ1Zi0+aW5kZXgpOwo+ICAgCQlzdHJlYW0gPSB0b19odmFfc3RyZWFtKHRv
X3ZiMl92NGwyX2J1ZmZlcih2YjJfYnVmKSk7Cj4gICAJCXN0cmVhbS0+Ynl0ZXN1c2VkID0gYnVm
LT5ieXRlc3VzZWQ7Cj4gICAJfQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
