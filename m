Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02750CCF2C1
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Oct 2026 17:05:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qEiojpGv4wdcwNZpHYEcKJGNVGjSfQeLWhz8Ps+vM6E=; b=4pt+OMc1RqvhDY
	uJPb4mHcT3Z61miCspsmeXq/GcYJ1CYRmxinDbv7DvEixhakRwvwqGpMXBwoNhLrE3zUoXEr52Uv4
	2fRLgoxieXGJ3Wi40a4ssqOC3kplhtHvVjZPxx8N/u2GJKAh8FFGIOcX3JpBGekzfWuwbmjAVPLjF
	wluN/VW6gCbwKH6wp1L9P0x3u8s3Cp/qU1MNGJMp73cw+r8cUrkVuLr7aS+8Z2qkHsdXlbchxXkEs
	fJT5DQnYrEZGTiQnj3sMVfiEGn8EwsUoIUWdSD/Vb0eTY2YApFXJajftIc0+YK5JhXSGz7Avsbcrw
	6YW3sY13nDG81JoegIXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xI7qL-00000004ydM-1GVh;
	Sat, 17 Oct 2026 17:05:13 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xI7qI-00000004ycx-0qaE
	for linux-rockchip@lists.infradead.org;
	Sat, 17 Oct 2026 17:05:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1792256706;
	bh=CLl3dWfq9lc3v0RyeuLx1Kqa3s5RVDQXl2BLfa9bUzE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=M1ttK4m0KfOs0YLiXadTgP8ddzDAb/YWswl8W3DVMtLPIuAqeN4too3wswxwjMLAk
	 NsbkhlD6Qyvj+IKwjseYipVYbP+OXpEshT6rvwEJZX9uXHHDDpBeizaqxCdI4wm4Hb
	 GhsuSVAsGwxyvCw5/fHIQ4niAzqjoSA8lsS1Ms3aeYmjmSNdE4LosTI4BIRxxHLuP0
	 mfsOePcx8akwImU0WJXSNWkV3BB48i9gOkW2j3jDgjxMxOv2nLsujqY5B9bK3Bugw6
	 OCwGTF+N69B8nJc0d0oJU4Fx5Jb70bAaodTa2x1b8ZNBAgQbkZCu+lWnSNMDeWHnGt
	 fGzR9Q8vesrSQ==
Received: from [100.64.0.241] (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 6C05617E053E;
	Sat, 17 Oct 2026 19:05:05 +0200 (CEST)
Message-ID: <15e86037-7de9-4f6f-a5d8-9571e1983941@collabora.com>
Date: Sat, 17 Oct 2026 20:05:04 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/bridge: dw-hdmi-qp: Return -EOPNOTSUPP in HDMI audio
 functions
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com, linux-rockchip@lists.infradead.org
References: <20260519-fix-hdmi-audio-warnings-v1-1-9608966c993f@collabora.com>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <20260519-fix-hdmi-audio-warnings-v1-1-9608966c993f@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261017_100510_418555_1EC52CA2 
X-CRM114-Status: GOOD (  19.48  )
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

SGksCgpPbiA1LzE5LzI2IDk6MDAgUE0sIERldGxldiBDYXNhbm92YSB3cm90ZToKPiAtRU9QTk9U
U1VQUCBpcyBub3QgbG9nZ2VkIGFzIGFuIGVycm9yIGJ5IHRoZSBBU29DIHN1YnN5c3RlbSwgYnV0
IC1FTk9ERVYKPiBpcy4KPiBJdCBhbHNvIGJldHRlciByZXByZXNlbnRzIHRoZSBzaXR1YXRpb246
IFRoZSBvcGVyYXRpb24gaXMgY3VycmVudGx5IG5vdAo+IHN1cHBvcnRlZCAoYmVjYXVzZSBjbG9j
a3MgYXJlIG5vdCBlbmFibGVkIGFuZCB0bWRzX2NoYXJfcmF0ZSBpcwo+IHVuYXZhaWxhYmxlKSwg
YnV0IHRoZSBoYXJkd2FyZSBpcyBwcmVzZW50Lgo+IAo+IFVzaW5nIC1FT1BOT1RTVVBQIGluIHRo
ZSBhdWRpb19wcmVwYXJlIGNhbGxiYWNrIHJlbW92ZXMgcG9zc2libGUgcmVwZWF0ZWQKPiB3YXJu
aW5nIGxvZyBsaW5lcyB3aGVuIEhETUkgaXMgbm90IGNvbm5lY3RlZC4KPiAKPiBSZXR1cm5pbmcg
LUVPUE5PVFNVUFAgaW4gdGhlIGF1ZGlvX2VuYWJsZSBjYWxsYmFjayBpcyBhbHNvIG5lZWRlZCBh
cyBpdAo+IGF2b2lkcyBsb2dnaW5nIDAtdmFsdWVkIEVMRCBlcnJvcnMuCj4gCj4gV2hlbiB0bWRz
X2NoYXJfcmF0ZSBpcyBhdmFpbGFibGUsIHRoZSBjbG9ja3MgYXJlIGVuYWJsZWQgYW5kIHRoZQo+
IGZ1bmN0aW9ucyB3aWxsIGtlZXAgcmV0dXJuaW5nIDAgYXMgYmVmb3JlLgo+IAo+IFNpZ25lZC1v
ZmYtYnk6IERldGxldiBDYXNhbm92YSA8ZGV0bGV2LmNhc2Fub3ZhQGNvbGxhYm9yYS5jb20+Cj4g
LS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctaGRtaS1xcC5jIHwgOCAr
KysrKy0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygt
KQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LWhk
bWktcXAuYyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctaGRtaS1xcC5jCj4g
aW5kZXggZDY0OWExY2YwN2Y1Li4yNzBjOGM0N2Q4NTMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1oZG1pLXFwLmMKPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vYnJpZGdlL3N5bm9wc3lzL2R3LWhkbWktcXAuYwo+IEBAIC00NjksOCArNDY5LDEwIEBAIHN0
YXRpYyBpbnQgZHdfaGRtaV9xcF9hdWRpb19lbmFibGUoc3RydWN0IGRybV9icmlkZ2UgKmJyaWRn
ZSwKPiAgewo+ICAJc3RydWN0IGR3X2hkbWlfcXAgKmhkbWkgPSBkd19oZG1pX3FwX2Zyb21fYnJp
ZGdlKGJyaWRnZSk7Cj4gIAo+IC0JaWYgKGhkbWktPnRtZHNfY2hhcl9yYXRlKQo+IC0JCWR3X2hk
bWlfcXBfbW9kKGhkbWksIDAsIEFWUF9EQVRBUEFUSF9QQUNLRVRfQVVESU9fU1dESVNBQkxFLCBH
TE9CQUxfU1dESVNBQkxFKTsKPiArCWlmICghaGRtaS0+dG1kc19jaGFyX3JhdGUpCj4gKwkJcmV0
dXJuIC1FT1BOT1RTVVBQOwo+ICsKPiArCWR3X2hkbWlfcXBfbW9kKGhkbWksIDAsIEFWUF9EQVRB
UEFUSF9QQUNLRVRfQVVESU9fU1dESVNBQkxFLCBHTE9CQUxfU1dESVNBQkxFKTsKPiAgCj4gIAly
ZXR1cm4gMDsKPiAgfQo+IEBAIC00ODQsNyArNDg2LDcgQEAgc3RhdGljIGludCBkd19oZG1pX3Fw
X2F1ZGlvX3ByZXBhcmUoc3RydWN0IGRybV9icmlkZ2UgKmJyaWRnZSwKPiAgCWJvb2wgcmVmMnN0
cmVhbSA9IGZhbHNlOwo+ICAKPiAgCWlmICghaGRtaS0+dG1kc19jaGFyX3JhdGUpCj4gLQkJcmV0
dXJuIC1FTk9ERVY7Cj4gKwkJcmV0dXJuIC1FT1BOT1RTVVBQOwo+ICAKPiAgCWlmIChmbXQtPmJp
dF9jbGtfcHJvdmlkZXIgfCBmbXQtPmZyYW1lX2Nsa19wcm92aWRlcikgewo+ICAJCWRldl9lcnIo
aGRtaS0+ZGV2LCAidW5zdXBwb3J0ZWQgY2xvY2sgc2V0dGluZ3NcbiIpOwo+IApUaGlzIExHVE0s
IGhlbmNlOgoKUmV2aWV3ZWQtYnk6IENyaXN0aWFuIENpb2NhbHRlYSA8Y3Jpc3RpYW4uY2lvY2Fs
dGVhQGNvbGxhYm9yYS5jb20+CgpTYWRseSwgdGhlIHBhdGNoIHdhcyBzdWJtaXR0ZWQgYmVmb3Jl
IE1BSU5UQUlORVJTIHdhcyB1cGRhdGVkIHRvIHRyYWNrCmR3LWhkbWktcXAgdW5kZXIgUm9ja2No
aXAgRFJNLCBzbyBpdCBtaXNzZWQgc29tZSBlbWFpbCByZWNpcGllbnRzLi4KCisgSGVpa28gU3TD
vGJuZXIgPGhlaWtvQHNudGVjaC5kZT4KKyBsaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCgpUaGFua3MgdG8gU2ViYXN0aWFuIGZvciBub3RpY2luZyB0aGlzIGZlbGwgdGhyb3VnaCB0
aGUgY3JhY2tzLgpJdCBzdGlsbCBhcHBsaWVzIGNsZWFubHkgb24gdG9wIG9mIGxhdGVzdCBkcm0t
bWlzYy1uZXh0LgoKSGVpa28sIGNhbiB3ZSBnZXQgaXQgbWVyZ2VkLCBwbGVhc2U/CgpSZWdhcmRz
LApDcmlzdGlhbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
