Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F2F9C4167B
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Nov 2023 17:00:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IMApWIb1doouzmjt7WqdRb6/pM6755zSh4/7CfctvTU=; b=C9ZI85Jg2FkpNO
	KUUuSjRVxBpYfe/VEUJoACpyXxwYRrmZGRDByt0SeTFL6Crhsos7K9UaKyhHNW9bAPRjaQr/3wlyx
	e0/PzM4plk4BiATJ8bkaZdZfMJURTm4fR+u2lLlqh0sVNm4RhfrmAr6KicicNkI6tKFnXZyipQohs
	YSFz5uAMrG8j1bxzXgsQwymXaIocE3bw6s71ViPKrSjEEHvC5aRHq/soP/N3GM99BE0U2JJ52GH/m
	MyxqYBZJ6yd9e1SxrHPkKZlUhrs/sRI11KoJo5rlad149/quHjnDdbOyISQ9Nxi8gXSqM57LYGhL4
	p9zxHLMjp/yZz4LDrqzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0luW-004M66-1Z;
	Wed, 08 Nov 2023 17:00:12 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0luS-004M53-2J;
	Wed, 08 Nov 2023 17:00:10 +0000
Received: from [100.116.125.19] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 47EA6660746B;
	Wed,  8 Nov 2023 17:00:06 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699462807;
	bh=v1ZDZ92VUQvwcoBTo3YLDcAwJdq/9mIJJULop13aVjc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=DPxbTyaMPU2PQPpXxDwVbUyxVY/ySm7+tshhCBnMxktHXu5Kh0l9Afdgu0EnxdUWH
	 floksg8TAOJSiHZxMPD3IYNNlfIhDPj+4lRd+l4r+20sstKqxMtm3uaxuEUpH4HV8H
	 bj2caCJtxaR2A4JrNmbREt4LXd1zWiGhZXCmehnFWJbX4ZbbhHcdDNwREOs6B+53J2
	 8A9E0grogHDLtSbXuAUXzTS13taqL3kN8EyD44HLM5mYgfN6dF4940IlqqKM5oUBox
	 TtXAkleyJc8CCq31npcCizjNq+A0hjdLzCUGVCdmIX2A48L+pzoQVP8s4mHkzKVHds
	 c7OVd7EwTfbkg==
Message-ID: <900d7ba8-6b0c-412a-936c-184decba7566@collabora.com>
Date: Wed, 8 Nov 2023 18:00:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 11/56] media: mediatek: jpeg: Use vb2_get_buffer()
 instead of directly access to buffers array
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
 Bin Liu <bin.liu@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>
References: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
 <20231031163104.112469-12-benjamin.gaignard@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20231031163104.112469-12-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231108_090008_891390_22058255 
X-CRM114-Status: GOOD (  15.23  )
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
ZSB2YjJfZ2V0X2J1ZmZlcigpIGluc3RlYWQgb2YgZGlyZWN0IGFjY2VzcyB0byB0aGUgdmIyX3F1
ZXVlIGJ1ZnMgYXJyYXkuCj4gVGhpcyBhbGxvd3MgdXMgdG8gY2hhbmdlIHRoZSB0eXBlIG9mIHRo
ZSBidWZzIGluIHRoZSBmdXR1cmUuCj4gQWZ0ZXIgZWFjaCBjYWxsIHRvIHZiMl9nZXRfYnVmZmVy
KCkgd2UgbmVlZCB0byBiZSBzdXJlIHRoYXQgd2UgZ2V0Cj4gYSB2YWxpZCBwb2ludGVyIHNvIGNo
ZWNrIHRoZSByZXR1cm4gdmFsdWUgb2YgYWxsIG9mIHRoZW0uCj4gCj4gU2lnbmVkLW9mZi1ieTog
QmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+CgpSZXZp
ZXdlZC1ieTogQW5kcnplaiBQaWV0cmFzaWV3aWN6IDxhbmRyemVqLnBAY29sbGFib3JhLmNvbT4K
Cj4gQ0M6IEJpbiBMaXUgPGJpbi5saXVAbWVkaWF0ZWsuY29tPgo+IENDOiBNYXR0aGlhcyBCcnVn
Z2VyIDxtYXR0aGlhcy5iZ2dAZ21haWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS9tZWRpYXRlay9qcGVnL210a19qcGVnX2NvcmUuYyB8IDcgKysrLS0tLQo+ICAgMSBmaWxl
IGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9tZWRpYXRlay9qcGVnL210a19qcGVnX2NvcmUuYyBi
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vbWVkaWF0ZWsvanBlZy9tdGtfanBlZ19jb3JlLmMKPiBp
bmRleCA3MTk0Zjg4ZWRjMGYuLjczYTA2M2IxNTY5YiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL21lZGlhdGVrL2pwZWcvbXRrX2pwZWdfY29yZS5jCj4gKysrIGIvZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS9tZWRpYXRlay9qcGVnL210a19qcGVnX2NvcmUuYwo+IEBAIC01OTgs
MTIgKzU5OCwxMSBAQCBzdGF0aWMgaW50IG10a19qcGVnX3FidWYoc3RydWN0IGZpbGUgKmZpbGUs
IHZvaWQgKnByaXYsIHN0cnVjdCB2NGwyX2J1ZmZlciAqYnVmKQo+ICAgCQlnb3RvIGVuZDsKPiAg
IAo+ICAgCXZxID0gdjRsMl9tMm1fZ2V0X3ZxKGZoLT5tMm1fY3R4LCBidWYtPnR5cGUpOwo+IC0J
aWYgKGJ1Zi0+aW5kZXggPj0gdnEtPm51bV9idWZmZXJzKSB7Cj4gLQkJZGV2X2VycihjdHgtPmpw
ZWctPmRldiwgImJ1ZmZlciBpbmRleCBvdXQgb2YgcmFuZ2VcbiIpOwo+ICsJdmIgPSB2YjJfZ2V0
X2J1ZmZlcih2cSwgYnVmLT5pbmRleCk7Cj4gKwlpZiAoIXZiKSB7Cj4gKwkJZGV2X2VycihjdHgt
PmpwZWctPmRldiwgImJ1ZmZlciBub3QgZm91bmRcbiIpOwo+ICAgCQlyZXR1cm4gLUVJTlZBTDsK
PiAgIAl9Cj4gLQo+IC0JdmIgPSB2cS0+YnVmc1tidWYtPmluZGV4XTsKPiAgIAlqcGVnX3NyY19i
dWYgPSBtdGtfanBlZ192YjJfdG9fc3JjYnVmKHZiKTsKPiAgIAlqcGVnX3NyY19idWYtPmJzX3Np
emUgPSBidWYtPm0ucGxhbmVzWzBdLmJ5dGVzdXNlZDsKPiAgIAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
