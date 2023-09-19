Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 594C5CD54AF
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Sep 2023 10:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9VbtpFpiQTpMXLRaWCEM6kbC3SYTTG8QSWb4TboiYdg=; b=fw/PBTb8fr1yQb
	DKkUUKss6mFcUmjomTcjVlx2/0zZloYDkn/hQHLyZU9fD0iCCiYkY5V/rI4TOoQXC3b1OiHQpg/BR
	Juo8Wss5JNSLwq50UUy+krn40FR7EYm0L4Ks+RrLnexFjSKHATy+FfI8u9viFsqfSjqiUANd2eFvJ
	6rVlxFVL07y1TTNWIwPlIIMxOrtpfhhgWltJEvoN6DQWcMprC/e7sWkmlyIa6E0ReItGgz4ZWBb7B
	EnjpHWJEIbBVc6BWMGNNgpcif83TkLRDORuxulB6o8eCc0Ijz0iTQPGZiVzetMODTm0hDJ3K/ODbC
	8obS76dgW4tNYakiTYAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiXwW-00019S-2K;
	Tue, 19 Sep 2023 10:26:56 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiXwT-00017Z-05;
	Tue, 19 Sep 2023 10:26:54 +0000
Received: from [IPV6:2a01:e0a:120:3210:f3aa:7b57:c12d:de68] (unknown [IPv6:2a01:e0a:120:3210:f3aa:7b57:c12d:de68])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 0458166071A9;
	Tue, 19 Sep 2023 11:26:47 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1695119208;
	bh=9GznNVqH1Ybwr4tIQTMWuRZGIorRMwUugPSjPmcCLZw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=XO9H4/8C7f+OUKeg1Mkv+AUV19wPV/ZlVGl2jFaXnKFn49tesOobnKUVYgrqzkFdD
	 AmgO61O+MqKYj0RPLSjtO1CXKKVhRKhknNmQHBs5FoTRTI1CsOw62ZWYaL9OJvfTuI
	 0R4jtMtjVguGXM0jZb/hSOrkXrrtDJ4dV1xldBkR0FE8QSvcIMkM2x/2x47d9aFBSY
	 gMKGn3ySqqk6PYDuoiP2T7VnYDpXDfUS6NFnsT7Uvq3YBTQK8PvwkYmNZlu9NcLjH7
	 5Vaa+35SR1wCEASc1HRyeax3SKlWLMnnsZ0qABRUIW1jwYCO/9rUz4EwORBOviWy5g
	 wjwScOpQKTSQw==
Message-ID: <ecfd1641-3cce-dfa4-b88c-3619fb12d710@collabora.com>
Date: Tue, 19 Sep 2023 12:26:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v7 07/49] media: sti: hva: Use vb2_get_buffer() instead of
 directly access to buffers array
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, mchehab@kernel.org,
 tfiga@chromium.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel@collabora.com
References: <20230914133323.198857-1-benjamin.gaignard@collabora.com>
 <20230914133323.198857-8-benjamin.gaignard@collabora.com>
 <93e9b143-664c-4fbb-8722-0beabd5b2c0c@xs4all.nl>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <93e9b143-664c-4fbb-8722-0beabd5b2c0c@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230919_032653_215335_F578D0D4 
X-CRM114-Status: GOOD (  14.69  )
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

CkxlIDE5LzA5LzIwMjMgw6AgMTE6MzEsIEhhbnMgVmVya3VpbCBhIMOpY3JpdMKgOgo+IE9uIDE0
LzA5LzIwMjMgMTU6MzIsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+PiBVc2UgdmIyX2dldF9i
dWZmZXIoKSBpbnN0ZWFkIG9mIGRpcmVjdGx5IGFjY2VzcyB0byB2YjJfYnVmZmVyIGJ1ZmZlciBh
cnJheS4KPj4gVGhpcyBjb3VsZCBhbGxvdyB0byBjaGFuZ2UgdGhlIHR5cGUgYnVmc1tdIGZpZWxk
IG9mIHZiMl9idWZmZXIgc3RydWN0dXJlIGlmCj4+IG5lZWRlZC4KPj4gQWZ0ZXIgZWFjaCBjYWxs
IHRvIHZiMl9nZXRfYnVmZmVyKCkgd2UgbmVlZCB0byBiZSBzdXJlIHRoYXQgd2UgZ2V0Cj4+IGEg
dmFsaWQgcG9pbnRlciBzbyBjaGVjayB0aGUgcmV0dXJuIHZhbHVlIG9mIGFsbCBvZiB0aGVtLgo+
Pgo+PiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRA
Y29sbGFib3JhLmNvbT4KPj4gLS0tCj4+ICAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9zdC9zdGkv
aHZhL2h2YS12NGwyLmMgfCA0ICsrKysKPj4gICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25z
KCspCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3N0L3N0aS9odmEv
aHZhLXY0bDIuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3Qvc3RpL2h2YS9odmEtdjRsMi5j
Cj4+IGluZGV4IDNhODQ4Y2EzMmEwZS4uMzI2YmUwOWJkYjU1IDEwMDY0NAo+PiAtLS0gYS9kcml2
ZXJzL21lZGlhL3BsYXRmb3JtL3N0L3N0aS9odmEvaHZhLXY0bDIuYwo+PiArKysgYi9kcml2ZXJz
L21lZGlhL3BsYXRmb3JtL3N0L3N0aS9odmEvaHZhLXY0bDIuYwo+PiBAQCAtNTc3LDYgKzU3Nywx
MCBAQCBzdGF0aWMgaW50IGh2YV9xYnVmKHN0cnVjdCBmaWxlICpmaWxlLCB2b2lkICpwcml2LCBz
dHJ1Y3QgdjRsMl9idWZmZXIgKmJ1ZikKPj4gICAJCX0KPiBBYm92ZSB0aGlzIGxpbmUgdGhlcmUg
aXMgYSBidWYtPmluZGV4IGNoZWNrLi4uCj4KPj4gICAKPj4gICAJCXZiMl9idWYgPSB2YjJfZ2V0
X2J1ZmZlcih2cSwgYnVmLT5pbmRleCk7Cj4+ICsJCWlmICghdmIyX2J1Zikgewo+PiArCQkJZGV2
X2RiZyhkZXYsICIlcyBidWZmZXIgaW5kZXggJWQgbm90IGZvdW5kXG4iLCBjdHgtPm5hbWUsIGJ1
Zi0+aW5kZXgpOwo+PiArCQkJcmV0dXJuIC1FSU5WQUw7Cj4+ICsJCX0KPiAuLi5JIHRoaW5rIHRo
YXQgY2hlY2sgY2FuIGJlIGRyb3BwZWQgc2luY2UgdmIyX2dldF9idWZmZXIgY2hlY2tzIHRoYXQg
YWxyZWFkeS4KCk5vIGJlY2F1c2UgaW4gIm1lZGlhOiBzdGk6IGh2YTogU3RvcCBkaXJlY3QgY2Fs
bHMgdG8gcXVldWUgbnVtX2J1ZmZlcnMgZmllbGQiIHBhdGNoCkkgcmVtb3ZlIHRoZSBhYm92ZSBj
aGVjayBzaW5jZSBpdCB1c2UgcXVldWUgbnVtX2J1ZmZlcnMgZmllbGQuCgpSZWdhcmRzLApCZW5q
YW1pbgoKPgo+IFJlZ2FyZHMsCj4KPiAJSGFucwo+Cj4+ICAgCQlzdHJlYW0gPSB0b19odmFfc3Ry
ZWFtKHRvX3ZiMl92NGwyX2J1ZmZlcih2YjJfYnVmKSk7Cj4+ICAgCQlzdHJlYW0tPmJ5dGVzdXNl
ZCA9IGJ1Zi0+Ynl0ZXN1c2VkOwo+PiAgIAl9Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
