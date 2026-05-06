Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DED1CD3427
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 May 2026 02:03:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SiGJemsZwplHRBonu3xBXcDIlEFMH+a/SUDUaTKZKGE=; b=K/ANPQFMmb2pN0
	oTu2s2H4pGcxJfKWgaM9bsQaipeR6us2P3WRTJm8VX5YMAdrs+9vuZXaehlbWJzZNiBZ6nDGgo4Ll
	TRnCvU+ZEKVFT3I/oXDUfOMC1NDhzYPi5iziwJ2fi7wuHKKUvSA1SpxS3fehdvi6Q7YIh/1PP1jo5
	+qqftIkwzgCa/+FinOvZ1+zYxVbGCGctPYRwTMJcKkWSHpQXC94VnD7xww79MnQVIK+LCMPLfvWxY
	SYy9EXnraLnGwjbH+PcYRcrFejHvxYM/anefiQ6hiHoripGnRXfGPdLAZpqzh0HLaSCcFWWu/OtOY
	ho2Ck+nFlsVPI6SnoB0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKRbM-00000000Tn8-0zxg;
	Wed, 06 May 2026 02:03:04 +0000
Received: from mail-m15597.qiye.163.com ([101.71.155.97])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKRbI-00000000TlN-3Rrt;
	Wed, 06 May 2026 02:03:03 +0000
Received: from [172.16.12.77] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3d3be398c;
	Wed, 6 May 2026 10:02:44 +0800 (GMT+08:00)
Message-ID: <f91f1ebe-c41e-42ae-a860-5e4c99c34784@rock-chips.com>
Date: Wed, 6 May 2026 10:02:33 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC] MAINTAINERS: Track dw-hdmi-qp under Rockchip DRM
 drivers
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com
References: <20260506-maintainers-rk-drm-upd-v1-1-f67537b4bb29@collabora.com>
Content-Language: en-US
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20260506-maintainers-rk-drm-upd-v1-1-f67537b4bb29@collabora.com>
X-HM-Tid: 0a9dfb05f30309d6kunmab154c12257ce3
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZGh1PGlZCGE1IT0NKHx
	gdT0xWFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSEpKQkxVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=hox6Sfk13RUdtTP3RnPnUTOekDVp54uGomPSD1YHgkTMK5CVz0VJC/BBVQoZGV3Vdynk+HuhiAAqhmY+s0+kCY1dBY4ffmhguQqqw84+EPEylKc9GsfraPyVHI/OggExK4sm1F8bYjqG2zgM+YfrAun2tnj4GNo0BVtf/qwAAoY=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=nruCB6ibq9+1PRX77kFEv5gkcVE1RGi6EA4xSfKhv1w=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260505_190301_561293_F7C71060 
X-CRM114-Status: GOOD (  12.99  )
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

SGVsbG8sCgpPbiA1LzYvMjYgMDY6MzEsIENyaXN0aWFuIENpb2NhbHRlYSB3cm90ZToKPiBUaGUg
RFcgSERNSSBRUCBUWCBsaWJyYXJ5IHdhcyBkZXZlbG9wZWQgZm9yIGFuZCBpcyBjdXJyZW50bHkg
b25seSB1c2VkCj4gYnkgUm9ja2NoaXAgcGxhdGZvcm1zLiAgQWRkIGl0IHRvIHRoZSBSb2NrY2hp
cCBEUk0gZHJpdmVycyBzZWN0aW9uIHRvCj4gZW5zdXJlIGFsbCByZWxldmFudCBwYXJ0aWVzIGFy
ZSBrZXB0IGluIHRoZSBsb29wIG9uIGFueSBjaGFuZ2VzLgo+IAo+IEFzIGl0cyBmaWxlIHBhdGhz
IGZhbGwgb3V0c2lkZSB0aGUgZ2VuZXJpYyB3aWxkY2FyZCBwYXR0ZXJucyBkZWZpbmVkIGluCj4g
dGhlIEFSTS9Sb2NrY2hpcCBTb0Mgc3VwcG9ydCBzZWN0aW9uLCBhbHNvIGFkZCB0aGUKPiBsaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnIG1haWxpbmcgbGlzdCB0byBhdm9pZCBhbnkK
PiBub3RpZmljYXRpb24gZ2Fwcy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDcmlzdGlhbiBDaW9jYWx0
ZWEgPGNyaXN0aWFuLmNpb2NhbHRlYUBjb2xsYWJvcmEuY29tPgo+IC0tLQo+ICAgTUFJTlRBSU5F
UlMgfCAzICsrKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYg
LS1naXQgYS9NQUlOVEFJTkVSUyBiL01BSU5UQUlORVJTCj4gaW5kZXggMGRmYWQ2N2Y2NmMwLi5j
YjNjOGU1ZmNiMjEgMTAwNjQ0Cj4gLS0tIGEvTUFJTlRBSU5FUlMKPiArKysgYi9NQUlOVEFJTkVS
Uwo+IEBAIC04NzU0LDExICs4NzU0LDE0IEBAIE06CVNhbmR5IEh1YW5nIDxoamNAcm9jay1jaGlw
cy5jb20+Cj4gICBNOglIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250ZWNoLmRlPgo+ICAgTToJQW5k
eSBZYW4gPGFuZHkueWFuQHJvY2stY2hpcHMuY29tPgo+ICAgTDoJZHJpLWRldmVsQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwo+ICtMOglsaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4g
ICBTOglNYWludGFpbmVkCj4gICBUOglnaXQgaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3Jn
L2RybS9taXNjL2tlcm5lbC5naXQKPiAgIEY6CURvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9kaXNwbGF5L3JvY2tjaGlwLwo+ICtGOglkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9w
c3lzL2R3LWhkbWktcXAuKgo+ICAgRjoJZHJpdmVycy9ncHUvZHJtL2NpL3hmYWlscy9yb2NrY2hp
cCoKPiAgIEY6CWRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC8KPiArRjoJaW5jbHVkZS9kcm0vYnJp
ZGdlL2R3X2hkbWlfcXAuaAoKCgpBY2tlZC1ieTogQW5keSBZYW4gPGFuZHkueWFuQHJvY2stY2hp
cHMuY29tPgoKPiAgIAo+ICAgRFJNIERSSVZFUlMgRk9SIFNUSQo+ICAgTToJQWxhaW4gVm9sbWF0
IDxhbGFpbi52b2xtYXRAZm9zcy5zdC5jb20+Cj4gCj4gLS0tCj4gYmFzZS1jb21taXQ6IDRjZDA3
NGFlMjBiYmNjMjkzYmJiY2U5MTYzYWJlOTlkNjhhZTZhZTAKPiBjaGFuZ2UtaWQ6IDIwMjYwNTA2
LW1haW50YWluZXJzLXJrLWRybS11cGQtYzQ2M2Y2YjA0NzY5Cj4gCj4gCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
