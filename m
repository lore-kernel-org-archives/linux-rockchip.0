Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DECAC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Mar 2022 11:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S5GBkaEBFB+U0GAadcOS1gM0iGCBs5P2BjxM/f3Irbw=; b=SzXsAcIguvx+Y2
	5wRvUQAeKnbloAqjUv6FOTpZAMT9MA/XbUPTf2AUk88wTy9+2TyM00FN0FVardAsrz0ALfwyk3lsW
	3DoBSpNTjFfEBTWyBF0XUVnhlyFaNWzHGsxQ8KCWcCXUVOvEhfW773mnUXN5zbwDu0DW1AiIdvh26
	4HlDptxhQJEACJHTLi84fw4fQSWw0egk5hl0Cw3VXUQp6Q/kmojuRX9d9smdgkDuXDHTPjFsDLpOH
	dpinTKIp089dYKVQ2CilcI74vqnw9MNcgEE4tqM0qkNd4MS0VaN+XohpbCth602g9QMpXT/xxpunH
	1gFYgvoHUu0YHMdiyHUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZASw-00C6MA-9g; Tue, 29 Mar 2022 11:56:50 +0000
Received: from mail-m176237.qiye.163.com ([59.111.176.237])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZASh-00C6HW-1J; Tue, 29 Mar 2022 11:56:36 +0000
Received: from [172.16.12.141] (unknown [58.22.7.114])
 by mail-m176237.qiye.163.com (Hmail) with ESMTPA id 74C32C4035E;
 Tue, 29 Mar 2022 19:56:28 +0800 (CST)
Message-ID: <274a12a9-61f1-7d6a-e89c-52237621930b@rock-chips.com>
Date: Tue, 29 Mar 2022 19:56:27 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v9 20/23] drm/rockchip: Make VOP driver optional
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <20220328151116.2034635-21-s.hauer@pengutronix.de>
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20220328151116.2034635-21-s.hauer@pengutronix.de>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUlKS0tKN1dZLVlBSVdZDwkaFQgSH1lBWRlOTEtWHRhIS09PHU
 MeH0NCVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NjY6OQw5HD5REQkCKBAyK0oo
 Qz8wCh5VSlVKTU9DTk5PQkNDQkNCVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
 WUFZTkNVSUlVTFVKSk9ZV1kIAVlBT01ITTcG
X-HM-Tid: 0a7fd588d4d0d9afkuws74c32c4035e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_045635_294700_A2E66D0B 
X-CRM114-Status: GOOD (  18.82  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

SGkgU2FzY2hhOgoKT24gMy8yOC8yMiAyMzoxMSwgU2FzY2hhIEhhdWVyIHdyb3RlOgo+IFdpdGgg
dXBjb21pbmcgVk9QMiBzdXBwb3J0IFZPUCB3b24ndCBiZSB0aGUgb25seSBjaG9pY2UgYW55bW9y
ZSwgc28gbWFrZQo+IHRoZSBWT1AgZHJpdmVyIG9wdGlvbmFsLgo+Cj4gU2lnbmVkLW9mZi1ieTog
U2FzY2hhIEhhdWVyIDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPgo+IC0tLQo+ICAgZHJpdmVycy9n
cHUvZHJtL3JvY2tjaGlwL0tjb25maWcgICAgICAgICAgICB8IDggKysrKysrKysKPiAgIGRyaXZl
cnMvZ3B1L2RybS9yb2NrY2hpcC9NYWtlZmlsZSAgICAgICAgICAgfCAzICsrLQo+ICAgZHJpdmVy
cy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9kcnYuYyB8IDIgKy0KPiAgIDMgZmlsZXMg
Y2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvS2NvbmZpZyBiL2RyaXZlcnMvZ3B1L2RybS9yb2Nr
Y2hpcC9LY29uZmlnCj4gaW5kZXggZmE1Y2ZkYTRlOTBlMy4uN2QyMmUyOTk3YTU3MSAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvS2NvbmZpZwo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9yb2NrY2hpcC9LY29uZmlnCj4gQEAgLTIzLDggKzIzLDE2IEBAIGNvbmZpZyBEUk1f
Uk9DS0NISVAKPiAgIAo+ICAgaWYgRFJNX1JPQ0tDSElQCj4gICAKPiArY29uZmlnIFJPQ0tDSElQ
X1ZPUAo+ICsJYm9vbCAiUm9ja2NoaXAgVk9QIGRyaXZlciIKPiArCWRlZmF1bHQgeQo+ICsJaGVs
cAo+ICsJICBUaGlzIHNlbGVjdHMgc3VwcG9ydCBmb3IgdGhlIFZPUCBkcml2ZXIuIFlvdSBzaG91
bGQgZW5hYmxlIGl0Cj4gKwkgIG9uIGFsbCBvbGRlciBTb0NzIHVwIHRvIFJLMzM5OS4KPiArCj4g
ICBjb25maWcgUk9DS0NISVBfQU5BTE9HSVhfRFAKPiAgIAlib29sICJSb2NrY2hpcCBzcGVjaWZp
YyBleHRlbnNpb25zIGZvciBBbmFsb2dpeCBEUCBkcml2ZXIiCj4gKwlkZXBlbmRzIG9uIFJPQ0tD
SElQX1ZPUAoKCkFhbmxvZ2l4IGRwIGlzIGFsc28gb24gdm9wMiBiYXNlIHNvYyBzdWNoIGFzwqAg
cmszNTZ4IGFuZCByazM1ODggLgoKCj4gICAJaGVscAo+ICAgCSAgVGhpcyBzZWxlY3RzIHN1cHBv
cnQgZm9yIFJvY2tjaGlwIFNvQyBzcGVjaWZpYyBleHRlbnNpb25zCj4gICAJICBmb3IgdGhlIEFu
YWxvZ2l4IENvcmUgRFAgZHJpdmVyLiBJZiB5b3Ugd2FudCB0byBlbmFibGUgRFAKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL01ha2VmaWxlIGIvZHJpdmVycy9ncHUvZHJt
L3JvY2tjaGlwL01ha2VmaWxlCj4gaW5kZXggMWE1NmY2OTY1NThjYS4uZGZjNTUxMmZkYjlmMSAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvTWFrZWZpbGUKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvTWFrZWZpbGUKPiBAQCAtNCw4ICs0LDkgQEAKPiAgICMg
RGlyZWN0IFJlbmRlcmluZyBJbmZyYXN0cnVjdHVyZSAoRFJJKSBpbiBYRnJlZTg2IDQuMS4wIGFu
ZCBoaWdoZXIuCj4gICAKPiAgIHJvY2tjaGlwZHJtLXkgOj0gcm9ja2NoaXBfZHJtX2Rydi5vIHJv
Y2tjaGlwX2RybV9mYi5vIFwKPiAtCQlyb2NrY2hpcF9kcm1fZ2VtLm8gcm9ja2NoaXBfZHJtX3Zv
cC5vIHJvY2tjaGlwX3ZvcF9yZWcubwo+ICsJCXJvY2tjaGlwX2RybV9nZW0ubwo+ICAgCj4gK3Jv
Y2tjaGlwZHJtLSQoQ09ORklHX1JPQ0tDSElQX1ZPUCkgKz0gcm9ja2NoaXBfZHJtX3ZvcC5vIHJv
Y2tjaGlwX3ZvcF9yZWcubwo+ICAgcm9ja2NoaXBkcm0tJChDT05GSUdfUk9DS0NISVBfQU5BTE9H
SVhfRFApICs9IGFuYWxvZ2l4X2RwLXJvY2tjaGlwLm8KPiAgIHJvY2tjaGlwZHJtLSQoQ09ORklH
X1JPQ0tDSElQX0NETl9EUCkgKz0gY2RuLWRwLWNvcmUubyBjZG4tZHAtcmVnLm8KPiAgIHJvY2tj
aGlwZHJtLSQoQ09ORklHX1JPQ0tDSElQX0RXX0hETUkpICs9IGR3X2hkbWktcm9ja2NoaXAubwo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5j
IGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9kcnYuYwo+IGluZGV4IDIx
NDIxNDE5MGZlZjEuLjdjZjhiOTY2NWU1Y2YgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L3JvY2tjaGlwL3JvY2tjaGlwX2RybV9kcnYuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2Nr
Y2hpcC9yb2NrY2hpcF9kcm1fZHJ2LmMKPiBAQCAtNDk0LDcgKzQ5NCw3IEBAIHN0YXRpYyBpbnQg
X19pbml0IHJvY2tjaGlwX2RybV9pbml0KHZvaWQpCj4gICAJCXJldHVybiAtRU5PREVWOwo+ICAg
Cj4gICAJbnVtX3JvY2tjaGlwX3N1Yl9kcml2ZXJzID0gMDsKPiAtCUFERF9ST0NLQ0hJUF9TVUJf
RFJJVkVSKHZvcF9wbGF0Zm9ybV9kcml2ZXIsIENPTkZJR19EUk1fUk9DS0NISVApOwo+ICsJQURE
X1JPQ0tDSElQX1NVQl9EUklWRVIodm9wX3BsYXRmb3JtX2RyaXZlciwgQ09ORklHX1JPQ0tDSElQ
X1ZPUCk7Cj4gICAJQUREX1JPQ0tDSElQX1NVQl9EUklWRVIocm9ja2NoaXBfbHZkc19kcml2ZXIs
Cj4gICAJCQkJQ09ORklHX1JPQ0tDSElQX0xWRFMpOwo+ICAgCUFERF9ST0NLQ0hJUF9TVUJfRFJJ
VkVSKHJvY2tjaGlwX2RwX2RyaXZlciwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
