Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D65A3EDF151
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Feb 2026 11:04:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0tF8XQfgxR9QO9jPWkw9xTdDuh9eQWhq7J9yttn/ALs=; b=pWSY/TYavSZouE
	9GBJpQJ6eZWvz2Ed/IqgQwrfvHGfwDjBXMzrvPIGmwxAaDntIroqhjioQ+5/yyYpbJoc1FlUtJbHE
	zbaCEhWd384YVytNAO6Mass/+8dVwKN3UxGvWc4n0ubflJEvV9a69zMZAZZ4J6gXobpIgbaHk+k3r
	A1qjyFYjnfpyf9pO01KcHRNiTGctFCkot3qTeRUgKen6KJaxl/UJQ1edIz4BvnE+pLEm0+n9DHSum
	L6XR2COQeHomAfuHg1XuG4aXimdcy4XHzLlj9igADW/tnpw0OjR/HuoA0zoa4hNedc/Yov39+k94h
	lExTT6ONSkeUBsZYVQpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqqyH-00000003MR8-2h5T;
	Fri, 13 Feb 2026 11:04:25 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqqyC-00000003MPy-1iYk;
	Fri, 13 Feb 2026 11:04:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1770980657;
	bh=4nZFI6B+4DaZ1xwgKXUjqRowetvZjkztwjYyqHMz+xc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=plpyxtUIxFe/gOImlgAHoJUSgVdLvn0eJMXXj/FJyqzIalCK1zIypr0FQ1HGJ1pAY
	 3jUR1T9E4is+Xl8N6JbB/VRPv7MsKU5+j0vmn2JyNglpCU2cE5iS1l3xTAuhuIWZdr
	 zTUxqpABXVdGZDyZWcLcwXosI8VcXrm0GDQWJvxB9pNXEBYLgXrWIvoeFy+QblZR61
	 pJFzBWwLlgs70SJ6t/5WgXMN0faGiFqECbVfofSI9U4Xxtfter8u3iERgGxBCt+Kq2
	 l6SxBhdXnys+wtZtINxvexBOgSd/WW9dk1ljzueIJh0+RXPUc0ogy0bjladzq17/aO
	 FAnQ+k1oNXTOA==
Received: from [192.168.1.90] (unknown [82.79.138.145])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 9B4A217E1406;
	Fri, 13 Feb 2026 12:04:16 +0100 (CET)
Message-ID: <f73fe751-5812-4f27-b4ad-19f214c6e49a@collabora.com>
Date: Fri, 13 Feb 2026 13:04:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/4] drm/rockchip: vop2: Support setting custom
 background color
To: Andy Yan <andyshrk@163.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>,
 Louis Chauvet <louis.chauvet@bootlin.com>,
 Haneen Mohammed <hamohammed.sa@gmail.com>,
 Melissa Wen <melissa.srw@gmail.com>,
 Robert Mader <robert.mader@collabora.com>, kernel@collabora.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20251219-rk3588-bgcolor-v4-0-2ff1127ea757@collabora.com>
 <20251219-rk3588-bgcolor-v4-4-2ff1127ea757@collabora.com>
 <2750b73.10b0.19ba61052c8.Coremail.andyshrk@163.com>
 <9e4c8514-63e9-4ff7-85b1-b5af7dff9a2d@collabora.com>
 <67fb66b7-eee7-4109-8127-385593e88425@collabora.com>
 <539febc7.2cf9.19c55d3dfb0.Coremail.andyshrk@163.com>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <539febc7.2cf9.19c55d3dfb0.Coremail.andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260213_030422_066138_E6ED69F5 
X-CRM114-Status: GOOD (  20.75  )
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

SGkgQW5keSwKCk9uIDIvMTMvMjYgOTowNyBBTSwgQW5keSBZYW4gd3JvdGU6Cj4gSGVsbG8gQ3Jp
c3RpYW7vvIwKPiAKPiBBdCAyMDI2LTAxLTE2IDIzOjIyOjExLCAiQ3Jpc3RpYW4gQ2lvY2FsdGVh
IiA8Y3Jpc3RpYW4uY2lvY2FsdGVhQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+PiBPbiAxLzEwLzI2
IDExOjU4IEFNLCBDcmlzdGlhbiBDaW9jYWx0ZWEgd3JvdGU6Cj4+PiBIaSBBbmR5LAo+Pj4KPj4+
IE9uIDEvMTAvMjYgNjowMCBBTSwgQW5keSBZYW4gd3JvdGU6Cj4+Pj4KPj4+Pgo+Pj4+IEhlbGxv
IENyaXN0aWFuLAo+Pj4+IEF0IDIwMjUtMTItMjAgMDU6NDc6MDEsICJDcmlzdGlhbiBDaW9jYWx0
ZWEiIDxjcmlzdGlhbi5jaW9jYWx0ZWFAY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4+Pj4+IFRoZSBS
b2NrY2hpcCBWT1AyIGRpc3BsYXkgY29udHJvbGxlciBhbGxvd3MgY29uZmlndXJpbmcgdGhlIGJh
Y2tncm91bmQKPj4+Pj4gY29sb3Igb2YgZWFjaCB2aWRlbyBvdXRwdXQgcG9ydC4KPj4+Pj4KPj4+
Pj4gU2luY2UgYSBwcmV2aW91cyBwYXRjaCBpbnRyb2R1Y2VkIHRoZSBCQUNLR1JPVU5EX0NPTE9S
IENSVEMgcHJvcGVydHksCj4+Pj4+IHdoaWNoIGRlZmF1bHRzIHRvIHNvbGlkIGJsYWNrLCBtYWtl
IHVzZSBvZiBpdCB3aGVuIHByb2dyYW1taW5nIHRoZQo+Pj4+PiBoYXJkd2FyZS4KPj4+Pj4KPj4+
Pj4gTm90ZSB0aGUgbWF4aW11bSBwcmVjaXNpb24gYWxsb3dlZCBieSB0aGUgZGlzcGxheSBjb250
cm9sbGVyIGlzIDEwYnBjLAo+Pj4+PiB3aGlsZSB0aGUgYWxwaGEgY29tcG9uZW50IGlzIG5vdCBz
dXBwb3J0ZWQsIGhlbmNlIGlnbm9yZWQuCj4+Pj4+Cj4+Pj4+IFNpZ25lZC1vZmYtYnk6IENyaXN0
aWFuIENpb2NhbHRlYSA8Y3Jpc3RpYW4uY2lvY2FsdGVhQGNvbGxhYm9yYS5jb20+Cj4+Pj4+IC0t
LQo+Pj4+PiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYyB8IDEz
ICsrKysrKysrKysrKy0KPj4+Pj4gZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2Ry
bV92b3AyLmggfCAgNCArKysrCj4+Pj4+IDIgZmlsZXMgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygr
KSwgMSBkZWxldGlvbigtKQoKWy4uLl0KCj4+Pj4+IC0Jdm9wMl92cF93cml0ZSh2cCwgUkszNTY4
X1ZQX0RTUF9CRywgMCk7ICsJLyogQmFja2dyb3VuZCBjb2xvciBpcwo+Pj4+PiBwcm9ncmFtbWVk
IHdpdGggMTAgYml0cyBvZiBwcmVjaXNpb24gKi8gKwl2YWwgPQo+Pj4+PiBGSUVMRF9QUkVQKFJL
MzU2OF9WUF9EU1BfQkdfX0RTUF9CR19SRUQsIERSTV9BUkdCNjRfR0VUUihiZ2NvbG9yKSA+PiA2
KTsgKwo+Pj4+PiB2YWwgfD0gRklFTERfUFJFUChSSzM1NjhfVlBfRFNQX0JHX19EU1BfQkdfR1JF
RU4sIERSTV9BUkdCNjRfR0VURyhiZ2NvbG9yKQo+Pj4+PiA+PiA2KTsKPj4+Pgo+Pj4+PiArCXZh
bCB8PSBGSUVMRF9QUkVQKFJLMzU2OF9WUF9EU1BfQkdfX0RTUF9CR19CTFVFLAo+Pj4+PiBEUk1f
QVJHQjY0X0dFVEIoYmdjb2xvcikgPj4gNik7Cj4+Pj4KPj4+Pgo+Pj4+IHRoZSBiaXQzMSBvZiAg
UkszNTY4X1ZQX0RTUF9CRyAgaXMgYmdfZGlzcGxheV9lbu+8jCB0aGF0IG1lYW5zIHdoZW4gd2Ug
c2V0IGEKPj4+PiBiYWNrZ3JvdW5kIGNvbG9yLCB3ZSBzaG91bGQgc2V0IHRoaXMgYmdfZGlzcGxh
eV9lbiBiaXQuCj4+Cj4+IEkgcGVyZm9ybWVkIHNldmVyYWwgdGVzdHMgb24gbXkgUk9DSyAzQSAo
UkszNTY4KSwgUk9DSyA0RCAoUkszNTc2KSBhbmQgUk9DSwo+PiA1QiAoUkszNTg4KSBib2FyZHMg
YW5kIG5vdGljZWQgdGhhdCBieSBzZXR0aW5nIGJnX2Rpc3BsYXlfZW4gYml0IHRvIDEgb3IgMAo+
PiBkb2Vzbid0IGhhdmUgYW55IGluZmx1ZW5jZSBvbiBSSzM1NjggYW5kIFJLMzU3NiwgdGhlIGJh
Y2tncm91bmQgY29sb3IgaXMKPj4gYWx3YXlzIGFjdGl2ZSBhbmQgY2Fubm90IGJlIGRpc2FibGVk
Lgo+Pgo+PiBIb3dldmVyLCBmbGlwcGluZyB0aGUgYml0IHRvIDEgb24gUkszNTg4IGhhcyB0aGUg
dW5leHBlY3RlZCBlZmZlY3Qgb2YKPj4gY292ZXJpbmcgdGhlIHdob2xlIHNjcmVlbiB3aXRoIHRo
ZSBjb25maWd1cmVkIGNvbG9yLCBldmVuIHdoZW4gdGhlcmUncyBhbgo+PiBhY3RpdmUgcGxhbmUg
ZGlzcGxheWVkIG9uIHRvcC4gU3dpdGNoaW5nIGJhY2sgdG8gMCBtYWtlcyBpdCB3b3JrIGFzIGV4
cGVjdGVkLgo+Pgo+PiBUaGVyZWZvcmUgSSB0aGluayB3ZSBzaG91bGQga2VlcCB0aGlzIHBhdGNo
IGFzIGlzLCB1bmxlc3MgdGhlcmUncyBzb21ldGhpbmcKPj4gZWxzZSB3ZSdyZSBtaXNzaW5nIGhl
cmUuCj4+Cj4+Pj4gVGhlIGRlZmF1bHQgdmFsdWUgb2YgdGhpcyBiaXQgaXMgMSwgd2hpY2ggZXhw
bGFpbnMgd2h5IHRoZSBwYXRjaCBjdXJyZW50bHkKPj4+PiB3b3JrcyBwcm9wZXJseSBldmVuIHRo
b3VnaCBpdCBkb2Vzbid0IHNldCBiaXQzMS4KPj4+Cj4+PiBGb3Igc29tZSByZWFzb24sIHRoZSBS
SzM1ODggVFJNIGluZGljYXRlcyAweDAgZm9yIHRoZSByZXNldCB2YWx1ZS4gIEkgYXNzdW1lCj4+
PiB0aGF0J3MgYSBtaXN0YWtlLCBhcyBSSzM1NzYgVFJNIHNob3dzIDB4MS4KPj4KPj4gQ29uc2lk
ZXJpbmcgdGhlIG9ic2VydmF0aW9uIGFib3ZlLCBpdCBraW5kYSBtYWtlcyBzZW5zZSBub3cgZm9y
IFJLMzU4OCB0bwo+PiBkZWZhdWx0IHRvIDAuCj4gCj4gICAgSSBmdXJ0aGVyIGNvbmZpcm1lZCB3
aXRoIG91ciBJQyB0ZWFtOiBmb3IgUkszNTg4LCBSSzM1MjgsIGFuZCBSSzM1NjIsIGlmCj4gICAg
dGhlIGRpc3BsYXlfZW5iaXQgaXMgc2V0LCB0aGUgYmFja2dyb3VuZCBjb2xvciB3aWxsIGluZGVl
ZCBjb3ZlciBhbGwKPiAgICBsYXllcnMuIEZvciBvdGhlciBjaGlwcywgdGhpcyBiaXQgaGFzIG5v
IGVmZmVjdC4gU28gQUNLCgpUaGFua3MgZm9yIGNsYXJpZnlpbmchICAKClRoaXMgcGF0Y2ggaXMg
dGhlIG9ubHkgb25lIGluIHRoZSBzZXJpZXMgbWlzc2luZyBhIHJldmlldywgaGVuY2UgY291bGQg
eW91CnBsZWFzZSBwcm92aWRlIHlvdXIgUi1iIChvciBBLWIpIHRhZyBvbiB0aGUgbGFzdCByZXZp
c2lvbiBbMV0/IAoKUmVnYXJkcywKQ3Jpc3RpYW4KClsxXSBodHRwczovL2xvcmUua2VybmVsLm9y
Zy9hbGwvMjAyNjAyMDQtcmszNTg4LWJnY29sb3ItdjctNC03OGQxZDAxYzVjYTFAY29sbGFib3Jh
LmNvbS8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
