Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B7F9D30CFD
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jan 2026 01:35:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JyzMq/9jKrep6Oy2L7LNicVu/a44sYI3Ke7CioyOtgg=; b=YVOxTDxI8UNbwc
	GEjvvlJSKmDGoOB0fm+islPgtpXdbsJlK5zRc9haTJw/AFm5pFj4Heq36I7FJWErbMOqvJ9JPWRO/
	T0p9zIbASTxyFO9scIA4ge7BKxPZHIZbsNDLJAr3aRtRRXkzRBG/aYllJNUIKuxGzJZyXrQS2/nPb
	0mT3eF1BwkOCIsXR2gN8WHxOA/HU1i5ij2APtpHOwkQjxSU3vLhyQ64y5aDa+0csYtLMw1OO9Y5IY
	/CSbY/ccN3fNMEnCeFGLXNtzHWuwI5LpXeXlMfvc5WNKIiLMASZ5ZA9/kPmdCT5KWTdR3/+Y4I9CH
	iV99TnZD4zyf1f3NsDKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfpmj-00000007wiG-0O5E;
	Wed, 14 Jan 2026 01:34:57 +0000
Received: from mail-m3272.qiye.163.com ([220.197.32.72])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfpmf-00000007whu-3fXu
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Jan 2026 01:34:55 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 308ba407a;
	Wed, 14 Jan 2026 09:34:47 +0800 (GMT+08:00)
Message-ID: <1d37cfd0-9f7d-4d76-89ed-798c0a74e737@rock-chips.com>
Date: Wed, 14 Jan 2026 09:34:47 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, FUKAUMI Naoki <naoki@radxa.com>,
 Marco Schirrmeister <mschirrmeister@gmail.com>,
 John Clark <inindev@gmail.com>, Tianling Shen <cnsztl@gmail.com>,
 Detlev Casanova <detlev.casanova@collabora.com>
Subject: Re: [PATCH v2 2/3] soc: rockchip: grf: Support multiple grf to be
 handled
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
References: <1768267105-127385-1-git-send-email-shawn.lin@rock-chips.com>
 <1768267105-127385-3-git-send-email-shawn.lin@rock-chips.com>
 <1906413.BzM5BlMlMQ@diego>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <1906413.BzM5BlMlMQ@diego>
X-HM-Tid: 0a9bba241d8c09cckunm1a0062cb4258e8
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ08ZHlYaGU5LSRgdGUkYGUtWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	xVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=dxpzBcNcsDZpDP0fFm1eM6xr6VUHHOrYerFdzSBXc5rBTCzo0Svt+aKJKfZX6PgoLTC6joeCRztiH7rJGaQDT79hQgzgBtEc/jLrYWJ1KkO75jbpZfeVEu1yH7xd+QZ3LdjuU+RfnYXVpQqIU5TgJoDShCX+ONZ9ziae8no2KMA=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=eLLLL3EGNXyO3a3fdg3PFPHxX91Uc6ZtPLkE1izmkQc=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_173454_094665_B50497CB 
X-CRM114-Status: GOOD (  20.05  )
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

5ZyoIDIwMjYvMDEvMTQg5pif5pyf5LiJIDE6NDMsIEhlaWtvIFN0w7xibmVyIOWGmemBkzoKPiBI
aSBTaGF3biwKPiAKPiBBbSBEaWVuc3RhZywgMTMuIEphbnVhciAyMDI2LCAwMjoxODoyNCBNaXR0
ZWxldXJvcMOkaXNjaGUgTm9ybWFsemVpdCBzY2hyaWViIFNoYXduIExpbjoKPj4gQ3VycmVudGx5
LCBvbmx5IHRoZSBmaXJzdCBtYXRjaGVkIG5vZGUgd2lsbCBiZSBoYW5kbGVkLiBUaGlzIGxlYWRz
Cj4+IHRvIGp0YWcgc3dpdGNoaW5nIGJyb2tlbiBmb3IgUkszNTc2LCBhcyByazM1NzYtc3lzLWdy
ZiBpcyBmb3VuZCBiZWZvcmUKPj4gcmszNTc2LWlvYy1ncmYuIENoYW5nZSB0aGUgY29kZSB0byBz
Y2FuIGFsbCB0aGUgcG9zc2libGUgbm9kZXMgdG8gZml4Cj4+IHRoZSBwcm9ibGVtLgo+Pgo+PiBG
aXhlczogZTFhYWVjYWNmYTEzICgic29jOiByb2NrY2hpcDogZ3JmOiBBZGQgcmszNTc2IGRlZmF1
bHQgR1JGIHZhbHVlcyIpCj4+IENjOiBEZXRsZXYgQ2FzYW5vdmEgPGRldGxldi5jYXNhbm92YUBj
b2xsYWJvcmEuY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2Nr
LWNoaXBzLmNvbT4KPj4gLS0tCj4+Cj4+IENoYW5nZXMgaW4gdjI6Cj4+IC0gdXNlIGZvcl9lYWNo
X21hdGNoaW5nX25vZGVfYW5kX21hdGNoKEhlaWtvKQo+Pgo+PiAgIGRyaXZlcnMvc29jL3JvY2tj
aGlwL2dyZi5jIHwgNTQgKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAyNyBpbnNlcnRpb25zKCspLCAyNyBkZWxldGlvbnMo
LSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc29jL3JvY2tjaGlwL2dyZi5jIGIvZHJpdmVy
cy9zb2Mvcm9ja2NoaXAvZ3JmLmMKPj4gaW5kZXggODk3NGQxYy4uOWIzNjM5MCAxMDA2NDQKPj4g
LS0tIGEvZHJpdmVycy9zb2Mvcm9ja2NoaXAvZ3JmLmMKPj4gKysrIGIvZHJpdmVycy9zb2Mvcm9j
a2NoaXAvZ3JmLmMKPj4gQEAgLTIxNywzNCArMjE3LDM0IEBAIHN0YXRpYyBpbnQgX19pbml0IHJv
Y2tjaGlwX2dyZl9pbml0KHZvaWQpCj4+ICAgCXN0cnVjdCByZWdtYXAgKmdyZjsKPj4gICAJaW50
IHJldCwgaTsKPj4gICAKPj4gLQlucCA9IG9mX2ZpbmRfbWF0Y2hpbmdfbm9kZV9hbmRfbWF0Y2go
TlVMTCwgcm9ja2NoaXBfZ3JmX2R0X21hdGNoLAo+PiAtCQkJCQkgICAgICZtYXRjaCk7Cj4+IC0J
aWYgKCFucCkKPj4gLQkJcmV0dXJuIC1FTk9ERVY7Cj4+IC0JaWYgKCFtYXRjaCB8fCAhbWF0Y2gt
PmRhdGEpIHsKPj4gLQkJcHJfZXJyKCIlczogbWlzc2luZyBncmYgZGF0YVxuIiwgX19mdW5jX18p
Owo+PiArCWZvcl9lYWNoX21hdGNoaW5nX25vZGVfYW5kX21hdGNoKG5wLCByb2NrY2hpcF9ncmZf
ZHRfbWF0Y2gsICZtYXRjaCkgewo+PiArCQlpZiAoIW9mX2RldmljZV9pc19hdmFpbGFibGUobnAp
KQo+PiArCQkJY29udGludWU7Cj4+ICsJCWlmICghbWF0Y2ggfHwgIW1hdGNoLT5kYXRhKSB7Cj4+
ICsJCQlwcl9lcnIoIiVzOiBtaXNzaW5nIGdyZiBkYXRhXG4iLCBfX2Z1bmNfXyk7Cj4+ICsJCQlv
Zl9ub2RlX3B1dChucCk7Cj4+ICsJCQlyZXR1cm4gLUVJTlZBTDsKPj4gKwkJfQo+PiArCj4+ICsJ
CWdyZl9pbmZvID0gbWF0Y2gtPmRhdGE7Cj4+ICsKPj4gKwkJZ3JmID0gc3lzY29uX25vZGVfdG9f
cmVnbWFwKG5wKTsKPj4gICAJCW9mX25vZGVfcHV0KG5wKTsKPiAKPiBUaGlzIG9mX25vZGVfcHV0
IGNhbiBnbyBhd2F5IEkgdGhpbmsuCj4gCj4gZm9yX2VhY2hfbWF0Y2hpbmdfbm9kZV9hbmRfbWF0
Y2ggaXRlcmF0ZXMgb3ZlciB0aGUgbm9kZXMgdmlhCj4gCW9mX2ZpbmRfbWF0Y2hpbmdfbm9kZV9h
bmRfbWF0Y2goZG4sIG1hdGNoZXMsIG1hdGNoKSAgIFswXQo+IAo+IGFuZCBvZl9maW5kX21hdGNo
aW5nX25vZGVfYW5kX21hdGNoKCkgd2lsbCBvZl9ub2RlX3B1dCgpIHRoZSBmcm9tIG5vZGUgWzFd
Cj4gCj4gCgpPb3BzLCB3aWxsIGZpeC4KClRoYW5rcy4KCj4gSGVpa28KPiAKPiBbMF0gaHR0cHM6
Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjYuMTguNC9zb3VyY2UvaW5jbHVkZS9saW51eC9v
Zi5oI0wxNDY5Cj4gWzFdIGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y2LjE4LjQv
c291cmNlL2RyaXZlcnMvb2YvYmFzZS5jI0wxMTQ3Cj4gCj4+IC0JCXJldHVybiAtRUlOVkFMOwo+
PiAtCX0KPj4gLQo+PiAtCWdyZl9pbmZvID0gbWF0Y2gtPmRhdGE7Cj4+IC0KPj4gLQlncmYgPSBz
eXNjb25fbm9kZV90b19yZWdtYXAobnApOwo+PiAtCW9mX25vZGVfcHV0KG5wKTsKPj4gLQlpZiAo
SVNfRVJSKGdyZikpIHsKPj4gLQkJcHJfZXJyKCIlczogY291bGQgbm90IGdldCBncmYgc3lzY29u
XG4iLCBfX2Z1bmNfXyk7Cj4+IC0JCXJldHVybiBQVFJfRVJSKGdyZik7Cj4+IC0JfQo+PiAtCj4+
IC0JZm9yIChpID0gMDsgaSA8IGdyZl9pbmZvLT5udW1fdmFsdWVzOyBpKyspIHsKPj4gLQkJY29u
c3Qgc3RydWN0IHJvY2tjaGlwX2dyZl92YWx1ZSAqdmFsID0gJmdyZl9pbmZvLT52YWx1ZXNbaV07
Cj4+IC0KPj4gLQkJcHJfZGVidWcoIiVzOiBhZGp1c3RpbmcgJXMgaW4gJSM2eCB0byAlIzEweFxu
IiwgX19mdW5jX18sCj4+IC0JCQl2YWwtPmRlc2MsIHZhbC0+cmVnLCB2YWwtPnZhbCk7Cj4+IC0J
CXJldCA9IHJlZ21hcF93cml0ZShncmYsIHZhbC0+cmVnLCB2YWwtPnZhbCk7Cj4+IC0JCWlmIChy
ZXQgPCAwKQo+PiAtCQkJcHJfZXJyKCIlczogd3JpdGUgdG8gJSM2eCBmYWlsZWQgd2l0aCAlZFxu
IiwKPj4gLQkJCSAgICAgICBfX2Z1bmNfXywgdmFsLT5yZWcsIHJldCk7Cj4+ICsJCWlmIChJU19F
UlIoZ3JmKSkgewo+PiArCQkJcHJfZXJyKCIlczogY291bGQgbm90IGdldCBncmYgc3lzY29uXG4i
LCBfX2Z1bmNfXyk7Cj4+ICsJCQlyZXR1cm4gUFRSX0VSUihncmYpOwo+PiArCQl9Cj4+ICsKPj4g
KwkJZm9yIChpID0gMDsgaSA8IGdyZl9pbmZvLT5udW1fdmFsdWVzOyBpKyspIHsKPj4gKwkJCWNv
bnN0IHN0cnVjdCByb2NrY2hpcF9ncmZfdmFsdWUgKnZhbCA9ICZncmZfaW5mby0+dmFsdWVzW2ld
Owo+PiArCj4+ICsJCQlwcl9kZWJ1ZygiJXM6IGFkanVzdGluZyAlcyBpbiAlIzZ4IHRvICUjMTB4
XG4iLCBfX2Z1bmNfXywKPj4gKwkJCQl2YWwtPmRlc2MsIHZhbC0+cmVnLCB2YWwtPnZhbCk7Cj4+
ICsJCQlyZXQgPSByZWdtYXBfd3JpdGUoZ3JmLCB2YWwtPnJlZywgdmFsLT52YWwpOwo+PiArCQkJ
aWYgKHJldCA8IDApCj4+ICsJCQkJcHJfZXJyKCIlczogd3JpdGUgdG8gJSM2eCBmYWlsZWQgd2l0
aCAlZFxuIiwKPj4gKwkJCQkJX19mdW5jX18sIHZhbC0+cmVnLCByZXQpOwo+PiArCQl9Cj4+ICAg
CX0KPj4gICAKPj4gICAJcmV0dXJuIDA7Cj4+Cj4gCj4gCj4gCj4gCj4gCj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKPiBMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
