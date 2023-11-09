Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F334C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 10:03:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uB+SgdeM+ywSTqgLHqvXbkH+SF9kRYl+HPTBmpAYxMA=; b=ISnw0k752MEn3H
	Rz2GsR6wWSOIANj458YiEQKGsRAa7U6gbR7xcjrCiOj1PEnCBeD/bL0quAJN9xChu29lpPRT7B1fv
	uc+DZstB+ATGsKz3MdmL+eewJcNYV1UFMEBm5ax9PDwkM24CJljT64a7GA4ThYqBtcksmSJhrgoc/
	PIf7dGw/NYRdBhfr3i/LCFCzr0qXz9AdZxb7y8ggrAwvwnJJIE4rrRDcTifrNaRU/XM6UhSOybTon
	YzSq9lpI8ASE7O0rmciVKFOIOAWLL4eeHnXZ42kiCzI0WffFcV4G9lckbNfAbuD9GcZmxEWZ1Huin
	YFUMqX11UELjlqq+hJWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r11t1-005r3P-30;
	Thu, 09 Nov 2023 10:03:43 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r11sy-005r2J-1s;
	Thu, 09 Nov 2023 10:03:41 +0000
Received: from [100.116.125.19] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 656A56607435;
	Thu,  9 Nov 2023 10:03:37 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699524219;
	bh=pwEpx+MGypxzSwA28V6syRhlcHgpJof7RIF00c+aBRM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=aJ/8xGCiHJjm+CzwAabNyyU/GTAjIxeHX99hblXV4BHBd4DHnYLUXAHjuLAR6v0i7
	 QL7RBgs8tyojA/aKIufbltXnwa7w59cKRCLfV/QgUlRA+wXk5HUUfepBmry8bswQYO
	 bjo4LBDFceemSp6R8A7bvU2n+7Ed3HM1h523gk4NH3YhQAYFJg3lWse9xPpZg1xTYT
	 1aQ08/atj10VsG8cKnvSWSzWwEe9C/ctDajHI3q3u6dfKbERJYbTZKip/ZUC+5Mmjp
	 A+IY/TDJyhvEW1/Rslkz2tnF2aC7YSgYlCvEIULsIpTmqXw/gSFbiw57kj6cEy9yhv
	 iRGES/Swt2qEQ==
Message-ID: <11b22d60-3a83-4385-ab1a-d8c2e672e24a@collabora.com>
Date: Thu, 9 Nov 2023 11:03:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 21/56] media: pci: dt3155: Remove useless check
Content-Language: en-US
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
 tfiga@chromium.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, hverkuil-cisco@xs4all.nl,
 nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel@collabora.com
References: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
 <20231031163104.112469-22-benjamin.gaignard@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20231031163104.112469-22-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_020340_752622_AF91DF37 
X-CRM114-Status: GOOD (  11.43  )
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

VyBkbml1IDMxLjEwLjIwMjMgb8KgMTc6MzAsIEJlbmphbWluIEdhaWduYXJkIHBpc3plOgo+IG1p
bl9idWZmZXJzX25lZWRlZCBpcyBhbHJlYWR5IHNldCB0byAyIHNvIHJlbW92ZSB0aGlzIHVzZWxl
c3MKPiBjaGVjay4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFt
aW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4KClJldmlld2VkLWJ5OiBBbmRyemVqIFBpZXRyYXNp
ZXdpY3ogPGFuZHJ6ZWoucEBjb2xsYWJvcmEuY29tPgoKPiAtLS0KPiAgIGRyaXZlcnMvbWVkaWEv
cGNpL2R0MzE1NS9kdDMxNTUuYyB8IDIgLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGRlbGV0aW9u
cygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BjaS9kdDMxNTUvZHQzMTU1LmMg
Yi9kcml2ZXJzL21lZGlhL3BjaS9kdDMxNTUvZHQzMTU1LmMKPiBpbmRleCA1NDgxNTZiMTk5Y2Mu
LmQwOWNkZTJmNmVlNCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3BjaS9kdDMxNTUvZHQz
MTU1LmMKPiArKysgYi9kcml2ZXJzL21lZGlhL3BjaS9kdDMxNTUvZHQzMTU1LmMKPiBAQCAtMTI4
LDggKzEyOCw2IEBAIGR0MzE1NV9xdWV1ZV9zZXR1cChzdHJ1Y3QgdmIyX3F1ZXVlICp2cSwKPiAg
IAlzdHJ1Y3QgZHQzMTU1X3ByaXYgKnBkID0gdmIyX2dldF9kcnZfcHJpdih2cSk7Cj4gICAJdW5z
aWduZWQgc2l6ZSA9IHBkLT53aWR0aCAqIHBkLT5oZWlnaHQ7Cj4gICAKPiAtCWlmICh2cS0+bnVt
X2J1ZmZlcnMgKyAqbmJ1ZmZlcnMgPCAyKQo+IC0JCSpuYnVmZmVycyA9IDIgLSB2cS0+bnVtX2J1
ZmZlcnM7Cj4gICAJaWYgKCpudW1fcGxhbmVzKQo+ICAgCQlyZXR1cm4gc2l6ZXNbMF0gPCBzaXpl
ID8gLUVJTlZBTCA6IDA7Cj4gICAJKm51bV9wbGFuZXMgPSAxOwoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
