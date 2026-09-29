Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47CECCA5FA7
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2026 18:16:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UVyDaHjivxw+zaAJ/5aKH7crjy5W3/UIgj3Y0a5h0Js=; b=M4DMwaHi0PXlVq
	yRiwc+aZeVWWdFhTcz/lV7zmJsSYdE3KKgNYSWPllm3VJPh/EpxRsN7YrthLv/bbsUtthTOqtzb+X
	IJSpHocoWwvAqku788EM9PykANYFt1PwTP/Cp790/Q5k58fTkDFvELOZLQT6EZorGvzxRJ6CA0HEq
	n+ojIjQ0GUwRIoPmgR+QwBhq8UxgLQ1EkhwYFaBXz0BFptstwxuJPM1sPnT9QUE6ea2aCRdElV8yJ
	gg8akZK88Ytz1kN8AjQqFIIf5s015+G0rz01+FwKmUNpqycOln1IYYLk6nWmQguPFZIggni97xeYk
	LpRWlXhBlvmWMwuIwnpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBcMz-00000004GM5-0tvd;
	Tue, 29 Sep 2026 18:16:01 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBcMx-00000004GLT-0Q04;
	Tue, 29 Sep 2026 18:15:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=VqA5KD7T6CUdh/gnvAhmHBiLWsN4nMCl68qkHoiN4+I=; b=Y1hXVF91KZ9Gae2OyNpbh2rnz4
	aqHD4Gcmy+TzFiCbX9Kg5VA3uz5SDrOBhaI4VBIrCNsuIpxCSqyYrhEFFmelAgXZGyYDXytgJ12Fq
	7tpT0yZ2qYIpoEidZO+vZtQdHtmzFld+u718Sb26otJKq/IoskG1ZHvY/CGlLT6O5JmNRe4R64QFi
	EbxGaUFsoC51f9lq0nkbZRol2C9NLT/PzrS4UBKOH5EYA4g13CAxU5+0na2/HZ5WFYL0jHHUsTc1K
	iy3fxT3xA6TGdQSSem8Yr4Da71LPufCXUSi4LJWUXSodHEavhxOFrSOd+utfENJRV9gASQNT6AlU7
	RHA+Wkdw==;
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xBcMt-00000002wPz-2L34;
	Tue, 29 Sep 2026 18:15:58 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1790705684; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=CbSTsuEIzMi8NQDvjEYx3+qKzuZPiaGg6yjSl2wL7fKDcqnU40Hcxv2p5UJCWQ4OCmyxQqaf8MbrkESheURSaQhiYlT3xscOMelbSvSc9ZjRmRVUYr7xqb5Aq/H5PT6xuy/8W3ld0XhktiDcm4YWdHPgw3k4CEb1V6E3xxBVFec=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1790705684; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=VqA5KD7T6CUdh/gnvAhmHBiLWsN4nMCl68qkHoiN4+I=; 
	b=H2yH23gEGGnPlLCTD+lmgXvD7FHqDagxEI69FkiR0OTKG76iq+p39A61mo5QC7OJI55fHjr1TBHdPgBokdMaHC+WVIkbtnYvSSB6m0RXkXYEUKdU+JTDlxa9tyels62rBo7KtKq5uhna2WMIta6faHwLbfPTNLY8iU/lAodzQXI=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1790705684;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=VqA5KD7T6CUdh/gnvAhmHBiLWsN4nMCl68qkHoiN4+I=;
	b=M0M4pbef6ULbnfyRVPCBj57Llpuo6uG+9wRTfbaPJMvQiWVNzn0NEWgafMR24rfK
	qF6VmlEKQYOkC4ZfNio0OTumKLYG5uSb1AX18AZqP5mTSoLgPvUIjM3qajdmSVv/CRw
	Yxk5gk5CjN68cRDlwHYgXj3hNHBwxyeb7qQqPIFM=
Received: by smtp.zohomail.com with SMTPS id 17907056822681009.9156419401866;
	Tue, 29 Sep 2026 11:14:42 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: Michel =?UTF-8?B?RMOkbnplcg==?= <michel.daenzer@mailbox.org>,
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
 Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>, Xaver Hugl <xaver.hugl@gmail.com>,
 Leo Li <sunpeng.li@amd.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-fbdev@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, kernel@collabora.com,
 Derek Foreman <derek.foreman@collabora.com>,
 wayland-devel@lists.freedesktop.org
Subject: Re: [PATCH RFC 13/25] drm: Add VRR target frame rate properties
Date: Tue, 29 Sep 2026 20:14:34 +0200
Message-ID: <SwRul6_8Tc-C-2oBT64DOg@collabora.com>
In-Reply-To: <164d00c2-e4cb-4962-8e4e-389ae77af943@amd.com>
References: <20260921-vrr-limiter-uapi-v1-0-2fcd7d011646@collabora.com>
 <3cf7143d-7013-4a3b-a831-96c3f125c2f6@mailbox.org>
 <164d00c2-e4cb-4962-8e4e-389ae77af943@amd.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260929_191555_889866_0AF8FD9F 
X-CRM114-Status: GOOD (  31.43  )
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

T24gVHVlc2RheSwgMjkgU2VwdGVtYmVyIDIwMjYgMTY6MzQ6NTggQ2VudHJhbCBFdXJvcGVhbiBT
dW1tZXIgVGltZSBMZW8gTGkgd3JvdGU6Cj4gCj4gT24gMjAyNi0wOS0yOCAwNDoxMCwgTWljaGVs
IETDpG56ZXIgd3JvdGU6Cj4gPj4+IFlvdSBjYW4gcGljdHVyZSBWUlIgbGltaXRpbmcgYXMgYWx3
YXlzIGJlaW5nIGFjdGl2ZSwgYnV0IHdpdGggYSBsaW1pdCByYXRpb25hbAo+ID4+PiBvZiAwIGl0
IHVzZXMgdGhlIGRpc3BsYXkncyBsaW1pdCBhcyBwZXIgdGhlIEVESUQsIHdoaWNoIGlzIHdoYXQg
dW5saW1pdGVkIGdhbWUKPiA+Pj4gbW9kZSBpcy4gU28gd2l0aCBob3cgaXQncyBpbXBsZW1lbnRl
ZCByaWdodCBub3cgaW4gaGRtaV92YWxpZGF0ZV92cnIoKSwgeW91cgo+ID4+PiBleGFtcGxlIHdv
dWxkIHNldCBhIG1heGltdW0gdGFyZ2V0LCBidXQgbGVhdmUgdGhlIG1pbmltdW0gYXQgd2hhdGV2
ZXIgdGhlCj4gPj4+IGRpc3BsYXkgZGVmYXVsdHMgdG8uCj4gPj4+Cj4gPj4+IE5vdyB0aGF0IEkn
bSB0aGlua2luZyB0aHJvdWdoIHRoaXMsIGEgcG9zc2libGUgcHJvYmxlbSBpcyB0aGF0Cj4gPj4+
IGRybV9jcnRjX2hlbHBlcl92cnJfaXNfZml4ZWRfcmF0ZSgpIG9wZXJhdGVzIG9uIHRoZSB1c2Vy
IHN1cHBsaWVkIGxpbWl0cywgYnV0Cj4gPj4+IGlmIHRoZSBkaXNwbGF5IHN1cHBsaWVkIGxvd2Vy
IGxpbWl0IGlzIGVxdWFsIHRvIHRoZSB1c2VyIHN1cHBsaWVkIHVwcGVyIGxpbWl0LAo+ID4+PiB0
aGVuIHdlIGhhdmUgYSBmaXhlZCByYXRlIHNjZW5hcmlvIHdpdGhvdXQgcmVjb2duaXNpbmcgaXQg
YXMgc3VjaC4gSSB0aGluayBJCj4gPj4+IG5lZWQgdG8gaGF2ZSBhIHBvbmRlciBvbiB3aGF0IHRo
ZSBsZWFzdCBzdXJwcmlzaW5nIGJlaGF2aW91ciBmb3IgdXNlcnNwYWNlCj4gPj4+IGlzIGluIHRo
YXQgaW5zdGFuY2UuIFRoZSBkaXNwbGF5IGxpbWl0IHN0dWZmIGdldHMgYSBiaXQgY29tcGxleCBk
dWUgdG8KPiA+Pj4gQ2luZW1hVlJSIGFuZCBRTVMgVEZSbWluL1RGUm1heC4KPiA+Pj4KPiA+Pj4g
SSdsbCBpbXByb3ZlIHRoZSBkb2N1bWVudGF0aW9uIG9uIHRoZSBuZXh0IHJldmlzaW9uIHRvIG1h
a2UgdGhlIG1lYW5pbmdzIG1vcmUKPiA+Pj4gZXhwbGljaXQuCj4gPj4gUGVyaGFwcyBhIHNpbXBs
ZSB3YXkgaXMgdG8gcmVxdWlyZSBzaW11bHRhbmVvdXMgc2V0dGluZyBNSU4gYW5kIE1BWCBwYWly
cz8KPiA+PiBJT1csIHJlcXVpcmUgdXNlcnNwYWNlIHRvIHNldCBNSU4gYW5kIE1BWCBzaW11bHRh
bmVvdXNseSB0byA+MCwgb3IgPTAuIEZvciBleGFtcGxlOgo+ID4+Cj4gPj4gaWYgKCh2cnJfbWlu
X24gPT0gMCB8fCB2cnJfbWluX2QgPT0gMCB8fAo+ID4+ICAgICAgdnJyX21heF9uID09IDAgfHwg
dnJyX21heF9kID09IDApICYmCj4gPj4gICAgICh2cnJfbWluX24gPiAwIHx8IHZycl9tYXhfbiA+
IDApKQo+ID4+IAlyZXR1cm4gLUVJTlZBTDsKPiA+PiBUaGF0IHdheSwgaXQncyBuZXZlciBhbWJp
Z3VvdXMgd2hhdCB1c2Vyc3BhY2UgaGFzIHJlcXVlc3RlZCBmb3IgdGhlIHJhbmdlLgo+ID4+IFRo
ZXkgY2FuIGNvcHkgdGhlIEVESUQgc3VwcG9ydGVkIHJhbmdlIGlmIHRoZXkgZG9uJ3QgY2FyZSBh
Ym91dCBsaW1pdGluZyBvbmUgc2lkZSwgcmF0aGVyIHRoYW4gbGVhdmluZyBpdCBhdCAwLgo+ID4g
RGV0ZXJtaW5pbmcgdGhlIGFjdHVhbCBsaW1pdHMgY2FuIGJlIG5vbi10cml2aWFsICh0aG91Z2gg
SSBndWVzcyB0aGF0IG1pZ2h0IGJlIGZpbmUgYXMgbG9uZyBhcyBsaWJkaXNwbGF5LWluZm8gY2Fu
IHdvcmsgdGhlbSBvdXQpLCBpZiB1c2VyIHNwYWNlIGdldHMgdGhlbSB3cm9uZywgaXQgbWlnaHQg
YWNjaWRlbnRhbGx5IGFwcGx5IGEgbmFycm93ZXIgbGltaXQgdGhhbiBpbnRlbmRlZC4KPiA+IAo+
ID4gCj4gPj4gSXQncyB0aGVuIGFsc28gY2xlYXIgaWYgdGhleSByZXF1ZXN0ZWQgYSBzdGF0aWMg
SHouCj4gPiBJIGRvIHNlZSB0aGUgYmVuZWZpdCBvZiB5b3VyIHN1Z2dlc3Rpb24gZm9yIHRoaXMg
dGhvdWdoLgo+IAo+IFhhdmVyIGFuZCBJIHdlcmUgY2hhdHRpbmcgYWJvdXQgdGhpcyBhdCBYREMs
IGFuZCB5ZWFoIGl0J2xsIGJlIGRpZmZpY3VsdAo+IHRvIG1hdGNoIEtNRCdzIG1vbml0b3IgcmFu
Z2UsIGVzcGVjaWFsbHkgaWYgS01EIGRlY2lkZXMgdG8gcGF0Y2ggaXQgd2l0aAo+IHF1aXJrcyBh
bmQgd2hhdG5vdC4KPiAKPiBTaW5jZSB3ZSBhcmUgaGFuZGluZyBjb21wb3NpdG9ycyBjb250cm9s
IG92ZXIgdnJyIHJhbmdlLCBkb2VzIGl0IHNvdW5kCj4gc2Vuc2libGUgdG8gZXhwb3NlIEtNRCdz
IG1vbml0b3IgcmFuZ2UgYXMgYSByZWFkLW9ubHkgcHJvcGVydHkgcGFpciBvbgo+IHRoZSBkcm0g
Y29ubmVjdG9yPyBXZSBwcm9iYWJseSBkb24ndCBuZWVkIGEgbnVtL2RlbiBwYWlyIGZvciBpdCwg
aXQncwo+IG5vdCBsaWtlIHBhbmVscyBhZHZlcnRpc2UgZnJhY3Rpb25hbCBWUlIgcmFuZ2VzIChy
aWdodD8pLgoKU291bmRzIGdvb2QgdG8gbWUuCgpBbmQgeWVhaCwgd2UgZG9uJ3QgcmVhbGx5IG5l
ZWQgbnVtL2Rlbm9tIGZvciBpdDsgdGhlIHNhZmUgYXNzdW1wdGlvbiBpcyB0aGF0IHRoZQptaW5p
bXVtIHJhbmdlIGlzIGV4cHJlc3NlZCB3aXRoIGEgZGVub21pbmF0b3Igb2YgMS4wMDEgd2hlcmVh
cyB0aGUgbWF4aW11bSByYW5nZQppcyBleHByZXNzZWQgd2l0aCBhIG51bWVyYXRvciBvZiAxLiBU
aGF0J3Mgc29ydCBvZiBub24tb2J2aW91cyBmb3IgdXNlcnNwYWNlCnRob3VnaCwgc28gSSdsbCBu
ZWVkIHRvIGRvIHNvbWUgdGhpbmtpbmcgYXJvdW5kIHRoZSBzcGVjaWZpZWQgYmVoYXZpb3VyLgoK
VGhpcyBzb3VuZHMgbGlrZSBhIG1haW5seSB0aGVvcmV0aWNhbCBjb25jZXJuIGJ1dCBpdCdzIGEg
cmVhbCBvbmUsIHRoZSBtb3N0CmNvbW1vbiAxLjAwMSByYXRlcyB3ZSdsbCBydW4gaW50byBhcmUg
bGlrZWx5IDI0LzEuMDAxIG9yIDMwLzEuMDAxIGFuZCB0aG9zZQphcmUgYWxzbyB2ZXJ5IHJlYXNv
bmFibGUgZm9yIGEgbW9uaXRvciB0byBoYXZlIGFzIGEgbG93ZXIgbGltaXQuIEFuZCB3aGVuCnRo
ZXkgc3BlY2lmeSB0aGF0IGxvd2VyIGxpbWl0LCB0aGV5J2xsIGRvIGl0IGFzIGp1c3QgdGhlIGlu
dGVnZXIgcm91bmRlZAp2YWx1ZSwgYnV0IHNlZW1pbmdseSBleHBlY3QgdGhlbSB0byBiZSB1bmRl
cnN0b29kIGFzIHRoZSAxLjAwMSB2YWx1ZSBmb3IKdGhlIGxvd2VyIGxpbWl0LgoKPiBGdW4gZmFj
dDogdnJyX3JhbmdlIGlzIGV4cG9zZWQgdG9kYXkgb3ZlciBkZWJ1Z2ZzIGZvciBJR1QgdGVzdGlu
Zwo+IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y3LjMtcmM1L3NvdXJjZS9kcml2
ZXJzL2dwdS9kcm0vZHJtX2RlYnVnZnMuYyNMNTg2CgpTcGVha2luZyBvZiB0aGF0LCB2MiB3aWxs
IGRlZHVwbGljYXRlIG15IGFjY2lkZW50YWxseSByZWJhc2VkLW92ZXIKbW9zdGx5IGR1cGxpY2F0
ZWQgRURJRCBwYXJzaW5nIGFuZCBmaXggdGhpcyBmdW5jdGlvbiB0byByZXBvcnQgdGhlCm5ld2x5
IGFkZGVkIHZycl9taW4vdnJyX21heCBmaWVsZHMgb2YgdGhlIGRpc3BsYXlfaW5mby4gKFNpbmNl
CmFwcGFyZW50bHkgbW9uaXRvcl9yYW5nZSBpcyBwb3B1bGF0ZWQgYnkgVkVTQSBhbmQgbWVzc2lu
ZyB3aXRoIGl0Cm1heSBub3QgYmUgb2theT8pCgpLaW5kIHJlZ2FyZHMsCk5pY29sYXMgRnJhdHRh
cm9saQoKPiAKPiBUaGFua3MsCj4gTGVvCj4gCj4gPiAKPiA+IAo+ID4gLS0gRWFydGhsaW5nIE1p
Y2hlbCBEw6RuemVyIFwgR05PTUUgLyBYd2F5bGFuZCAvIE1lc2EgZGV2ZWxvcGVyIGh0dHBzOi8v
cmVkaGF0LmNvbSBcIExpYnJlIHNvZnR3YXJlIGVudGh1c2lhc3QKPiAKPiAKCgoKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
