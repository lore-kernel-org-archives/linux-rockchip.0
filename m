Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1083AC021BF
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Feb 2025 13:25:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j2yNIyuEtHKh6gbQ1/hd9RyVSYBcu+d4ONqK2v6wbdM=; b=zK6djSOxN9E+9K
	i9Ja2RKx5z+otTCEIX3P0TFqr6tyam6dDqPujZ0hnEN96Fdd8LZ75EaWNYls6OUeNaS+c7f8WKzDW
	+uUfJM5e2VtTEpkR8y3CemtbnOohfUeLaLFE7d1TJScXtINegQ54DRJdARvUUQRjhA9oTEZp73qZI
	xBBszknf15PtvRd8rzmFxBtr8iUO3o44Mrnl9LvriK9V+bSdY4qTuKJpg6QP6HjrqXnPIjtktCkji
	0G1+LffVpp+ZQusuLlOTCYRfeFO/Ih797dnEU4PXFVVvC7SIXZnBKDCrYg6FTkBk8CBAfa9nc7qf0
	HHXaHjsiH2OxxcM039rQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnHPb-00000003qGX-31gM;
	Wed, 26 Feb 2025 13:25:19 +0000
Received: from mgamail.intel.com ([192.198.163.7])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnFfc-00000003UX2-2XSB;
	Wed, 26 Feb 2025 11:33:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1740569624; x=1772105624;
  h=from:to:cc:subject:in-reply-to:references:date:
   message-id:mime-version:content-transfer-encoding;
  bh=bj8u/VTfvEKSVadoM6eWhJguZpmIx7UFV9zPkjdjO6o=;
  b=Q6ytFVy0B94ZOPYXgpDWxSd07r9X2IlJVKmMwPXakYKBZ8FORzDtxLrg
   ZXUVhNCMtQsEn8FjeDk4LPgGWg/tgv0QCSogiIhenPndtfA9uXjitpgBa
   5l3duEsWy2KQrtvtCXHmviwdSp2B3ZDDBPS+Kosuo62P3UYBBB38z3x6l
   UrvD/trhUrwDaCZgxF95POU6Zko9YvT0+LG/R0JrMX0YCPfCxu0gxGdqa
   zYSP3avgTFJ3PNdqP8GCchqneBm64kRp+Uh0b7YWoTW1m0DL+t9T1mbLd
   GYdYOJktlYB26llgzqSMbraMNSZ9gR6y0Z1vSvBstKmQgCk5PJGUH4PEO
   w==;
X-CSE-ConnectionGUID: f52+H702SoS15wKAhSptZg==
X-CSE-MsgGUID: LQiIKRYmQ362kJGNwejMtw==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="66781900"
X-IronPort-AV: E=Sophos;i="6.13,316,1732608000"; 
   d="scan'208";a="66781900"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
  by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Feb 2025 03:33:38 -0800
X-CSE-ConnectionGUID: TJihvrrsRgeQybRZ0yeiSA==
X-CSE-MsgGUID: 5L4ZB8/RTCS7cCKbWuK2zQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,316,1732608000"; 
   d="scan'208";a="116680184"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost) ([10.245.246.74])
  by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Feb 2025 03:33:33 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Andy Yan <andyshrk@163.com>, Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re:Re: [PATCH 2/5] drm/rockchip: stop passing non struct drm_device
 to drm_err() and friends
In-Reply-To: <f5dc475.a51e.19541d449c5.Coremail.andyshrk@163.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1737644530.git.jani.nikula@intel.com>
 <f42da4c9943a2f2a9de4272b7849e72236d4c3f9.1737644530.git.jani.nikula@intel.com>
 <2c0a76c3.618c.19497bb4329.Coremail.andyshrk@163.com>
 <87plkcbfp0.fsf@intel.com>
 <730ee1d4.f63.1949b97fc99.Coremail.andyshrk@163.com>
 <21d7745d-8fcd-484f-b1f2-82fd87dc8079@suse.de>
 <f5dc475.a51e.19541d449c5.Coremail.andyshrk@163.com>
Date: Wed, 26 Feb 2025 13:33:30 +0200
Message-ID: <87plj53ppx.fsf@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250226_033344_647075_CA423D30 
X-CRM114-Status: GOOD (  21.54  )
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
Cc: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, intel-gfx@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>, sam@ravnborg.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gV2VkLCAyNiBGZWIgMjAyNSwgIkFuZHkgWWFuIiA8YW5keXNocmtAMTYzLmNvbT4gd3JvdGU6
Cj4gSGnvvIwKPgo+IOWcqCAyMDI1LTAyLTI2IDE2OjMzOjIx77yMIlRob21hcyBaaW1tZXJtYW5u
IiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4g5YaZ6YGT77yaCj4+SGkKPj4KPj5BbSAyNS4wMS4yNSB1
bSAwNDo1MyBzY2hyaWViIEFuZHkgWWFuOgo+Pj4KPj4+IOWcqCAyMDI1LTAxLTI0IDE5OjQzOjA3
77yMIkphbmkgTmlrdWxhIiA8amFuaS5uaWt1bGFAaW50ZWwuY29tPiDlhpnpgZPvvJoKPj4+PiBP
biBGcmksIDI0IEphbiAyMDI1LCAiQW5keSBZYW4iIDxhbmR5c2hya0AxNjMuY29tPiB3cm90ZToK
Pj4+Pj4gSGnvvIwKPj4+Pj4KPj4+Pj4gQXQgMjAyNS0wMS0yMyAyMzowOTowOSwgIkphbmkgTmlr
dWxhIiA8amFuaS5uaWt1bGFAaW50ZWwuY29tPiB3cm90ZToKPj4+Pj4+IFRoZSBleHBlY3RhdGlv
biBpcyB0aGF0IHRoZSBzdHJ1Y3QgZHJtX2RldmljZSBiYXNlZCBsb2dnaW5nIGhlbHBlcnMgZ2V0
Cj4+Pj4+PiBwYXNzZWQgYW4gYWN0dWFsIHN0cnVjdCBkcm1fZGV2aWNlIHBvaW50ZXIgcmF0aGVy
IHRoYW4gc29tZSByYW5kb20KPj4+Pj4+IHN0cnVjdCBwb2ludGVyIHdoZXJlIHlvdSBjYW4gZGVy
ZWZlcmVuY2UgdGhlIC0+ZGV2IG1lbWJlci4KPj4+Pj4+Cj4+Pj4+PiBDb252ZXJ0IGRybV9lcnIo
aGRtaSwgLi4uKSB0byBkZXZfZXJyKGhkbWktPmRldiwgLi4uKS4gVGhpcyBtYXRjaGVzCj4+Pj4+
PiBjdXJyZW50IHVzYWdlLCBidXQgZHJvcHMgIltkcm1dICpFUlJPUioiIHByZWZpeCBmcm9tIGxv
Z2dpbmcuCj4+Pj4+IEZyYW5rbHksIEkgcHJlZmVyIHRoZSBvcmlnaW5hbCB2ZXJzaW9uIG9mIHRo
ZSBsb2cuCj4+Pj4+IEl0IGlzIGEgcGxhdGZvcm0gZHJpdmVyLCBzbyBpdCBzaG91bGQgdXNlIGl0
cyBvd24gZGV2aWNlLgo+Pj4+PiBJdCBpcyBhIGRyaXZlciB0aGF0IHdvcmtzIGluIGRybSBzdWJz
eXN0ZW0sIHNvIGl0J3MgYmV0dGVyIHRvIHVzZSAiW2RybV0gKkVSUk9SKiIgcHJlZml4IHdoZW4g
bG9nZ2luZwo+Pj4+IElmIHlvdSBuZWVkIHRvIGRvIHN0cnVjdCBkZXZpY2UgYmFzZWQgbG9nZ2lu
ZyB0aGF0IGlzIG5vdCB0aGUgc2FtZQo+Pj4+IGRldmljZSBhcyB0aGUgc3RydWN0IGRybV9kZXZp
Y2UgZGV2IG1lbWJlciwgeW91IG5lZWQgdG8gdXNlIGRldl9lcnIoKQo+Pj4+IGFuZCBmcmllbmRz
LiBZb3UgY2FuJ3QgYW5kIG11c3Qgbm90IHVzZSBkcm1fZXJyKCkgYW5kIGZyaWVuZHMuCj4+Pj4K
Pj4+PiBJdCdzIGFzIHNpbXBsZSBhcyB0aGF0Lgo+Pj4+Cj4+Pj4gVGhlIGN1cnJlbnQgZHJtX2Vy
cihoZG1pLCAuLi4pIHVzYWdlIGlzIHNpbXBseSBhYnVzZSBvZiB0aGUgbWFjcm9zLCBhbmQKPj4+
PiBtdXN0IHN0b3AuCj4+PiBQZXJoYXBzIHdoZW4geW91IGluaXRpYWxseSBkZXNpZ25lZCB0aGlz
IG1hY3JvcywgeW91IGludGVuZGVkIGl0IHRvIGFjY2VwdCBvbmx5IGRybV9kZXZpY2UsCj4+PiBi
dXQgeW91ciBjb2RlIGltcGxlbWVudGF0aW9uIGRpZG4ndCBlbmZvcmNlIHRoaXMgcmVzdHJpY3Rp
b24gYXQgdGhlIGJlZ2lubmluZy4KPj4KPj5DJ21vbi4gQXJlIHdlIHJlYWxseSBhcmd1aW5nIGFi
b3V0IHR5cGUgc2FmZXR5IG5vdz8KPj4KPj5QYXRjaCA1IGFkZHMgYSBsaXR0bGUgZ2V0dGVyIGZ1
bmN0aW9uIHRoYXQgZG9lcyB0aGUgdHlwZSBjaGVjayBvbiB0aGUgCj4+ZnVuY3Rpb24gY2FsbCdz
IGFyZ3VtZW50Lgo+Pgo+Pgo+Pj4gSWYgdGhhdCdzIHRydWx5IHdoYXQgeW91IGludGVuZGVkLCBJ
IHN1Z2dlc3QganVzdCByZXZlcnRpbmcgdGhpcyBjb21taXQgdGhhdCBjb252ZXJ0aW5nIHRvIHVz
ZSB0aGVzZSBtYWNyb3NbMF0sCj4+PiBhcyBuZWl0aGVyIGRybV9lcnIgbm9yIGRldl9lcnIgY2Fu
IG1haW50YWluIGNvbnNpc3RlbmN5IHdpdGggdGhlIG9yaWdpbmFsIGxvZyBvZiB0aGlzIGRyaXZl
ci4KPj4+IEFsdGVybmF0aXZlbHksIGFzIHN1Z2dlc3RlZCBieSBTYW0gIGluIHRoZSBpbml0aWFs
IHN1Ym1pc3Npb24gb2YgeW91ciBwYXRjaCA1IHllYXJzIGFnbywKPj4+IHRoZXJlIHNob3VsZCBh
bHNvIGJlIGEgbWFjcm8gc2ltaWxhciB0byBkcm1fZGV2X2luZm8oZGV2aWNlICosIC4uKS5bMV0K
Pj4KPj5EUk0gY29kZSB0ZW5kcyB0byBrZWVwIGEgcmVmZXJlbmNlIHRvIHRoZSBkcm1fZGV2aWNl
IHNvbWV3aGVyZSBhbmQgCj4+ZmV0Y2hlcyBpdCBpZiBuZWNlc3NhcnkuIEZvciB0aGlzIHBhdGNo
LCBpdCBzaG91bGQgYmUgcG9zc2libGUgdG8gZmV0Y2ggCj4+dGhlIERSTSBkZXZpY2UgZnJvbSBz
dHJ1Y3Qgcm9ja2NoaXBfaGRtaSBlYXNpbHkuIEp1c3QgZG8KPj4KPj4gwqAgZHJtX2Vycihyb2Nr
Y2hpcF9oZG1pX2RybV9kZXYoaGRtaSksICIuLi4iKTsKPj4KPj5UaGlzIHdvdWxkIHJlc29sdmUg
dGhlIHByb2JsZW0gd2l0aG91dCBuZXcgbG9nZ2luZyBmdW5jdGlvbnMgYW5kIGtlZXAgCj4+dGhl
ICJbZHJtXSIgcHJlZml4IHRvIHRoZSBtZXNzYWdlcy4KPgo+IFllcywgdGhpcyBrZWVwcyB0aGUg
Iltkcm1dIiBwcmVmaXggdG8gdGhlIGxvZyBtZXNzYWdlcywgYnV0IGl0IGFsc28gY2hhbmdlZCBo
ZG1pCj4gZGV2aWNlIGZyb20gZHJtIGRldmljZSBpbiB0aGUgbG9nIG1lc3NhZ2VzLgo+IEZvciBt
b3JlIGVmZmljaWVudCBkZWJ1Z2dpbmcsIGl0IGlzIHByZWZlcmFibGUgZm9yIGxvZyBlbnRyaWVz
IHRvIGV4cGxpY2l0bHkgc3BlY2lmeSB3aGljaCBkZXZpY2UgZ2VuZXJhdGVkIHRoZW0sCj4gZXNw
ZWNpYWxseSBpbiBEUk0gc3lzdGVtcyB3aGVyZSBtdWx0aXBsZSBkZXZpY2VzKGJyaWRnZS9lbmNv
ZGVyKSBtYXkgYmUgcHJlc2VudC4iCj4KPiBBbmQgSSdtIG9rIHdpdGggdGhpcyBQQVRDSC4gSG93
ZXZlciwgSSB3b3VsZCBhbHNvIGxpa2UgdG8ga25vdyB5b3VyIGFuZCBKYW5pJ3Mgb3BpbmlvbnMg
b24gd2hldGhlciB3ZSBjYW4gY29uc2lkZXIKPiBhZGRpbmcgYW4gQVBJIHNpbWlsYXIgdG8gZHJt
X2Rldl9pbmZv77yMYXMgU2FtIHN1Z2dlc3RlZCBiZWZvcmUuIE9mIGNvdXJzZSwgdGhpcyBjb3Vs
ZCBiZSBsZWZ0IGZvciBmdXR1cmUgaW1wbGVtZW50YXRpb24KPiBieSBvdGhlcnMuCgpJJ20gbm90
IGF0IGFsbCB0aHJpbGxlZCBhYm91dCBhZGRpbmcgbG9hZHMgb2YgdmFyaWF0aW9ucyBvZiBkcm0g
c3BlY2lmaWMKZGVidWcgbWFjcm9zLiBUaGV5IGp1c3QgbXVsdGlwbHkuCgpUaGUgd2F5IGFyb3Vu
ZCB0aGF0IHdvdWxkIGJlIHRvIHVzZSBfR2VuZXJpYygpIHRvIGFsbG93IHBhc3NpbmcgZWl0aGVy
CnN0cnVjdCBkcm1fZGV2aWNlICh3aGljaCB3b3VsZCB1c2UgZHJtLT5kZXYpIG9yIGEgbW9yZSBz
cGVjaWZpYyBzdHJ1Y3QKZGV2aWNlIHRvIGJlIHVzZWQgZm9yIGRldiBiYXNlZCBsb2dnaW5nLiBJ
J2QgYmUgc3VwcG9ydGl2ZSBvZiB0aGF0LgoKSG93ZXZlciwgdGhpcyBwYXRjaCBzZXJpZXMgaXMg
YSBkZXBlbmRlbmN5IGZvciBpbXBsZW1lbnRpbmcgZ2VuZXJpY3MgYXQKYSBsYXRlciB0aW1lLiBJ
J2QgbGlrZSB0byBzdGFydCBoZXJlIGluc3RlYWQgb2YgcGlsaW5nIG9uIG1vcmUgd29yay4KCkZ1
cnRoZXJtb3JlLCB0aGVyZSdzIGJlZW4gdGFsayBhYm91dCBkcm0gZGlzcGxheSBvYmplY3QgYmFz
ZWQKbG9nZ2luZy4gVGhlIGdlbmVyaWNzIGNvdWxkIGxhdGVyIGJlIGV4cGFuZGVkIHRvIGFsbG93
IGZvciBleGFtcGxlOgoKCWRybV9lcnIoY29ubmVjdG9yLCAiRmFpbFxuIik7Cgp0byB0cmFuc2xh
dGUgdG86CgoJZGV2X2Vycihjb25uZWN0b3ItPmRldi0+ZGV2LCAiW0NPTk5FQ1RPUjolZDolc10g
RmFpbFxuIiwKCQljb25uZWN0b3ItPmJhc2UuaWQsIGNvbm5lY3Rvci0+bmFtZSk7CgpUaGlzIHdv
dWxkIHNpbXBsaWZ5IGEgbG90IG9mIGNvbm5lY3RvciBiYXNlZCBsb2dnaW5nLiBTaW1pbGFybHkg
Zm9yCm90aGVyIG9iamVjdHMuCgpCUiwKSmFuaS4KCgotLSAKSmFuaSBOaWt1bGEsIEludGVsCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
