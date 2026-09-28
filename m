Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2B9EC9832F
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Sep 2026 08:10:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AVbqpzu56fKMR5BlrTqgdM4auPaQZ4fW3wpzLygsqhY=; b=GQaPa0RKnV9pWR
	Cb2wF8AnK5oA+bKWlpa6uRd4J+2PdVUVHh6c+KL/kOV96wiuQxq3hsmoKB4Qq/dHsLLKhlCMdoXrF
	/X+OvSnVkDuu5uEsAFAZZdnclrQD58loCvobOYidoOp57bvoQZ50OZxuAYGurVdqXgT05JdeAX3T6
	RNnCMC8uls2xJkJTP/YNfZusxqFw7a9O477Nt5nbD6DYzgnLktHbuTBf+qsmw/mkFp9Roc+UOvJwi
	lYXFkE1XL9fGaK/+NgLvTP/NA2wcWdxTbKxSQG4viMcEDyBPMNPXvV6azxheKZGwoST3OBRR5d9PK
	G7SLjBlHaV6sm58qjYxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xB6Rp-0000000027t-1jmm;
	Mon, 28 Sep 2026 08:10:53 +0000
Received: from mout-p-102.mailbox.org ([2001:67c:2050:0:465::102])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xB6Rn-0000000026i-1xUh;
	Mon, 28 Sep 2026 08:10:52 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [10.196.197.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4htYsH35qGzKqK2;
	Mon, 28 Sep 2026 10:10:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1790583043;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=aIY8SPKWTyDpONssmi/1MXmgnQQyjM5Q9JRAxu1BCzY=;
	b=LyP7Xio0SjFMctEiuiF6nXS35fp9M345lu2ob3Fmzp5i2UTTEdVHeBDNzvvELjoiwG3nnr
	VB3Jeh7BG/61T6Vf/RG5OkXid41+i9+lsPkMq8kMNxXtAkbh+9wU4vyD1/45pHm3TBgeth
	Fe0BxsGq7Nw0xtLi7kon6UKK+wgBTgA/1S2wo4QLNW6mnlkw3kqxB5EW91JTB797cIMF8j
	Hbl4HdaY2ybLC2Q69gikRqAA7+HlIM+5kKj5zdsmO9Sbk9mP4QizOYDa895AeuydNGQT3V
	ydnfCKiGnN4P0FaJ51ea6tUXGO9W+w62Qc6QFZGZR/mNHWb4IC/Svk5TSWrkag==
Message-ID: <3cf7143d-7013-4a3b-a831-96c3f125c2f6@mailbox.org>
Date: Mon, 28 Sep 2026 10:10:33 +0200
MIME-Version: 1.0
Subject: Re: [PATCH RFC 13/25] drm: Add VRR target frame rate properties
To: Leo Li <sunpeng.li@amd.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 Daniel Stone <daniels@collabora.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Helge Deller <deller@gmx.de>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-fbdev@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, kernel@collabora.com,
 Derek Foreman <derek.foreman@collabora.com>,
 wayland-devel@lists.freedesktop.org
References: <20260921-vrr-limiter-uapi-v1-0-2fcd7d011646@collabora.com>
 <20260921-vrr-limiter-uapi-v1-13-2fcd7d011646@collabora.com>
 <0226527e-ee38-40ab-a2a8-1ae62013b950@amd.com>
 <VERVf-aJRRKsBOI_3dpScg@collabora.com>
 <8a3b2902-3255-4dd9-82f0-75a7747b710e@amd.com>
Content-Language: en-CA
From: =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel.daenzer@mailbox.org>
In-Reply-To: <8a3b2902-3255-4dd9-82f0-75a7747b710e@amd.com>
X-MBO-RS-META: tcbp3n76m8henjpos5gobg5u9xk9b6pk
X-MBO-RS-ID: 863b51de2cc2ecb5cfe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_011051_649871_D35CDB54 
X-CRM114-Status: GOOD (  21.33  )
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

T24gOS8yNS8yNiAyMDo0MiwgTGVvIExpIHdyb3RlOgo+IE9uIDIwMjYtMDktMjIgMTE6MjYsIE5p
Y29sYXMgRnJhdHRhcm9saSB3cm90ZToKPj4+PiArICogVlJSIExpbWl0ZXIvVGFyZ2V0IFByb3Bl
cnRpZXMKPj4+PiArICogfn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KPj4+PiArICoKPj4+
PiArICogVGhlIGBgVlJSX3tNSU4sTUFYfV97TlVNRVJBVE9SLERFTk9NSU5BVE9SfWBgIHByb3Bl
cnRpZXMgZXhwb3NlIGEgbWVjaGFuaXNtCj4+Pj4gKyAqIHRocm91Z2ggd2hpY2ggdXNlcnNwYWNl
IGNhbiBjb250cm9sIHRoZSBkZXNpcmVkIHJhbmdlIG9mIHJlZnJlc2ggcmF0ZXMgaW4KPj4+PiAr
ICogd2hpY2ggVlJSIGlzIGFsbG93ZWQgdG8gb3BlcmF0ZS4gRWFjaCByYXRlIGlzIGV4cHJlc3Nl
ZCBhcyBhCj4+Pj4gKyAqIG51bWVyYXRvci9kZW5vbWluYXRvciBmcmFjdGlvbiBvZiByZWZyZXNo
IHJhdGVzIGluIEh6LCBhbGxvd2luZyBmb3IgcmF0aW9uYWwKPj4+PiArICogdGFyZ2V0IHJhdGVz
IGxpa2UgMjQvMS4wMDEgSHogd2l0aCBubyBsb3NzIG9mIHByZWNpc2lvbiBvciBhbWJpZ3VpdHku
Cj4+Pj4gKyAqCj4+Pj4gKyAqIElmIHRoZSBtaW5pbXVtIGFuZCBtYXhpbXVtIHJhdGUgYXJlIHNl
dCB0byB0aGUgc2FtZSB2YWx1ZSAoYW5kIG5vdCAwKSwgdGhleQo+Pj4+ICsgKiBhcmUgdW5kZXJz
dG9vZCBhcyBhIGZpeGVkIHRhcmdldCByYXRlLiBUaGlzIGlzIGVzcGVjaWFsbHkgdXNlZnVsIGZv
ciBtZWRpYQo+Pj4+ICsgKiBwbGF5YmFjaywgd2hlcmUgdGhlIGNvbnRlbnQncyBmcmFtZSByYXRl
IGlzIGJvdGggY29uc3RhbnQgYW5kIGtub3duIGluCj4+Pj4gKyAqIGFkdmFuY2UuIEluIHN1Y2gg
Y2FzZXMsIGEgcmVmcmVzaCByYXRlIHRoYXQgaXMgbm90IGFuIGludGVnZXIgbXVsdGlwbGUgb2Yg
dGhlCj4+Pj4gKyAqIGNvbnRlbnQncyBmcmFtZSByYXRlIHdpbGwgaW50cm9kdWNlIGp1ZGRlciwg
c2luY2Ugbm90IGV2ZXJ5IGZyYW1lIGlzCj4+Pj4gKyAqIGRpc3BsYXllZCBmb3IgdGhlIHNhbWUg
YW1vdW50IG9mIHRpbWUuIEEgbW9kZXNldCBvZiB0aGUgZGlzcGxheSB3aXRoIGEKPj4+PiArICog
Y29tcGF0aWJsZSByYXRlIG1heSBpbiB0aG9zZSBjYXNlcyBiZSBlaXRoZXIgdW5kZXNpcmFibGUg
b3IgaW1wb3NzaWJsZSwgYnV0Cj4+Pj4gKyAqIHRoZSByYXRlIGNhbiBzdGlsbCBlZmZlY3RpdmVs
eSBiZSByZWFjaGVkIHRocm91Z2ggVlJSLgo+Pj4+ICsgKgo+Pj4+ICsgKiAuLiBfVlJSLU1JTi1O
VU1FUkFUT1I6Cj4+Pj4gKyAqCj4+Pj4gKyAqICJWUlJfTUlOX05VTUVSQVRPUiI6Cj4+Pj4gKyAq
CURlZmF1bHQgJmRybV9jcnRjIGludGVnZXIgcHJvcGVydHkgZm9ybWluZyB0aGUgbnVtZXJhdG9y
IG9mIGEKPj4+PiArICoJbnVtZXJhdG9yL2Rlbm9taW5hdG9yIHBhaXIgb2YgYSBmcmFtZSByYXRl
IHRvIHNldCBhcyB0aGUgbWluaW11bSBWUlIKPj4+PiArICoJdGFyZ2V0IHJhdGUuIFNldCB0byAw
IHRvIGRpc2FibGUuCj4+Pj4gKyAqCj4+Pj4gKyAqICJWUlJfTUlOX0RFTk9NSU5BVE9SIjoKPj4+
PiArICoJRGVmYXVsdCAmZHJtX2NydGMgaW50ZWdlciBwcm9wZXJ0eSBmb3JtaW5nIHRoZSBkZW5v
bWluYXRvciBvZiBhCj4+Pj4gKyAqCW51bWVyYXRvci9kZW5vbWluYXRvciBwYWlyIG9mIGEgZnJh
bWUgcmF0ZSB0byBzZXQgYXMgdGhlIG1pbmltdW0gVlJSCj4+Pj4gKyAqCXRhcmdldCByYXRlLiBJ
ZiA6cmVmOmBWUlJfTUlOX05VTUVSQVRPUiA8VlJSLU1JTi1OVU1FUkFUT1I+YCBpcyBub3QKPj4+
PiArICoJemVybywgaXQgbXVzdCBiZSBub24temVyby4KPj4+PiArICoJT3RoZXJ3aXNlLCBtdXN0
IGFsc28gYmUgemVyby4KPj4+PiArICoKPj4+PiArICogLi4gX1ZSUi1NQVgtTlVNRVJBVE9SOgo+
Pj4+ICsgKgo+Pj4+ICsgKiAiVlJSX01BWF9OVU1FUkFUT1IiOgo+Pj4+ICsgKglEZWZhdWx0ICZk
cm1fY3J0YyBpbnRlZ2VyIHByb3BlcnR5IGZvcm1pbmcgdGhlIG51bWVyYXRvciBvZiBhCj4+Pj4g
KyAqCW51bWVyYXRvci9kZW5vbWluYXRvciBwYWlyIG9mIGEgZnJhbWUgcmF0ZSB0byBzZXQgYXMg
dGhlIG1heGltdW0gVlJSCj4+Pj4gKyAqCXRhcmdldCByYXRlLiBTZXQgdG8gMCB0byBkaXNhYmxl
Lgo+Pj4+ICsgKgo+Pj4+ICsgKiAiVlJSX01BWF9ERU5PTUlOQVRPUiI6Cj4+Pj4gKyAqCURlZmF1
bHQgJmRybV9jcnRjIGludGVnZXIgcHJvcGVydHkgZm9ybWluZyB0aGUgZGVub21pbmF0b3Igb2Yg
YQo+Pj4+ICsgKgludW1lcmF0b3IvZGVub21pbmF0b3IgcGFpciBvZiBhIGZyYW1lIHJhdGUgdG8g
c2V0IGFzIHRoZSBtYXhpbXVtIFZSUgo+Pj4+ICsgKgl0YXJnZXQgcmF0ZS4gSWYgOnJlZjpgVlJS
X01BWF9OVU1FUkFUT1IgPFZSUi1NQVgtTlVNRVJBVE9SPmAgaXMgbm90Cj4+Pj4gKyAqCXplcm8s
IGl0IG11c3QgYmUgbm9uLXplcm8uIE90aGVyd2lzZSwgbXVzdCBhbHNvIGJlIHplcm8uCj4+Pj4g
ICAqLwo+Pj4gSWYgVlJSX01JTl9OVU1FUkFUT1IgPT0gMCAmJiBWUlJfTUFYX05VTUVSQVRPUiA+
IDAsIGRvIHdlIGludGVycHJldCB0aGF0IGFzCj4+PiB2cnIgbGltaXRpbmcgaXMgZGlzYWJsZWQ/
Cj4+IFlvdSBjYW4gcGljdHVyZSBWUlIgbGltaXRpbmcgYXMgYWx3YXlzIGJlaW5nIGFjdGl2ZSwg
YnV0IHdpdGggYSBsaW1pdCByYXRpb25hbAo+PiBvZiAwIGl0IHVzZXMgdGhlIGRpc3BsYXkncyBs
aW1pdCBhcyBwZXIgdGhlIEVESUQsIHdoaWNoIGlzIHdoYXQgdW5saW1pdGVkIGdhbWUKPj4gbW9k
ZSBpcy4gU28gd2l0aCBob3cgaXQncyBpbXBsZW1lbnRlZCByaWdodCBub3cgaW4gaGRtaV92YWxp
ZGF0ZV92cnIoKSwgeW91cgo+PiBleGFtcGxlIHdvdWxkIHNldCBhIG1heGltdW0gdGFyZ2V0LCBi
dXQgbGVhdmUgdGhlIG1pbmltdW0gYXQgd2hhdGV2ZXIgdGhlCj4+IGRpc3BsYXkgZGVmYXVsdHMg
dG8uCj4+Cj4+IE5vdyB0aGF0IEknbSB0aGlua2luZyB0aHJvdWdoIHRoaXMsIGEgcG9zc2libGUg
cHJvYmxlbSBpcyB0aGF0Cj4+IGRybV9jcnRjX2hlbHBlcl92cnJfaXNfZml4ZWRfcmF0ZSgpIG9w
ZXJhdGVzIG9uIHRoZSB1c2VyIHN1cHBsaWVkIGxpbWl0cywgYnV0Cj4+IGlmIHRoZSBkaXNwbGF5
IHN1cHBsaWVkIGxvd2VyIGxpbWl0IGlzIGVxdWFsIHRvIHRoZSB1c2VyIHN1cHBsaWVkIHVwcGVy
IGxpbWl0LAo+PiB0aGVuIHdlIGhhdmUgYSBmaXhlZCByYXRlIHNjZW5hcmlvIHdpdGhvdXQgcmVj
b2duaXNpbmcgaXQgYXMgc3VjaC4gSSB0aGluayBJCj4+IG5lZWQgdG8gaGF2ZSBhIHBvbmRlciBv
biB3aGF0IHRoZSBsZWFzdCBzdXJwcmlzaW5nIGJlaGF2aW91ciBmb3IgdXNlcnNwYWNlCj4+IGlz
IGluIHRoYXQgaW5zdGFuY2UuIFRoZSBkaXNwbGF5IGxpbWl0IHN0dWZmIGdldHMgYSBiaXQgY29t
cGxleCBkdWUgdG8KPj4gQ2luZW1hVlJSIGFuZCBRTVMgVEZSbWluL1RGUm1heC4KPj4KPj4gSSds
bCBpbXByb3ZlIHRoZSBkb2N1bWVudGF0aW9uIG9uIHRoZSBuZXh0IHJldmlzaW9uIHRvIG1ha2Ug
dGhlIG1lYW5pbmdzIG1vcmUKPj4gZXhwbGljaXQuCj4gCj4gUGVyaGFwcyBhIHNpbXBsZSB3YXkg
aXMgdG8gcmVxdWlyZSBzaW11bHRhbmVvdXMgc2V0dGluZyBNSU4gYW5kIE1BWCBwYWlycz8KPiBJ
T1csIHJlcXVpcmUgdXNlcnNwYWNlIHRvIHNldCBNSU4gYW5kIE1BWCBzaW11bHRhbmVvdXNseSB0
byA+MCwgb3IgPTAuIEZvciBleGFtcGxlOgo+IAo+IGlmICgodnJyX21pbl9uID09IDAgfHwgdnJy
X21pbl9kID09IDAgfHwKPiAgICAgIHZycl9tYXhfbiA9PSAwIHx8IHZycl9tYXhfZCA9PSAwKSAm
Jgo+ICAgICAodnJyX21pbl9uID4gMCB8fCB2cnJfbWF4X24gPiAwKSkKPiAJcmV0dXJuIC1FSU5W
QUw7Cj4gVGhhdCB3YXksIGl0J3MgbmV2ZXIgYW1iaWd1b3VzIHdoYXQgdXNlcnNwYWNlIGhhcyBy
ZXF1ZXN0ZWQgZm9yIHRoZSByYW5nZS4KPiBUaGV5IGNhbiBjb3B5IHRoZSBFRElEIHN1cHBvcnRl
ZCByYW5nZSBpZiB0aGV5IGRvbid0IGNhcmUgYWJvdXQgbGltaXRpbmcgb25lIHNpZGUsIHJhdGhl
ciB0aGFuIGxlYXZpbmcgaXQgYXQgMC4KCkRldGVybWluaW5nIHRoZSBhY3R1YWwgbGltaXRzIGNh
biBiZSBub24tdHJpdmlhbCAodGhvdWdoIEkgZ3Vlc3MgdGhhdCBtaWdodCBiZSBmaW5lIGFzIGxv
bmcgYXMgbGliZGlzcGxheS1pbmZvIGNhbiB3b3JrIHRoZW0gb3V0KSwgaWYgdXNlciBzcGFjZSBn
ZXRzIHRoZW0gd3JvbmcsIGl0IG1pZ2h0IGFjY2lkZW50YWxseSBhcHBseSBhIG5hcnJvd2VyIGxp
bWl0IHRoYW4gaW50ZW5kZWQuCgoKPiBJdCdzIHRoZW4gYWxzbyBjbGVhciBpZiB0aGV5IHJlcXVl
c3RlZCBhIHN0YXRpYyBIei4KCkkgZG8gc2VlIHRoZSBiZW5lZml0IG9mIHlvdXIgc3VnZ2VzdGlv
biBmb3IgdGhpcyB0aG91Z2guCgoKLS0gCkVhcnRobGluZyBNaWNoZWwgRMOkbnplciAgICAgICBc
ICAgICAgICBHTk9NRSAvIFh3YXlsYW5kIC8gTWVzYSBkZXZlbG9wZXIKaHR0cHM6Ly9yZWRoYXQu
Y29tICAgICAgICAgICAgIFwgICAgICAgICAgICAgICBMaWJyZSBzb2Z0d2FyZSBlbnRodXNpYXN0
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
