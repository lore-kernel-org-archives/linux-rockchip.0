Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB5BFD277DA
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Jan 2026 09:58:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gzb17GYfQcQE1k4j2WP+Wx9QEXlITlLJTkRnUaQs2TI=; b=hVPVr0oj1FhnYj
	awkbJq+OjY07zCLs1K7cyGcdlkz87H26mnAaR58ANbgs4ihCjXqqJyyU8CAtOqFNK7+JtVLwPWZN8
	IlVimUWN6wZJM2Qza1tFuEE0j4UiEL7C/7FZxNhQvDH0NCeSEvB8+d3T3g8IZg0rn7/L8Js682lko
	QHvMUfr9BZgL/Rxdc3vlOOn+j4u43wBVOMjtnCc1ikx/SLExCbJSybwNYd53bwlnV4ptPDlBDPmGC
	3a85xcJ88/JNZ3LO6A73mjqdKU3CPjnZtWfgIFwDAkH31bvB8K5i9Oky946yYf/wE86/qd6kTX/RL
	WOgfuddyJ8lmi3QXhB0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veVjf-00000003NVg-3HF8;
	Sat, 10 Jan 2026 09:58:19 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veVjc-00000003NUv-1kLU;
	Sat, 10 Jan 2026 09:58:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1768039090;
	bh=UVASJL81PowX/kBILLs/GepNKULzc3OT5vcMjYhxSzo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=jMo9mU0zqWVb95Hbt7Oa3iM2pMSIjazU7WDi0tpFLuPQZha76KQXD/V5PbebaXSXD
	 LQbFoFQO0+yE+YrMxBaUZ9kvDQOP+S6rEcbmfwm36R6TnP97/v3H+72Lpg8i2B0Qjs
	 jgpuhdES3o95D+yfdkBxykdLT09nnpKwcP6wZ6796NrMfibM9LIHL1nXzxP75rJDT5
	 YQqOMbjm84PR3Vc9wW4/rgx5ybU7nFF2VSgXzpywUUCDOcm6GJ69yKqJATMl+hgMg2
	 oIDhC15CHF/uuwvdrDoY3kDxAkJdEkEeX65Q08HpMKkT6HIEhUgPLgKc9RFZL5PTr9
	 ckY76nUwXjpGw==
Received: from [192.168.1.90] (unknown [82.79.138.145])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 754FB17E0CB0;
	Sat, 10 Jan 2026 10:58:09 +0100 (CET)
Message-ID: <9e4c8514-63e9-4ff7-85b1-b5af7dff9a2d@collabora.com>
Date: Sat, 10 Jan 2026 11:58:08 +0200
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
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <2750b73.10b0.19ba61052c8.Coremail.andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260110_015816_611887_3988DF88 
X-CRM114-Status: GOOD (  18.54  )
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

SGkgQW5keSwKCk9uIDEvMTAvMjYgNjowMCBBTSwgQW5keSBZYW4gd3JvdGU6Cj4gCj4gCj4gSGVs
bG8gQ3Jpc3RpYW4sCj4gQXQgMjAyNS0xMi0yMCAwNTo0NzowMSwgIkNyaXN0aWFuIENpb2NhbHRl
YSIgPGNyaXN0aWFuLmNpb2NhbHRlYUBjb2xsYWJvcmEuY29tPiB3cm90ZToKPj4gVGhlIFJvY2tj
aGlwIFZPUDIgZGlzcGxheSBjb250cm9sbGVyIGFsbG93cyBjb25maWd1cmluZyB0aGUgYmFja2dy
b3VuZAo+PiBjb2xvciBvZiBlYWNoIHZpZGVvIG91dHB1dCBwb3J0Lgo+Pgo+PiBTaW5jZSBhIHBy
ZXZpb3VzIHBhdGNoIGludHJvZHVjZWQgdGhlIEJBQ0tHUk9VTkRfQ09MT1IgQ1JUQyBwcm9wZXJ0
eSwKPj4gd2hpY2ggZGVmYXVsdHMgdG8gc29saWQgYmxhY2ssIG1ha2UgdXNlIG9mIGl0IHdoZW4g
cHJvZ3JhbW1pbmcgdGhlCj4+IGhhcmR3YXJlLgo+Pgo+PiBOb3RlIHRoZSBtYXhpbXVtIHByZWNp
c2lvbiBhbGxvd2VkIGJ5IHRoZSBkaXNwbGF5IGNvbnRyb2xsZXIgaXMgMTBicGMsCj4+IHdoaWxl
IHRoZSBhbHBoYSBjb21wb25lbnQgaXMgbm90IHN1cHBvcnRlZCwgaGVuY2UgaWdub3JlZC4KPj4K
Pj4gU2lnbmVkLW9mZi1ieTogQ3Jpc3RpYW4gQ2lvY2FsdGVhIDxjcmlzdGlhbi5jaW9jYWx0ZWFA
Y29sbGFib3JhLmNvbT4KPj4gLS0tCj4+IGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hp
cF9kcm1fdm9wMi5jIHwgMTMgKysrKysrKysrKysrLQo+PiBkcml2ZXJzL2dwdS9kcm0vcm9ja2No
aXAvcm9ja2NoaXBfZHJtX3ZvcDIuaCB8ICA0ICsrKysKPj4gMiBmaWxlcyBjaGFuZ2VkLCAxNiBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2Nr
Y2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jCj4+IGluZGV4IDQ5OGRmMGNlNDY4MC4uM2EyMzJkMGQ0
YWNiIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJt
X3ZvcDIuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3Zv
cDIuYwo+PiBAQCAtMTU1NCw2ICsxNTU0LDcgQEAgc3RhdGljIHZvaWQgdm9wMl9wb3N0X2NvbmZp
ZyhzdHJ1Y3QgZHJtX2NydGMgKmNydGMpCj4+IAlzdHJ1Y3Qgdm9wMl92aWRlb19wb3J0ICp2cCA9
IHRvX3ZvcDJfdmlkZW9fcG9ydChjcnRjKTsKPj4gCXN0cnVjdCB2b3AyICp2b3AyID0gdnAtPnZv
cDI7Cj4+IAlzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9kZSA9ICZjcnRjLT5zdGF0ZS0+YWRq
dXN0ZWRfbW9kZTsKPj4gKwl1NjQgYmdjb2xvciA9IGNydGMtPnN0YXRlLT5iYWNrZ3JvdW5kX2Nv
bG9yOwo+PiAJdTE2IHZ0b3RhbCA9IG1vZGUtPmNydGNfdnRvdGFsOwo+PiAJdTE2IGhkaXNwbGF5
ID0gbW9kZS0+Y3J0Y19oZGlzcGxheTsKPj4gCXUxNiBoYWN0X3N0ID0gbW9kZS0+Y3J0Y19odG90
YWwgLSBtb2RlLT5jcnRjX2hzeW5jX3N0YXJ0Owo+PiBAQCAtMTU5OSw3ICsxNjAwLDExIEBAIHN0
YXRpYyB2b2lkIHZvcDJfcG9zdF9jb25maWcoc3RydWN0IGRybV9jcnRjICpjcnRjKQo+PiAJCXZv
cDJfdnBfd3JpdGUodnAsIFJLMzU2OF9WUF9QT1NUX0RTUF9WQUNUX0lORk9fRjEsIHZhbCk7Cj4+
IAl9Cj4+Cj4+IC0Jdm9wMl92cF93cml0ZSh2cCwgUkszNTY4X1ZQX0RTUF9CRywgMCk7Cj4+ICsJ
LyogQmFja2dyb3VuZCBjb2xvciBpcyBwcm9ncmFtbWVkIHdpdGggMTAgYml0cyBvZiBwcmVjaXNp
b24gKi8KPj4gKwl2YWwgPSBGSUVMRF9QUkVQKFJLMzU2OF9WUF9EU1BfQkdfX0RTUF9CR19SRUQs
IERSTV9BUkdCNjRfR0VUUihiZ2NvbG9yKSA+PiA2KTsKPj4gKwl2YWwgfD0gRklFTERfUFJFUChS
SzM1NjhfVlBfRFNQX0JHX19EU1BfQkdfR1JFRU4sIERSTV9BUkdCNjRfR0VURyhiZ2NvbG9yKSA+
PiA2KTsKPiAKPj4gKwl2YWwgfD0gRklFTERfUFJFUChSSzM1NjhfVlBfRFNQX0JHX19EU1BfQkdf
QkxVRSwgRFJNX0FSR0I2NF9HRVRCKGJnY29sb3IpID4+IDYpOwo+IAo+IAo+IHRoZSBiaXQzMSBv
ZiAgUkszNTY4X1ZQX0RTUF9CRyAgaXMgYmdfZGlzcGxheV9lbu+8jCB0aGF0IG1lYW5zIHdoZW4g
d2Ugc2V0IGEgCj4gYmFja2dyb3VuZCBjb2xvciwgd2Ugc2hvdWxkIHNldCB0aGlzIGJnX2Rpc3Bs
YXlfZW4gYml0LgoKT2ggeWVzLCBnb29kIGNhdGNoIQoKPiBUaGUgZGVmYXVsdCB2YWx1ZSBvZiB0
aGlzIGJpdCBpcyAxLCB3aGljaCBleHBsYWlucyB3aHkgdGhlIHBhdGNoIGN1cnJlbnRseSB3b3Jr
cyAKPiBwcm9wZXJseSBldmVuIHRob3VnaCBpdCBkb2Vzbid0IHNldCBiaXQzMS4KCkZvciBzb21l
IHJlYXNvbiwgdGhlIFJLMzU4OCBUUk0gaW5kaWNhdGVzIDB4MCBmb3IgdGhlIHJlc2V0IHZhbHVl
LiAgSSBhc3N1bWUKdGhhdCdzIGEgbWlzdGFrZSwgYXMgUkszNTc2IFRSTSBzaG93cyAweDEuCgpU
aGFua3MsCkNyaXN0aWFuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
