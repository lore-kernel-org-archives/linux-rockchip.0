Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1709C52D7C
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Aug 2024 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IE2z9gO4ITLoNSvUYcaPrTIohLcH3ryPM5ZF12BFol4=; b=JqfjmHb/TXRk4t
	XRfVTugdZ0vLHTD7Myh/SC58rucB/ixAFc/zWzcJyaqOCQqE62EdidfwXtk8c8HmXVrwlfRqMMNCe
	cT+GX6Nruhx8aPtIn5eEnRWir2TJBQVFbGJjMnXzRR++yZuOvt1f8R0wgAicyI5JrDs2hBhy/P7s6
	6BVrrkzpibtbcko5BgEqpq6CICKDn5hlwzqEMzlnJQEMDhsVA5ZeQqlOMBDzJ+8W7r9p2t0XCv+NC
	yN0gA1zDQ5SGZBFMed/e3o/0gCoOnL+AnAJYWgKkK6z7ReS59gdPaVV/zylB53ZYUY06G6GzcyCyi
	1rqtaUmMVjS1e6DYgOLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgt3U-0000000AR0C-1yrg;
	Wed, 21 Aug 2024 21:39:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgt2l-0000000AQqk-1qgQ;
	Wed, 21 Aug 2024 21:39:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	Message-ID:References:In-Reply-To:Subject:CC:To:From:Date:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=MSF43bIu1gEw1AF3I55gly83QapAUrJr9/SaStsKq/4=; b=S3++nMM5yRgsyDIHX/FfyQrtY+
	LWD2rS/byAt7A+HSffH4ittnDi2ljMrbZPBscHrcPF77Z+YGyoWSWrfWCwzKRfimOOfrcLdj64xHs
	jOEagMKvI7PUjQHsgejDWUgqrLx7rWtYS+MXW+6iW+EPp1C6HsfKTzjSmDzqOsKvvGLcu7QVjv7Nu
	0gxb5/+aC7CpTyFyjmNe7YT5t+mNbVoVBg4hnGpv0owtvkiJR99tm9/f8ggvVEjF5nInmoMuaf4DB
	HUsCAHpumBTV2Yl+Po0DSvp/XXUh/TMn4fJvXPt1p396/VX2nPrMRtGwJS7XYnhe4zlFBZeQ2a3ek
	FMV3YUJA==;
Received: from i53875aca.versanet.de ([83.135.90.202] helo=[127.0.0.1])
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sgt26-0000W5-MN; Wed, 21 Aug 2024 23:38:22 +0200
Date: Wed, 21 Aug 2024 23:38:24 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Conor Dooley <conor@kernel.org>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
CC: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@collabora.com, Alexandre ARNOUD <aarnoud@me.com>,
 Luis de Arquer <ldearquer@gmail.com>
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_v4_3/4=5D_dt-bindings=3A_display=3A_rock?=
 =?US-ASCII?Q?chip=3A_Add_schema_for_RK3588_HDMI_TX_Controller?=
User-Agent: K-9 Mail for Android
In-Reply-To: <20240821-stretch-scam-09d7adc08a4c@spud>
References: <20240819-b4-rk3588-bridge-upstream-v4-0-6417c72a2749@collabora.com> <20240819-b4-rk3588-bridge-upstream-v4-3-6417c72a2749@collabora.com> <20240819-bobbing-purplish-99e48baa2304@spud> <ec84bc0b-c4c2-4735-9f34-52bc3a852aaf@collabora.com> <20240820-tropics-hunchback-6fdcd0b37f91@spud> <038073d0-d4b9-4938-9a51-ea2aeb4530f6@collabora.com> <20240821-evoke-mop-fb09ceef3597@spud> <5813cea2-4890-4fa9-8826-19be5bf3e161@collabora.com> <20240821-stretch-scam-09d7adc08a4c@spud>
Message-ID: <7E8109D4-A353-4FE3-9152-3C3C6CB7D634@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240821_143903_486567_950ED6F0 
X-CRM114-Status: GOOD (  21.27  )
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

CgpBbSAyMS4gQXVndXN0IDIwMjQgMjM6Mjg6NTUgTUVTWiBzY2hyaWViIENvbm9yIERvb2xleSA8
Y29ub3JAa2VybmVsLm9yZz46Cj5DcmlzdGlhbiwgSGVpa28sCj4KPk9uIFdlZCwgQXVnIDIxLCAy
MDI0IGF0IDExOjM4OjAxUE0gKzAzMDAsIENyaXN0aWFuIENpb2NhbHRlYSB3cm90ZToKPj4gT24g
OC8yMS8yNCA2OjA3IFBNLCBDb25vciBEb29sZXkgd3JvdGU6Cj4+ID4gT24gVHVlLCBBdWcgMjAs
IDIwMjQgYXQgMTE6MTI6NDVQTSArMDMwMCwgQ3Jpc3RpYW4gQ2lvY2FsdGVhIHdyb3RlOgo+PiA+
PiBPbiA4LzIwLzI0IDc6MTQgUE0sIENvbm9yIERvb2xleSB3cm90ZToKPj4gPj4+IE9uIFR1ZSwg
QXVnIDIwLCAyMDI0IGF0IDAzOjM3OjQ0UE0gKzAzMDAsIENyaXN0aWFuIENpb2NhbHRlYSB3cm90
ZToKPj4gPj4+PiBPbiA4LzE5LzI0IDc6NTMgUE0sIENvbm9yIERvb2xleSB3cm90ZToKPj4gPj4+
Pj4gT24gTW9uLCBBdWcgMTksIDIwMjQgYXQgMDE6Mjk6MzBBTSArMDMwMCwgQ3Jpc3RpYW4gQ2lv
Y2FsdGVhIHdyb3RlOgo+PiA+Pj4+Pj4gKyAgcm9ja2NoaXAsZ3JmOgo+PiA+Pj4+Pj4gKyAgICAk
cmVmOiAvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy9waGFuZGxlCj4+ID4+Pj4+PiAr
ICAgIGRlc2NyaXB0aW9uOgo+PiA+Pj4+Pj4gKyAgICAgIE1vc3QgSERNSSBRUCByZWxhdGVkIGRh
dGEgaXMgYWNjZXNzZWQgdGhyb3VnaCBTWVMgR1JGIHJlZ3MuCj4+ID4+Pj4+PiArCj4+ID4+Pj4+
PiArICByb2NrY2hpcCx2bzEtZ3JmOgo+PiA+Pj4+Pj4gKyAgICAkcmVmOiAvc2NoZW1hcy90eXBl
cy55YW1sIy9kZWZpbml0aW9ucy9waGFuZGxlCj4+ID4+Pj4+PiArICAgIGRlc2NyaXB0aW9uOgo+
PiA+Pj4+Pj4gKyAgICAgIEFkZGl0aW9uYWwgSERNSSBRUCByZWxhdGVkIGRhdGEgaXMgYWNjZXNz
ZWQgdGhyb3VnaCBWTzEgR1JGIHJlZ3MuCj4+ID4+Pj4+Cj4+ID4+Pj4+IFdoeSBhcmUgdGhlc2Ug
cmVxdWlyZWQ/IFdoYXQgcHJldmVudHMgeW91IGxvb2tpbmcgdXAgdGhlIHN5c2NvbnMgYnkKPj4g
Pj4+Pj4gY29tcGF0aWJsZT8KPj4gPj4+Pgo+PiA+Pj4+IFRoYXQgaXMgZm9yIGdldHRpbmcgdGhl
IHByb3BlciBpbnN0YW5jZToKPj4gPj4+Cj4+ID4+PiBBaCwgdGhhdCBtYWtlcyBzZW5zZS4gSSBh
bSwgaG93ZXZlciwgY3VyaW91cyB3aHkgdGhlc2UgaGF2ZSB0aGUgc2FtZQo+PiA+Pj4gY29tcGF0
aWJsZSB3aGVuIHRoZXkgaGF2ZSBkaWZmZXJlbnQgc2l6ZWQgcmVnaW9ucyBhbGxvY2F0ZWQgdG8g
dGhlbS4KPj4gPj4KPj4gPj4gR29vZCBxdWVzdGlvbiwgZGlkbid0IG5vdGljZS4gIEkndmUganVz
dCBjaGVja2VkIHRoZSBUUk0gYW5kLCBpbiBib3RoCj4+ID4+IGNhc2VzLCB0aGUgbWF4aW11bSBy
ZWdpc3RlciBvZmZzZXQgaXMgd2l0aGluIHRoZSAweDEwMCByYW5nZS4gIFByZXN1bWFibHkKPj4g
Pj4gdGhpcyBpcyBub3RoaW5nIGJ1dCBhbiBpbmNvbnNpc3RlbmN5LCBhcyB0aGUgc3lzY29ucyBo
YXZlIGJlZW4gYWRkZWQgaW4KPj4gPj4gc2VwYXJhdGUgY29tbWl0cy4KPj4gPiAKPj4gPiBJcyB0
aGF0IFRSTSBwdWJsaWNseSBhdmFpbGFibGU/IEkgZG8gZmluZCBpdCBjdXJpb3VzIHRoYXQgZGV2
aWNlcyBzb3VuZAo+PiA+IGxpa2UgdGhleSBoYXZlIGRpZmZlcmVudCBjb250ZW50cyBoYXZlIHRo
ZSBzYW1lIGNvbXBhdGlibGUuIEluIG15IHZpZXcsCj4+ID4gdGhhdCBpcyBpbmNvcnJlY3QgYW5k
IHRoZXkgc2hvdWxkIGhhdmUgdW5pcXVlIGNvbXBhdGlibGVzIGlmIHRoZQo+PiA+IGNvbnRlbnRz
IChhbmQgdGhlcmVmb3JlIHRoZSBwcm9ncmFtbWluZyBtb2RlbCkgZGlmZmVycy4KPj4gCj4+IERv
bid0IGtub3cgaWYgdGhlcmUncyBhbiBvZmZpY2lhbCBsb2NhdGlvbiB0byBnZXQgaXQgZnJvbSwg
YnV0IGEgcXVpY2sKPj4gc2VhcmNoIG9uIGludGVybmV0IHNob3dzIGEgZmV3IHJlcG9zIHByb3Zp
ZGluZyB0aGVtLCBlLmcuIFsxXS4KPj4gCj4+IENvbXBhcmluZyAiNi4xNCBWTzBfR1JGIFJlZ2lz
dGVyIERlc2NyaXB0aW9uIiBhdCBwZy4gNzc3IHdpdGggIjYuMTUgVk8xX0dSRgo+PiBSZWdpc3Rl
ciBEZXNjcmlwdGlvbiIgYXQgcGcuIDc4NiAoZnJvbSBQYXJ0MSkgcmV2ZWFscyB0aGUgbGF5b3V0
IGlzIG1vc3RseQo+PiBzaW1pbGFyLCB3aXRoIGEgZmV3IHZhcmlhdGlvbnMgdGhvdWdoLgo+Cj5Q
YWdlIHJlZmVyZW5jZXMgYW5kIGV2ZXJ5dGhpbmcsIHRoYW5rIHlvdSB2ZXJ5IG11Y2guIEkgZG9u
J3QgdGhpbmsgdGhvc2UKPnR3byBHUkZzIHNob3VsZCBoYXZlIHRoZSBzYW1lIGNvbXBhdGlibGVz
LCB0aGV5J3JlLCBhcyB5b3Ugc2F5LCBzaW1pbGFyCj5idXQgbm90IGlkZW50aWNhbC4gU2VlbXMg
bGlrZSBhIGJ1ZyB0byBtZSEKPgo+SGVpa28sIHdoYXQgZG8geW91IHRoaW5rPwoKWWVzLCB3aGls
ZSB0aGUgcmVnaXN0ZXIgbmFtZXMgc291bmQgc2ltaWxhciwgbG9va2luZyBhdCB0aGUgYml0IGRl
ZmluaXRpb25zIHRoaXMgZXZlbmluZyByZXZlYWxlZCB0aGF0IHRoZXkgaGFuZGxlIHZhc3RseSBk
aWZmZXJlbnQgc2V0dGluZ3MuCgpTbyBJIGd1ZXNzIHdlIHNob3VsZCBmaXggdGhlIGNvbXBhdGli
bGVzLiBUaGV5IGFyZSBhbGwgYWJvdXQgZ3JhcGhpY3Mgc3R1ZmYgYW5kIEhETUkgYWN0dWFsbHkg
aXMgdGhlIGZpcnN0IG91dHB1dCwgc28gcmlnaHQgbm93IFdFIGNhbiBhdCBsZWFzdCBzdGlsbCBj
bGFpbSB0aGUgbm8tdXNlcnMgam9rZXIgOy0pCgoKSGVpa28KCj4KPj4gWzFdIGh0dHBzOi8vZ2l0
aHViLmNvbS9GYW5YLVRlay9yazM1ODgtVFJNLWFuZC1EYXRhc2hlZXQKPj4gCj4+ID4+Cj4+ID4+
Pj4gCXZvMF9ncmY6IHN5c2NvbkBmZDVhNjAwMCB7Cj4+ID4+Pj4gCQljb21wYXRpYmxlID0gInJv
Y2tjaGlwLHJrMzU4OC12by1ncmYiLCAic3lzY29uIjsKPj4gPj4+PiAJCXJlZyA9IDwweDAgMHhm
ZDVhNjAwMCAweDAgMHgyMDAwPjsKPj4gPj4+PiAJCWNsb2NrcyA9IDwmY3J1IFBDTEtfVk8wR1JG
PjsKPj4gPj4+PiAJfTsKPj4gPj4+Pgo+PiA+Pj4+IAl2bzFfZ3JmOiBzeXNjb25AZmQ1YTgwMDAg
ewo+PiA+Pj4+IAkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1ODgtdm8tZ3JmIiwgInN5c2Nv
biI7Cj4+ID4+Pj4gCQlyZWcgPSA8MHgwIDB4ZmQ1YTgwMDAgMHgwIDB4MTAwPjsKPj4gPj4+PiAJ
CWNsb2NrcyA9IDwmY3J1IFBDTEtfVk8xR1JGPjsKPj4gPj4+PiAJfTsKPj4gPgoKLS0gCkRpZXNl
IE5hY2hyaWNodCB3dXJkZSB2b24gbWVpbmVtIEFuZHJvaWQtR2Vyw6R0IG1pdCBLLTkgTWFpbCBn
ZXNlbmRldC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
