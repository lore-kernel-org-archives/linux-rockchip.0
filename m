Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3501EB64D8
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jun 2023 14:13:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nGhasijvNxrC4BteaNf3VvZ0Ns/ln9l605RqKOGqd9E=; b=MnPF2Fem7pk4Qu
	/Ew93BiLOJv6w46fCJjbmoW9t8En2efobXzSpDD/8lVLjPQqp19Po61w65/uM+uBr234cWJaZ+ncL
	617o6Xrm2eFvNh7zitTUp6UJMRKArm6HIjFQIq0J4I59+LWyPc2Cydg7BZIYix6UeccV3Gr130pIu
	Aip1M2OQjbjCMCZV9FKim/Bj4vvNdLgRKoDtoays80oS06BMST3COMCW+qeteKdJqdFl8iyyqEKRO
	AI0xvjJ8K9+WbcdMFwRNHrr5g23SV9ij4jJb+Z6dk/33Ep87nYq3XsCzJlPzBDGNylVVuQL8dns+J
	kOlzCgKm2hfv+W/LPerg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qCL3r-000vHg-31;
	Thu, 22 Jun 2023 14:13:23 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qCL3o-000vFn-1O;
	Thu, 22 Jun 2023 14:13:21 +0000
Received: from [IPV6:2a01:e0a:120:3210:7d72:676c:e745:a6ef] (unknown [IPv6:2a01:e0a:120:3210:7d72:676c:e745:a6ef])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 967E866070DD;
	Thu, 22 Jun 2023 15:13:17 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1687443198;
	bh=d0+lITGrVZq3i8JXW6FpYpEa1ZDzGHWdfubAbMUC1X8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=noqEqmkRmxOoXU6FxKMZXfXVgKNpqEz7La+dfkLvLpo51iTqrXgVpYYmA9lHaIk8Z
	 a9ovq548hSIXu9e8qKs1bROyPWpBZwaBa5LqlGujvfHK2DkXlCAhq9OL25Au0QPjYe
	 ca/gkQ8ZeY8t/k+bCfnpWmR08WFtB8OibJRFpxK1fjvvx1F9G2lhSOtyCeGVvvFNrf
	 k9OuRBLOk0arhpHcIWGqHkqkgH88lhJU3k2giewHcySacS/Hv1m0NslVJ8vw7nRa5e
	 wbJMX6ZJleoGuStEi7wf/q8k8VbqAWDODZP6/POXkgFhE9VZO+SJULFs9sB447XAua
	 RQXxI0W5WRDmw==
Message-ID: <39aff680-316a-7382-c93b-d9ca61c389e9@collabora.com>
Date: Thu, 22 Jun 2023 16:13:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v3 03/11] media: videobuf2: Remove VB2_MAX_FRAME limit on
 buffer storage
Content-Language: en-US
To: Dan Carpenter <dan.carpenter@linaro.org>
Cc: mchehab@kernel.org, tfiga@chromium.org, m.szyprowski@samsung.com,
 ming.qian@nxp.com, ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, hverkuil-cisco@xs4all.nl,
 nicolas.dufresne@collabora.com, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 kernel@collabora.com
References: <20230622131349.144160-1-benjamin.gaignard@collabora.com>
 <20230622131349.144160-4-benjamin.gaignard@collabora.com>
 <bddd6cb7-cd72-4fb5-8d4a-d02cb9c46dce@kadam.mountain>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <bddd6cb7-cd72-4fb5-8d4a-d02cb9c46dce@kadam.mountain>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230622_071320_633233_1FBDB10B 
X-CRM114-Status: GOOD (  10.54  )
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

CkxlIDIyLzA2LzIwMjMgw6AgMTY6MTEsIERhbiBDYXJwZW50ZXIgYSDDqWNyaXTCoDoKPiBPbiBU
aHUsIEp1biAyMiwgMjAyMyBhdCAwMzoxMzo0MVBNICswMjAwLCBCZW5qYW1pbiBHYWlnbmFyZCB3
cm90ZToKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRl
b2J1ZjItY29yZS5jIGIvZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1j
b3JlLmMKPj4gaW5kZXggZjFmZjdhZjM0YTlmLi44NmUxZTkyNmZhNDUgMTAwNjQ0Cj4+IC0tLSBh
L2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItY29yZS5jCj4+ICsrKyBi
L2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItY29yZS5jCj4+IEBAIC00
NTUsOSArNDU1LDkgQEAgc3RhdGljIGludCBfX3ZiMl9xdWV1ZV9hbGxvYyhzdHJ1Y3QgdmIyX3F1
ZXVlICpxLCBlbnVtIHZiMl9tZW1vcnkgbWVtb3J5LAo+PiAgIAlzdHJ1Y3QgdmIyX2J1ZmZlciAq
dmI7Cj4+ICAgCWludCByZXQ7Cj4+ICAgCj4+IC0JLyogRW5zdXJlIHRoYXQgcS0+bnVtX2J1ZmZl
cnMrbnVtX2J1ZmZlcnMgaXMgYmVsb3cgVkIyX01BWF9GUkFNRSAqLwo+PiArCS8qIEVuc3VyZSB0
aGF0IHEtPm51bV9idWZmZXJzICsgbnVtX2J1ZmZlcnMgaXMgVUlOVF9NQVggKi8KPj4gICAJbnVt
X2J1ZmZlcnMgPSBtaW5fdCh1bnNpZ25lZCBpbnQsIG51bV9idWZmZXJzLAo+PiAtCQkJICAgIFZC
Ml9NQVhfRlJBTUUgLSBxLT5udW1fYnVmZmVycyk7Cj4+ICsJCQkgICAgVUlOVF9NQVggLSBxLT5u
dW1fYnVmZmVycyk7Cj4+ICAgCj4+ICAgCWZvciAoYnVmZmVyID0gMDsgYnVmZmVyIDwgbnVtX2J1
ZmZlcnM7ICsrYnVmZmVyKSB7Cj4+ICAgCQkvKiBBbGxvY2F0ZSB2YjIgYnVmZmVyIHN0cnVjdHVy
ZXMgKi8KPiBBaC4uLiAgSGVyZSdzIG9uZSBvZiB0aGUgaW50ZWdlciBvdmVyZmxvdyBidWdzIEkg
d2FzIHRhbGtpbmcgYWJvdXQuICBUaGUKPiBfX3ZiMl9xdWV1ZV9hbGxvYygpIGZ1bmN0aW9uIHJl
dHVybnMgYW4gaW50IHNvIGlmIG51bV9idWZmZXJzIGdvZXMgb3Zlcgo+IElOVF9NQVggd2UgYXJl
IGhvc2VkLgoKSSB3aWxsIGxpbWl0IGl0IHRvOgojZGVmaW5lIFZCMl9RVUVVRV9NQVhfQlVGRkVS
UyAgKElOVF9NQVggJiBQQUdFX01BU0spICAvKiBUaGUgbWFzayBwcmV2ZW50cyA4NSUgb2YgaW50
ZWdlciBvdmVyZmxvd3MgKi8KYXMgeW91IGhhdmUgc3VnZ2VzdCBpdC4KClRoYXQgd2lsbCBiZSBp
biB2ZXJzaW9uIDQuCgpUaGFua3MsCkJlbmphbWluCgo+Cj4gcmVnYXJkcywKPiBkYW4gY2FycGVu
dGVyCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
