Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BC8FCE79DE
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Sep 2023 14:56:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RLetgVJzAhNK5cDgYKmYD544K3HwLAvL6cd4A90Ptdc=; b=UBVVqBF/LtJb3g
	Xt6dx3O3T3hG1oTi/nM+Hea+WPE4IKVm7j80z9kaQtmD3Cx0NVYO3mvT6EFg5tBo2DvnLCz/Oz1UW
	VjNBWlD8A8ZrJVkA/7/PUBJGZm/rgf+lnLJbFhG3J/a4ClLVEakDv6bh1glluwzMjxBbJoyqSZwvl
	dUXmlqN2nHjTpd6Eh7wB1leqBgQc3ckneSKJPUcSga37WkqBbC+syOPtTu57PpVSZldm96jUz4WfF
	D1TPPpUnZGcC/NRMqPkzfgjz2Rf+6BN47vIkSSX405/R07qcoNkoCS76g3j6s+8JZnGm4cqCkSwpv
	hTl833sHeKJnKcmzEKbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiyd4-003QzF-2O;
	Wed, 20 Sep 2023 14:56:38 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiycz-003Qxd-3A;
	Wed, 20 Sep 2023 14:56:35 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 35B3C61A1D;
	Wed, 20 Sep 2023 14:56:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E83CC433C9;
	Wed, 20 Sep 2023 14:56:29 +0000 (UTC)
Message-ID: <470682b4-c14b-4237-bc46-fddfdd085026@xs4all.nl>
Date: Wed, 20 Sep 2023 16:56:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 45/49] media: core: Add bitmap manage bufs array
 entries
Content-Language: en-US, nl
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
 tfiga@chromium.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel@collabora.com
References: <20230914133323.198857-1-benjamin.gaignard@collabora.com>
 <20230914133323.198857-46-benjamin.gaignard@collabora.com>
 <1142bbb4-b8f1-44ec-962e-9347a231782f@xs4all.nl>
 <20b6b93e-eef8-3d7b-a3c2-795f220059d4@collabora.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
In-Reply-To: <20b6b93e-eef8-3d7b-a3c2-795f220059d4@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230920_075634_092053_D691933B 
X-CRM114-Status: GOOD (  12.73  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjAvMDkvMjAyMyAxNjozMCwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4gCgo8c25pcD4K
Cj4+PiDCoMKgwqDCoMKgIG51bV9idWZmZXJzID0gbWluX3QodW5zaWduZWQgaW50LCBudW1fYnVm
ZmVycywKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcS0+bWF4X2FsbG93
ZWRfYnVmZmVycyAtIHZiMl9nZXRfbnVtX2J1ZmZlcnMocSkpOwo+Pj4gwqAgLcKgwqDCoCBmaXJz
dF9pbmRleCA9IHZiMl9nZXRfbnVtX2J1ZmZlcnMocSk7Cj4+PiArwqDCoMKgIGZpcnN0X2luZGV4
ID0gYml0bWFwX2ZpbmRfbmV4dF96ZXJvX2FyZWEocS0+YnVmc19tYXAsIHEtPm1heF9hbGxvd2Vk
X2J1ZmZlcnMsCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIDAsIG51bV9idWZmZXJzLCAwKTsKPj4+IMKgIMKgwqDCoMKgwqAgaWYgKGZpcnN0X2lu
ZGV4ID49IHEtPm1heF9hbGxvd2VkX2J1ZmZlcnMpCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0
dXJuIDA7Cj4+PiBAQCAtNjc1LDcgKzY3OCwxMyBAQCBzdGF0aWMgdm9pZCBfX3ZiMl9xdWV1ZV9m
cmVlKHN0cnVjdCB2YjJfcXVldWUgKnEsIHVuc2lnbmVkIGludCBidWZmZXJzKQo+Pj4gwqAgwqAg
c3RydWN0IHZiMl9idWZmZXIgKnZiMl9nZXRfYnVmZmVyKHN0cnVjdCB2YjJfcXVldWUgKnEsIHVu
c2lnbmVkIGludCBpbmRleCkKPj4+IMKgIHsKPj4+IC3CoMKgwqAgaWYgKGluZGV4IDwgcS0+bnVt
X2J1ZmZlcnMpCj4+PiArwqDCoMKgIGlmICghcS0+YnVmc19tYXAgfHwgIXEtPmJ1ZnMpCj4+PiAr
wqDCoMKgwqDCoMKgwqAgcmV0dXJuIE5VTEw7Cj4+IEkgZG9uJ3QgdGhpbmsgdGhpcyBjYW4gZXZl
ciBoYXBwZW4uCj4gCj4gSSBnb3Qga2VybmVsIGNyYXNoIHdpdGhvdXQgdGhlbS4KPiBJIHdpbGwg
a2VlcCB0aGVtLgoKV2hhdCBpcyB0aGUgYmFja3RyYWNlPyBIb3cgY2FuIHRoaXMgaGFwcGVuPyBJ
dCBmZWVscyB3cm9uZyB0aGF0IHRoaXMgY2FuIGJlCmNhbGxlZCB3aXRoIGEgdmIyX3F1ZXVlIHRo
YXQgYXBwYXJlbnRseSBpcyBub3QgcHJvcGVybHkgaW5pdGlhbGl6ZWQuCgo+Pj4gKwo+Pj4gK8Kg
wqDCoCByZXR1cm4gKGJpdG1hcF93ZWlnaHQocS0+YnVmc19tYXAsIHEtPm1heF9hbGxvd2VkX2J1
ZmZlcnMpID4gMCk7Cj4+IEhvdyBhYm91dDoKPj4KPj4gwqDCoMKgwqByZXR1cm4gdmIyX2dldF9u
dW1fYnVmZmVycyhxKSA+IDA7Cj4gCj4gdmIyX2dldF9udW1fYnVmZmVycyBpcyBkZWZpbmVkIGlu
IHZpZGVvYnVmMi1jb3JlLmMsIEknbSBub3Qgc3VyZSB0aGF0Cj4gYW4gaW5saW5lIGZ1bmN0aW9u
IGNvdWxkIGRlcGVuZCBvZiBhIG1vZHVsZSBmdW5jdGlvbi4KCk5vdCBhIHByb2JsZW0uIEUuZy4g
djRsMi1jdHJscy5oIGlzIGZ1bGwgb2Ygc3VjaCBzdGF0aWMgaW5saW5lcy4KClJlZ2FyZHMsCgoJ
SGFucwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
