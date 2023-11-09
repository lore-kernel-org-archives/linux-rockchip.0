Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39009C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 10:23:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h86Kgbs8IP/uxZqIEGrVJXfXv80+hE69op21ILUh3ZM=; b=3pkcnXagJLghLK
	qMB2zn6eCDEMn5u5cP4m72SbZvRq4GItJaMa+FChNCHa9KANc7N34SQW8HH0w0fDGGssr3jVN8DbV
	loYLZUbl7VfWf7g7+8XFLEWpKO1BOjRqyrU1LXBcs4adNBWV1dUHxsEADuQ+qhmVs7VV+rIjtuOS8
	N4eCuIfC8UL6tD+OKQ8aJeKJza6J/2CByQX+Lmiwaw+f832abXt+O3qeRFIj+x0tvJSiLLhgAjk7g
	Kl8gbUNOAMRP6fzlsyKe393TqXvok23yFnvasAFb6n3uaoMGsNtbBdLQazva2DqeBP/onbO7HmexA
	//T+URrNZDC1b31gWT1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r12CG-005vvt-0q;
	Thu, 09 Nov 2023 10:23:36 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r12CD-005vui-06;
	Thu, 09 Nov 2023 10:23:34 +0000
Received: from [100.98.136.55] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 605DA6607402;
	Thu,  9 Nov 2023 10:23:30 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699525411;
	bh=w1gfjgdh3iORhnyqSjSpTT8O6vfAD+hPei7Wa+puwAE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=RuYi975NuBYiBPQN3BqI9xP9cVvJmW4tqHKo85QYCz1rPYS1lZcKLnho6eqcFXQXT
	 dmpH128i3kkaRr3a8Z4HNcef7S1VzZNUEgt/Zs2VPRE+pda8D3GGw+IrrGsfybmHBB
	 QcOX7LsqeBMHD9Zvqu4SAXqso0JREWT8wJMDq/vhoJN1OJJ6LHlKCmUxDI20MLTdmm
	 rER3hcW5wrys6I40bhIu6oA6DDceYRxTNeO8b9xTjGhPxyWa8ntK863t6xbU9+CdTa
	 +1eBvtpfI0ALhzJfmbUWBjfwQSKqDY1VHMjiZCSAaGU2/7TzmZ6zuHAzIZRJ1pzWim
	 hh7B8rK4+TeAw==
Message-ID: <92b6faac-6f74-4949-a8db-45defb02df7b@collabora.com>
Date: Thu, 9 Nov 2023 11:23:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 25/56] media: pci: tw68: Stop direct calls to queue
 num_buffers field
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
 Fabrizio Castro <fabrizio.castro.jz@renesas.com>
References: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
 <20231031163104.112469-26-benjamin.gaignard@collabora.com>
 <99945dbe-194b-429c-b8ea-fc71dbc0b3b4@collabora.com>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <99945dbe-194b-429c-b8ea-fc71dbc0b3b4@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_022333_203547_8E6D16E2 
X-CRM114-Status: GOOD (  15.65  )
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

CkxlIDA5LzExLzIwMjMgw6AgMTE6MTMsIEFuZHJ6ZWogUGlldHJhc2lld2ljeiBhIMOpY3JpdMKg
Ogo+IEhpIEJlbmphbWluLAo+Cj4gVyBkbml1IDMxLjEwLjIwMjMgb8KgMTc6MzAsIEJlbmphbWlu
IEdhaWduYXJkIHBpc3plOgo+PiBVc2UgdmIyX2dldF9udW1fYnVmZmVycygpIHRvIGF2b2lkIHVz
aW5nIHF1ZXVlIG51bV9idWZmZXJzIGZpZWxkIAo+PiBkaXJlY3RseS4KPj4gVGhpcyBhbGxvd3Mg
dXMgdG8gY2hhbmdlIGhvdyB0aGUgbnVtYmVyIG9mIGJ1ZmZlcnMgaXMgY29tcHV0ZWQgaW4gdGhl
Cj4+IGZ1dHVyZS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmph
bWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+Cj4+IENDOiBGYWJyaXppbyBDYXN0cm8gPGZhYnJp
emlvLmNhc3Ryby5qekByZW5lc2FzLmNvbT4KPj4gLS0tCj4+IMKgIGRyaXZlcnMvbWVkaWEvcGNp
L3R3NjgvdHc2OC12aWRlby5jIHwgNCArKy0tCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2Vy
dGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlh
L3BjaS90dzY4L3R3NjgtdmlkZW8uYyAKPj4gYi9kcml2ZXJzL21lZGlhL3BjaS90dzY4L3R3Njgt
dmlkZW8uYwo+PiBpbmRleCA3NzNhMTg3MDJkMzYuLjM1Mjk2YzIyNjAxOSAxMDA2NDQKPj4gLS0t
IGEvZHJpdmVycy9tZWRpYS9wY2kvdHc2OC90dzY4LXZpZGVvLmMKPj4gKysrIGIvZHJpdmVycy9t
ZWRpYS9wY2kvdHc2OC90dzY4LXZpZGVvLmMKPj4gQEAgLTM2MCwxMyArMzYwLDEzIEBAIHN0YXRp
YyBpbnQgdHc2OF9xdWV1ZV9zZXR1cChzdHJ1Y3QgdmIyX3F1ZXVlICpxLAo+PiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1bnNpZ25lZCBpbnQgc2l6ZXNbXSwgc3RydWN0IGRldmlj
ZSAqYWxsb2NfZGV2c1tdKQo+PiDCoCB7Cj4+IMKgwqDCoMKgwqAgc3RydWN0IHR3NjhfZGV2ICpk
ZXYgPSB2YjJfZ2V0X2Rydl9wcml2KHEpOwo+Cj4gV2h5IG5vdAo+Cj4gwqDCoMKgwqB1bnNpZ25l
ZCBpbnQgcV9udW1fYnVmcyA9IHZiMl9nZXRfbnVtX2J1ZmZlcnModnEpOwo+Cj4ganVzdCBsaWtl
IGluIG90aGVyIHBhdGNoZXMgaW4gdGhlIHNlcmllcz8KCllvdSBhcmUgcmlnaHQsIEkgd2lsbCBj
aGFuZ2UgaXQgdG8ga2VlcCB0aGUgc2FtZSBwYXR0ZXJuIHRoYW4gZm9yIHRoZSBvdGhlciBwYXRj
aGVzLgoKUmVnYXJkcywKQmVuamFtaW4KCj4KPiBSZWdhcmRzLAo+Cj4gQW5kcnplago+Cj4+IC3C
oMKgwqAgdW5zaWduZWQgdG90X2J1ZnMgPSBxLT5udW1fYnVmZmVycyArICpudW1fYnVmZmVyczsK
Pj4gK8KgwqDCoCB1bnNpZ25lZCB0b3RfYnVmcyA9IHZiMl9nZXRfbnVtX2J1ZmZlcnMocSkgKyAq
bnVtX2J1ZmZlcnM7Cj4+IMKgwqDCoMKgwqAgdW5zaWduZWQgc2l6ZSA9IChkZXYtPmZtdC0+ZGVw
dGggKiBkZXYtPndpZHRoICogZGV2LT5oZWlnaHQpID4+IDM7Cj4+IMKgIMKgwqDCoMKgwqAgaWYg
KHRvdF9idWZzIDwgMikKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHRvdF9idWZzID0gMjsKPj4gwqDC
oMKgwqDCoCB0b3RfYnVmcyA9IHR3NjhfYnVmZmVyX2NvdW50KHNpemUsIHRvdF9idWZzKTsKPj4g
LcKgwqDCoCAqbnVtX2J1ZmZlcnMgPSB0b3RfYnVmcyAtIHEtPm51bV9idWZmZXJzOwo+PiArwqDC
oMKgICpudW1fYnVmZmVycyA9IHRvdF9idWZzIC0gdmIyX2dldF9udW1fYnVmZmVycyhxKTsKPj4g
wqDCoMKgwqDCoCAvKgo+PiDCoMKgwqDCoMKgwqAgKiBXZSBhbGxvdyBjcmVhdGVfYnVmcywgYnV0
IG9ubHkgaWYgdGhlIHNpemVpbWFnZSBpcyA+PSBhcyB0aGUKPj4gwqDCoMKgwqDCoMKgICogY3Vy
cmVudCBzaXplaW1hZ2UuIFRoZSB0dzY4X2J1ZmZlcl9jb3VudCBjYWxjdWxhdGlvbiBiZWNvbWVz
IAo+PiBxdWl0ZQo+Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
