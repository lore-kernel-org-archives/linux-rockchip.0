Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F437C88E75
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Jan 2026 08:49:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PfPl/JXlRFvg4wmnvpwdGMhZHoCrDwni3roU+XB6ss8=; b=CpyJm3DFxEpHEo
	HEhJt7HRJedtLbxs8V1hzZ6pAO84Utrj+hiw1+LrPbaDeRJsXm9S2zt9wDQvzKu4OMO2S7PNGLFbn
	mfp/o38VwB3WBuPYh+ZZBEKyd5E91XeR6GlAbzJT12pjhb2NNPFc6qAIcn+UUl7t4vAAk4m4d+o3K
	6Ns+p7rsBFIjavK6Bhtw/IGeaqp3wIl59QNt0gFln9OemQKhuP+AgRUsGtmEOc4FS25POhD1G+9fe
	uDfXtzpRQ1Rpo3PdpOYzywsRh/zQ/nKHQi2rcMz3aw2ZNdmcTiKNPftIMOi/DkUSnWct3ZoACK/LU
	LDNUxq8lHUf9wxXQjKgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkIHr-0000000C7j1-2Uq7;
	Mon, 26 Jan 2026 08:49:31 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkIHp-0000000C7id-3ByE
	for linux-rockchip@lists.infradead.org;
	Mon, 26 Jan 2026 08:49:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id CCD15600C3
	for <linux-rockchip@lists.infradead.org>; Mon, 26 Jan 2026 08:49:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 75368C2BC86
	for <linux-rockchip@lists.infradead.org>; Mon, 26 Jan 2026 08:49:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769417368;
	bh=FxNS7yMeaMMGExS9oCTJFUcXG9yW3cZSU+vkw2ft85g=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=ejOiCzrfB3ugjKY8fmB0dIhqllk0jbGF3e1woLrmRLZr7Z93QrepiNjuBBLhEeXwQ
	 nKf9UB/jab2wnRYqRJSL51ro/QIGTdj/g2EBPZhIMp0RQVa3lCxGeo6232+T4pi4Cb
	 /43+XEVFCbGH7j2aTJcdlP6B/9wsKooq2MLuhPDRWE2OP0P4RALiWHI98RXPEqHJUv
	 a0jUGmFEr4XLh5x4heuW9QV20KEq59fFCIT64GYlyQLniH3r4RQAlnkczZGu/N6s2J
	 nd5GLh6V31ZnrsUcfn5hXjuM8jzF2oqpuOOMigAUX5vhiLQns7hKZcSpRjGZh4L/Xo
	 rYGaQIYEa+X+g==
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-59dcdf60427so5012656e87.3
        for <linux-rockchip@lists.infradead.org>; Mon, 26 Jan 2026 00:49:28 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCV34avGjTWo2Z/6Cw+Ri/GsgagHE6GGIhhiPbPYN3l8Mqg4iGvmgPqOccqnSPg9txXlxMoSaPVM8Q+ia+aCgw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyCJ7v2/ubjJvAIyhS01CO1KxxKph+JquGrl8HHZhuYmShEO4Cf
	QV6/JKNuldravouJUsFR54YorjxxbEnvIGzpzV2gEZE3vdmR53MBREpqw9BqWHQn/xTzp3qW4vn
	ktrFwPIIWtnpWv8PamjiqIvoKH0xHh9PJ3YDmCXIE1g==
X-Received: by 2002:a05:6512:10c1:b0:59d:d64e:b3d7 with SMTP id
 2adb3069b0e04-59df3a82273mr1300484e87.46.1769417367064; Mon, 26 Jan 2026
 00:49:27 -0800 (PST)
MIME-Version: 1.0
References: <20260106090011.21603-1-bartosz.golaszewski@oss.qualcomm.com>
 <cb13c3df-be09-4cf3-b679-4431862d7264@arm.com> <CAMRc=MfUawHpDgxj=fP2OF_-qg1O+P3oM_cSvGsbvAdLRB=+hw@mail.gmail.com>
 <3204984.tdWV9SEqCh@diego>
In-Reply-To: <3204984.tdWV9SEqCh@diego>
From: Bartosz Golaszewski <brgl@kernel.org>
Date: Mon, 26 Jan 2026 09:49:15 +0100
X-Gmail-Original-Message-ID: <CAMRc=MdNkjp6gZJcdTMoFtvQo8kW4damvNFA3+MhVbXhFU7D9w@mail.gmail.com>
X-Gm-Features: AZwV_Qid_m7MIJWeeUTftl8ot9-gB4gBnX-3Xp4Ry9ijoNtlg41NuwGQDS78pYc
Message-ID: <CAMRc=MdNkjp6gZJcdTMoFtvQo8kW4damvNFA3+MhVbXhFU7D9w@mail.gmail.com>
Subject: Re: [PATCH] gpio: rockchip: mark the GPIO controller as sleeping
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Robin Murphy <robin.murphy@arm.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, 
	Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>, Linus Walleij <linusw@kernel.org>, 
	linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	stable@vger.kernel.org, Marek Szyprowski <m.szyprowski@samsung.com>
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

T24gU3VuLCBKYW4gMjUsIDIwMjYgYXQgMjoyM+KAr1BNIEhlaWtvIFN0w7xibmVyIDxoZWlrb0Bz
bnRlY2guZGU+IHdyb3RlOgo+Cj4gQW0gU2Ftc3RhZywgMjQuIEphbnVhciAyMDI2LCAyMjowNzox
MiBNaXR0ZWxldXJvcMOkaXNjaGUgTm9ybWFsemVpdCBzY2hyaWViIEJhcnRvc3ogR29sYXN6ZXdz
a2k6Cj4gPiBPbiBTYXQsIDI0IEphbiAyMDI2IDAwOjQ1OjI1ICswMTAwLCBSb2JpbiBNdXJwaHkg
PHJvYmluLm11cnBoeUBhcm0uY29tPiBzYWlkOgo+ID4gPiBPbiAyMDI2LTAxLTIzIDk6NTIgcG0s
IEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+Cj4gWyBzbmlwIHRvIGdldCB0byB0aGUgY29yZSBxdWVz
dGlvbiBhdCB0aGUgYm90dG9tIF0KPgo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waW5jdHJs
L3BpbmN0cmwtcm9ja2NoaXAuYyBiL2RyaXZlcnMvcGluY3RybC9waW5jdHJsLXJvY2tjaGlwLmMK
PiA+ID4gaW5kZXggZTQ0ZWYyNjJiZWVjLi4yZmM2N2FlYWZkYjMgMTAwNjQ0Cj4gPiA+IC0tLSBh
L2RyaXZlcnMvcGluY3RybC9waW5jdHJsLXJvY2tjaGlwLmMKPiA+ID4gKysrIGIvZHJpdmVycy9w
aW5jdHJsL3BpbmN0cmwtcm9ja2NoaXAuYwo+ID4gPiBAQCAtMzU0NSwxMCArMzU0NSw5IEBAIHN0
YXRpYyBpbnQgcm9ja2NoaXBfcG14X3NldChzdHJ1Y3QgcGluY3RybF9kZXYgKnBjdGxkZXYsIHVu
c2lnbmVkIHNlbGVjdG9yLAo+ID4gPiAgICAgcmV0dXJuIDA7Cj4gPiA+ICAgfQo+ID4gPgo+ID4g
PiAtc3RhdGljIGludCByb2NrY2hpcF9wbXhfZ3Bpb19zZXRfZGlyZWN0aW9uKHN0cnVjdCBwaW5j
dHJsX2RldiAqcGN0bGRldiwKPiA+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgc3RydWN0IHBpbmN0cmxfZ3Bpb19yYW5nZSAqcmFuZ2UsCj4gPiA+IC0gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVuc2lnbmVkIG9mZnNldCwKPiA+ID4gLSAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYm9vbCBpbnB1dCkKPiA+ID4gK3N0YXRp
YyBpbnQgcm9ja2NoaXBfcG14X2dwaW9fcmVxdWVzdF9lbmFibGUoc3RydWN0IHBpbmN0cmxfZGV2
ICpwY3RsZGV2LAo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
c3RydWN0IHBpbmN0cmxfZ3Bpb19yYW5nZSAqcmFuZ2UsCj4gPiA+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICB1bnNpZ25lZCBpbnQgb2Zmc2V0KQo+ID4gPiAgIHsKPiA+
ID4gICAgIHN0cnVjdCByb2NrY2hpcF9waW5jdHJsICppbmZvID0gcGluY3RybF9kZXZfZ2V0X2Ry
dmRhdGEocGN0bGRldik7Cj4gPiA+ICAgICBzdHJ1Y3Qgcm9ja2NoaXBfcGluX2JhbmsgKmJhbms7
Cj4gPiA+IEBAIC0zNTYyLDcgKzM1NjEsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHBpbm11eF9v
cHMgcm9ja2NoaXBfcG14X29wcyA9IHsKPiA+ID4gICAgIC5nZXRfZnVuY3Rpb25fbmFtZSAgICAg
ID0gcm9ja2NoaXBfcG14X2dldF9mdW5jX25hbWUsCj4gPiA+ICAgICAuZ2V0X2Z1bmN0aW9uX2dy
b3VwcyAgICA9IHJvY2tjaGlwX3BteF9nZXRfZ3JvdXBzLAo+ID4gPiAgICAgLnNldF9tdXggICAg
ICAgICAgICAgICAgPSByb2NrY2hpcF9wbXhfc2V0LAo+ID4gPiAtICAgLmdwaW9fc2V0X2RpcmVj
dGlvbiAgICAgPSByb2NrY2hpcF9wbXhfZ3Bpb19zZXRfZGlyZWN0aW9uLAo+ID4gPiArICAgLmdw
aW9fcmVxdWVzdF9lbmFibGUgICAgPSByb2NrY2hpcF9wbXhfZ3Bpb19yZXF1ZXN0X2VuYWJsZSwK
PiA+ID4gICB9Owo+ID4gPgo+ID4gPiAgIC8qCj4gPiA+Cj4gPgo+ID4gSSdtIG5vdCBzdXJlIHdo
YXQncyBnb2luZyBvbiBoZXJlLiBZb3UgZG9uJ3QgcmVhbGx5IG5lZWQgdG8gY2FsbAo+ID4gcGlu
Y3RybF9ncGlvX2RpcmVjdGlvbl9pbnB1dC9vdXRwdXQoKT8KPgo+IE5vIHdlIGFjdHVhbGx5IGRv
bid0Lgo+Cj4gVGhlIGN1cnJlbnQgX3NldF9kaXJlY3Rpb24gZnVuY3Rpb246Cj4KPiBzdGF0aWMg
aW50IHJvY2tjaGlwX3BteF9ncGlvX3NldF9kaXJlY3Rpb24oc3RydWN0IHBpbmN0cmxfZGV2ICpw
Y3RsZGV2LAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1
Y3QgcGluY3RybF9ncGlvX3JhbmdlICpyYW5nZSwKPiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgdW5zaWduZWQgb2Zmc2V0LAo+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBib29sIGlucHV0KQo+IHsKPiAgICAgICAgIHN0cnVjdCBy
b2NrY2hpcF9waW5jdHJsICppbmZvID0gcGluY3RybF9kZXZfZ2V0X2RydmRhdGEocGN0bGRldik7
Cj4gICAgICAgICBzdHJ1Y3Qgcm9ja2NoaXBfcGluX2JhbmsgKmJhbms7Cj4KPiAgICAgICAgIGJh
bmsgPSBwaW5fdG9fYmFuayhpbmZvLCBvZmZzZXQpOwo+ICAgICAgICAgcmV0dXJuIHJvY2tjaGlw
X3NldF9tdXgoYmFuaywgb2Zmc2V0IC0gYmFuay0+cGluX2Jhc2UsIFJLX0ZVTkNfR1BJTyk7Cj4g
fQo+Cj4gcmVhbGx5IG9ubHkgZXZlciB0b3VjaGVzIHRoZSBwaW5tdXggYW5kIGhhcyBub3RoaW5n
IHRvIGRvIHdpdGggc2V0dGluZwo+IHRoZSBkaXJlY3Rpb24sIHdoaWNoIGlzIHNvbGVseSB0aGUg
dGFzayBvZiB0aGUgZ3Bpby1jb250cm9sbGVyLy1kcml2ZXIuCj4KPiBTbyBtb3ZpbmcgdGhhdCB0
byB0aGUgcmVxdWVzdCBjYWxsYmFjayB3b3VsZCBsaWtlbHkgc29sdmUgYWxsIG91ciBjdXJyZW50
Cj4gcHJvYmxlbXM/Cj4KPiBIZWlrbwo+Cj4KPgoKSWYgdGhhdCBmaXhlcyB0aGUgaXNzdWUsIGFs
bG93cyB1cyB0byByZXZlcnQgY2Fuc2xlZXAgdG8gZmFsc2UgYW5kCmRvZXNuJ3QgY2F1c2UgYW55
IHByb2JsZW1zIC0geWVzLCBmb3Igc3VyZS4KCkRvIHlvdSB3YW50IHRvIHNlbmQgYSBwYXRjaD8K
CkJhcnRvc3oKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
