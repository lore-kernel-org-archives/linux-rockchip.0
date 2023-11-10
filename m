Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7167EC4167B
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Nov 2023 09:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=teveC2beSfcxxP/FqUaOna9Vk+NeidvI7h8jGyKrJT4=; b=H8EIlIOf8Wfxem
	+Oc5CaCd7yqwZvnHOefZwmS48c3iNHS9LsH5fwNAGLDFX00M9sP8EhHl/6UtR54+px+8/OAdnX87a
	xJrdcJqfKxrwq8gTW5ps2WJ3IvMgXVffMpwVVuMkHr1lNY7LNyGblxvTD0ZLl4dwOtpJh1YmE2Et6
	0qL5v1DqY8wE6pNUIiNg6gZcP+57BHGfXkhIsPAsaLOZ0Xf19/8gdaPXijX9cgy7hf/FR0+9QrkgZ
	Dr0g+0EzSotHLXr5nT6BbqAE+8kXRs8WyO6lEN5561+o2AzOkNx8jKu5cVTBIpw7b9Qv9q5cT+yQr
	ZNFdbKHPz2Qxmqpf73mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1NnU-008BfE-2s;
	Fri, 10 Nov 2023 09:27:28 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1NnR-008Be8-1Z;
	Fri, 10 Nov 2023 09:27:26 +0000
Received: from [100.116.125.19] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 439A666073E2;
	Fri, 10 Nov 2023 09:27:23 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699608444;
	bh=jgC/HX0DCivudpq7G6ihAYUdFIx19Q8cGDVDSrd4fH4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ep3Y5wWKvqdYWq0GuLTK8Omn+oRHjIKlHMyuX6zi3I/dppgmWNgnn3sadX198vWE0
	 paBGvRYX5NIaY9ihOnNcLvhYDOo88sIE0zi4YSg3buLmuhzRKFC/l3hcMMVPzR+0DG
	 Wa0IfBuWlvuKGUdAAtxyMmV1rGjySZCIh/U0b/xVSSer2H7xPodA+3SCjbV4/O+tM3
	 Ss0mjgtPPSrT1Uhfux9iAFd/q+s+FvSD7K8Vn18Z8PoXMBi5QRehJ66YnK6k0xD1uU
	 02xvFLEtdA9RKd3gH6lXIIzDCQ8/LY62h60za2nIkdGdRcaJqbpYz7cfYeJ0tkDjZ5
	 w4CVFCMnh+8dw==
Message-ID: <abd4fcc2-a450-4027-abef-98a689f502c6@collabora.com>
Date: Fri, 10 Nov 2023 10:27:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v15 26/56] media: i2c: video-i2c: Stop direct calls to
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
 Matt Ranostay <matt.ranostay@konsulko.com>
References: <20231109163512.179524-14-benjamin.gaignard@collabora.com>
 <20231109163512.179524-27-benjamin.gaignard@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20231109163512.179524-27-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_012725_656836_2752BBDD 
X-CRM114-Status: GOOD (  16.11  )
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

VyBkbml1IDkuMTEuMjAyMyBvwqAxNzozNCwgQmVuamFtaW4gR2FpZ25hcmQgcGlzemU6Cj4gVXNl
IHZiMl9nZXRfbnVtX2J1ZmZlcnMoKSB0byBhdm9pZCB1c2luZyBxdWV1ZSBudW1fYnVmZmVycyBm
aWVsZCBkaXJlY3RseS4KPiBUaGlzIGFsbG93cyB1cyB0byBjaGFuZ2UgaG93IHRoZSBudW1iZXIg
b2YgYnVmZmVycyBpcyBjb21wdXRlZCBpbiB0aGUKPiBmdXR1cmUuCj4gRml4IHRoZSBudW1iZXIg
b2YgYnVmZmVycyBjb21wdXRhdGlvbiBhdCB0aGUgc2FtZSB0aW1lLgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgoK
UmV2aWV3ZWQtYnk6IEFuZHJ6ZWogUGlldHJhc2lld2ljeiA8YW5kcnplai5wQGNvbGxhYm9yYS5j
b20+Cgo+IENDOiBNYXR0IFJhbm9zdGF5IDxtYXR0LnJhbm9zdGF5QGtvbnN1bGtvLmNvbT4KPiAt
LS0KPiAgIGRyaXZlcnMvbWVkaWEvaTJjL3ZpZGVvLWkyYy5jIHwgNSArKystLQo+ICAgMSBmaWxl
IGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9tZWRpYS9pMmMvdmlkZW8taTJjLmMgYi9kcml2ZXJzL21lZGlhL2kyYy92aWRl
by1pMmMuYwo+IGluZGV4IDE3OGJkMDZjYzJlZC4uZWJmMmFjOThhMDY4IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvbWVkaWEvaTJjL3ZpZGVvLWkyYy5jCj4gKysrIGIvZHJpdmVycy9tZWRpYS9pMmMv
dmlkZW8taTJjLmMKPiBAQCAtNDA1LDkgKzQwNSwxMCBAQCBzdGF0aWMgaW50IHF1ZXVlX3NldHVw
KHN0cnVjdCB2YjJfcXVldWUgKnZxLAo+ICAgewo+ICAgCXN0cnVjdCB2aWRlb19pMmNfZGF0YSAq
ZGF0YSA9IHZiMl9nZXRfZHJ2X3ByaXYodnEpOwo+ICAgCXVuc2lnbmVkIGludCBzaXplID0gZGF0
YS0+Y2hpcC0+YnVmZmVyX3NpemU7Cj4gKwl1bnNpZ25lZCBpbnQgcV9udW1fYnVmcyA9IHZiMl9n
ZXRfbnVtX2J1ZmZlcnModnEpOwo+ICAgCj4gLQlpZiAodnEtPm51bV9idWZmZXJzICsgKm5idWZm
ZXJzIDwgMikKPiAtCQkqbmJ1ZmZlcnMgPSAyOwo+ICsJaWYgKHFfbnVtX2J1ZnMgKyAqbmJ1ZmZl
cnMgPCAyKQo+ICsJCSpuYnVmZmVycyA9IDIgLSBxX251bV9idWZzOwo+ICAgCj4gICAJaWYgKCpu
cGxhbmVzKQo+ICAgCQlyZXR1cm4gc2l6ZXNbMF0gPCBzaXplID8gLUVJTlZBTCA6IDA7CgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
