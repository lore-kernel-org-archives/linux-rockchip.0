Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94054C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Mar 2022 11:02:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ivTbFo8hucdKPRYaY30353qUZO0M3d0IZpG7cBHEKP8=; b=fvgii2c4EL5VPC
	58vJ55JEJlTsS+6LhgRdZBY2L97Cxs5Zsx+QKGjFF9RSa0JyJETjLsVivHvSxfcKg54Kalb19LRjH
	c7pa/7VKn3oorg9DmfNBM2rvC5NIi5R74YZ80+WktAuWC8uZS9eoZZiLAB8s3SqR+QCeWqfk91OJQ
	n0qflIAjG6SmBjOIKR9WVebRctZ9Hsa6om2rN7GJXE+BiInzPaxXleZdE3G8muzusp/M3ic8w2p5X
	BAw7nu9UWEtSUdyOb+r7GEessy10Tgxg3vYjs5pqhO2GII8PCAgdRWNb3GaTZr03NKnMrAUk1Wroc
	TJgklD3jgn9KPcoSYBvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nTiTG-0055As-Iq; Mon, 14 Mar 2022 11:02:38 +0000
Received: from mail-m121144.qiye.163.com ([115.236.121.144])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nTiT3-00558s-Ja; Mon, 14 Mar 2022 11:02:27 +0000
Received: from [172.16.12.141] (unknown [58.22.7.114])
 by mail-m121144.qiye.163.com (Hmail) with ESMTPA id E4B3FAC0289;
 Mon, 14 Mar 2022 19:02:20 +0800 (CST)
Message-ID: <d98782df-43c8-475b-375d-ad6aff4fae44@rock-chips.com>
Date: Mon, 14 Mar 2022 19:02:20 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v7 22/24] drm: rockchip: Add VOP2 driver
Content-Language: en-US
From: Andy Yan <andy.yan@rock-chips.com>
To: Daniel Stone <daniel@fooishbar.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 Peter Geis <pgwipeout@gmail.com>, linux-arm-kernel@lists.infradead.org
References: <20220225075150.2729401-1-s.hauer@pengutronix.de>
 <20220225075150.2729401-23-s.hauer@pengutronix.de>
 <bb077f34-333e-a07a-1fcb-702a6807f941@rock-chips.com>
 <CAPj87rO2sztocJrE-CeSQWry9j_cSe2uv9F1Yf81pGnBXdu2Ag@mail.gmail.com>
 <ae4314db-09c0-049b-ccc9-f6b1c3003dcb@rock-chips.com>
 <CAPj87rOanNE1wca3ijJx1zXYZkKX1ta9F145GCXM15Nv=POicA@mail.gmail.com>
 <f3af0286-fc64-f011-bc90-6797e26e3640@rock-chips.com>
 <30f195d6-e9d7-3da6-89fa-4a064a1f6bf9@rock-chips.com>
In-Reply-To: <30f195d6-e9d7-3da6-89fa-4a064a1f6bf9@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUlKS0tKN1dZLVlBSVdZDwkaFQgSH1lBWRpLTktWGElMGE5PGU
 5OTRlJVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PVE6ECo4Vj4MIygNSk8*Iz8e
 IU9PFA9VSlVKTU9MSU5OTE9KT0NLVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
 WUFZTkNVSUlVTFVKSk9ZV1kIAVlBT0xNQzcG
X-HM-Tid: 0a7f8817e328b039kuuue4b3fac0289
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220314_040225_832053_247DAE49 
X-CRM114-Status: GOOD (  16.47  )
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

SGkgRGFuaWVsOgoKIMKgIFJlbWVtYmVyIHlvdSBzYWlkIG91ciBkb3duc3RyZWFtIHZvcDIgZHJp
dmVyIGlzIHZlcnkgc2xvdyBvbiB3ZXN0b24uCgpXb3VsZCB5b3UgcGxlYXNlIHNoYXJlIHRoZSBj
YXNlIHlvdSBydW4gPyBvciBob3cgY2FuIGkgdGVzdCBmcmFtZSByYXRlIApvbiB3ZXN0b24/CgpP
biAzLzkvMjIgMTU6MzcsIEFuZHkgWWFuIHdyb3RlOgo+IEhpIERhbmllbDoKPgo+IE9uIDMvOS8y
MiAxMDowMywgQW5keSBZYW4gd3JvdGU6Cj4+IEhpIERhbmllbDoKPj4KPj4gT24gMy84LzIyIDIy
OjA0LCBEYW5pZWwgU3RvbmUgd3JvdGU6Cj4+PiBPbiBUdWUsIDggTWFyIDIwMjIgYXQgMDg6NDIs
IEFuZHkgWWFuIDxhbmR5LnlhbkByb2NrLWNoaXBzLmNvbT4gd3JvdGU6Cj4+Pj4gT24gMy83LzIy
IDIxOjA5LCBEYW5pZWwgU3RvbmUgd3JvdGU6Cj4+Pj4+IE9uIE1vbiwgNyBNYXIgMjAyMiBhdCAx
MjoxOCwgQW5keSBZYW4gPGFuZHkueWFuQHJvY2stY2hpcHMuY29tPiAKPj4+Pj4gd3JvdGU6Cj4+
Pj4+PiBXaGVuIHJ1biBhIHdlc3RvbiAxMC4wLjA6Cj4+Pj4+Pgo+Pj4+Pj4gwqDCoMKgICMgZXhw
b3J0IFhER19SVU5USU1FX0RJUj0vdG1wCj4+Pj4+PiDCoMKgwqAgIyB3ZXN0b24gLS1iYWNrZW5k
PWRybS1iYWNrZW5kLnNvIC0tdXNlLXBpeG1hIC0tdHR5PTIKPj4+Pj4+IC0tY29udGludWU9d2l0
aG91dC1pbnB1dAo+Pj4+Pj4KPj4+Pj4+IEkgZ290IHRoZSBmb2xsb3dpbmcgZXJyb3I6Cj4+Pj4+
Pgo+Pj4+Pj4gZHJtX2F0b21pY19jaGVja19vbmx5IFtQTEFORTozMTpTbWFydDAtd2luMF0gQ1JU
QyBzZXQgYnV0IG5vIEZCCj4+Pj4+IENhbiB5b3UgcGxlYXNlIHN0YXJ0IFdlc3RvbiB3aXRoIC0t
bG9nZ2VyLXNjb3Blcz1sb2csZHJtLWJhY2tlbmQgYW5kCj4+Pj4+IGF0dGFjaCB0aGUgb3V0cHV0
Pwo+Pj4+IFBsZWFzZSBzZWUgdGhlIHdlc3RvbiBvdXB1dCBoZXJlWzBdCj4+PiBBcmUgeW91IHJ1
bm5pbmcgd2l0aCBtdXNsIHBlcmhhcHM/Cj4+IERvIHlvdSBtZWFuIHRoZSBDIGxpYnJhcnk/IEkg
Y2hvc2UgdUNsaWItbmcgaW4gYnVpbGRyb290LCBub3QgdXNlIG11c2wuCj4+PiBFaXRoZXIgd2F5
LCBwbGVhc2UgbWFrZSBzdXJlIHlvdXIKPj4+IGxpYmRybSBidWlsZCBpbmNsdWRlcyBjb21taXQg
NzlmYTM3N2M4YmRjODRmZGU5OWM2YTZhYzE3ZTU1NDk3MWM2MTdiZS4KPj4KPj4KPj4gVGhlIHVw
c3RyZWFtIGJ1aWxkcm9vdCB1c2UgbGliZHJtMi40LjEwOSwgdGhpcyBjb21taXRbMF0gaWYgZnJv
bSAKPj4gbGliZHJtMi40LjExMAo+Pgo+PiBJIGNoZXJyeS1waWNrIHRoaXMgcGF0Y2ggdG8gbXkg
bG9jYWwgbGliZHJtLCBidXQgaGFzIG5vIGVmZmVjdCwgc3RpbGwgCj4+IGhhcyAiYXRvbWljOiBj
b3VsZG4ndCBjb21taXQgbmV3IHN0YXRlIiBlcnJvci4KPj4KPj4gSSBoYXZlIGRvIGEgc2VhcmNo
IGluIGxpYmRybSBhbmQgd2VzdG9uLCBidXQgZmluZCBubyBvbmUgY2FsbCAKPj4gZHJtTW9kZUF0
b21pY01lcmdlLCBpcyB0aGF0IHJpZ2h0Pwo+Pgo+PiBbMF1odHRwczovL2dpdGxhYi5mcmVlZGVz
a3RvcC5vcmcvbWVzYS9kcm0vLS9tZXJnZV9yZXF1ZXN0cy8xNjcKPj4KPgo+IFdpdGggeW91ciBw
YXRjaCBhcHBsaWVkIGZyb20gbGliZHJtMi40LjExMCwgSSBkbyBhIG1ha2UgY2xlYW4gZm9yIAo+
IGJ1aWRscm9vdCwgdGhhbiBidWlsZCBpdCBhZ2FpbizCoCBUaGF0J3MgdGFrZSBlZmZlY3QuCj4K
PiBJIGNhbiBzZWUgb25seSB0aGUgc2Vjb25kIHZhbHVlIChub24temVybyBGQikgb2YgcGxhbmUg
MzEgY29tbWl0IHRvIAo+IHRoZSBrZXJuZWwuIFNvIHRoaXMgaXMgd29ya3MuCj4KPiBNYXliZSB0
aGUgYnVpZHJvb3Qgc2hvdWxkIHVwZGF0ZSBsaWJkcm0gcGFja2FnZS4KPgo+IFRoYW5rIHlvdS4K
Pgo+Pj4KPj4+IENoZWVycywKPj4+IERhbmllbAo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
Pj4gTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+PiBodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
