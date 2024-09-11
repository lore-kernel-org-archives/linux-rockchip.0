Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B38B5EE57CE
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Sep 2024 18:45:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A1vnwKQZdgDVz3puzcpoYCPK9f9Oj+1pBqg1C9/ZSKo=; b=sJ/KfETkZ6AsQw
	3Ck1CaOCf4/MwwES9ezCdEx8IpBpp0Ga0w8+5i9NP5SxZMiFo+FD/HBoywFYGVo5jdqqcZ00OqE3U
	998scrnG2d3oaKki4/V7dR4cyKKChU++me5UNq763aapOslohCDqHg11Jba+5Y/bY0M2qvkIrDNQh
	Uvm9xEAhxSyxYPJhU+HWEiKZIm3bYaNjBvy+mUpks7Z31/sVuqGJloOgcjMbyn0HrOl2WNhbZApCb
	uDlfg8FRdI9ZLsCqqKgPhdo6ti99l3/cLZ4VrVGOx+X1/Mu7+p87acIPPTI2XbBgCmXJagR2mrWbD
	ksdKeAxW7sVit3jsj9kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soSKw-0000000AgMt-0dtC;
	Wed, 11 Sep 2024 18:45:06 +0000
Received: from a7-40.smtp-out.eu-west-1.amazonses.com ([54.240.7.40])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soSKs-0000000AgMD-1mTy
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Sep 2024 18:45:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=4232tfv5ebdrjdwkr5zzm7kytdkokgug; d=collabora.com; t=1726080298;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:Content-Type:MIME-Version:Content-Transfer-Encoding;
	bh=CR2RtkO2BSHxVxQC+ucikk+G5Cf3fAmUmuV21ZYLYpo=;
	b=ZdboSke0HhoFjztGdp5MMBrBds+Q2D4rn8RIvPzlJyYc72JFvemSvWIPnegYveWV
	kRLfsV8a9fy6IBIXLbUmKsRr5xSSLa3BhAOhhvcQp9+uu4JBKpONs+9x8vqODZGlSLJ
	FNuTX3RtY0LWK+YRTvBi0Gbo/ZWgl9kCHKlNibStQy3wwabHr0gWLckXFmb93F0KA8N
	ra+mecnSwrH47FkzPGPvHJ4Dcmm7lQ7OPcO/awrl9UebjkQJyprrYw3vcj3hj1HD3Vo
	Qrrj8czi0QuaB5IoqvCrNbdXffst+lwyb5rcdAuEKlvF/UvJbDjFVgr3qfDumsuW/VB
	jw0FL3JxTg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=uku4taia5b5tsbglxyj6zym32efj7xqv; d=amazonses.com; t=1726080298;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:Content-Type:MIME-Version:Content-Transfer-Encoding:Feedback-ID;
	bh=CR2RtkO2BSHxVxQC+ucikk+G5Cf3fAmUmuV21ZYLYpo=;
	b=YOOE5Zh2+tRJtL0YwyNnu02LYplS1fSY+2THCVFX3YJCkr/Gpjv1xwPbaOFM9roA
	6dKUEF7MtlPE4mrm7fF6t8KKdcq59nnGQvrmBxlD9OQooLeUZdk/iykdPPK2Q0JVSGe
	+n4xsSIZwSh70UloGWi0VKQ6Oxze0XK6gEms+A90=
Message-ID: <01020191e2672cd9-0b3804cc-def2-4dfb-aa44-8eddbd5e99fb-000000@eu-west-1.amazonses.com>
Subject: Re: [PATCH 2/2] media: verisilicon: add WebP decoding support
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Hugues Fruchet <hugues.fruchet@foss.st.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
	Philipp Zabel <p.zabel@pengutronix.de>, 
	Hans Verkuil <hverkuil-cisco@xs4all.nl>, 
	Fritz Koenig <frkoenig@chromium.org>, 
	Sebastian Fricke <sebastian.fricke@collabora.com>, 
	Daniel Almeida <daniel.almeida@collabora.com>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com
Date: Wed, 11 Sep 2024 18:44:58 +0000
In-Reply-To: <1d02cbe2797053c69ba9d7adb9c666ca221407e0.camel@collabora.com>
References: <20240911135011.161217-1-hugues.fruchet@foss.st.com>
	 <20240911135011.161217-3-hugues.fruchet@foss.st.com>
	 <1d02cbe2797053c69ba9d7adb9c666ca221407e0.camel@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.52.4 (3.52.4-1.fc40) 
MIME-Version: 1.0
Feedback-ID: ::1.eu-west-1.YpP9ZbxnARFfy3Cb5pfsLd/pdsXBCNK0KEM7HforL4k=:AmazonSES
X-SES-Outgoing: 2024.09.11-54.240.7.40
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_114503_102099_BF151EFC 
X-CRM114-Status: GOOD (  24.76  )
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

TGUgbWVyY3JlZGkgMTEgc2VwdGVtYnJlIDIwMjQgw6AgMTM6NTggLTA0MDAsIE5pY29sYXMgRHVm
cmVzbmUgYSDDqWNyaXTCoDoKPiBIaSBIdWd1ZXMsCj4gCj4gTGUgbWVyY3JlZGkgMTEgc2VwdGVt
YnJlIDIwMjQgw6AgMTU6NTAgKzAyMDAsIEh1Z3VlcyBGcnVjaGV0IGEgw6ljcml0wqA6Cj4gPiBB
ZGQgV2ViUCBwaWN0dXJlIGRlY29kaW5nIHN1cHBvcnQgdG8gVlA4IHN0YXRlbGVzcyBkZWNvZGVy
Lgo+IAo+IFVubGVzcyB3aGVuIGl0cyBvYnZpb3VzLCB0aGUgY29tbWl0IG1lc3NhZ2Ugc2hvdWxk
IGV4cGxhaW4gd2hhdCBpcyBiZWluZwo+IGNoYW5nZWQuCj4gCj4gPiAKPiA+IFNpZ25lZC1vZmYt
Ynk6IEh1Z3VlcyBGcnVjaGV0IDxodWd1ZXMuZnJ1Y2hldEBmb3NzLnN0LmNvbT4KPiA+IC0tLQo+
ID4gIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2cxX3JlZ3MuaCAg
ICB8IDEgKwo+ID4gIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2cx
X3ZwOF9kZWMuYyB8IDcgKysrKysrKwo+ID4gIDIgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25z
KCspCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxp
Y29uL2hhbnRyb19nMV9yZWdzLmggYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29u
L2hhbnRyb19nMV9yZWdzLmgKPiA+IGluZGV4IGM2MjNiM2IwYmUxOC4uZTdkNGRiNzg4ZTU3IDEw
MDY0NAo+ID4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9f
ZzFfcmVncy5oCj4gPiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hh
bnRyb19nMV9yZWdzLmgKPiA+IEBAIC0yMzIsNiArMjMyLDcgQEAKPiA+ICAjZGVmaW5lICAgICBH
MV9SRUdfREVDX0NUUkw3X0RDVDdfU1RBUlRfQklUKHgpCQkoKCh4KSAmIDB4M2YpIDw8IDApCj4g
PiAgI2RlZmluZSBHMV9SRUdfQUREUl9TVFIJCQkJCTB4MDMwCj4gPiAgI2RlZmluZSBHMV9SRUdf
QUREUl9EU1QJCQkJCTB4MDM0Cj4gPiArI2RlZmluZSBHMV9SRUdfQUREUl9EU1RfQ0hST01BCQkJ
CTB4MDM4Cj4gPiAgI2RlZmluZSBHMV9SRUdfQUREUl9SRUYoaSkJCQkJKDB4MDM4ICsgKChpKSAq
IDB4NCkpCj4gPiAgI2RlZmluZSAgICAgRzFfUkVHX0FERFJfUkVGX0ZJRUxEX0UJCQlCSVQoMSkK
PiA+ICAjZGVmaW5lICAgICBHMV9SRUdfQUREUl9SRUZfVE9QQ19FCQkJQklUKDApCj4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZzFfdnA4
X2RlYy5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZzFfdnA4
X2RlYy5jCj4gPiBpbmRleCA4NTFlYjY3ZjE5ZjUuLmM2YTc1ODRiNzE2YSAxMDA2NDQKPiA+IC0t
LSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2cxX3ZwOF9kZWMu
Ywo+ID4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZzFf
dnA4X2RlYy5jCj4gPiBAQCAtNDI3LDYgKzQyNywxMSBAQCBzdGF0aWMgdm9pZCBjZmdfYnVmZmVy
cyhzdHJ1Y3QgaGFudHJvX2N0eCAqY3R4LAo+ID4gIAo+ID4gIAlkc3RfZG1hID0gaGFudHJvX2dl
dF9kZWNfYnVmX2FkZHIoY3R4LCAmdmIyX2RzdC0+dmIyX2J1Zik7Cj4gPiAgCXZkcHVfd3JpdGVf
cmVsYXhlZCh2cHUsIGRzdF9kbWEsIEcxX1JFR19BRERSX0RTVCk7Cj4gPiArCj4gPiArCWlmICho
ZHItPmZsYWdzICYgVjRMMl9WUDhfRlJBTUVfRkxBR19XRUJQKQo+ID4gKwkJdmRwdV93cml0ZV9y
ZWxheGVkKHZwdSwgZHN0X2RtYSArCj4gPiArCQkJCSAgIGN0eC0+ZHN0X2ZtdC5oZWlnaHQgKiBj
dHgtPmRzdF9mbXQud2lkdGgsCj4gCj4gSSdtIG5vdCByZWFsbHkgbm90IGZhbiBvZiB0aGF0IHR5
cGUgb2YgZm9ybXVsYSB1c2luZyBwYWRkZWQgd2lkdGgvaGVpZ2h0LiBOb3QKPiBzdXJlIGlmIGl0
cyBzdXBwb3J0ZWQgYWxyZWFkeSwgYnV0IGlmIHdlIGhhdmUgZm9yZWlnbiBidWZmZXJzIHdpdGgg
YSBiaWdnZXIKPiBieXRlc3BlcmxpbmUsIHRoZSBJUCBtYXkgZW5kdXAgb3ZlcndyaXRpbmcgdGhl
IGx1bWEuIFBsZWFzZSB1c2UgdGhlIHBlci1wbGFuZQo+IGJ5dGVzcGVybGluZSwgd2UgaGF2ZSB2
NGwyLWNvbW1vbiB0byBoZWxwIHdpdGggdGhhdCB3aGVuIG5lZWRlZC4KPiA+ICsJCQkJICAgRzFf
UkVHX0FERFJfRFNUX0NIUk9NQSk7Cj4gCj4gSSBoYXZlIGEgc3Ryb25nIGltcHJlc3Npb24gdGhp
cyBwYXRjaCBpcyBpbmNvbXBsZXRlIChub3QgZ2VuZXJpYyBlbm91Z2gpLiBUaGUKPiBkb2N1bWVu
dGF0aW9uIEkgaGF2ZSBpbmRpY2F0ZXMgdGhhdCB0aGUgcmVzb2x1dGlvbiByYW5nZSBmb3IgV2Vi
UCBjYW4gYmUKPiBkaWZmZXJlbnQgZm9yIGRpZmZlcmVudCBzeW50aGVzaXMuIFNlZSBzd3JlZzU0
ICgweGQ4KSwgaWYgYml0IDE5IGlzIHNldCwgdGhlbiBpdAo+IGNhbiBzdXBwb3J0IDE2SyB4IDE2
SyByZXNvbHV0aW9uLiBUaGVyZSBpcyBubyBvdGhlciB3YXkgYXJvdW5kIHRoYXQgdGhlbgo+IHNp
Z25hbGxpbmcgZXhwbGljaXRseSBhdCB0aGUgZm9ybWF0IGxldmVsIHRoYXQgdGhpcyBpcyB3ZWJw
LCBzaW5jZSBvdGhlcndpc2UgeW91Cj4gY2FuJ3Qga25vdyBmcm9tIHVzZXJzcGFjZSBhbmQgY2Fu
J3QgZW51bWVyYXRlIHRoZSBkaWZmZXJlbnQgcmVzb2x1dGlvbi4gSSdtCj4gY3VyaW91cyB3aGF0
IGlzIHRoZSBkaWZmZXJlbmNlIGF0IGJpdHN0cmVhbSBsZXZlbCwgd291bGQgYmUgbmljZSB0byBj
bGFyaWZ5IHRvby4KCkkndmUgYWxzbyBmb3VuZCB0aGF0IHdoZW4gdGhlIFBQIGlzIHVzZWQsIHlv
dSBuZWVkIHRvIGZpbGwgc29tZSBleHRlbmRlZApkaW1lbnNpb24gKFNXUkVHOTIpIHdpdGggdGhl
IG1pc3NpbmcgYml0IG9mIHRoZSB3aWR0aC9oZWlnaHQsIGFzIHRoZSBkaW1lbnNpb24KZG9uJ3Qg
Zml0IHRoZSB1c3VhbCByZWdpc3Rlci4KCk1vcmUgbm90ZXMsIEkgbm90aWNlZCB0aGF0IFdlYlAg
c3VwcG9ydHMgaGF2aW5nIGEgc2Vjb25kIGZyYW1lIGZvciB0aGUgYWxwaGEsCnNpbWlsYXIgdG8g
V2ViTSBBbHBoYSwgZm9yIHRoYXQgd2UgZXhwZWN0IDIgcmVxdWVzdHMsIHNvIG5vIGlzc3VlIG9u
IHRoaXMgZnJvbnQuCldlYlAgTG9zcy1sZXNzIGlzIGEgY29tcGxldGVseSBkaWZmZXJlbnQgY29k
ZWMsIGFuZCBzaG91bGQgaGF2ZSBpdHMgb3duIGZvcm1hdC4KCkkgdGhpbmsgb3ZlcmFsbCwgZnJv
bSBteSByZWFkIG9mIHRoZSBzcGVjLCB0aGF0IGl0cyBub3JtYWwgVlA4LCBidXQgdGhlCnJlc29s
dXRpb24gd2lsbCBleGNlZWQgdGhlIG5vcm1hbCBvbmUuIFdlIGFsc28gY2FuJ3QgYWx3YXlzIGVu
YWJsZSBXZWJQLCBzaW5jZQppdCB3aWxsIGJyZWFrIHJlZmVyZW5jZXMuCgpOaWNvbGFzCgo+IAo+
IE9uIEdTdHJlYW1lciBzaWRlLCB0aGUgZm9ybWF0cyBhcmUgZW50aXJlbHkgc2VwZXJhdGUsIGlt
YWdlL3dlYnAgdnMgdmlkZW8veC12cDgKPiBhcmUgdGhlIG1pbWUgdHlwZXMuIFNlZW1zIGEgbG90
IHNhZmUgdG8ga2VlcCB0aGVzZSB0d28gYXMgc2VwZXJhdGUgZm9ybWF0cy4gVGhleQo+IGNhbiBj
ZXJ0YWlubHkgc2hhcmUgdGhlIHNhbWUgc3RhdGVsZXNzIGZyYW1lIHN0cnVjdHVyZSwgd2l0aCB0
aGUgYWRkaXRpb25hbCBmbGFnCj4gaW1oby4KPiAKPiBOaWNvbGFzCj4gCj4gPiAgfQo+ID4gIAo+
ID4gIGludCBoYW50cm9fZzFfdnA4X2RlY19ydW4oc3RydWN0IGhhbnRyb19jdHggKmN0eCkKPiA+
IEBAIC00NzEsNiArNDc2LDggQEAgaW50IGhhbnRyb19nMV92cDhfZGVjX3J1bihzdHJ1Y3QgaGFu
dHJvX2N0eCAqY3R4KQo+ID4gIAkJcmVnIHw9IEcxX1JFR19ERUNfQ1RSTDBfU0tJUF9NT0RFOwo+
ID4gIAlpZiAoaGRyLT5sZi5sZXZlbCA9PSAwKQo+ID4gIAkJcmVnIHw9IEcxX1JFR19ERUNfQ1RS
TDBfRklMVEVSSU5HX0RJUzsKPiA+ICsJaWYgKGhkci0+ZmxhZ3MgJiBWNEwyX1ZQOF9GUkFNRV9G
TEFHX1dFQlApCj4gPiArCQlyZWcgfD0gRzFfUkVHX0RFQ19DVFJMMF9XRUJQX0U7Cj4gPiAgCXZk
cHVfd3JpdGVfcmVsYXhlZCh2cHUsIHJlZywgRzFfUkVHX0RFQ19DVFJMMCk7Cj4gPiAgCj4gPiAg
CS8qIEZyYW1lIGRpbWVuc2lvbnMgKi8KPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
