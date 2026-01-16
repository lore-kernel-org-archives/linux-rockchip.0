Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A188C982C7
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jan 2026 15:22:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/bGfY+Pu0piAt/8E49brk1s0nt1MzVX/csoaLSjjMNM=; b=lgBDJ6E13bTdvi
	vHDu7couBxFzTzoljhexov/z7sJll1G6Jam432M3E3T3ogFdHV5UuLlXjdBsBPOJkdJBWZUGWmWH9
	VE3emju2a1n2KgH1f3xNXYZdpna3jD/p6wRsiP8gyxwqQYitZ4JXcR+rGdQ/GMZ95lcV7C0jBns29
	SITjHAhYTWQ2XuGfS3i+oMm3d9cIYwRG8B04HUHs7dYJVDdLXHL0BJAS3e406TESxwZN5+aiUBqyO
	glmdY7uroMic6qxv5uVNdiDufQHUFYma4t44NXcQyl2rkSMKXvRK5Hdpa8ij3Sg3i0i3UTSyfnDqu
	k3rcQxBJKvvIMec3YyPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgleV-0000000ELs6-1Ftu;
	Fri, 16 Jan 2026 15:22:19 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgleR-0000000ELrL-44Gm;
	Fri, 16 Jan 2026 15:22:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1768576932;
	bh=nMzG4VYsPxThyemGmauGTpz3/79R6uHQXsAVyIDCY68=;
	h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
	b=V0E6xz9bBqQb0j5WBYTwr3DT1kb3tap53bVIQAYhjbhs3C6uXAfqno/ktp1Dw/IBf
	 IjvqzclP4eyH1K3oLBvSMGDiFvXeB4OZqKl4sn5IdwrLjzmxsILUjI6lij215+FbEC
	 ibHgQlRgvXCfkVIvHYx5Yl7ixIgXYMuVJM1FPjDedXrMM/3f4fXHiBA54tMw+Q9mES
	 RJVFznGjlZ6dukcNpwA9jpF3iGrf6sEgcSh7Ow38uLn7/gKs7Au9p9rP5T3w7THdWE
	 zRy3SVtUd6MfUCYiVd1st5X1HYSvzvVJa0Pyc2LQJdqj3tkwmJKqXn8EDrNOZYUEen
	 9obLkDk8JeFYQ==
Received: from [192.168.1.90] (unknown [82.79.138.145])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id AD26817E0456;
	Fri, 16 Jan 2026 16:22:11 +0100 (CET)
Message-ID: <67fb66b7-eee7-4109-8127-385593e88425@collabora.com>
Date: Fri, 16 Jan 2026 17:22:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/4] drm/rockchip: vop2: Support setting custom
 background color
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
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
Content-Language: en-US
In-Reply-To: <9e4c8514-63e9-4ff7-85b1-b5af7dff9a2d@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_072216_215563_FFF7CE7E 
X-CRM114-Status: GOOD (  20.58  )
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

T24gMS8xMC8yNiAxMTo1OCBBTSwgQ3Jpc3RpYW4gQ2lvY2FsdGVhIHdyb3RlOgo+IEhpIEFuZHks
Cj4gCj4gT24gMS8xMC8yNiA2OjAwIEFNLCBBbmR5IFlhbiB3cm90ZToKPj4KPj4KPj4gSGVsbG8g
Q3Jpc3RpYW4sCj4+IEF0IDIwMjUtMTItMjAgMDU6NDc6MDEsICJDcmlzdGlhbiBDaW9jYWx0ZWEi
IDxjcmlzdGlhbi5jaW9jYWx0ZWFAY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4+PiBUaGUgUm9ja2No
aXAgVk9QMiBkaXNwbGF5IGNvbnRyb2xsZXIgYWxsb3dzIGNvbmZpZ3VyaW5nIHRoZSBiYWNrZ3Jv
dW5kCj4+PiBjb2xvciBvZiBlYWNoIHZpZGVvIG91dHB1dCBwb3J0Lgo+Pj4KPj4+IFNpbmNlIGEg
cHJldmlvdXMgcGF0Y2ggaW50cm9kdWNlZCB0aGUgQkFDS0dST1VORF9DT0xPUiBDUlRDIHByb3Bl
cnR5LAo+Pj4gd2hpY2ggZGVmYXVsdHMgdG8gc29saWQgYmxhY2ssIG1ha2UgdXNlIG9mIGl0IHdo
ZW4gcHJvZ3JhbW1pbmcgdGhlCj4+PiBoYXJkd2FyZS4KPj4+Cj4+PiBOb3RlIHRoZSBtYXhpbXVt
IHByZWNpc2lvbiBhbGxvd2VkIGJ5IHRoZSBkaXNwbGF5IGNvbnRyb2xsZXIgaXMgMTBicGMsCj4+
PiB3aGlsZSB0aGUgYWxwaGEgY29tcG9uZW50IGlzIG5vdCBzdXBwb3J0ZWQsIGhlbmNlIGlnbm9y
ZWQuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogQ3Jpc3RpYW4gQ2lvY2FsdGVhIDxjcmlzdGlhbi5j
aW9jYWx0ZWFAY29sbGFib3JhLmNvbT4KPj4+IC0tLQo+Pj4gZHJpdmVycy9ncHUvZHJtL3JvY2tj
aGlwL3JvY2tjaGlwX2RybV92b3AyLmMgfCAxMyArKysrKysrKysrKystCj4+PiBkcml2ZXJzL2dw
dS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuaCB8ICA0ICsrKysKPj4+IDIgZmlsZXMg
Y2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Pj4KPj4+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYyBiL2RyaXZl
cnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jCj4+PiBpbmRleCA0OThkZjBj
ZTQ2ODAuLjNhMjMyZDBkNGFjYiAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2Nr
Y2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2No
aXAvcm9ja2NoaXBfZHJtX3ZvcDIuYwo+Pj4gQEAgLTE1NTQsNiArMTU1NCw3IEBAIHN0YXRpYyB2
b2lkIHZvcDJfcG9zdF9jb25maWcoc3RydWN0IGRybV9jcnRjICpjcnRjKQo+Pj4gCXN0cnVjdCB2
b3AyX3ZpZGVvX3BvcnQgKnZwID0gdG9fdm9wMl92aWRlb19wb3J0KGNydGMpOwo+Pj4gCXN0cnVj
dCB2b3AyICp2b3AyID0gdnAtPnZvcDI7Cj4+PiAJc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKm1v
ZGUgPSAmY3J0Yy0+c3RhdGUtPmFkanVzdGVkX21vZGU7Cj4+PiArCXU2NCBiZ2NvbG9yID0gY3J0
Yy0+c3RhdGUtPmJhY2tncm91bmRfY29sb3I7Cj4+PiAJdTE2IHZ0b3RhbCA9IG1vZGUtPmNydGNf
dnRvdGFsOwo+Pj4gCXUxNiBoZGlzcGxheSA9IG1vZGUtPmNydGNfaGRpc3BsYXk7Cj4+PiAJdTE2
IGhhY3Rfc3QgPSBtb2RlLT5jcnRjX2h0b3RhbCAtIG1vZGUtPmNydGNfaHN5bmNfc3RhcnQ7Cj4+
PiBAQCAtMTU5OSw3ICsxNjAwLDExIEBAIHN0YXRpYyB2b2lkIHZvcDJfcG9zdF9jb25maWcoc3Ry
dWN0IGRybV9jcnRjICpjcnRjKQo+Pj4gCQl2b3AyX3ZwX3dyaXRlKHZwLCBSSzM1NjhfVlBfUE9T
VF9EU1BfVkFDVF9JTkZPX0YxLCB2YWwpOwo+Pj4gCX0KPj4+Cj4+PiAtCXZvcDJfdnBfd3JpdGUo
dnAsIFJLMzU2OF9WUF9EU1BfQkcsIDApOwo+Pj4gKwkvKiBCYWNrZ3JvdW5kIGNvbG9yIGlzIHBy
b2dyYW1tZWQgd2l0aCAxMCBiaXRzIG9mIHByZWNpc2lvbiAqLwo+Pj4gKwl2YWwgPSBGSUVMRF9Q
UkVQKFJLMzU2OF9WUF9EU1BfQkdfX0RTUF9CR19SRUQsIERSTV9BUkdCNjRfR0VUUihiZ2NvbG9y
KSA+PiA2KTsKPj4+ICsJdmFsIHw9IEZJRUxEX1BSRVAoUkszNTY4X1ZQX0RTUF9CR19fRFNQX0JH
X0dSRUVOLCBEUk1fQVJHQjY0X0dFVEcoYmdjb2xvcikgPj4gNik7Cj4+Cj4+PiArCXZhbCB8PSBG
SUVMRF9QUkVQKFJLMzU2OF9WUF9EU1BfQkdfX0RTUF9CR19CTFVFLCBEUk1fQVJHQjY0X0dFVEIo
Ymdjb2xvcikgPj4gNik7Cj4+Cj4+Cj4+IHRoZSBiaXQzMSBvZiAgUkszNTY4X1ZQX0RTUF9CRyAg
aXMgYmdfZGlzcGxheV9lbu+8jCB0aGF0IG1lYW5zIHdoZW4gd2Ugc2V0IGEgCj4+IGJhY2tncm91
bmQgY29sb3IsIHdlIHNob3VsZCBzZXQgdGhpcyBiZ19kaXNwbGF5X2VuIGJpdC4KCkkgcGVyZm9y
bWVkIHNldmVyYWwgdGVzdHMgb24gbXkgUk9DSyAzQSAoUkszNTY4KSwgUk9DSyA0RCAoUkszNTc2
KSBhbmQgUk9DSyA1QgooUkszNTg4KSBib2FyZHMgYW5kIG5vdGljZWQgdGhhdCBieSBzZXR0aW5n
IGJnX2Rpc3BsYXlfZW4gYml0IHRvIDEgb3IgMCBkb2Vzbid0CmhhdmUgYW55IGluZmx1ZW5jZSBv
biBSSzM1NjggYW5kIFJLMzU3NiwgdGhlIGJhY2tncm91bmQgY29sb3IgaXMgYWx3YXlzIGFjdGl2
ZQphbmQgY2Fubm90IGJlIGRpc2FibGVkLgoKSG93ZXZlciwgZmxpcHBpbmcgdGhlIGJpdCB0byAx
IG9uIFJLMzU4OCBoYXMgdGhlIHVuZXhwZWN0ZWQgZWZmZWN0IG9mIGNvdmVyaW5nCnRoZSB3aG9s
ZSBzY3JlZW4gd2l0aCB0aGUgY29uZmlndXJlZCBjb2xvciwgZXZlbiB3aGVuIHRoZXJlJ3MgYW4g
YWN0aXZlIHBsYW5lCmRpc3BsYXllZCBvbiB0b3AuIFN3aXRjaGluZyBiYWNrIHRvIDAgbWFrZXMg
aXQgd29yayBhcyBleHBlY3RlZC4KClRoZXJlZm9yZSBJIHRoaW5rIHdlIHNob3VsZCBrZWVwIHRo
aXMgcGF0Y2ggYXMgaXMsIHVubGVzcyB0aGVyZSdzIHNvbWV0aGluZyBlbHNlCndlJ3JlIG1pc3Np
bmcgaGVyZS4KCj4+IFRoZSBkZWZhdWx0IHZhbHVlIG9mIHRoaXMgYml0IGlzIDEsIHdoaWNoIGV4
cGxhaW5zIHdoeSB0aGUgcGF0Y2ggY3VycmVudGx5IHdvcmtzIAo+PiBwcm9wZXJseSBldmVuIHRo
b3VnaCBpdCBkb2Vzbid0IHNldCBiaXQzMS4KPiAKPiBGb3Igc29tZSByZWFzb24sIHRoZSBSSzM1
ODggVFJNIGluZGljYXRlcyAweDAgZm9yIHRoZSByZXNldCB2YWx1ZS4gIEkgYXNzdW1lCj4gdGhh
dCdzIGEgbWlzdGFrZSwgYXMgUkszNTc2IFRSTSBzaG93cyAweDEuCgpDb25zaWRlcmluZyB0aGUg
b2JzZXJ2YXRpb24gYWJvdmUsIGl0IGtpbmRhIG1ha2VzIHNlbnNlIG5vdyBmb3IgUkszNTg4IHRv
CmRlZmF1bHQgdG8gMC4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
