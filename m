Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B68AEB64DD
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Jun 2023 07:51:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ERYM8KSHBv4s99CgXhkptqx7JjR+zfaEX4EI1g5V0DA=; b=hTMiqQ4dLYEiT/
	0EDceig/ZGk0TvM1QeWykqYchZpc4DpcOhn1r50Gq6PEtACZ0lgrN5DEzWfYLgIyeI+Z6EJCRPUbw
	YBSg4EaevGHymAO5SKkUdmg1PH62AKgZsoC1WFc1zFg1WmXl47wT1IT7Ql2/fhxVs0XTRbTxN4Tbm
	Oj7HSQ/pHZwfvoMg7xItumEzguAfmUh+xlBW12+FKfgoWEws3X9NOJ36nIp0tx0iCxAKad0wjm+QP
	0usTiZrksjsRLlsCTQAJHfCZO9jp1Uqkk4CoCoU+sZ3kS1tB6dfl92NpfioxLj3XLRKI38vtkr/Na
	eX1oqlUBdh8UpJpZ8vMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qCba2-002qFw-1b;
	Fri, 23 Jun 2023 07:51:42 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qCbZy-002q9r-1e;
	Fri, 23 Jun 2023 07:51:39 +0000
Received: from [IPV6:2a01:e0a:120:3210:4849:8b52:4bff:674] (unknown [IPv6:2a01:e0a:120:3210:4849:8b52:4bff:674])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id EB293660712B;
	Fri, 23 Jun 2023 08:51:31 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1687506692;
	bh=IXSG7zZWbP+AwYQOLnWcF9xBZeJYynGpMRfo2WLgtCg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=opJS58tLdQU7YgNFJUmqNjtvNi91rAm2bjUy5XSJTziw0Kzbhy0CJ0UUak/xI7jgL
	 vx4+DOqhd4m2VeH5sfQokwGGD0g6ZmWRimqlB7E+W+uPcKyTPWaekM7ENeW/FT6PV4
	 VFIQejfKUdiTG98Hi5h+j1pc3nPu1gW7ynHnEQ8bXu5/MAP6RkFjaoRDX08emZ3sEw
	 Vu8z8i1m5gQ9bpjSIh6QvkNJS6E8nWRkeGXOe1Dxegk+Xq+fkyHdtozWTz7CfS+HPL
	 QCftKOh1hkTTKqzuc+w9+1m53HCjE+sXCTihxVYdk9QnB35uWZW57tDSvK3DFJOb6F
	 BVFs/E+zgUpGQ==
Message-ID: <fee4a434-a4b6-9ecc-1188-4638a3cd6af8@collabora.com>
Date: Fri, 23 Jun 2023 09:51:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v3 03/11] media: videobuf2: Remove VB2_MAX_FRAME limit on
 buffer storage
Content-Language: en-US
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Dan Carpenter <dan.carpenter@linaro.org>
Cc: mchehab@kernel.org, tfiga@chromium.org, m.szyprowski@samsung.com,
 ming.qian@nxp.com, ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, nicolas.dufresne@collabora.com,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel@collabora.com
References: <20230622131349.144160-1-benjamin.gaignard@collabora.com>
 <20230622131349.144160-4-benjamin.gaignard@collabora.com>
 <bddd6cb7-cd72-4fb5-8d4a-d02cb9c46dce@kadam.mountain>
 <39aff680-316a-7382-c93b-d9ca61c389e9@collabora.com>
 <f21d6fce-155c-28f0-fdea-e9264ba1f7ba@xs4all.nl>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <f21d6fce-155c-28f0-fdea-e9264ba1f7ba@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230623_005138_676395_08EAFC51 
X-CRM114-Status: GOOD (  14.38  )
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

CkxlIDIzLzA2LzIwMjMgw6AgMDk6MDIsIEhhbnMgVmVya3VpbCBhIMOpY3JpdMKgOgo+IE9uIDIy
LzA2LzIwMjMgMTY6MTMsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+PiBMZSAyMi8wNi8yMDIz
IMOgIDE2OjExLCBEYW4gQ2FycGVudGVyIGEgw6ljcml0wqA6Cj4+PiBPbiBUaHUsIEp1biAyMiwg
MjAyMyBhdCAwMzoxMzo0MVBNICswMjAwLCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90ZToKPj4+PiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1jb3Jl
LmMgYi9kcml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWNvcmUuYwo+Pj4+
IGluZGV4IGYxZmY3YWYzNGE5Zi4uODZlMWU5MjZmYTQ1IDEwMDY0NAo+Pj4+IC0tLSBhL2RyaXZl
cnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItY29yZS5jCj4+Pj4gKysrIGIvZHJp
dmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1jb3JlLmMKPj4+PiBAQCAtNDU1
LDkgKzQ1NSw5IEBAIHN0YXRpYyBpbnQgX192YjJfcXVldWVfYWxsb2Moc3RydWN0IHZiMl9xdWV1
ZSAqcSwgZW51bSB2YjJfbWVtb3J5IG1lbW9yeSwKPj4+PiAgwqDCoMKgwqDCoCBzdHJ1Y3QgdmIy
X2J1ZmZlciAqdmI7Cj4+Pj4gIMKgwqDCoMKgwqAgaW50IHJldDsKPj4+PiAgwqAgLcKgwqDCoCAv
KiBFbnN1cmUgdGhhdCBxLT5udW1fYnVmZmVycytudW1fYnVmZmVycyBpcyBiZWxvdyBWQjJfTUFY
X0ZSQU1FICovCj4+Pj4gK8KgwqDCoCAvKiBFbnN1cmUgdGhhdCBxLT5udW1fYnVmZmVycyArIG51
bV9idWZmZXJzIGlzIFVJTlRfTUFYICovCj4+Pj4gIMKgwqDCoMKgwqAgbnVtX2J1ZmZlcnMgPSBt
aW5fdCh1bnNpZ25lZCBpbnQsIG51bV9idWZmZXJzLAo+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgVkIyX01BWF9GUkFNRSAtIHEtPm51bV9idWZmZXJzKTsKPj4+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFVJTlRfTUFYIC0gcS0+bnVtX2J1ZmZlcnMpOwo+Pj4+
ICDCoCDCoMKgwqDCoMKgIGZvciAoYnVmZmVyID0gMDsgYnVmZmVyIDwgbnVtX2J1ZmZlcnM7ICsr
YnVmZmVyKSB7Cj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoCAvKiBBbGxvY2F0ZSB2YjIgYnVmZmVy
IHN0cnVjdHVyZXMgKi8KPj4+IEFoLi4uwqAgSGVyZSdzIG9uZSBvZiB0aGUgaW50ZWdlciBvdmVy
ZmxvdyBidWdzIEkgd2FzIHRhbGtpbmcgYWJvdXQuwqAgVGhlCj4+PiBfX3ZiMl9xdWV1ZV9hbGxv
YygpIGZ1bmN0aW9uIHJldHVybnMgYW4gaW50IHNvIGlmIG51bV9idWZmZXJzIGdvZXMgb3Zlcgo+
Pj4gSU5UX01BWCB3ZSBhcmUgaG9zZWQuCj4+IEkgd2lsbCBsaW1pdCBpdCB0bzoKPj4gI2RlZmlu
ZSBWQjJfUVVFVUVfTUFYX0JVRkZFUlPCoCAoSU5UX01BWCAmIFBBR0VfTUFTSynCoCAvKiBUaGUg
bWFzayBwcmV2ZW50cyA4NSUgb2YgaW50ZWdlciBvdmVyZmxvd3MgKi8KPj4gYXMgeW91IGhhdmUg
c3VnZ2VzdCBpdC4KPiBJTUhPIElOVF9NQVggaXMgd2F5IG92ZXJraWxsLiBIb3cgYWJvdXQgKDFV
IDw8IDIwKT8gSSB3b3VsZCBsaWtlIHNvbWUgc29ydCBvZgo+IHNhbml0eSBjaGVjayBoZXJlLiAx
MDQ4NTc2IGJ1ZmZlcnMgb2YgNjQweDQ4MCBhbmQgNCBieXRlcyBwZXIgcGl4ZWwgaXMgMS4yIFRC
LgoKSSB3aWxsIGdvIGZvciAoMVUgPDwgMjApIGluIG5leHQgdmVyc2lvbi4KClJlZ2FyZHMsCkJl
bmphbWluCgo+Cj4gU2luY2UgYSBUQiBvZiBtZW1vcnkgaXMgZG9hYmxlIHRoZXNlIGRheXMsIEkg
dGhpbmsgdGhpcyBpcyBhIHJlYXNvbmFibGUKPiB2YWx1ZSBmb3IgTUFYX0JVRkZFUlMgd2l0aG91
dCBhbGxvd2luZyBqdXN0IGFueXRoaW5nLgo+Cj4gQW4gYWx0ZXJuYXRpdmUgaXMgdG8gbWFrZSB0
aGlzIGEga2VybmVsIGNvbmZpZy4KPgo+IFJlZ2FyZHMsCj4KPiAJSGFucwo+Cj4+IFRoYXQgd2ls
bCBiZSBpbiB2ZXJzaW9uIDQuCj4+Cj4+IFRoYW5rcywKPj4gQmVuamFtaW4KPj4KPj4+IHJlZ2Fy
ZHMsCj4+PiBkYW4gY2FycGVudGVyCj4+PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
