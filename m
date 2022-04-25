Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 350AAC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 19:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mnvN42YCcdWzK3yxB4mPOS2vt8yCxmpAPYJMPZ9dzOo=; b=KHRbfA/nf6WZ3X
	APhyK3r/hyRRqPag1fZ+mrzzg8lGeivaqNX100x7bNYMfj0iNCUCmAH+6LXYfMy8KAFmOh3uvxn8v
	e7l1R19HkgiRFYnNphC78+ZkGKysc5+itFcjetpScMw6HEHgUDoU+SUeOQ5AdiCxqHiYlyF8bTlkI
	1x6HLH0Y5u9h6YS3meb6roZX59qIBxwOwyJUrf1wODdL+4Xenk6k5MfmtgjecjkVruOIyyvh0KQa0
	frbOFdAiCMtWKUcM3FhdUGbVDUMX5uNfoMrOefnRR0n3vURaMKS5sAhIKqZMPOIi6lhnAaiiE5ZsD
	NzRR2chc0Rrz18/LhT9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj3wY-00B0aI-F7; Mon, 25 Apr 2022 19:00:18 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj3wV-00B0Xf-Gh
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 19:00:17 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: nicolas) with ESMTPSA id 1E5471F43028
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1650913214;
 bh=bg3UhcnZlvv3RfrkW9O8KrBoXkIZozgniP3zQSLLpV8=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=d5YlbhJaQYcd9qYuNgr2Vyn2VsGsbRYC+8jKl1De+8+TUvzBWleYXbUZ1AG9OitPd
 pvSYmNX2z65O2svMCx6vRTO2M3XGqYWk9d12Dm2rR1vuzt9nWfxnUeJ52SMO5WAxcq
 DBLxwG/cdHjqnCEdgXPehtCkD82vJFeJJBnOZ9ObNg7IKsw29i+lFh5pcLiK72Uowj
 mwUbQMLl3JxPvmfppZHKAQoXmOt6vmduM9KXDgV0TOte/RjBDdzt4+5inUiymAi3CZ
 IXCCeNZsVUEwvI6kuZjy/9sEaHiZ1uqj4K90d6rwWCs8OoRCFzRPCO1MA9JwgrSwHG
 aSK8R5YCKraVg==
Message-ID: <bd0b59212d16af5b54c1ad5d89de5ba7b8794fac.camel@collabora.com>
Subject: Re: [PATCH v3 17/24] media: rkvdec: h264: Fix reference frame_num
 wrap for second field
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Hans Verkuil <hverkuil@xs4all.nl>, Ezequiel Garcia
 <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab
 <mchehab@kernel.org>,  Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: kernel@collabora.com, linux-kernel@vger.kernel.org, Jonas Karlman
 <jonas@kwiboo.se>, Ezequiel Garcia <ezequiel@collabora.com>, Sebastian
 Fricke <sebastian.fricke@collabora.com>, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev
Date: Mon, 25 Apr 2022 15:00:02 -0400
In-Reply-To: <0780cc3ddd985f580a5513e5222cdde852e6aaab.camel@collabora.com>
References: <20220405204426.259074-1-nicolas.dufresne@collabora.com>
 <20220405204426.259074-18-nicolas.dufresne@collabora.com>
 <8f6c8a5c-200d-fbbd-0b8a-966d94467aad@xs4all.nl>
 <0780cc3ddd985f580a5513e5222cdde852e6aaab.camel@collabora.com>
User-Agent: Evolution 3.44.0 (3.44.0-1.fc36) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_120015_720770_C0ECD4F1 
X-CRM114-Status: GOOD (  25.55  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

TGUgbHVuZGkgMjUgYXZyaWwgMjAyMiDDoCAxNDo1NSAtMDQwMCwgTmljb2xhcyBEdWZyZXNuZSBh
IMOpY3JpdMKgOgo+IExlIHZlbmRyZWRpIDIyIGF2cmlsIDIwMjIgw6AgMDk6NDMgKzAyMDAsIEhh
bnMgVmVya3VpbCBhIMOpY3JpdMKgOgo+ID4gT24gMDUvMDQvMjAyMiAyMjo0NCwgTmljb2xhcyBE
dWZyZXNuZSB3cm90ZToKPiA+ID4gRnJvbTogSm9uYXMgS2FybG1hbiA8am9uYXNAa3dpYm9vLnNl
Pgo+ID4gPiAKPiA+ID4gV2hlbiBkZWNvZGluZyB0aGUgc2Vjb25kIGZpZWxkIGluIGEgY29tcGxl
bWVudGFyeSBmaWVsZCBwYWlyIHRoZSBzZWNvbmQKPiA+ID4gZmllbGQgaXMgc2hhcmluZyB0aGUg
c2FtZSBmcmFtZV9udW0gd2l0aCB0aGUgZmlyc3QgZmllbGQuCj4gPiA+IAo+ID4gPiBDdXJyZW50
bHkgdGhlIGZyYW1lX251bSBmb3IgdGhlIGZpcnN0IGZpZWxkIGlzIHdyYXBwZWQgd2hlbiBpdCBt
YXRjaGVzIHRoZQo+ID4gPiBmaWVsZCBiZWluZyBkZWNvZGVkLCB0aGlzIGNhdXNlIGlzc3VlcyB0
byBkZWNvZGUgdGhlIHNlY29uZCBmaWVsZCBpbiBhCj4gPiAKPiA+IGNhdXNlIGlzc3VlcyB0byBk
ZWNvZGUgLT4gY2F1c2VkIGlzc3VlcyBkZWNvZGluZwo+ID4gCj4gPiA+IGNvbXBsZW1lbnRhcnkg
ZmllbGQgcGFpci4KPiA+ID4gCj4gPiA+IEZpeCB0aGlzIGJ5IHVzaW5nIGluY2x1c2l2ZSBjb21w
YXJpc29uLCBsZXNzIHRoYW4gb3IgZXF1YWwuCj4gPiAKPiA+IEkgd291bGQgY2hhbmdlIHRoaXMg
bGFzdCBzZW50ZW5jZSB0bzoKPiA+IAo+ID4gCUZpeCB0aGlzIGJ5IHVzaW5nIGluY2x1c2l2ZSBj
b21wYXJpc29uOiAnbGVzcyB0aGFuIG9yIGVxdWFsJy4KPiA+IAo+ID4gSXQgbWFrZXMgaXQgYSBi
aXQgZWFzaWVyIHRvIHBhcnNlLgo+ID4gCj4gPiA+IAo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKb25h
cyBLYXJsbWFuIDxqb25hc0Brd2lib28uc2U+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IE5pY29sYXMg
RHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAY29sbGFib3JhLmNvbT4KPiA+ID4gUmV2aWV3ZWQt
Ynk6IEV6ZXF1aWVsIEdhcmNpYSA8ZXplcXVpZWxAY29sbGFib3JhLmNvbT4KPiA+ID4gUmV2aWV3
ZWQtYnk6IFNlYmFzdGlhbiBGcmlja2UgPHNlYmFzdGlhbi5mcmlja2VAY29sbGFib3JhLmNvbT4K
PiA+ID4gLS0tCj4gPiA+ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy1oMjY0
LmMgfCAyICstCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRp
b24oLSkKPiA+ID4gCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2
ZGVjL3JrdmRlYy1oMjY0LmMgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy1o
MjY0LmMKPiA+ID4gaW5kZXggZjA4MWI0NzYzNDBmLi42MGVhZjA2YjZlMjUgMTAwNjQ0Cj4gPiA+
IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLWgyNjQuYwo+ID4gPiAr
KysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy1oMjY0LmMKPiA+ID4gQEAg
LTc4MSw3ICs3ODEsNyBAQCBzdGF0aWMgdm9pZCBhc3NlbWJsZV9od19ycHMoc3RydWN0IHJrdmRl
Y19jdHggKmN0eCwKPiA+ID4gIAkJCWNvbnRpbnVlOwo+ID4gPiAgCj4gPiA+ICAJCWlmIChkcGJb
aV0uZmxhZ3MgJiBWNEwyX0gyNjRfRFBCX0VOVFJZX0ZMQUdfTE9OR19URVJNIHx8Cj4gPiA+IC0J
CSAgICBkcGJbaV0uZnJhbWVfbnVtIDwgZGVjX3BhcmFtcy0+ZnJhbWVfbnVtKSB7Cj4gPiA+ICsJ
CSAgICBkcGJbaV0uZnJhbWVfbnVtIDw9IGRlY19wYXJhbXMtPmZyYW1lX251bSkgewo+ID4gCj4g
PiBJIHdvbmRlciBpZiBhIGNvbW1lbnQgc2hvdWxkIGJlIGFkZGVkIGhlcmUsIGV4cGxhaW5pbmcg
dGhlIHJlYXNvbiBmb3IgJzw9Jy4KPiA+IAo+ID4gSXQgZG9lc24ndCBzZWVtIG9idmlvdXMgdG8g
bWUuIFVwIHRvIHlvdSwgdGhvdWdoLgo+IAo+IEkgZ3Vlc3MgSSBjb3VsZCwgdGhlIGFsZ28gZm9y
IHdyYXBwaW5nIGluIHRoZSBzcGVjIGlzIChmb3JtdWxhIDgtMjcpOgo+IAo+ICAgICBpZiggRnJh
bWVOdW0gPiBmcmFtZV9udW0gKQo+ICAgICAgICAgRnJhbWVOdW1XcmFwID0gRnJhbWVOdW0g4oiS
IE1heEZyYW1lTnVtCj4gICAgIGVsc2UKPiAgICAgICAgIEZyYW1lTnVtV3JhcCA9IEZyYW1lTnVt
Cj4gCj4gT3VyIGltcGxlbWVudGF0aW9uIGhhcyB0aGUgYnJhbmNoIGNvbmRpdGlvbiBmbGlwIG92
ZXIsIGFuZCB0aGUgZmxpcHBlZCB2ZXJzaW9uIG9mIHRoYXQgaXM6Cj4gCj4gICAgIGlmKCBGcmFt
ZU51bSA8PSBmcmFtZV9udW0gKQo+ICAgICAgICAgRnJhbWVOdW1XcmFwID0gRnJhbWVOdW0KPiAg
ICAgZWxzZQo+ICAgICAgICAgRnJhbWVOdW1XcmFwID0gRnJhbWVOdW0g4oiSIE1heEZyYW1lTnVt
Cj4gCj4gVGhlcmUgaXMgbm8gZGVlcGVyIHJhdGlvbmFsZSBzaW5jZSB3ZSBzaW1wbHkgZm9sbG93
IHRoZSByZWNpcGUgZGVzY3JpYmVkIGluIHRoZQo+IHNwZWMuIFRoaXMgaXMgZG9uZSBzbyB0aGF0
IHdlIGNhbiBzaGFyZSB0aGF0IGNvbmRpdGlvbiB3aXRoIHRoYXQgbG9uZyB0ZXJtCj4gcmVmZXJl
bmNlIGhhbmRsaW5nLgoKTm93IEkgY29tZSB0byByZWFsaXplIHRoYXQgaW4gcGF0Y2ggIlt2Mywx
OS8yNF0gbWVkaWE6IHJrdmRlYy1oMjY0OiBBZGQgZmllbGQKZGVjb2Rpbmcgc3VwcG9ydCIgYWxs
IHRoaXMgY29kZSBpcyByZW1vdmVkLiBUaGlzIGlzIGJlY2F1c2UgdGhlIHdyYXBwaW5nIGlzCmFs
cmVhZHkgZG9uZSBieSB0aGUgcmVmLWJ1aWxkZXIsIHNvIHdoaWxlIGVuYWJsaW5nIGZpZWxkIGRl
Y29kaW5nLCBJIG5vdyB1c2UgdGhlCndyYXBwZWQgdmFsdWUgZnJvbSB0aGUgcmVmIGJ1aWxkZXIu
IEknbSBtb3N0bHkga2VlcGluZyB0aGUgcGF0Y2ggc28gdGhhdCB0aGlzCmZpeCBpcyB3ZWxsIGRv
Y3VtZW50ZWQuIEkgd2lsbCBsZWF2ZSBpdCBsaWtlIHRoaXMgdGhlbi4KCj4gCj4gPiAKPiA+ID4g
IAkJCXBbaV0gPSBkcGJbaV0uZnJhbWVfbnVtOwo+ID4gPiAgCQkJY29udGludWU7Cj4gPiA+ICAJ
CX0KPiA+IAo+ID4gUmVnYXJkcywKPiA+IAo+ID4gCUhhbnMKPiAKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
