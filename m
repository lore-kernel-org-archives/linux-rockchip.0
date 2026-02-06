Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 135CAEE20A4
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Feb 2026 14:04:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dUuSP8/EVQk53xvlXv/9JPAfSKaFXn9YOL/hR9pijMY=; b=PTgNsC/HABa9sw
	tPCCEDgyawRVhIbd9xvoj5wjoXmasVhDUan5uuWqldElOV51jD+5VuLDn/Rh0DX4Gd5bmw+cLX+P9
	m09EJxEEoNpq8s1iS1dlScw7pikYyCi1+DomNbKhPdyLOANP+id+HZ6HxBr1UfVz0o6uLoHwNXTm8
	+EpoUxS8BdGVNrdMK9YPSuUmSbtmfZSmKcTWVu3nHhBMWQ79/ZmExFwOjekrtHwIvznrswNFatcP5
	tDJbhOa5qBkAnI2UYk7hdcm2WC8B2SUKpStPv7FbXE3gveM/GSyunbJQmLpJVd+oJClE/DbNd42Hv
	t0118uQ/wbJ8e0G6cNgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voMRu-0000000BPHf-0zV1;
	Fri, 06 Feb 2026 14:04:42 +0000
Received: from smtpout-04.galae.net ([185.171.202.116])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voMRn-0000000BPGS-3bx6;
	Fri, 06 Feb 2026 14:04:38 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id BEC9DC243B8;
	Fri,  6 Feb 2026 14:04:36 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 2F7B160729;
	Fri,  6 Feb 2026 14:04:30 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 50438119D1929;
	Fri,  6 Feb 2026 15:04:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1770386669; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=d70krws98qMbryfn/12Zb3xwhE2iiVZ6JA0PmydolRU=;
	b=qPCZ4GhbgSvh7oc+x3hfb/WxEKcrK6O2VtHn9ZUnKHIWbmuwpDPS+JVzXwRZvJjY52JV/q
	jRFNs9CU0xQoxAmTuVScqUmJr3RhJksmzPmC2iDxOIGOKozVtX3K0+pFhuAw87JTmlzOzO
	Mx7asUoldGGsbCO1CxidWKqAh6wVT4SkqjyaR14D4D/lxH/+TnRz846TduWs57dgblA7K2
	qq8aj5PKT39GkueFiEWEvJOcmHo1rod8gM8pqXd1pJ+UJU/zVu6F/+Oy2EP5MnYL2KIUVh
	AJXEPBPb7T4XHikvoDSeE/Goj7h2+A7djgwt/yvu7WKYngnH526TrWO6uKX5cQ==
Message-ID: <e6dd0f45-1d64-48b8-bc76-43cc29fabec2@bootlin.com>
Date: Fri, 6 Feb 2026 15:04:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 3/4] drm/vkms: Support setting custom background color
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>,
 Haneen Mohammed <hamohammed.sa@gmail.com>,
 Melissa Wen <melissa.srw@gmail.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Robert Mader <robert.mader@collabora.com>, kernel@collabora.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= <nfraprado@collabora.com>,
 Diederik de Haas <diederik@cknow-tech.com>
References: <20260204-rk3588-bgcolor-v7-0-78d1d01c5ca1@collabora.com>
 <20260204-rk3588-bgcolor-v7-3-78d1d01c5ca1@collabora.com>
From: Louis Chauvet <louis.chauvet@bootlin.com>
Content-Language: en-US
In-Reply-To: <20260204-rk3588-bgcolor-v7-3-78d1d01c5ca1@collabora.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260206_060436_043718_83BB57D3 
X-CRM114-Status: GOOD (  17.03  )
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

CgpPbiAyLzQvMjYgMjE6MDIsIENyaXN0aWFuIENpb2NhbHRlYSB3cm90ZToKPiBNYWtlIHVzZSBv
ZiB0aGUgQkFDS0dST1VORF9DT0xPUiBDUlRDIHByb3BlcnR5IHdoZW4gZmlsbGluZyB0aGUKPiBi
YWNrZ3JvdW5kIGR1cmluZyBibGVuZGluZy4gIEl0IGFscmVhZHkgZGVmYXVsdHMgdG8gc29saWQg
YmxhY2suCj4gCj4gU2luY2UgdGhlIGludGVybmFsIHJlcHJlc2VudGF0aW9uIG9mIHRoZSBwaXhl
bCBjb2xvciBpbiBWS01TIHJlbGllcyBvbgo+IDE2IGJpdHMgb2YgcHJlY2lzaW9uLCB1c2UgdGhl
IG5ld2x5IGludHJvZHVjZWQgRFJNX0FSR0I2NF9HRVR7UnxHfEJ9KCkKPiBoZWxwZXJzIHRvIGFj
Y2VzcyB0aGUgaW5kaXZpZHVhbCBjb21wb25lbnRzIG9mIHRoZSBiYWNrZ3JvdW5kIGNvbG9yCj4g
cHJvcGVydHksIHdoaWNoIGlzIGNvbXBsaWFudCB3aXRoIERSTV9GT1JNQVRfQVJHQjE2MTYxNjE2
Lgo+IAo+IEl0J3Mgd29ydGggbm90aW5nIHRoZSBhbHBoYSBjb21wb25lbnQgaXMgaWdub3JlZCwg
aGVuY2Ugbm9uLW9wYXF1ZQo+IGJhY2tncm91bmQgY29sb3JzIGFyZSBub3Qgc3VwcG9ydGVkLgo+
IAo+IFJldmlld2VkLWJ5OiBOw61jb2xhcyBGLiBSLiBBLiBQcmFkbyA8bmZyYXByYWRvQGNvbGxh
Ym9yYS5jb20+CgpSZXZpZXdlZC1ieTogTG91aXMgQ2hhdXZldCA8bG91aXMuY2hhdXZldEBib290
bGluLmNvbT4KCj4gVGVzdGVkLWJ5OiBEaWVkZXJpayBkZSBIYWFzIDxkaWVkZXJpa0Bja25vdy10
ZWNoLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBDcmlzdGlhbiBDaW9jYWx0ZWEgPGNyaXN0aWFuLmNp
b2NhbHRlYUBjb2xsYWJvcmEuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL3ZrbXMvdmtt
c19jb21wb3Nlci5jIHwgMTAgKysrKysrKystLQo+ICAgZHJpdmVycy9ncHUvZHJtL3ZrbXMvdmtt
c19jcnRjLmMgICAgIHwgIDMgKysrCj4gICAyIGZpbGVzIGNoYW5nZWQsIDExIGluc2VydGlvbnMo
KyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS92a21z
L3ZrbXNfY29tcG9zZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS92a21zL3ZrbXNfY29tcG9zZXIuYwo+
IGluZGV4IGNkODVkZTRmZmQwMy4uODNkMjE3MDg1YWQwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS92a21zL3ZrbXNfY29tcG9zZXIuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS92a21z
L3ZrbXNfY29tcG9zZXIuYwo+IEBAIC00NzUsOCArNDc1LDE0IEBAIHN0YXRpYyB2b2lkIGJsZW5k
KHN0cnVjdCB2a21zX3dyaXRlYmFja19qb2IgKndiLAo+ICAgewo+ICAgCXN0cnVjdCB2a21zX3Bs
YW5lX3N0YXRlICoqcGxhbmUgPSBjcnRjX3N0YXRlLT5hY3RpdmVfcGxhbmVzOwo+ICAgCXUzMiBu
X2FjdGl2ZV9wbGFuZXMgPSBjcnRjX3N0YXRlLT5udW1fYWN0aXZlX3BsYW5lczsKPiAtCj4gLQlj
b25zdCBzdHJ1Y3QgcGl4ZWxfYXJnYl91MTYgYmFja2dyb3VuZF9jb2xvciA9IHsgLmEgPSAweGZm
ZmYgfTsKPiArCXU2NCBiZ2NvbG9yID0gY3J0Y19zdGF0ZS0+YmFzZS5iYWNrZ3JvdW5kX2NvbG9y
Owo+ICsKPiArCWNvbnN0IHN0cnVjdCBwaXhlbF9hcmdiX3UxNiBiYWNrZ3JvdW5kX2NvbG9yID0g
ewo+ICsJCS5hID0gMHhmZmZmLAo+ICsJCS5yID0gRFJNX0FSR0I2NF9HRVRSKGJnY29sb3IpLAo+
ICsJCS5nID0gRFJNX0FSR0I2NF9HRVRHKGJnY29sb3IpLAo+ICsJCS5iID0gRFJNX0FSR0I2NF9H
RVRCKGJnY29sb3IpLAo+ICsJfTsKPiAgIAo+ICAgCWludCBjcnRjX3lfbGltaXQgPSBjcnRjX3N0
YXRlLT5iYXNlLm1vZGUudmRpc3BsYXk7Cj4gICAJaW50IGNydGNfeF9saW1pdCA9IGNydGNfc3Rh
dGUtPmJhc2UubW9kZS5oZGlzcGxheTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3Zr
bXMvdmttc19jcnRjLmMgYi9kcml2ZXJzL2dwdS9kcm0vdmttcy92a21zX2NydGMuYwo+IGluZGV4
IDlhN2RiMWQ1MTAyMi4uMjUxNGMzNjdmNzEwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS92a21zL3ZrbXNfY3J0Yy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3ZrbXMvdmttc19jcnRj
LmMKPiBAQCAtNCw2ICs0LDcgQEAKPiAgIAo+ICAgI2luY2x1ZGUgPGRybS9kcm1fYXRvbWljLmg+
Cj4gICAjaW5jbHVkZSA8ZHJtL2RybV9hdG9taWNfaGVscGVyLmg+Cj4gKyNpbmNsdWRlIDxkcm0v
ZHJtX2JsZW5kLmg+Cj4gICAjaW5jbHVkZSA8ZHJtL2RybV9tYW5hZ2VkLmg+Cj4gICAjaW5jbHVk
ZSA8ZHJtL2RybV9wcmludC5oPgo+ICAgI2luY2x1ZGUgPGRybS9kcm1fcHJvYmVfaGVscGVyLmg+
Cj4gQEAgLTIyOCw2ICsyMjksOCBAQCBzdHJ1Y3Qgdmttc19vdXRwdXQgKnZrbXNfY3J0Y19pbml0
KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHN0cnVjdCBkcm1fcGxhbmUgKnByaQo+ICAgCj4gICAJ
ZHJtX2NydGNfZW5hYmxlX2NvbG9yX21nbXQoY3J0YywgMCwgZmFsc2UsIFZLTVNfTFVUX1NJWkUp
Owo+ICAgCj4gKwlkcm1fY3J0Y19hdHRhY2hfYmFja2dyb3VuZF9jb2xvcl9wcm9wZXJ0eShjcnRj
KTsKPiArCj4gICAJc3Bpbl9sb2NrX2luaXQoJnZrbXNfb3V0LT5sb2NrKTsKPiAgIAlzcGluX2xv
Y2tfaW5pdCgmdmttc19vdXQtPmNvbXBvc2VyX2xvY2spOwo+ICAgCj4gCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
