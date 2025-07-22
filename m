Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6260CC83F27
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Jul 2025 06:19:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KTEZBcQlHLLPqnP5OFNkedEA2l21Qb+ONUPBq+2O2sk=; b=ejN/WTk5catK0C
	eqB3/gwSL1kVcy4DhS1IrxSewgDT7uKtZzQnbMcFZpPvN3MedhSzdVvpmJd2LS80ZRBQVUC0962kb
	uONm44nQRZI1O0oEw8hJEvS0Wzr0Q0wWpZ0OFtEzTDSFRNjBTXPdhE1H1/o2vjh638LMRphkysxG4
	8V2uydUUGqQ8XIBhf7Xf+AXNkM7H9fRwLny9EW+B8GRx7rctQOUmxmgxPpL3Al0nT6U1Q51Mcs6W0
	t+9BBeUXOFC1mWdHfRV2QqyDX+e7yQLwqF6jmKA4pmVmVE/xfuOjzdnRb7KsFndtQtIV6aH73LBhD
	DYSXFvKwqPM0V8enchwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ue6L9-00000001PWc-49Dj;
	Tue, 22 Jul 2025 06:19:03 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ue6If-00000001PNU-1PSB;
	Tue, 22 Jul 2025 06:16:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1753164987;
	bh=hQmYNw1nxxnjx5AEwNuBdEzfygugW6y3m3bQETQLK1A=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=oNLRZH830rm/on4tkN3zXpzMq0pa4V7HFVCHhV+cb5mNxE5g84KOmLHpDLkzEroQX
	 +olYVd9AZj6OIj+GO5ETwk/R34sIhslu+G57OM03t1nOL4FIYTKo0UxIrVh4PrxeT8
	 5426rc6mK3G1PE+4HLHi5RLL7W9+LKjuSxWeBWpYZsIRJ6o1sP0o1po2+55EhCfpro
	 ymeA9lxg/w4n9gglwocZs6bqKz+dY7pk4cukbRtX5cQnycKHinZEvr+JqbAqXJnaQ2
	 tQY9xoK//oO9DHgu9nonm6PRg2fCxhuGqKiBG9Lwsgi/Q7WnXyCHD31Mn/fkFxi017
	 bkSfPZ1/PoXvg==
Received: from [192.168.1.90] (unknown [82.79.138.60])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id BB2AC17E0F66;
	Tue, 22 Jul 2025 08:16:26 +0200 (CEST)
Message-ID: <c5624dad-93cb-4cc3-88ad-808dcc43274d@collabora.com>
Date: Tue, 22 Jul 2025 09:16:26 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] drm/rockchip: vop2: Add high color depth support
To: Andy Yan <andyshrk@163.com>, Algea Cao <algea.cao@rock-chips.com>
Cc: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 kernel@collabora.com, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250721-rk3588-10bpc-v1-0-e95a4abcf482@collabora.com>
 <20250721-rk3588-10bpc-v1-1-e95a4abcf482@collabora.com>
 <3ceb2c70.2145.1982ff28b9c.Coremail.andyshrk@163.com>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <3ceb2c70.2145.1982ff28b9c.Coremail.andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250721_231629_522993_DB066F95 
X-CRM114-Status: GOOD (  18.61  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgQW5keSwKCk9uIDcvMjIvMjUgNToyNCBBTSwgQW5keSBZYW4gd3JvdGU6Cj4gCj4gSGVsbG8g
Q3Jpc3RpYW7vvIwKPiAKPiBBdCAyMDI1LTA3LTIyIDAxOjM5OjA0LCAiQ3Jpc3RpYW4gQ2lvY2Fs
dGVhIiA8Y3Jpc3RpYW4uY2lvY2FsdGVhQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+PiBUYWtlIHRo
ZSBiaXRzIHBlciBjb2xvciBjaGFubmVsIGludG8gY29uc2lkZXJhdGlvbiB3aGVuIGNvbXB1dGlu
ZyBEQ0xLCj4+IHJhdGUuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IENyaXN0aWFuIENpb2NhbHRlYSA8
Y3Jpc3RpYW4uY2lvY2FsdGVhQGNvbGxhYm9yYS5jb20+Cj4+IC0tLQo+PiBkcml2ZXJzL2dwdS9k
cm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYyB8IDMgKysrCj4+IDEgZmlsZSBjaGFuZ2Vk
LCAzIGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2Nr
Y2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tj
aGlwX2RybV92b3AyLmMKPj4gaW5kZXggMTg2ZjY0NTJhN2QzNTlmMDc5NjYyYmM1ODA4NTA5Mjk2
MzJlYThmZS4uYTcxNGJjYmIwMmRlMTYyNjdlN2ZlYmJhZWIxZWIyNzBjNzBhYWVmMiAxMDA2NDQK
Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmMKPj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmMKPj4gQEAg
LTE3MzEsNiArMTczMSw5IEBAIHN0YXRpYyB2b2lkIHZvcDJfY3J0Y19hdG9taWNfZW5hYmxlKHN0
cnVjdCBkcm1fY3J0YyAqY3J0YywKPj4gCQljbG9jayAqPSAyOwo+PiAJfQo+Pgo+PiArCWlmICh2
Y3N0YXRlLT5vdXRwdXRfYnBjID4gOCkKPj4gKwkJY2xvY2sgPSBESVZfUk9VTkRfQ0xPU0VTVChj
bG9jayAqIHZjc3RhdGUtPm91dHB1dF9icGMsIDgpOwo+IAo+IAo+IFRoaXMgc2VlbXMgbm90IHJp
Z2h0LCAgcmVnYXJkbGVzcyBvZiB0aGUgdmFsdWUgb2YgYnBjLCB0aGUgZGNsayBvZiBWT1AgbXVz
dCBiZQo+IGNvbnNpc3RlbnQgd2l0aCBtb2RlLT5jcnRjX2Nsb2NrLgo+IElmIHRoZSBkY2xrIG9m
IFZPUCBpcyBpbmNyZWFzZWQgaW4gYWNjb3JkYW5jZSB3aXRoIHRoZSBCUEMgcmF0aW8gaGVyZSwg
dGhlbiB0aGUgcmVmcmVzaCByYXRlIG9mIFZPUCB3aWxsIGFsc28gaW5jcmVhc2UgcHJvcG9ydGlv
bmFsbHkuCj4gVGhpcyB3b3VsZCBiZSBpbmNvbnNpc3RlbnQgd2l0aCB0aGUgdGltaW5nIGRlc2Ny
aWJlZCBpbiB0aGUgbW9kZS4KPiBGb3IgYSBoaWdodCBjb2xvciBkZXB0aCwgIHRoZSBmcmVxdWVu
Y3kgbmVlZHMgdG8gYmUgaW5jcmVhc2VkIGZvciB0aGUgSERNSSBQSFkncyBjbG9jay4KClRoZSBI
RE1JIFBIWSdzIGNsb2NrIGlzIGFjdHVhbGx5IGNvbXB1dGVkIGF0IEhETUkgY29ubmVjdG9yIGZy
YW1ld29yayBsZXZlbApbMV0sIHRha2luZyBpbnRvIGFjY291bnQgdGhlIGN1cnJlbnQgYnBjIHZh
bHVlLCB3aGljaCBpcyBkZXRlcm1pbmVkIGFzIHBhcnQKb2YgaGRtaV9jb21wdXRlX2NvbmZpZygp
IFsyXS4KClRoYXQgbWVhbnMgY29ubl9zdGF0ZS0+aGRtaS50bWRzX2NoYXJfcmF0ZSBpbgpkd19o
ZG1pX3FwX3JvY2tjaGlwX2VuY29kZXJfYXRvbWljX2NoZWNrKCkgZG9lcyBhbHJlYWR5IGluY2x1
ZGUgdGhlIGJwYwpyZWxhdGVkIGFkanVzdG1lbnQsIGFuZCB3ZSBwYXNzIHRoYXQgZGlyZWN0bHkg
dG8gdGhlIFBIWSB2aWEKcGh5X2NvbmZpZ3VyZSgpLiAgTm90ZSB0aGVyZSdzIHN0aWxsIHRoZSBu
ZWVkIHRvIGhhbmRsZSBicGMgc2VwYXJhdGVseSB2aWEKcGh5X2NvbmZpZ3VyZV9vcHRzIGluIG9y
ZGVyIHRvIHNldHVwIENNTl9SRUcoMDA4NikgWzNdLgoKU2luY2UgVk9QMiBzd2l0Y2hlcyB0byBQ
SFkgUExMIGFzIERDTEsgc291cmNlIGZvciBtb2RlcyB1cCB0byA0S0A2MEh6LCBpdApuZWVkcyB0
byB0YWtlIGNvbG9yIGRlcHRoIGludG8gYWNjb3VudCwgdG8ga2VlcCB0aGVtIGluIHN5bmMuICBB
cyBhIG1hdHRlcgpvZiBmYWN0LCB0aGUgY2xvY2sgYWRqdXN0bWVudCBpbiBWT1AyIGlzIG1haW5s
eSBuZWNlc3NhcnkgZm9yIGxlZ2FjeQpyZWFzb25zLCBzaW5jZSBIRFBUWCBQSFkgYWxsb3dlZCBj
aGFuZ2luZyBUTURTIGNoYXIgcmF0ZSB2aWEgdGhlIENvbW1vbgpDbG9jayBGcmFtZXdvcmsgQVBJ
LiAgV2UgbGFuZGVkIGEgcHJvcGVyIHNvbHV0aW9uIGZvciB0aGF0IHZpYSB0aGUgSERNSSBQSFkK
QVBJLCBoZW5jZSB0aGUgcGxhbiB3b3VsZCBiZSB0byBtYWtlIENDRiBBUEkgcmVhZG9ubHkgYWZ0
ZXIgdGhlIHN3aXRjaCB0bwpQSFkgQVBJIGlzIGNvbXBsZXRlZCwgd2hpY2ggbWVhbnMgVk9QMiBz
aG91bGRuJ3QgZGVhbCBhbnltb3JlIHdpdGggY2xvY2sKY2FsY3VsYXRpb25zIHdoZW4gdXNpbmcg
dGhlIFBIWSBQTEwgYXMgRENMSyBzb3VyY2UuCgpSZWdhcmRsZXNzLCBJIHNob3VsZCBwcm9iYWJs
eSBtb3ZlIHRoaXMgY2xvY2sgYWRqdXN0bWVudCB0byB0aGUgY29uZGl0aW9uYWwKYmxvY2sgaGFu
ZGxpbmcgRENMSyBzb3VyY2Ugc3dpdGNoLgoKWzFdIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHVi
L3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90cmVlL2RyaXZlcnMvZ3B1
L2RybS9kaXNwbGF5L2RybV9oZG1pX3N0YXRlX2hlbHBlci5jP2g9djYuMTYtcmM3I241MjUKWzJd
IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRz
L2xpbnV4LmdpdC90cmVlL2RyaXZlcnMvZ3B1L2RybS9kaXNwbGF5L2RybV9oZG1pX3N0YXRlX2hl
bHBlci5jP2g9djYuMTYtcmM3I242MDgKWzNdIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3Nj
bS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90cmVlL2RyaXZlcnMvcGh5L3Jv
Y2tjaGlwL3BoeS1yb2NrY2hpcC1zYW1zdW5nLWhkcHR4LmM/aD12Ni4xNi1yYzcjbjEwMzQKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
