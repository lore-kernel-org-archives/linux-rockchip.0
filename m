Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1B5CC369A2
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Apr 2025 17:32:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AmMdNwg50zZ7hkZXcDxzP4gIRFdQUpBIWuON2klwOWw=; b=KWnNArJPRXkgrz
	no0XrRuZoN9zRppgCDDLpLhJLAgPWtJl9GQG9E90d+qgNYX83R0yeWEWpYR78TNXb02Hf5dLet1ML
	zy22aRIP7FJGah0fJMzz5kCTOcPl0bHuUUiUTRPnld83hMQZNvl4r3RI/iJayMAYm2WzKhhVHL18l
	m6z5MnsAI1wpvE9g8/GQQ2flCabCXGwQkcerwYs89j+1O/bsAG7DbMBD1cUSQ1O0GCA6959maLCeI
	Fy0bg3A9orvMSTSue4IagdZxSjWeCKhMgeNNK8TATnvRg+S+ntC2LZY/+8bb9GM7jFQjxWrsc8Omy
	jk8x82PPZU6fZgcql9VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2Co6-00000004zLR-2gNu;
	Tue, 08 Apr 2025 17:32:18 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2CVa-00000004w6S-0P3P
	for linux-rockchip@lists.infradead.org;
	Tue, 08 Apr 2025 17:13:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1744132387;
	bh=ZmKKaF88TDW5BhsqNDRVpPFhYgW4wUtMCyjmNc6OQI4=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=N+LYhooyQkLc4kOLhP8SJHaiNWekPAzmDrAUOC36on+9cwi20BvQRvfQNKoQnvJgI
	 brR9vh2Y284w75RfWBCOWMaX5WSR4e7QM8tw1fAPVkqXKRFlTLP4E/aRJuSZTUM/hD
	 KHqw85ddoinhSpHsfdKMdo3Eof1MFPCGSpqhwS19I8yK1aMeq4V1gO/GgNoOH9bv6F
	 SLmwTeshxovOM25iBuDnKwEIhSl+X1cvaNET0pDIs+Cgl7XqTIj+ddkgZCJT8LaebE
	 h+3EJfn5y1A1plsZKqLCBOSoaWFENw+mgTBvw0Ac+FlFAfQFhcdl39Uco78WlELXWq
	 VOHuyrr4Yti2g==
Received: from [IPv6:2606:6d00:11:e976::5ac] (unknown [IPv6:2606:6d00:11:e976::5ac])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 87EC617E07FD;
	Tue,  8 Apr 2025 19:13:05 +0200 (CEST)
Message-ID: <af5275a0017bc802379ee63df23fcafd44c8c285.camel@collabora.com>
Subject: Re: [PATCH v7 09/12] media: rkvdec: Add get_image_fmt ops
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Hans Verkuil <hverkuil@xs4all.nl>, Sebastian Fricke	
 <sebastian.fricke@collabora.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>,  Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Boris Brezillon	
 <boris.brezillon@collabora.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev, Mauro
 Carvalho Chehab <mchehab+huawei@kernel.org>, Alex Bee
 <knaerzche@gmail.com>, Benjamin Gaignard	
 <benjamin.gaignard@collabora.com>, Detlev Casanova	
 <detlev.casanova@collabora.com>, Dan Carpenter <dan.carpenter@linaro.org>, 
 Jonas Karlman <jonas@kwiboo.se>, Christopher Obbard
 <christopher.obbard@linaro.org>
Date: Tue, 08 Apr 2025 13:13:03 -0400
In-Reply-To: <5cd6e8d3-fa51-4225-a3b8-9727cfd95062@xs4all.nl>
References: <20250225-rkvdec_h264_high10_and_422_support-v7-0-7992a68a4910@collabora.com>
	 <20250225-rkvdec_h264_high10_and_422_support-v7-9-7992a68a4910@collabora.com>
	 <e6b99109-bd35-46ff-a4e2-eb69b549dcbc@xs4all.nl>
	 <77bdada5dce991842e377759c8e173ada115694f.camel@collabora.com>
	 <47c0011f-693d-4c94-8a1b-f0174f3d5b89@xs4all.nl>
	 <19a11d429d9078b82f27e108aa5ac80cc4041bef.camel@collabora.com>
	 <35d34100-7013-4acb-a5a6-3408e0f45d9d@xs4all.nl>
	 <1747c9d2f653a07418422157f4b1613246f39a6c.camel@collabora.com>
	 <5cd6e8d3-fa51-4225-a3b8-9727cfd95062@xs4all.nl>
Organization: Collabora Canada
User-Agent: Evolution 3.56.0 (3.56.0-1.fc42) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250408_101310_318212_C4A58830 
X-CRM114-Status: GOOD (  12.84  )
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

KGp1c3QgdHJpbW1lZCBhIGJpdCkKCkxlIG1hcmRpIDA4IGF2cmlsIDIwMjUgw6AgMTY6MzIgKzAy
MDAsIEhhbnMgVmVya3VpbCBhIMOpY3JpdMKgOgo+IFNvIGNhbiB3ZSBhZ3JlZSBvbiB0aGUgZm9s
bG93aW5nIChJIHRoaW5rKToKPiAKPiAxKSBya3ZkZWNfdHJ5X2N0cmwgbm8gbG9uZ2VyIGNoZWNr
cyB0aGUgaW1hZ2VfZm10LiBFZmZlY3RpdmVseSB0aGlzIG1lYW5zIHRoYXQgdGhlcmUKPiDCoMKg
IGlzIG5vIGxvbmdlciBhbnkgbmVlZCB0byBjaGFuZ2Ugcmt2ZGVjX3RyeV9jdHJsIGluIHRoaXMg
cGF0Y2guCgpDb3JyZWN0LgoKPiAKPiAyKSBpbiBya3ZkZWNfc19jdHJsIHdlIGRvIHRoZSBpbWFn
ZV9mbXQgY2hlY2s6IGlmIGl0IGNoYW5nZXMsIGJ1dCB2YjJfaXNfYnVzeSBpcyB0cnVlLAo+IMKg
wqAgdGhlbiByZXR1cm4gLUVCVVNZLCBvdGhlcndpc2UgY2FsbCBya3ZkZWNfcmVzZXRfZGVjb2Rl
ZF9mbXQoKS4gVGhpcyBjb2RlIGlzIHNwZWNpZmljCj4gwqDCoCBmb3IgVjRMMl9DSURfU1RBVEVM
RVNTX0gyNjRfU1BTLCBzbyBqdXN0IG1ha2Ugc3VyZSBpdCBpcyB1bmRlciBhbiBpZi9zd2l0Y2gg
Zm9yIHRoYXQKPiDCoMKgIGNvbnRyb2wgSUQuCgpDb3JyZWN0LiBJbiBwcmFjdGljZSwgdGhlIElP
Q1RMIGltcGxlbWVudGF0aW9uIGZ1bmN0aW9uIHdpbGwgYmUgcmVuYW1lZAp0byB3aGF0IEpvbmFz
IHByb3Bvc2VkICh0cmFuc2xhdGVkIHRvIHNfY3RybCBpbnN0ZWFkIG9mIHRyeSksIHdpdGggc29t
ZQpuYW1lIGxpa2Ugc19zcHNfY3RybCgpIChjYW4ndCByZW1lbWJlciBleGFjdGx5KS4gVGhpcyBp
cyBiZWNhdXNlCnVwY29taW5nIEhFVkMgd2lsbCBlbmR1cCBzaGFyaW5nIHRoaXMgY29kZS4gSXRz
IGdvaW5nIHRvIGJlIDEgY29udHJvbApwZXIgY29kZWMgdGhhdCBzdXBwb3J0cyAxMGJpdC4KCj4g
Cj4gMykgSSdsbCBzZWUgaWYgSSBjYW4gbWFrZSBhIHBhdGNoIHRvIGNsYXJpZnkgaW4gdGhlIGNv
bnRyb2wgZG9jdW1lbnRhdGlvbiB0aGF0IHNldHRpbmcKPiDCoMKgIGl0IGNhbiBjaGFuZ2UgdGhl
IGZvcm1hdC4KClRoYW5rcy4KCj4gCj4gNCkgSSdsbCBtYWtlIGEgcGF0Y2ggZm9yIHRoZSBjZWRy
dXMgZHJpdmVyIGFzIHdlbGwgdG8gYWxpZ24gd2l0aCB0aGUgYXBwcm9hY2ggaW4gcmt2ZGVjLgoK
VGhhbmsgeW91ICEgR2xhZCB3ZSBnb3QgdG8gdGhlIGJvdHRvbSBvZiBpdC4gQXMgZm9yIHJrdmRl
YyBUT0RPLCBJIHdpbGwKcHJlcGFyZSBhbiB1cHN0YWdpbmcgcGF0Y2ggc2VyaWVzLCBhbmQgZml4
IGFueXRoaW5nIG5lZWRlZC4KCk5pY29sYXMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
