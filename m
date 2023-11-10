Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73BD4C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Nov 2023 09:24:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zm8BY5AGjJdq3VZmd38QVeyJpwgrEz5x3KQy+/WMYNc=; b=KKe6eARl4cv3dv
	vCzT6D5VnWrknW+55Mlec27cXBKhI2H9oEnjlVCLsUFGgC2YQiOBm3Fk9TbQMX9cQBAwOA/y+g+SH
	pXbJu75kzqjikroUTZry23Ero6BgM9UnW6/m+jXlNlQbz5PvnR2ii/MwSKtZnZgeLsdXGL2fU86Ft
	+2qqlXLCuMIWVtgsau/XijZ8MK6XrLv+YmC2yRFJ+G47wHGBGn2HGailAZgY8J2QnSWQT/SehXUOb
	FcfEJOIIiwtKghGdzl4/PrrDixeiidL5VNSPK3P550Oe69wwz2bsTFFpvMnphCJG0FqFh56T7R+wt
	EEpOeZtTtR18knuzxuMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1Nkb-008Ayc-0v;
	Fri, 10 Nov 2023 09:24:29 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1NkX-008AxK-0Z;
	Fri, 10 Nov 2023 09:24:26 +0000
Received: from [100.116.125.19] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id D05AD66073D3;
	Fri, 10 Nov 2023 09:24:19 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699608260;
	bh=28TPHHA9Iel9THKWFs6QPU/6HNkFryi8SVAuj58Nqhc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=QQOWpE7gIbxb1eJj9TsBokiPp9dEbYBqhq9+G9cWRilgRPrpk7MU02BYltetkXSk/
	 5BBflBVkUunL9iALpYBxuao1sPI0Q0aS7A0aSPgxS3KNLTAY3f9q5HtWtekNxdlxCs
	 b4lmWmO8/xeay6hrctKOJk0Qv8XfGGXooG5le9Z+9I3CrQLYy74zgbELoURGK0G//+
	 iqC05s4VtTHUOGJNffRiYcrzcVzRWRVKhJwofs7otFKZfQZ1z4NpEOH7yOH5sU9xgT
	 48U8RLJYNt70Rz2PYT97PxMuKcO62szxM11D+7mQTbZzq2j11OxJg4LrzXKj92tSZW
	 6OUcHPZhSbbjw==
Message-ID: <8e7629ca-eb6c-41d4-af3e-9938397a08c0@collabora.com>
Date: Fri, 10 Nov 2023 10:24:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v15 14/56] media: sti: hva: Remove useless check
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
 Jean-Christophe Trotin <jean-christophe.trotin@foss.st.com>
References: <20231109163512.179524-14-benjamin.gaignard@collabora.com>
 <20231109163512.179524-15-benjamin.gaignard@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20231109163512.179524-15-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_012425_433044_FAD408A1 
X-CRM114-Status: GOOD (  13.81  )
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

VyBkbml1IDkuMTEuMjAyMyBvwqAxNzozNCwgQmVuamFtaW4gR2FpZ25hcmQgcGlzemU6Cj4gUmVt
b3ZlIGluZGV4IHJhbmdlIHRlc3Qgc2luY2UgaXQgaXMgZG9uZSBieSB2YjJfZ2V0X2J1ZmZlcigp
Lgo+IHZiMl9nZXRfYnVmZmVyKCkgY2FuIHJldHVybiBhIE5VTEwgcG9pbnRlciBzbyB3ZSBuZWVk
IHRoZSByZXR1cm4KPiB2YWx1ZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFy
ZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4KClJldmlld2VkLWJ5OiBBbmRyemVq
IFBpZXRyYXNpZXdpY3ogPGFuZHJ6ZWoucEBjb2xsYWJvcmEuY29tPgoKPiBDQzogSmVhbi1DaHJp
c3RvcGhlIFRyb3RpbiA8amVhbi1jaHJpc3RvcGhlLnRyb3RpbkBmb3NzLnN0LmNvbT4KPiAtLS0K
PiAgIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3Qvc3RpL2h2YS9odmEtdjRsMi5jIHwgOSArKyst
LS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0p
Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3Qvc3RpL2h2YS9odmEt
djRsMi5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9zdC9zdGkvaHZhL2h2YS12NGwyLmMKPiBp
bmRleCAzYTg0OGNhMzJhMGUuLmNmZTgzZTlkYzAxYiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3N0L3N0aS9odmEvaHZhLXY0bDIuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEv
cGxhdGZvcm0vc3Qvc3RpL2h2YS9odmEtdjRsMi5jCj4gQEAgLTU2OSwxNCArNTY5LDExIEBAIHN0
YXRpYyBpbnQgaHZhX3FidWYoc3RydWN0IGZpbGUgKmZpbGUsIHZvaWQgKnByaXYsIHN0cnVjdCB2
NGwyX2J1ZmZlciAqYnVmKQo+ICAgCQlzdHJ1Y3QgdmIyX2J1ZmZlciAqdmIyX2J1ZjsKPiAgIAo+
ICAgCQl2cSA9IHY0bDJfbTJtX2dldF92cShjdHgtPmZoLm0ybV9jdHgsIGJ1Zi0+dHlwZSk7Cj4g
LQo+IC0JCWlmIChidWYtPmluZGV4ID49IHZxLT5udW1fYnVmZmVycykgewo+IC0JCQlkZXZfZGJn
KGRldiwgIiVzIGJ1ZmZlciBpbmRleCAlZCBvdXQgb2YgcmFuZ2UgKCVkKVxuIiwKPiAtCQkJCWN0
eC0+bmFtZSwgYnVmLT5pbmRleCwgdnEtPm51bV9idWZmZXJzKTsKPiArCQl2YjJfYnVmID0gdmIy
X2dldF9idWZmZXIodnEsIGJ1Zi0+aW5kZXgpOwo+ICsJCWlmICghdmIyX2J1Zikgewo+ICsJCQlk
ZXZfZGJnKGRldiwgIiVzIGJ1ZmZlciBpbmRleCAlZCBub3QgZm91bmRcbiIsIGN0eC0+bmFtZSwg
YnVmLT5pbmRleCk7Cj4gICAJCQlyZXR1cm4gLUVJTlZBTDsKPiAgIAkJfQo+IC0KPiAtCQl2YjJf
YnVmID0gdmIyX2dldF9idWZmZXIodnEsIGJ1Zi0+aW5kZXgpOwo+ICAgCQlzdHJlYW0gPSB0b19o
dmFfc3RyZWFtKHRvX3ZiMl92NGwyX2J1ZmZlcih2YjJfYnVmKSk7Cj4gICAJCXN0cmVhbS0+Ynl0
ZXN1c2VkID0gYnVmLT5ieXRlc3VzZWQ7Cj4gICAJfQoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
