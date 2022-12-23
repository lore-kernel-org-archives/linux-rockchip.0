Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D44BBC4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Dec 2022 17:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=foFD+d0XGJPbFnDZTftMXsakGvijhmfSutXJQM5A2xQ=; b=iZQV08UCWvS7Df
	zkJmFlpS9loMUsmG5oGj86ieOmewWtQYRRpqrSiZW5ccSR1iO6pCVFmlXLzPm3Gj3Rv0pF8TJ1JRN
	apep5Wi9CrgQOrbgAi61uff1FzL2St/ubyeVeuz2eTHpVVO3+S+aYWXwPVT/Qy6YymUXoE6M7HyAP
	x13WDGyOriLWhJOBM4BFB7QGe+BhWWEV06BNongqLRdrqT8CgW9aVKdOpYQaksT8DLE7OeZLPX29T
	0dS2jER4evby/o5iulTxUX1ESlOMVDbnEc+g5hLX71AS/kZoDnGlCTltyxG+o3H9ixRzsinwnB33s
	rdmjzV+Pi1nMg+vLkC5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8lUX-00ADpr-4u; Fri, 23 Dec 2022 17:05:53 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8lUE-00ADft-UD; Fri, 23 Dec 2022 17:05:37 +0000
Received: from nicolas-tpx395.localdomain (192-222-136-102.qc.cable.ebox.net [192.222.136.102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 05A0A6602CDF;
	Fri, 23 Dec 2022 17:05:30 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1671815132;
	bh=DilnnI7vRaCXcahELlHtM/5jZDRYaD/HhEUVFXz7hWo=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=AozgfGUBs7euhdMl7UmO4pz9LJ8Iyx0U7Nu8qcQhw2Y4bpNw8roJ2d8f6lTGWVu13
	 oXIx6dTkzcMqNGb6lj9x887/uj8CcZ+z4e/Mho0R8FdLumxopwN066s2Q9LJgkNVs0
	 FgvDlOYcNngeVjDKiF1T+9PoaNSUKq7RQ1vWDbjCLVGMr4rVeDbzrSMaFHUYLQkMp7
	 dztTC5CFVglT/+TeZX8hb7SESVRFGnpHoRIT9CZ79ljb1brmVqcl7ydr57zkCE7gxQ
	 0Wl10NEAKdJ1CR3vxjRegH5Yg+W8/KDtLMkZRwq9Pd+T9r+n5hoVX8/dJVLHLXzl0g
	 vq4t3OVFzsG9w==
Message-ID: <6449640fcfbbfd4b72e619f03704b7e9031a8a17.camel@collabora.com>
Subject: Re: [PATCH] hantro: Fix JPEG encoder ENUM_FRAMESIZE on RK3399
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Hans Verkuil
 <hverkuil-cisco@xs4all.nl>, kernel@collabora.com, Robert Mader
 <robert.mader@collabora.com>, Mauro Carvalho Chehab
 <mchehab+samsung@kernel.org>,  linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org,  linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Date: Fri, 23 Dec 2022 12:05:21 -0500
In-Reply-To: <CAAEAJfATk+jOq3qt-m2CZEbCVumHHWDFfuEXKA7k0NZQXajCRg@mail.gmail.com>
References: <20221223141644.703088-1-nicolas.dufresne@collabora.com>
	 <CAAEAJfATk+jOq3qt-m2CZEbCVumHHWDFfuEXKA7k0NZQXajCRg@mail.gmail.com>
User-Agent: Evolution 3.46.2 (3.46.2-1.fc37) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221223_090535_422746_2E0457BB 
X-CRM114-Status: GOOD (  29.65  )
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

SGksCgpMZSB2ZW5kcmVkaSAyMyBkw6ljZW1icmUgMjAyMiDDoCAxMzoyOCAtMDMwMCwgRXplcXVp
ZWwgR2FyY2lhIGEgw6ljcml0wqA6Cj4gSGkgZXZlcnlvbmUsCj4gCj4gT24gRnJpLCBEZWMgMjMs
IDIwMjIgYXQgMTE6MTcgQU0gTmljb2xhcyBEdWZyZXNuZQo+IDxuaWNvbGFzLmR1ZnJlc25lQGNv
bGxhYm9yYS5jb20+IHdyb3RlOgo+ID4gCj4gPiBUaGUgZnJtc2l6ZSBzdHJ1Y3R1cmUgd2FzIGxl
ZnQgaW5pdGlhbGl6ZSB0byAwLCBhcyBzaWRlIGVmZmVjdCwgdGhlIGRyaXZlciB3YXMKPiA+IHJl
cG9ydGluZyBhbiBpbnZhbGlkIGZybXNpemUuCj4gPiAKPiA+ICAgU2l6ZTogU3RlcHdpc2UgMHgw
IC0gMHgwIHdpdGggc3RlcCAwLzAKPiA+IAo+ID4gRml4IHRoaXMgYnkgcmVwbGljYXRpbmcgdGhl
IGNvbnN0cmFpbnRzIGluIHRoZSByYXcgZm9ybWF0cyB0b28uIFRoaXMgZml4ZXMKPiA+IHRha2lu
ZyBwaWN0dXJlIGluIEdub21lIENoZWVzZSBTb2Z0d2FyZSwgb3IgYW55IHNvZnR3YXJlIHVzaW5n
IEdTdGVhbWVyCj4gPiBlbmNvZGViaW4gZmVhdHVyZS4KPiA+IAo+ID4gRml4ZXM6IDc3NWZlYzY5
MDA4ZDMwICgibWVkaWE6IGFkZCBSb2NrY2hpcCBWUFUgSlBFRyBlbmNvZGVyIGRyaXZlciIpCj4g
Cj4gVGhlIGZybXNpemUgaXMgb25seSBmb3IgYml0c3RyZWFtIGZvcm1hdHMgKHNlZSBjb21tZW50
IGluIHN0cnVjdCBoYW50cm9fZm10KS4KPiBJZiBJIGNhbiByZWFkIGNvZGUgY29ycmVjdGx5LCB0
aGlzIHdhcyBicm9rZW4gYnkgdGhpcyBjb21taXQ6Cj4gCj4gY29tbWl0IDc5Yzk4N2RlOGIzNTQy
MWEyYTk3NTk4MjkyOWYxNTBkZDQxNWY4ZjcKPiBBdXRob3I6IEJlbmphbWluIEdhaWduYXJkIDxi
ZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+IERhdGU6ICAgTW9uIEFwciA0IDE4OjA2
OjQwIDIwMjIgKzAyMDAKPiAKPiAgICAgbWVkaWE6IGhhbnRybzogVXNlIHBvc3QgcHJvY2Vzc29y
IHNjYWxpbmcgY2FwYWNpdGllcwo+IAo+IEJlZm9yZSB0aGF0IGNvbW1pdCB3ZSB1c2VkIHRvIHJl
dHVybiBFSU5WQUwgZm9yIGVudW1fZnJhbWVzaXplcwo+IGluIFJBVyBmb3JtYXRzLiBJIGd1ZXNz
IHdlIG1pc3NlZCB0aGF0IDotKQoKSSBzZWUsIGFuZCBnc3RyZWFtZXIgaGFkIGEgcXVpcmsgZm9y
IHN1Y2ggYSBib2d1cyByZXNwb25zZS4gTGV0IG1lIGV4cGxhaW4gd2h5Cml0cyBib2d1cywgZm9y
IHRoZSBnZW5lcmFsIGtub3dsZWdlLiBBIGRyaXZlciB0aGF0IHN1cHBvcnRzIEVOVU1fRlJBTUVT
SVpFIGJ1dApkb2VzIG5vdCByZXR1cm4gYW55IHNpemVzLCBpcyBpbiB0aGVvcnkgYSBkcml2ZXIg
dGhhdCBkb2VzIG5vdCBzdXBwb3J0IGFueXRoaW5nLgpGb3J0dW5hbHksIEdTdHJlYW1lciBjb25z
aWRlcmVkIG5vdCBoYXZpbmcgYSBzaW5nbGUgZnJhbWVzaXplIGJvZ3VzLCBhbmQgd291bGQKZmFs
bGJhY2sgdG8gdGhlIG9sZCBzY2hvb2wgdHJ5X2ZtdCgpIGRhbmNlIHRvIGZpbmQgdGhlIHN1cHBv
cnRlZCBzaXplcy4KClNvIHllcywgaXQgdXNlZCB0byB3b3JrIGluIGdzdHJlYW1lciwgYW5kIGl0
cyBpbmRlZWQKNzljOTg3ZGU4YjM1NDIxYTJhOTc1OTgyOTI5ZjE1MGRkNDE1ZjhmNyB0aGF0IGJy
b2tlIGl0LiBJJ2xsIGNvcnJlY3QgaGlzIGluIFYyLgoKPiAKPiBUbyBiZSBjb21wbGV0ZWx5IGhv
bmVzdCwgSSdtIG5vdCBzdXJlIGlmIHdlIHVzZWQgdG8gc3VwcG9ydCBlbmNvZGViaW4sCj4gYW5k
IEknbSBub3QgdG9vIHN1cmUgaG93IHRvIGFwcHJvYWNoIHRoaXMgaXNzdWUsIGJ1dCBJIHdvdWxk
IHJlYWxseQo+IGxvdmUgdG8gc3RhcnQgd2l0aCBzb21ldGhpbmcgc3VwZXIgc2ltcGxlIGxpa2U6
Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFu
dHJvX3Y0bDIuYwo+IGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9f
djRsMi5jCj4gaW5kZXggMmM3YTgwNTI4OWU3Li4wYjI4Zjg2Yjc0NjMgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fdjRsMi5jCj4gKysrIGIv
ZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fdjRsMi5jCj4gQEAgLTE2
MSw4ICsxNjEsMTEgQEAgc3RhdGljIGludCB2aWRpb2NfZW51bV9mcmFtZXNpemVzKHN0cnVjdCBm
aWxlCj4gKmZpbGUsIHZvaWQgKnByaXYsCj4gICAgICAgICB9Cj4gCj4gICAgICAgICAvKiBGb3Ig
bm9uLWNvZGVkIGZvcm1hdHMgY2hlY2sgaWYgcG9zdHByb2Nlc3Npbmcgc2NhbGluZyBpcyBwb3Nz
aWJsZSAqLwo+IC0gICAgICAgaWYgKGZtdC0+Y29kZWNfbW9kZSA9PSBIQU5UUk9fTU9ERV9OT05F
ICYmCj4gaGFudHJvX25lZWRzX3Bvc3Rwcm9jKGN0eCwgZm10KSkgewo+IC0gICAgICAgICAgICAg
ICByZXR1cm4gaGFudG9fcG9zdHByb2NfZW51bV9mcmFtZXNpemVzKGN0eCwgZnNpemUpOwo+ICsg
ICAgICAgaWYgKGZtdC0+Y29kZWNfbW9kZSA9PSBIQU5UUk9fTU9ERV9OT05FKQo+ICsgICAgICAg
IGlmIChoYW50cm9fbmVlZHNfcG9zdHByb2MoY3R4LCBmbXQpKQo+ICsgICAgICAgICAgICByZXR1
cm4gaGFudG9fcG9zdHByb2NfZW51bV9mcmFtZXNpemVzKGN0eCwgZnNpemUpOwo+ICsgICAgICAg
IGVsc2UKPiArICAgICAgICAgICAgcmV0dXJuIC1FTk9UVFk7Cj4gICAgICAgICB9IGVsc2UgaWYg
KGZzaXplLT5pbmRleCAhPSAwKSB7Cj4gICAgICAgICAgICAgICAgIHZwdV9kZWJ1ZygwLCAiaW52
YWxpZCBmcmFtZSBzaXplIGluZGV4IChleHBlY3RlZCAwLCBnb3QgJWQpXG4iLAo+ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgZnNpemUtPmluZGV4KTsKPiAKPiAoRU5PVFRZIHdhcyBzdWdnZXN0
ZWQgYnkgTmljb2xhcyBvbiBJUkMpCj4gCj4gTmljb2xhcyBhbHNvIHBvaW50ZWQgb3V0IHRoYXQg
b3VyIGN1cnJlbnQgaGFuZGxpbmcgb2YgZnJtc2l6ZSBpcyBub3QgY29ycmVjdCwKPiBhcyB3ZSBj
YW5ub3QgZXhwcmVzcyBkaWZmZXJlbnQgY29uc3RyYWludHMgb24gY29tYmluYXRpb25zIG9mIFJB
Vwo+IGFuZCBiaXRzdHJlYW0gZm9ybWF0cy4KPiAKPiBUaGlzIHNlZW1zIHRvIGNhbGwgZm9yIGEg
cmV3b3JrIG9mIGVudW1fZnJhbWVzaXplcywgc28gZnJtc2l6ZQo+IGlzIG5vdCBzdGF0aWMgYnV0
IHNvbWVob3cgb2J0YWluZWQgcGVyLWNvZGVjLgoKU28gSSdsbCByZXNwaW4gYWxvbmcgdGhlc2Ug
bGluZSB0byB3ZSBtb3JlIG9yIGxlc3MgInJldmVydCBiYWNrIiB0byB3b3JraW5nCnN0YXRlLiBU
aG91Z2ggaGF2aW5nIGEgZnJhbWVzaXplIGVudW1lcmF0aW9uIG9uIGVuY29kZXIgcmF3IChPVVRQ
VVQgcXVldWUpIGlzCndoYXQgbWFrZXMgbW9zdCBzZW5zZSBzbyB0aGF0IHdpbGwgaGF2ZSB0byBi
ZSByZXZpc2l0ZWQgd2l0aCBhIGNvcnJlY3RlZAptZWNoYW5pc20sIGFzIHdoZW5ldmVyIHdlIGFk
ZCBWUDggYW5kIEguMjY0IGVuY29kaW5nLCB3ZSdsbCBuZWVkIGRpZmZlcmVudCByYW5nZQpwZXIg
Y29kZWMuIEknbGwgY2hlY2sgaW4gSmFudWFyeSB3aXRoIG15IGNvbGxlYWd1ZSwgd2UgbWlnaHQg
ZG8gdGhhdCBpbnNpZGUgdGhlClZQOCBlbmNvZGVyIGJyYW5jaCAodGhhdCBpcyBuZWFybHkgcmVh
ZHkgYW5kIHdpbGwgYmUgc2VudCBhZnRlciB0aGUgaG9saWRheXMpLApvciBjb3VsZCBiZSBhbiBp
bnRlcm1lZGlhdGUgc2V0LgoKcmVnYXJkcywKTmljb2xhcwoKPiAKPiBUaGFua3MsCj4gRXplcXVp
ZWwKPiAKPiA+IFJlcG9ydGVkLWJ5OiBSb2JlcnQgTWFkZXIgPHJvYmVydC5tYWRlckBjb2xsYWJv
cmEuY29tPgo+ID4gU2lnbmVkLW9mZi1ieTogTmljb2xhcyBEdWZyZXNuZSA8bmljb2xhcy5kdWZy
ZXNuZUBjb2xsYWJvcmEuY29tPgo+IAo+IEFuZCB0aGFua3MgYSBsb3QgZm9yIHRoZSByZXBvcnQg
YW5kIHRoZSBwYXRjaCEKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
