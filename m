Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C761ECCA479
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Jul 2022 09:03:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H+isbNiczkNuMk+RChrikKAeY6klfCSUXTIDZV+nOGk=; b=ztBQgi4E0IAVJf
	DhoflFK1jBLzk0oNh/FCFPvOSfsJBzd0/d1Bp0UjLDomxH+Bkrynat7PSf7znsaVLNVHWiGnIk9kb
	XTNyjPU8YFYJ63z5l2XPwUyG+mu8fKyQ9peApZtGucOlJ+l4upag89SUHWQWNy/YfNDotZhxKxHsT
	sPwSPt0N9EFry0HU+aSht8yK2K9vk/m2Lmn/MOaTCz70FoigJncjXwItIuGVRhMoLg7lb/xkMvdQz
	s1V6waKmwaJUUfLsoi88ejTu9+ZmVCyWjmXBV3qGm7r6jj6xOhj6sNhXofZhj5mhCzFKca7K1nUAx
	o63NebD+0jP7ID9HsS6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o7CYn-003l2C-Fk; Fri, 01 Jul 2022 09:03:33 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o7CYd-003kzq-8v; Fri, 01 Jul 2022 09:03:24 +0000
Received: from [IPV6:2a01:e0a:120:3210:2a18:eef7:517c:3467] (unknown [IPv6:2a01:e0a:120:3210:2a18:eef7:517c:3467])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 099BA66015B2;
	Fri,  1 Jul 2022 10:03:21 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1656666201;
	bh=HeVABiQifDKZmsejKzWKuWsrRSudGKBJZ7pqrByEerQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=nwQ+wI922KmSe3X33SneWndU3TbI/sjRvPQJ8Dr5Xx5e+O3qg5hog/1NfrfSZLLa+
	 uiofarX6QER7SRj2Socni4uPTSAQWRCqvBlpKKJW9qGo5lGcEk2o08vW2y1EogP2yf
	 Er5jCtdTUH1iSLSOQe/5IZo2K3fmdvkTD8DY16m2Bto4fPs3QeAcL2Otxzd/KusWTh
	 +5WhbyviowG4guFPNMai5QO1z1hlQI4fVdmiSKw2/rCJl+CsdHNDVuFp5LAVwrEHsh
	 QhTDO0SZt/zk+9K5tTKjKTU+cWKKVLKpaDNBmWwyxA41gdiPS+vybDFYccNgp4oEzr
	 H6JM/1lzE99Gw==
Message-ID: <37145626-1a7e-2aba-4f3c-4d0574729a41@collabora.com>
Date: Fri, 1 Jul 2022 11:03:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 3/7] media: hantro: HEVC: Fix chroma offset computation
Content-Language: en-US
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Cc: mchehab@kernel.org, hverkuil@xs4all.nl, ezequiel@vanguardiasur.com.ar,
 p.zabel@pengutronix.de, gregkh@linuxfoundation.org, mripard@kernel.org,
 wens@csie.org, jernej.skrabec@gmail.com, samuel@sholland.org,
 nicolas.dufresne@collabora.com, andrzej.p@collabora.com,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 kernel@collabora.com
References: <20220617115802.396442-1-benjamin.gaignard@collabora.com>
 <20220617115802.396442-4-benjamin.gaignard@collabora.com>
 <Yr60jj4OOAM6plWC@aptenodytes>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <Yr60jj4OOAM6plWC@aptenodytes>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220701_020323_481223_C70DB16B 
X-CRM114-Status: GOOD (  14.56  )
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

CkxlIDAxLzA3LzIwMjIgw6AgMTA6NDcsIFBhdWwgS29jaWFsa293c2tpIGEgw6ljcml0wqA6Cj4g
SGkgQmVuamFtaW4sCj4KPiBPbiBGcmkgMTcgSnVuIDIyLCAxMzo1NywgQmVuamFtaW4gR2FpZ25h
cmQgd3JvdGU6Cj4+IFRoZSBjaHJvbWEgb2Zmc2V0IGRlcGVuZHMgb2YgdGhlIGJpdHN0cmVhbSBk
ZXB0aC4KPj4gTWFrZSBzdXJlIHRoYXQgY3R4LT5iaXRfZGVwdGggaXMgdXNlZCB0byBjb21wdXRl
IGl0Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2Fp
Z25hcmRAY29sbGFib3JhLmNvbT4KPj4gLS0tCj4+ICAgZHJpdmVycy9zdGFnaW5nL21lZGlhL2hh
bnRyby9oYW50cm9fZzJfaGV2Y19kZWMuYyB8IDIgKy0KPj4gICAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3Rh
Z2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2cyX2hldmNfZGVjLmMgYi9kcml2ZXJzL3N0YWdpbmcv
bWVkaWEvaGFudHJvL2hhbnRyb19nMl9oZXZjX2RlYy5jCj4+IGluZGV4IDllYWMxMzNiZGE2OC4u
ODQwN2FkNDViN2I3IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJv
L2hhbnRyb19nMl9oZXZjX2RlYy5jCj4+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50
cm8vaGFudHJvX2cyX2hldmNfZGVjLmMKPj4gQEAgLTEyLDcgKzEyLDcgQEAKPj4gICAKPj4gICBz
dGF0aWMgc2l6ZV90IGhhbnRyb19oZXZjX2Nocm9tYV9vZmZzZXQoc3RydWN0IGhhbnRyb19jdHgg
KmN0eCkKPj4gICB7Cj4+IC0JcmV0dXJuIGN0eC0+ZHN0X2ZtdC53aWR0aCAqIGN0eC0+ZHN0X2Zt
dC5oZWlnaHQ7Cj4+ICsJcmV0dXJuIGN0eC0+ZHN0X2ZtdC53aWR0aCAqIGN0eC0+ZHN0X2ZtdC5o
ZWlnaHQgKiBjdHgtPmJpdF9kZXB0aCAvIDg7Cj4gSXMgdGhpcyBhIGNhc2UgZm9yIERJVl9ST1VO
RF9VUCBvciBhcmUgeW91IHN1cmUgdGhlIHJvdW5kZWQtZG93biBzaXplIGlzIGFsd2F5cwo+IHN1
ZmZpY2llbnQ/CgpObyBuZWVkIG9mIERJVl9ST1VORF9VUCBoZXJlIGJlY2F1c2UgaXQgY291bGQg
YWZmZWN0IHRoZSBjaHJvbWEgb2Zmc2V0IHdoZW4KdXNpbmcgZGVjb2RlciB0aWxlZCBmb3JtYXQg
YW5kIGFkZCBleHRyYSBieXRlcyBiZXR3ZWVuIGx1bWEgYW5kIGNocm9tYSBwbGFuZXMuCgpSZWdh
cmRzLApCZW5qYW1pbgoKPiBDaGVlcnMsCj4KPiBQYXVsCj4KPj4gICB9Cj4+ICAgCj4+ICAgc3Rh
dGljIHNpemVfdCBoYW50cm9faGV2Y19tb3Rpb25fdmVjdG9yc19vZmZzZXQoc3RydWN0IGhhbnRy
b19jdHggKmN0eCkKPj4gLS0gCj4+IDIuMzIuMAo+PgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
