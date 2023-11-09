Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31EADC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 11:19:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=99Svil/vNtA43m1FlobKEyZqEHjrmemN94/87TBDyAQ=; b=fdThJkEExi/7m6
	JP31YBGzpG0q1CNiht7FNmN+8ktzgJ4rlNoDb8pfu52DvKxzw5lC3yo/yOnOdXH/zvPFGeZKaHx/r
	bqWWCHTri21DPNhcs7RHjHGLUi6ci2zqvuJ6VZ8ZGpywncH0yXwhtneINgFZmNdtUksVi9zzjBdm/
	2O6P7dPhc+bXlVEpOmetz7HY73wtS1+dHPbJMogivgnge3iPKgdwcr499v3Xn3kP49BeiyvLvnztM
	wptldCF8JbSJiWlPERRn+fFmcHOBrqum9v3wsbKZlRF1DQA0GE5f6R6lOaOxJcC/fEwzL72TpPMzT
	iD5eanwjx4fMCWPgYQpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r133z-0062sj-2I;
	Thu, 09 Nov 2023 11:19:07 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r133w-0062rB-0Y;
	Thu, 09 Nov 2023 11:19:05 +0000
Received: from [100.116.125.19] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 95C136607421;
	Thu,  9 Nov 2023 11:19:01 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699528743;
	bh=EHWlF6idsNP4hPb7jAlpbcca/qI2OyTJsZvOkakfOMU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=CXDVyXgIV1WXRA256QA8qY2evyCRRMqcxHwZOsFXs8KRCnGrzVgV7AhduNBhUSK7r
	 gpt5XXmgPv0CbOVSs2oay+Mj0qV2PbyqOZ333L+7TlruHuBAKsg9ZWYZqFtjo+I2TP
	 rFLMc1WmGqsdkYh4iJ/xBvx+BeArI8TkCWzrr/YW1WrD8qSaAbP5Jv/s0eAegoOxud
	 ilYIMvjraBWp82fR53n2Od3YTW0/iBQoGFx0QFksv5++v3Z7VLuXGuSus6TPUDpi4h
	 mxq5uRNR+gUweca1wiRPjPW0aks8bqzC96c6H3JBT5jJzxvUjoaJ7jCigydDrIqi81
	 WMvkKxS4Mhf4g==
Message-ID: <4835f2cf-ea3e-4a17-ab3b-c8e6f18b5192@collabora.com>
Date: Thu, 9 Nov 2023 12:19:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 33/56] touchscreen: sur40: Stop direct calls to queue
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
 Dmitry Torokhov <dmitry.torokhov@gmail.com>
References: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
 <20231031163104.112469-34-benjamin.gaignard@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20231031163104.112469-34-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_031904_334204_025F9AB2 
X-CRM114-Status: GOOD (  14.84  )
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
Ynk6IEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+
IEFja2VkLWJ5OiBEbWl0cnkgVG9yb2tob3YgPGRtaXRyeS50b3Jva2hvdkBnbWFpbC5jb20+CgpS
ZXZpZXdlZC1ieTogQW5kcnplaiBQaWV0cmFzaWV3aWN6IDxhbmRyemVqLnBAY29sbGFib3JhLmNv
bT4KCj4gLS0tCj4gICBkcml2ZXJzL2lucHV0L3RvdWNoc2NyZWVuL3N1cjQwLmMgfCA1ICsrKy0t
Cj4gICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lucHV0L3RvdWNoc2NyZWVuL3N1cjQwLmMgYi9kcml2ZXJz
L2lucHV0L3RvdWNoc2NyZWVuL3N1cjQwLmMKPiBpbmRleCA4ZGRiM2Y3ZDMwN2EuLmU3ZDJhNTIx
NjlhMCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2lucHV0L3RvdWNoc2NyZWVuL3N1cjQwLmMKPiAr
KysgYi9kcml2ZXJzL2lucHV0L3RvdWNoc2NyZWVuL3N1cjQwLmMKPiBAQCAtODQ3LDkgKzg0Nywx
MCBAQCBzdGF0aWMgaW50IHN1cjQwX3F1ZXVlX3NldHVwKHN0cnVjdCB2YjJfcXVldWUgKnEsCj4g
ICAJCSAgICAgICB1bnNpZ25lZCBpbnQgc2l6ZXNbXSwgc3RydWN0IGRldmljZSAqYWxsb2NfZGV2
c1tdKQo+ICAgewo+ICAgCXN0cnVjdCBzdXI0MF9zdGF0ZSAqc3VyNDAgPSB2YjJfZ2V0X2Rydl9w
cml2KHEpOwo+ICsJdW5zaWduZWQgaW50IHFfbnVtX2J1ZnMgPSB2YjJfZ2V0X251bV9idWZmZXJz
KHEpOwo+ICAgCj4gLQlpZiAocS0+bnVtX2J1ZmZlcnMgKyAqbmJ1ZmZlcnMgPCAzKQo+IC0JCSpu
YnVmZmVycyA9IDMgLSBxLT5udW1fYnVmZmVyczsKPiArCWlmIChxX251bV9idWZzICsgKm5idWZm
ZXJzIDwgMykKPiArCQkqbmJ1ZmZlcnMgPSAzIC0gcV9udW1fYnVmczsKPiAgIAo+ICAgCWlmICgq
bnBsYW5lcykKPiAgIAkJcmV0dXJuIHNpemVzWzBdIDwgc3VyNDAtPnBpeF9mbXQuc2l6ZWltYWdl
ID8gLUVJTlZBTCA6IDA7CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
