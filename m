Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 014EFC4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Nov 2023 09:26:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P1uvEyOxQUmZd4aAkVsuIPTrXupuoY1Hx9SZphQRomA=; b=rbMrxHPRHPnAzv
	LvR2LxaaaDf66fiRwm153keQ4pYWhJumm6r2JT5dKic15TgTzWT4Gadm+hFMSg1+Cr3epRY5UIVPW
	0p8xXq7mFs9Mbavp2SrV5ao2Cfu5qEC90Fthd7CSMN4C7xznjyswTHiif6zYEly9EoXNbKrQHxseO
	Nd8CYILBmG9Si3gnWKlNanLi2WBqdmIgzE1Gzg6w1o4MdN+5ctB3iDfsO9ihrj8Kgc85t2Q/+R74N
	FcRVhn0E4gtCcl6NO7idqCzPKNRL8lBwL9S3L4k4IGcfBS3mDJMI7WnTxpHJsChZ22mqytSDZT3F8
	vabWEo8uTk+ytahhxsTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1Nmn-008BWs-1b;
	Fri, 10 Nov 2023 09:26:45 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1Nmk-008BVi-11;
	Fri, 10 Nov 2023 09:26:43 +0000
Received: from [100.116.125.19] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 1F05666073E2;
	Fri, 10 Nov 2023 09:26:40 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699608401;
	bh=gi6eNiomHAGLi9GNKFJFP416UqYP7sKqgmX+FgclTY0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=cigBLQcqBV90Hl5smGHz3i4Y2bQxHN/jELj7hTq9pCLQ3sNMgNuesh3AoF8Y2cTRk
	 W9lsEN72BiG8BgVnHSI+3u2A+IajCQpbesSsebnN14n778NAcIzGvl2Kdcw6fhkS5X
	 eZ123YfG+N9hVXfDiCh4ZxepXq5oiZhJ7ykNKj+TpllpWHY0KxjDuOKRUcj9lyp8PA
	 U/9MosoXdS1fEHo+Bp2g04o7o05tLhiEnW4nrEtmg+KX3FbydeZp7djQ9gpJX9b7et
	 HWhBkYsPjoD6ltQV/jrZ1MlvLW3DDegDkDfHb/omTqzD7umVUcN7vjlLaaEGWxgSxN
	 ss45pzKhVG6Zg==
Message-ID: <7224be00-99cb-4134-b45f-98b92c1fb4da@collabora.com>
Date: Fri, 10 Nov 2023 10:26:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v15 25/56] media: pci: tw68: Stop direct calls to queue
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
 Fabrizio Castro <fabrizio.castro.jz@renesas.com>
References: <20231109163512.179524-14-benjamin.gaignard@collabora.com>
 <20231109163512.179524-26-benjamin.gaignard@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20231109163512.179524-26-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_012642_482769_D565060B 
X-CRM114-Status: GOOD (  15.74  )
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
b2YgYnVmZmVycyBpcyBjb21wdXRlZCBpbiB0aGUKPiBmdXR1cmUuCj4gCj4gU2lnbmVkLW9mZi1i
eTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+CgpS
ZXZpZXdlZC1ieTogQW5kcnplaiBQaWV0cmFzaWV3aWN6IDxhbmRyemVqLnBAY29sbGFib3JhLmNv
bT4KCj4gQ0M6IEZhYnJpemlvIENhc3RybyA8ZmFicml6aW8uY2FzdHJvLmp6QHJlbmVzYXMuY29t
Pgo+IC0tLQo+ICAgZHJpdmVycy9tZWRpYS9wY2kvdHc2OC90dzY4LXZpZGVvLmMgfCA1ICsrKy0t
Cj4gICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BjaS90dzY4L3R3NjgtdmlkZW8uYyBiL2RyaXZl
cnMvbWVkaWEvcGNpL3R3NjgvdHc2OC12aWRlby5jCj4gaW5kZXggNzczYTE4NzAyZDM2Li43OWI2
MjdlYmM5MmEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wY2kvdHc2OC90dzY4LXZpZGVv
LmMKPiArKysgYi9kcml2ZXJzL21lZGlhL3BjaS90dzY4L3R3NjgtdmlkZW8uYwo+IEBAIC0zNjAs
MTMgKzM2MCwxNCBAQCBzdGF0aWMgaW50IHR3NjhfcXVldWVfc2V0dXAoc3RydWN0IHZiMl9xdWV1
ZSAqcSwKPiAgIAkJCSAgIHVuc2lnbmVkIGludCBzaXplc1tdLCBzdHJ1Y3QgZGV2aWNlICphbGxv
Y19kZXZzW10pCj4gICB7Cj4gICAJc3RydWN0IHR3NjhfZGV2ICpkZXYgPSB2YjJfZ2V0X2Rydl9w
cml2KHEpOwo+IC0JdW5zaWduZWQgdG90X2J1ZnMgPSBxLT5udW1fYnVmZmVycyArICpudW1fYnVm
ZmVyczsKPiArCXVuc2lnbmVkIGludCBxX251bV9idWZzID0gdmIyX2dldF9udW1fYnVmZmVycyhx
KTsKPiArCXVuc2lnbmVkIGludCB0b3RfYnVmcyA9IHFfbnVtX2J1ZnMgKyAqbnVtX2J1ZmZlcnM7
Cj4gICAJdW5zaWduZWQgc2l6ZSA9IChkZXYtPmZtdC0+ZGVwdGggKiBkZXYtPndpZHRoICogZGV2
LT5oZWlnaHQpID4+IDM7Cj4gICAKPiAgIAlpZiAodG90X2J1ZnMgPCAyKQo+ICAgCQl0b3RfYnVm
cyA9IDI7Cj4gICAJdG90X2J1ZnMgPSB0dzY4X2J1ZmZlcl9jb3VudChzaXplLCB0b3RfYnVmcyk7
Cj4gLQkqbnVtX2J1ZmZlcnMgPSB0b3RfYnVmcyAtIHEtPm51bV9idWZmZXJzOwo+ICsJKm51bV9i
dWZmZXJzID0gdG90X2J1ZnMgLSBxX251bV9idWZzOwo+ICAgCS8qCj4gICAJICogV2UgYWxsb3cg
Y3JlYXRlX2J1ZnMsIGJ1dCBvbmx5IGlmIHRoZSBzaXplaW1hZ2UgaXMgPj0gYXMgdGhlCj4gICAJ
ICogY3VycmVudCBzaXplaW1hZ2UuIFRoZSB0dzY4X2J1ZmZlcl9jb3VudCBjYWxjdWxhdGlvbiBi
ZWNvbWVzIHF1aXRlCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
