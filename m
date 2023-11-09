Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E303C4167D
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 10:27:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qh+7GObcIgYlZ8iQAQvE/eRsVqlfViBm02xZVFjVEVk=; b=bCF0HOHD1nZ/F2
	4TeN9pkuid5adnZJB9HfVLOKKHRbFnBBxceBEQpv86Q8/FeAa5JzfSv9Zgfc7hvVFdP/xnrrRXu06
	SPWtZ0hw4/MjT9YMkcScAWmG0s1Whv+cZNJzaCYmdpZfK3DVaOkojxJv26DfCdq0Kj5nO506LKmWQ
	rilHS5+d4KqXsA29o2r8TgAsZUBxpF7BkIEmbYGfCH5i1X2s+JHhozBKKQnHpjF77bnV3/RQe9KN2
	RUt2aoMhmniveaYtmVRn9MWa3AMO0FY4fSFfXgS5Mp+DNFOUSRw4p5pAbCZT1KxOMHzh9UM0Ve/0A
	UJ7c/ddwnMLBR9iV8eMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r12Fb-005wsQ-38;
	Thu, 09 Nov 2023 10:27:03 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r12FY-005wqW-1t;
	Thu, 09 Nov 2023 10:27:01 +0000
Received: from [100.98.136.55] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 5CEAD660747A;
	Thu,  9 Nov 2023 10:26:58 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699525619;
	bh=Dppw+eChOPaHwmg9+mdNbnBcLPL6bcEoiuHmKGTC7O8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=kAmtXuQ2qb9vCgH1kc/tqw9Av6XQt+zwUcKt3yALlnxGYR1he8Buedg1Y0NxHEk82
	 H7R3hlCf9t2VZ58DfuRo5XiXjYUGtup0DICyoBPjE/pWwBp9jRXJNkNQHTbf0IOXhV
	 Yvwu+jpMwaEPVpPr2avsgZnIBpkDlyE+BnCD5d0ELORcbGfiQ1YirngYblxe3CNMR5
	 eOmpWClqC4n/xCEQR6qllMXbt4Qc1WYpVLKfls0y2OSO9/Zf/YNhjE3/HqsjkXLruT
	 o7y+l71HIeBXXHXeONKnXn15dVfoIkavr4Q9LmPgyW56D/f1Sv0Tj2oIYEj02E63Y4
	 m1X3gsnFMqD+A==
Message-ID: <fa68feca-15db-4d0a-a8b2-859f997e5e38@collabora.com>
Date: Thu, 9 Nov 2023 11:26:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 26/56] media: i2c: video-i2c: Stop direct calls to
 queue num_buffers field
Content-Language: en-US
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>, mchehab@kernel.org,
 tfiga@chromium.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, hverkuil-cisco@xs4all.nl,
 nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel@collabora.com,
 Matt Ranostay <matt.ranostay@konsulko.com>
References: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
 <20231031163104.112469-27-benjamin.gaignard@collabora.com>
 <683359b7-bab4-4eef-a047-c3dc1a04f9d6@collabora.com>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <683359b7-bab4-4eef-a047-c3dc1a04f9d6@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_022700_752449_153D6AA6 
X-CRM114-Status: GOOD (  21.14  )
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

CkxlIDA5LzExLzIwMjMgw6AgMTE6MTgsIEFuZHJ6ZWogUGlldHJhc2lld2ljeiBhIMOpY3JpdMKg
Ogo+IEhpIEJlbmphbWluLAo+Cj4gVyBkbml1IDMxLjEwLjIwMjMgb8KgMTc6MzAsIEJlbmphbWlu
IEdhaWduYXJkIHBpc3plOgo+PiBVc2UgdmIyX2dldF9udW1fYnVmZmVycygpIHRvIGF2b2lkIHVz
aW5nIHF1ZXVlIG51bV9idWZmZXJzIGZpZWxkIAo+PiBkaXJlY3RseS4KPj4gVGhpcyBhbGxvd3Mg
dXMgdG8gY2hhbmdlIGhvdyB0aGUgbnVtYmVyIG9mIGJ1ZmZlcnMgaXMgY29tcHV0ZWQgaW4gdGhl
Cj4+IGZ1dHVyZS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmph
bWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+Cj4+IENDOiBNYXR0IFJhbm9zdGF5IDxtYXR0LnJh
bm9zdGF5QGtvbnN1bGtvLmNvbT4KPj4gLS0tCj4+IMKgIGRyaXZlcnMvbWVkaWEvaTJjL3ZpZGVv
LWkyYy5jIHwgNSArKystLQo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAy
IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9pMmMvdmlkZW8t
aTJjLmMgCj4+IGIvZHJpdmVycy9tZWRpYS9pMmMvdmlkZW8taTJjLmMKPj4gaW5kZXggMTc4YmQw
NmNjMmVkLi5lYmYyYWM5OGEwNjggMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbWVkaWEvaTJjL3Zp
ZGVvLWkyYy5jCj4+ICsrKyBiL2RyaXZlcnMvbWVkaWEvaTJjL3ZpZGVvLWkyYy5jCj4+IEBAIC00
MDUsOSArNDA1LDEwIEBAIHN0YXRpYyBpbnQgcXVldWVfc2V0dXAoc3RydWN0IHZiMl9xdWV1ZSAq
dnEsCj4+IMKgIHsKPj4gwqDCoMKgwqDCoCBzdHJ1Y3QgdmlkZW9faTJjX2RhdGEgKmRhdGEgPSB2
YjJfZ2V0X2Rydl9wcml2KHZxKTsKPj4gwqDCoMKgwqDCoCB1bnNpZ25lZCBpbnQgc2l6ZSA9IGRh
dGEtPmNoaXAtPmJ1ZmZlcl9zaXplOwo+PiArwqDCoMKgIHVuc2lnbmVkIGludCBxX251bV9idWZz
ID0gdmIyX2dldF9udW1fYnVmZmVycyh2cSk7Cj4+IMKgIC3CoMKgwqAgaWYgKHZxLT5udW1fYnVm
ZmVycyArICpuYnVmZmVycyA8IDIpCj4+IC3CoMKgwqDCoMKgwqDCoCAqbmJ1ZmZlcnMgPSAyOwo+
PiArwqDCoMKgIGlmIChxX251bV9idWZzICsgKm5idWZmZXJzIDwgMikKPj4gK8KgwqDCoMKgwqDC
oMKgICpuYnVmZmVycyA9IDIgLSBxX251bV9idWZzOwo+Cj4gVGhpcyBhY3R1YWxseSBjaGFuZ2Vz
IHRoZSBsb2dpYy4gTWF5YmUgaXQgaGFzIGFscmVhZHkgYmVlbiBkaXNjdXNzZWQgYW5kCj4gdGhl
IHJlc3VsdCBvZiB0aGF0IGRpc2N1c3Npb24gaXMgdGhpcyBjaGFuZ2UgaW4gbG9naWM/IExvb2tp
bmcgYXQgb3RoZXIKPiBkcml2ZXJzICpuYnVmZmVycyA9IDIgLSBxX251bV9idWZzOyBzZWVtcyB0
aGUgcmlnaHQgdGhpbmcgdG8gZG8uCj4gQnV0IHRoZW4gYXQgbGVhc3QgdGhlIGNvbW1pdCBtZXNz
YWdlIGJvZHkgSU1PIHNob3VsZCBtZW50aW9uIHRoaXMgY2hhbmdlLgo+IE9yLCBwcmVmZXJhYmx5
LCB0aGUgY2hhbmdlIGluIGxvZ2ljIHNob3VsZCBiZSBhIHNlcGFyYXRlIHBhdGNoIHRvIGJlIAo+
IGFwcGxpZWQKPiBiZWZvcmUgdGhpcyBvbmUuCgpJIHdpbGwgYWRkIHdvcmQgYWJvdXQgdGhhdCBp
biB0aGUgY29tbWl0IG1lc3NhZ2UuClRoYW5rcy4KQmVuamFtaW4KCj4KPiBSZWdhcmRzLAo+Cj4g
QW5kcnplago+Cj4+IMKgIMKgwqDCoMKgwqAgaWYgKCpucGxhbmVzKQo+PiDCoMKgwqDCoMKgwqDC
oMKgwqAgcmV0dXJuIHNpemVzWzBdIDwgc2l6ZSA/IC1FSU5WQUwgOiAwOwo+Cj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBLZXJuZWwgbWFpbGluZyBs
aXN0IC0tIGtlcm5lbEBtYWlsbWFuLmNvbGxhYm9yYS5jb20KPiBUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIGtlcm5lbC1sZWF2ZUBtYWlsbWFuLmNvbGxhYm9yYS5jb20KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
