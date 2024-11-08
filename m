Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23FEDD5C0E6
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Nov 2024 15:11:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6hxTsIHd1YORjV0Mp+n/imOs1vpyerFWRcK4bU6O+2U=; b=Wacq7lTbJFNrh47F/FcroH5SGS
	UP7gHrtoD2SL1xePvmaY/0joevt2QsPsv0GXT3K2mDuR3LokdoPyYnMHNQCvdoj1GimZAPgHinsV4
	TN1nb8cZG5qAUcGK/marGFzxQLSCxAofsBXI58T/OvgvVGPAi4Bh6I/J7rZQ9N1+zNktY950yPE+c
	u4j3l/TaLG8B6AjTTOVqty530B4pZbJ3NejRxzN6hroei5rz9stBM9Nh1jRmNgoDtvu9ddhJsRmuK
	I80LAr5oKKNvMkzXaChEmBFbJ9VInIgizI2NU4S19hQDrC8GrYaxMm9lh5LjVoVAxNmM+pduYQNZH
	oduhqbOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9Qe5-0000000Ayzb-3F2D;
	Fri, 08 Nov 2024 15:11:33 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9Q6W-0000000AsHn-0ANM;
	Fri, 08 Nov 2024 14:36:53 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1731076609;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hyP1F57LEd+5mTUT+FTnx82w2gEdUv9YO30BPIaE8VU=;
	b=NrSNHOvH86y7hlWG6DuH+NoSXK7BlZNTXBQzYJWpo9NCd7ZHolaaFE4jUsHCWM+abUqeGZ
	1u8lpgYqDyWfy9JyH2xIZ5BGOUgTbwjk7AC99yKH/dbXBUh9rqotapfXPZYdXb4NxRw/0x
	6MoRpuqh29JwbADNCRqrDLU1KymGeqsN19gUhxWrKzO0QpeVmSOO+O9ogbqaa8SvRgqFLU
	H4J2Daclot9SaBZhSCNfgLvE3YvgwgDUN+1JCv5SJ38DrZ1XmexpXrQaAs/lx+Pa7RV/oj
	rnvqiQef7N4H0iqzYvURxiyQYpmrnsTGhytRzNgjGRPvGr/AVOwsbCjra2dgnQ==
Date: Fri, 08 Nov 2024 15:36:49 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
 hjc@rock-chips.com, andy.yan@rock-chips.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 airlied@gmail.com, simona@ffwll.ch, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] drm/rockchip: dsi: Perform trivial code cleanups
In-Reply-To: <c27ab238825451f1c3a4722f39a19531@manjaro.org>
References: <cover.1731073565.git.dsimic@manjaro.org>
 <10558711.nUPlyArG6x@diego> <047164cc6e88dcbc7701cb0e28d564db@manjaro.org>
 <22484879.EfDdHjke4D@diego> <c27ab238825451f1c3a4722f39a19531@manjaro.org>
Message-ID: <0d3723ecfe7889aa8e4b68b961cdffc5@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241108_063652_399267_ACDDCF51 
X-CRM114-Status: GOOD (  22.69  )
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

T24gMjAyNC0xMS0wOCAxNTozMCwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+IE9uIDIwMjQtMTEtMDgg
MTU6MjIsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+PiBBbSBGcmVpdGFnLCA4LiBOb3ZlbWJlciAy
MDI0LCAxNToxMzozMyBDRVQgc2NocmllYiBEcmFnYW4gU2ltaWM6Cj4+PiBPbiAyMDI0LTExLTA4
IDE1OjA5LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPj4+ID4gQW0gRnJlaXRhZywgOC4gTm92ZW1i
ZXIgMjAyNCwgMTU6MDU6MDIgQ0VUIHNjaHJpZWIgRHJhZ2FuIFNpbWljOgo+Pj4gPj4gT24gMjAy
NC0xMS0wOCAxNDo1NiwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4+PiA+PiA+IEFtIEZyZWl0YWcs
IDguIE5vdmVtYmVyIDIwMjQsIDE0OjUzOjU3IENFVCBzY2hyaWViIERyYWdhbiBTaW1pYzoKPj4+
ID4+ID4+IFBlcmZvcm0gYSBmZXcgdHJpdmlhbCBjb2RlIGNsZWFudXBzLCB0byBtYWtlIG9uZSBs
b2dnZWQgbWVzc2FnZSBhIGJpdAo+Pj4gPj4gPj4gbW9yZQo+Pj4gPj4gPj4gY29uc2lzdGVudCB3
aXRoIHRoZSBvdGhlciBsb2dnZWQgbWVzc2FnZXMgYnkgY2FwaXRhbGl6aW5nIGl0cyBmaXJzdAo+
Pj4gPj4gPj4gd29yZCwgYW5kCj4+PiA+PiA+PiB0byBhdm9pZCBsaW5lIHdyYXBwaW5nIGJ5IHVz
aW5nIHRoZSAxMDAtY29sdW1uIHdpZHRoIGJldHRlci4KPj4+ID4+ID4+Cj4+PiA+PiA+PiBObyBp
bnRlbmRlZCBmdW5jdGlvbmFsIGNoYW5nZXMgYXJlIGludHJvZHVjZWQgYnkgdGhlc2UgY29kZSBj
bGVhbnVwcy4KPj4+ID4+ID4+Cj4+PiA+PiA+PiBTaWduZWQtb2ZmLWJ5OiBEcmFnYW4gU2ltaWMg
PGRzaW1pY0BtYW5qYXJvLm9yZz4KPj4+ID4+ID4+IC0tLQo+Pj4gPj4gPj4gIGRyaXZlcnMvZ3B1
L2RybS9yb2NrY2hpcC9kdy1taXBpLWRzaS1yb2NrY2hpcC5jIHwgMTIgKysrKy0tLS0tLS0tCj4+
PiA+PiA+PiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkK
Pj4+ID4+ID4+Cj4+PiA+PiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlw
L2R3LW1pcGktZHNpLXJvY2tjaGlwLmMKPj4+ID4+ID4+IGIvZHJpdmVycy9ncHUvZHJtL3JvY2tj
aGlwL2R3LW1pcGktZHNpLXJvY2tjaGlwLmMKPj4+ID4+ID4+IGluZGV4IDU4YTQ0YWYwZTlhZC4u
ZjQ1MWU3MGVmYmRkIDEwMDY0NAo+Pj4gPj4gPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tj
aGlwL2R3LW1pcGktZHNpLXJvY2tjaGlwLmMKPj4+ID4+ID4+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9yb2NrY2hpcC9kdy1taXBpLWRzaS1yb2NrY2hpcC5jCj4+PiA+PiA+PiBAQCAtMTM3OSw3ICsx
Mzc5LDcgQEAgc3RhdGljIGludCBkd19taXBpX2RzaV9yb2NrY2hpcF9wcm9iZShzdHJ1Y3QKPj4+
ID4+ID4+IHBsYXRmb3JtX2RldmljZSAqcGRldikKPj4+ID4+ID4+ICAJfQo+Pj4gPj4gPj4KPj4+
ID4+ID4+ICAJaWYgKCFkc2ktPmNkYXRhKSB7Cj4+PiA+PiA+PiAtCQlEUk1fREVWX0VSUk9SKGRl
diwgIm5vIGRzaS1jb25maWcgZm9yICVzIG5vZGVcbiIsIG5wLT5uYW1lKTsKPj4+ID4+ID4+ICsJ
CURSTV9ERVZfRVJST1IoZGV2LCAiTm8gZHNpLWNvbmZpZyBmb3IgJXMgbm9kZVxuIiwgbnAtPm5h
bWUpOwo+Pj4gPj4gPgo+Pj4gPj4gPiB0aGlzIGlzIGFsbCBwcm9iZS1yZWxhdGVkLCB3aHkgbm90
IGNvbnZlcnQgdG8gZGV2X2Vycl9wcm9iZT8KPj4+ID4+ID4KPj4+ID4+ID4gQXMgdGhlIGRvYyBz
dGF0ZXMgWzBdLCBEUk1fREVWX0VSUk9SIGlzIGRlcHJlY2F0ZWQgaW4gZmF2b3Igb2YgZGV2X2Vy
ci4KPj4+ID4+ID4gU28gZGV2X2Vycl9wcm9iZSB3b3VsZCBiZSB0aGUgY29ycmVjdCB3YXkgdG8g
Z28/Cj4+PiA+Pgo+Pj4gPj4gVGhhbmtzIGZvciB5b3VyIHF1aWNrIHJlc3BvbnNlISAgU2VlaW5n
IHRoYXQgRFJNX0RFVl9FUlJPUigpIGlzIG5vdwo+Pj4gPj4gZGVwcmVjYXRlZCAod2hpY2ggSSBv
cmlnaW5hbGx5IG1pc3NlZCwgaW4gYWxsIGhvbmVzdHkpIG1ha2VzIG1lIHZlcnkKPj4+ID4+IGhh
cHB5LiA6KSAgSSd2ZSBuZXZlciBiZWVuIGEgaHVnZSBmYW4gb2YgdGhlIGZvcm1hdCBvZiB0aGUg
bWVzc2FnZXMKPj4+ID4+IHRoYXQgRFJNX0RFVl9FUlJPUigpIHByb2R1Y2VzLgo+Pj4gPj4KPj4+
ID4+IEhvd2V2ZXIsIHBlcmhhcHMgaXQgd291bGQgYmUgYmV0dGVyIHRvIGtlZXAgdGhlc2UgcGF0
Y2hlcyBhcy1pcywgYXMKPj4+ID4+IHNvbWUga2luZCBvZiBhbiBpbnRlcm1lZGlhdGUsIGxpbWl0
ZWQtc2NvcGUgY2xlYW51cCArIGJ1Z2ZpeCBjb21ibywKPj4+ID4+IGFuZCBsZWF2ZSB0aGUgY29t
cGxldGUgRFJNX0RFVl9FUlJPUigpIC0tPiBkZXZfZXJyKCkvZGV2X2Vycl9wcm9iZSgpCj4+PiA+
PiBjb252ZXJzaW9uIHRvIHNlcGFyYXRlIHBhdGNoZXMuICBJIHRoaW5rIGl0IHdvdWxkIGJlIGJl
dHRlciB0byBhdm9pZAo+Pj4gPj4gYSBwYXJ0aWFsIGNvbnZlcnNpb24sIGFuZCBJJ2xsIGJlIG1v
cmUgdGhhbiBoYXBweSB0byBwdXQgdGhlIGNvbXBsZXRlCj4+PiA+PiBjb252ZXJzaW9uIG9uIG15
IFRPRE8gbGlzdC4gOikKPj4+ID4KPj4+ID4gQnV0IHlvdXIgcGF0Y2gtMiByZWFsbHkganVzdCBv
cGVuLWNvZGVzLCB3aGF0IGRldl9lcnJfcHJvYmUgaXMgbWVhbnQKPj4+ID4gdG8gZml4LiBTbyB3
aXRoIGdvaW5nIHRoaXMgd2F5LCB5b3UncmUgc29ydCBvZiBtYWtpbmcgdGhpbmdzIHdvcnNlCj4+
PiA+IGZpcnN0LAo+Pj4gPiB1bnRpbCB0aGF0IHNlY29uZCBzdGVwIGhhcHBlbnMuCj4+PiA+Cj4+
PiA+IFNpbWlsYXJseSwgcmVmbG93aW5nIGxpbmVzIGZvciB0aGluZ3MgdGhhdCBnZXQgcmVtb3Zl
ZCBpbiBhIHdlZWsgZG8gbm90Cj4+PiA+IHNlcnZlIGEgcHVycG9zZSAtIHRob3NlIGxpbmUtYnJl
YWtzIGhhdmUgYmVlbiB0aGF0IHdheSBmb3IgeWVhcnMKPj4+ID4gYWxyZWFkeS4KPj4+IAo+Pj4g
SG1tLCBpdCBtYWtlcyBzZW5zZSB3aGVuIGRlc2NyaWJlZCB0aGF0IHdheS4gIEknbGwgc2VlIHRv
IHBlcmZvcm0gdGhlCj4+PiBjb21wbGV0ZSBjb252ZXJzaW9uIGluIHRoZSBuZXh0IGZldyBkYXlz
Lgo+PiAKPj4ganVzdCBhIG5vdGUsIGFzIHdyaXR0ZW4gb24gSVJDIGVhcmxpZXIsIEkgYW0gc2l0
dGluZyBvbiBhIAo+PiBkZXZfZXJyX3Byb2JlCj4+IGNvbnZlcnNpb24gZm9yIGR3LWRzaS1yb2Nr
Y2hpcC4KPj4gCj4+IEkgd2FzIHdhaXRpbmcgdG8gc2VlIGlmIG1vcmUgY2xlYW51cHMgdHVybmVk
IHVwLCBzbyBkaWRuJ3Qgc2VudCB0aGF0IAo+PiB5ZXQuCj4+IAo+PiBEb24ndCB3YW50IHRvIHN0
ZWFsIHlvdXIgc3BvdGxpZ2h0IHRob3VnaCwgc28gbm90IHN1cmUgaWYgSSBzaG91bGQgCj4+IHNl
bmQKPj4gdGhhdCBvciB3YWl0IGZvciB5b3VyIGNvbnZlcnNpb24gOy0pCj4gCj4gSSBzZWUgbm8g
cmVhc29ucyB3aHkgc2hvdWxkIHdlIGR1cGxpY2F0ZSBzb21lIGVmZm9ydC4gOikgIElmIHlvdSdy
ZQo+IGFscmVhZHkgbmVhcmluZyB0aGUgZmlsZS1sZXZlbCBjb252ZXJzaW9uIHRvIGl0cyBjb21w
bGV0aW9uLCBwbGVhc2UKPiBmZWVsIGZyZWUgdG8gc2VuZCBpdCwgYW5kIHdlIGNhbiBkcm9wIHRo
aXMgc2VyaWVzLiA6KQoKU29ycnksIEkgd2Fzbid0IGNsZWFyIGVub3VnaC4gIFdoZW4gSSB3cm90
ZSAid2UgY2FuIGRyb3AgdGhpcyBzZXJpZXMiLApJIGFjdHVhbGx5IHJlZmVycmVkIHRvIHdoYXQg
dGhpcyBzZXJpZXMgbWlnaHQgaGF2ZSB0dXJuZWQgaW50bywgaS5lLgppbnRvIG15IGZpbGUtbGV2
ZWwgY29udmVyc2lvbi4gOikKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
