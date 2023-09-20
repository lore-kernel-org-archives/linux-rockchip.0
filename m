Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD30BC004D6
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Sep 2023 15:18:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=shhOxen3kXBekEbFqZSrDKsq6fWOV7btEh70f+yDggA=; b=fQIjC2hasO8pjS
	C+SRTCyW1/J0biPIwMTG9prnxBIU19wkDUg4dKRLkFb4789E0tk9HOih/VAktmKQCjMgb1mU7Forl
	nNKiHHaZq+AIprptlruNIOrMcA0cEPRgnJ9xWrnJTbOEMV1c820onxWJm+KJ//rmuP8AO38Z4T8sR
	v9qPpBr/WfRQv5V3qknt4Hbc4tf/VXU6yq7X31D6gWspyTGzzVQ4oiYjlgr7NNBrS8CNobxkBVFna
	iWw3xn2aq6dqlNqT/2RYo8XLkMVWH5vfj+H+s595oB403xqcbu9y4UHpCq3UFPu+g38K82zswG1n2
	kF5utXgja4yIbZ8hmVrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiyxb-003Tcl-08;
	Wed, 20 Sep 2023 15:17:51 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiyxX-003Tb6-0r;
	Wed, 20 Sep 2023 15:17:48 +0000
Received: from [IPV6:2a01:e0a:120:3210:def9:8f6c:3807:7d89] (unknown [IPv6:2a01:e0a:120:3210:def9:8f6c:3807:7d89])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 365C366071DC;
	Wed, 20 Sep 2023 16:17:43 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1695223063;
	bh=sVWbeVvViH+sanbxD7UOCdPMVWb4cp4MCMV6I8qEHqU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=fgjOVRxHl8kCiwY7Hcd8T0jWmApbiH0ed+OZ+JjHsOgnk81FeqgeM2NfWKpSyo393
	 tWZdmT/mZxwtvLVhu2lpoxiO3Gj9JGJYBJJVnuDIqefxCVQ6rcdllneEzVEKrRB1/e
	 jNKWiKjocDbGPpaDX3JAMzrBqU0vTo9NCdtaHu1pRNRyWgE8CBjekFaQzyyXhqKEHj
	 jBcC12vTx/Ho6DbjY7Ow4kmQyy53rsA/NxZIfylqsR4qcHvHDrOLELIuaUyr6j0GF6
	 gPylEuqd7wDouKvgZ05UYjO9coGCA0zBwD+8tGXMt3joh1WfqVi77e0AtVidQsYYAl
	 6LF8/U/HCyRCA==
Message-ID: <10a9a265-6910-807a-57c5-62ee41c731a5@collabora.com>
Date: Wed, 20 Sep 2023 17:17:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v7 45/49] media: core: Add bitmap manage bufs array
 entries
Content-Language: en-US
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, mchehab@kernel.org,
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
 <470682b4-c14b-4237-bc46-fddfdd085026@xs4all.nl>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <470682b4-c14b-4237-bc46-fddfdd085026@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230920_081747_433661_5A73C85D 
X-CRM114-Status: GOOD (  14.04  )
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

CkxlIDIwLzA5LzIwMjMgw6AgMTY6NTYsIEhhbnMgVmVya3VpbCBhIMOpY3JpdMKgOgo+IE9uIDIw
LzA5LzIwMjMgMTY6MzAsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+IDxzbmlwPgo+Cj4+Pj4g
IMKgwqDCoMKgwqAgbnVtX2J1ZmZlcnMgPSBtaW5fdCh1bnNpZ25lZCBpbnQsIG51bV9idWZmZXJz
LAo+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHEtPm1heF9hbGxvd2Vk
X2J1ZmZlcnMgLSB2YjJfZ2V0X251bV9idWZmZXJzKHEpKTsKPj4+PiAgwqAgLcKgwqDCoCBmaXJz
dF9pbmRleCA9IHZiMl9nZXRfbnVtX2J1ZmZlcnMocSk7Cj4+Pj4gK8KgwqDCoCBmaXJzdF9pbmRl
eCA9IGJpdG1hcF9maW5kX25leHRfemVyb19hcmVhKHEtPmJ1ZnNfbWFwLCBxLT5tYXhfYWxsb3dl
ZF9idWZmZXJzLAo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgMCwgbnVtX2J1ZmZlcnMsIDApOwo+Pj4+ICDCoCDCoMKgwqDCoMKgIGlmIChmaXJz
dF9pbmRleCA+PSBxLT5tYXhfYWxsb3dlZF9idWZmZXJzKQo+Pj4+ICDCoMKgwqDCoMKgwqDCoMKg
wqAgcmV0dXJuIDA7Cj4+Pj4gQEAgLTY3NSw3ICs2NzgsMTMgQEAgc3RhdGljIHZvaWQgX192YjJf
cXVldWVfZnJlZShzdHJ1Y3QgdmIyX3F1ZXVlICpxLCB1bnNpZ25lZCBpbnQgYnVmZmVycykKPj4+
PiAgwqAgwqAgc3RydWN0IHZiMl9idWZmZXIgKnZiMl9nZXRfYnVmZmVyKHN0cnVjdCB2YjJfcXVl
dWUgKnEsIHVuc2lnbmVkIGludCBpbmRleCkKPj4+PiAgwqAgewo+Pj4+IC3CoMKgwqAgaWYgKGlu
ZGV4IDwgcS0+bnVtX2J1ZmZlcnMpCj4+Pj4gK8KgwqDCoCBpZiAoIXEtPmJ1ZnNfbWFwIHx8ICFx
LT5idWZzKQo+Pj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gTlVMTDsKPj4+IEkgZG9uJ3QgdGhp
bmsgdGhpcyBjYW4gZXZlciBoYXBwZW4uCj4+IEkgZ290IGtlcm5lbCBjcmFzaCB3aXRob3V0IHRo
ZW0uCj4+IEkgd2lsbCBrZWVwIHRoZW0uCj4gV2hhdCBpcyB0aGUgYmFja3RyYWNlPyBIb3cgY2Fu
IHRoaXMgaGFwcGVuPyBJdCBmZWVscyB3cm9uZyB0aGF0IHRoaXMgY2FuIGJlCj4gY2FsbGVkIHdp
dGggYSB2YjJfcXVldWUgdGhhdCBhcHBhcmVudGx5IGlzIG5vdCBwcm9wZXJseSBpbml0aWFsaXpl
ZC4KCkkgd2lsbCBhZGQgYmFja3RyYWNlIHdoZW4gZG9pbmcgdGVzdCBvbiB2OAoKPgo+Cj4+Pj4g
Kwo+Pj4+ICvCoMKgwqAgcmV0dXJuIChiaXRtYXBfd2VpZ2h0KHEtPmJ1ZnNfbWFwLCBxLT5tYXhf
YWxsb3dlZF9idWZmZXJzKSA+IDApOwo+Pj4gSG93IGFib3V0Ogo+Pj4KPj4+ICDCoMKgwqDCoHJl
dHVybiB2YjJfZ2V0X251bV9idWZmZXJzKHEpID4gMDsKPj4gdmIyX2dldF9udW1fYnVmZmVycyBp
cyBkZWZpbmVkIGluIHZpZGVvYnVmMi1jb3JlLmMsIEknbSBub3Qgc3VyZSB0aGF0Cj4+IGFuIGlu
bGluZSBmdW5jdGlvbiBjb3VsZCBkZXBlbmQgb2YgYSBtb2R1bGUgZnVuY3Rpb24uCj4gTm90IGEg
cHJvYmxlbS4gRS5nLiB2NGwyLWN0cmxzLmggaXMgZnVsbCBvZiBzdWNoIHN0YXRpYyBpbmxpbmVz
LgoKSSB3aWxsIGNoYW5nZSB2YjJfZ2V0X251bV9idWZmZXJzKCkgdG8gaW5saW5lIGZ1bmN0aW9u
IHRoYXQgc29sdmUgdGhlIHByb2JsZW0gdG9vLgoKPgo+IFJlZ2FyZHMsCj4KPiAJSGFucwo+Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
