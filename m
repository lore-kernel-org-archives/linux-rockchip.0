Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2AFA3C47073
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jan 2024 09:51:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QWAICMU1O3AHmdsGt/P0Iatf3gLDAmxGhiXaxvfgkss=; b=HZ1UexLzxhfWFG+AoeTxDTrpA7
	yNp8m4K3pAKOVzU49y1wT+UKuUMSFu4S47lVP5JkTDh0Vbw//D2K059JKzMRenIIHsecPU0/N74og
	2BmNkxxBxZQNAiBn+beT91llVYMMgq2TqcIJmCvROFS4u9dSBZJ/LnxdsRj/ehPxzlSZrND8Rq57O
	ZMibvfH24K4V53cBbgrMb4sgF+lmRYZvSH5by0j3bm/Nxfl4unYPGwYOtgwXNmRcmtF/URYseX+HS
	ZJAjKQkoy0/OruT9Gygd/B1L/x/O6Y4E6oTsy4BLTPLcbHW8GHhR1foW6gPJYMBT+4YuGt/73OILG
	jrUMsR3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLKNM-00DQss-0r;
	Thu, 04 Jan 2024 09:50:56 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLKNI-00DQsL-1X
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Jan 2024 09:50:54 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1704361850;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=SKCg1crxbyktnZXA97ofQeX6Ffy6Llh0q+r73E4x1lw=;
	b=YNQaQ5ulau8XhMWx9FUK67SGO4bRGPpdUFM2bxdxXOz94ASBiGzX01M7F3LuRQjeg/UFsV
	P7N43Rsp4Wgydg4ACumx4sEnL2U2O0TlZxpG+ZasVjbJUSADWZA0yda9BxdACqOdSZ4PN4
	EWIs58DRABlLGInFPCSEU43coMkQZJwA/vCxVgXQ+56EObzxz2no3wliqrSy0opl0C69QC
	YBr9bwWGhXTeVRzhxlrdFUe0M90TDe21O8u8ZMIuGF7MDoC7IH2aOZ7Yza9CZuwhej/7+5
	ycLzVs3idIMnKTqVleopGobGPoYrTVC0vv5NXnrf2QHK2ph/oCInq8i1mnXaiA==
Date: Thu, 04 Jan 2024 10:50:50 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Shantur Rathore <i@shantur.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2] dts: rockpro64: Remove usb regulator-always-on
In-Reply-To: <CABEcMwVwyp0zGvxL0nY3aW1_SFUEh++0bV8qBRZLK1aEpa=NHw@mail.gmail.com>
References: <20231222141616.508073-1-i@shantur.com>
 <2323515.eGJsNajkDb@diego>
 <CABEcMwVwyp0zGvxL0nY3aW1_SFUEh++0bV8qBRZLK1aEpa=NHw@mail.gmail.com>
Message-ID: <72f608668d619bda1cc620ce11eb3e40@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_015053_122123_FF6AD51C 
X-CRM114-Status: GOOD (  19.76  )
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

T24gMjAyNC0wMS0wNCAxMDo0NCwgU2hhbnR1ciBSYXRob3JlIHdyb3RlOgo+IE9uIEZyaSwgRGVj
IDI5LCAyMDIzIGF0IDEwOjA44oCvUE0gSGVpa28gU3TDvGJuZXIgPGhlaWtvQHNudGVjaC5kZT4g
d3JvdGU6Cj4+IEFtIEZyZWl0YWcsIDIyLiBEZXplbWJlciAyMDIzLCAxNToxNjoxNiBDRVQgc2No
cmllYiBTaGFudHVyIFJhdGhvcmU6Cj4+ID4gVVNCIHBvcnQgcmVndWxhdG9ycyBzaG91bGQgYmUg
Y29udHJvbGxlZCBieSBQSFlzCj4+ID4gc28gd2UgcmVtb3ZlIGFsd2F5cy1vbiBwcm9wZXJ0eSBh
bmQgbGV0IFBIWXMgbWFuYWdlIHRoZQo+PiA+IHJlZ3VsYXRvci4KPj4gPgo+PiA+IHBoeS1zdXBw
bHkgaXNuJ3Qgc2NvbmZ1Z3JlZCBmb3IgdGhlIFR5cGVDIHBvcnQgYW5kIG5vdyB0aGF0IHdlIGFy
ZQo+PiAgICAgICAgICAgICAgICAgXl4gY29uZmlndXJlZCA/Cj4+IAo+PiA+IHJlbW92aW5nIHJl
Z3VsYXRvci1hbHdheXMtb24sIHdlIG5lZWQgdG8gZml4IHRoZSBwaHktc3VwcGx5Cj4+ID4gc28g
dGhlIFBIWXMgYXJlIGFibGUgdG8gdHVybiBwb3dlciB0byB0eXBlLWMgcG9ydC4KPj4gPgo+PiA+
IFNlcmllcy12ZXJzaW9uOiAyCj4+ID4KPj4gPiBTaWduZWQtb2ZmLWJ5OiBTaGFudHVyIFJhdGhv
cmUgPGlAc2hhbnR1ci5jb20+Cj4+ID4gLS0tCj4+ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszMzk5LXJvY2twcm82NC5kdHNpIHwgMyArLS0KPj4gPiAgMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspLCAyIGRlbGV0aW9ucygtKQo+PiA+Cj4+ID4gZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2twcm82NC5kdHNpIGIvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0c2kKPj4gPiBpbmRleCBi
Y2EyYjUwZTBhLi5mNzI3M2Y3OTkwIDEwMDY0NAo+PiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszMzk5LXJvY2twcm82NC5kdHNpCj4+ID4gKysrIGIvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0c2kKPj4gPiBAQCAtMTkyLDcgKzE5
Miw2IEBAIHZjYzV2MF9ob3N0OiB2Y2M1djAtaG9zdC1yZWd1bGF0b3Igewo+PiA+ICAgICAgICAg
ICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4gPiAgICAgICAgICAgICAgIHBpbmN0
cmwtMCA9IDwmdmNjNXYwX2hvc3RfZW4+Owo+PiA+ICAgICAgICAgICAgICAgcmVndWxhdG9yLW5h
bWUgPSAidmNjNXYwX2hvc3QiOwo+PiA+IC0gICAgICAgICAgICAgcmVndWxhdG9yLWFsd2F5cy1v
bjsKPj4gPiAgICAgICAgICAgICAgIHZpbi1zdXBwbHkgPSA8JnZjYzV2MF91c2I+Owo+PiA+ICAg
ICAgIH07Cj4+ID4KPj4gPiBAQCAtMjAzLDcgKzIwMiw2IEBAIHZjYzV2MF90eXBlYzogdmNjNXYw
LXR5cGVjLXJlZ3VsYXRvciB7Cj4+ID4gICAgICAgICAgICAgICBwaW5jdHJsLW5hbWVzID0gImRl
ZmF1bHQiOwo+PiA+ICAgICAgICAgICAgICAgcGluY3RybC0wID0gPCZ2Y2M1djBfdHlwZWNfZW4+
Owo+PiA+ICAgICAgICAgICAgICAgcmVndWxhdG9yLW5hbWUgPSAidmNjNXYwX3R5cGVjIjsKPj4g
PiAtICAgICAgICAgICAgIHJlZ3VsYXRvci1hbHdheXMtb247Cj4+ID4gICAgICAgICAgICAgICB2
aW4tc3VwcGx5ID0gPCZ2Y2M1djBfdXNiPjsKPj4gPiAgICAgICB9Owo+PiA+Cj4+ID4gQEAgLTg1
OSw2ICs4NTcsNyBAQCAmdTJwaHkwIHsKPj4gPiAgICAgICBzdGF0dXMgPSAib2theSI7Cj4+ID4K
Pj4gPiAgICAgICB1MnBoeTBfb3RnOiBvdGctcG9ydCB7Cj4+ID4gKyAgICAgICAgICAgICBwaHkt
c3VwcGx5ID0gPCZ2Y2M1djBfdHlwZWM+Owo+PiA+ICAgICAgICAgICAgICAgc3RhdHVzID0gIm9r
YXkiOwo+PiA+ICAgICAgIH07Cj4+IAo+PiBKdXN0IHRvIGV4cGxhaW4gZm9yIG1lLCB3aGF0IGlz
IHN1cHBseWluZyB0aGUgIm90aGVyIiBPVEcgcG9ydAo+PiAgICAgICAgIHUycGh5MV9vdGc6IG90
Zy1wb3J0IHt9Cj4+IAo+PiBpbiB1MnBoeTEgLi4uIHRoaXMgb25lIGlzIHN0YXR1cyBva2F5LCBi
dXQgZG9lcyBub3QgaGF2ZSBhbnkgcGh5Cj4+IHN1cHBseT8KPj4gCj4gSW4gUm9ja1BybzY0IHRo
ZXJlIGlzIG9ubHkgMSBVU0ItQyBPVEcgcG9ydCBhbmQgdGhlIG90aGVyIHBvcnQKPiBpcyBhIFVT
Qi0zLjAgcG9ydC4KPiBUbyBiZSBob25lc3QsIEkgYW0gbm90IDEwMCUgc3VyZSBob3cgdGhpcyBh
bGwgd29ya3MsIGFzIEkgdW5kZXJzdGFuZAo+IHRoZSBVU0IzLjAgcG9ydCBpcyB3aXJlZCB0byB0
aGUgc2Vjb25kIFR5cGVDIFBoeS4KPiAKPiBNYXliZSBEcmFnYW4gaGFzIG1vcmUgaW5mbyBvbiB0
aGlzLgoKSSdsbCBoYXZlIGl0IGNoZWNrZWQgYW5kIHRlc3RlZCBpbiBkZXRhaWwsIG9mIGNvdXJz
ZSwgYnV0IEkgaGF2ZSB0byAKcmVjb3ZlciBmcm9tIHRoaXMgbmFzdHkgZmx1IGZpcnN0LiAgVW5m
b3J0dW5hdGVseSwgaXQgaGFzIHJlbmRlZGVkIG1lIAp1bmFibGUgdG8gZXZlbiB0aGluayBzdHJh
aWdodC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
