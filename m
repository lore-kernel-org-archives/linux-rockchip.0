Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B99F4F55450
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Feb 2026 05:52:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zNxPKBFF/7LR0HIulS1X7teby7NoJnkcaSvKBKt7x90=; b=tX33bBAA3ULpdF
	YlD7MUMnNIwpylK9d6CoScbwaJ8SKLt2XNAMpABO/Xkh6v40kvVhgeKb9bMR9+d1ZpD7kjKkb9vDu
	Blq/DeRYvh1LGw4AEn6iXow41dK2p92J8ZGe/ytLcfnaTFkbx8eyeC58HDA9CssHNMDtTZlSnYXv5
	gJaMotCTUY/w0iwi6pnz4Q1rZv1HYwPJ7sbQz31oGtpEEoZHDtm0RbbFdTPXB1RyNUpDILlaUWIvc
	iRmbiogCcBjG14W2rsurUFo/8/bcEqVTCOxn86N36Q92cjIIVnZwXkIp+f0HQaVik+kmarCcmamx0
	Nv2hGlrCQwwZC1megkDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvUIQ-00000005Rtl-2zT6;
	Thu, 26 Feb 2026 05:52:22 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvUIO-00000005RtE-2xnD
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Feb 2026 05:52:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9F5D6436C8;
	Thu, 26 Feb 2026 05:52:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6EB41C19422;
	Thu, 26 Feb 2026 05:52:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772085139;
	bh=KJv+KhOnQPzjrl203LIV1OUF3j0V8ZAYp8XdN+w9afY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mThmtI+gwjJhcciDiC8TN1Z8Gg0cCauuK0uyyi4+j8M5XXq+SaUJ4hDGHT95yM5Uz
	 2Ohi0Sx5XNUENimeuJIbN2rUY4pSQut6vQXvMOdmGjneqNZTXgI32Aab8Vso4uVE3G
	 vBJEgcZi0JQKhiMlr55aRQx26lSJSVZHU7h92LErLE3wQtO0xQVlhA98oxhljGkHNz
	 j5dLIM0CRfeT3/Zi+my6JaFt8xwUINDqTTGsDvK4vRzAIZ+eLFzcOIMrtk0+ewuPVY
	 PdwYJJruPOLtM13Pzei2NjAXiQed6yxOOUO7jRPIcTzudttokqonY2QA61/XjPjkKq
	 COxxWpfq7EXrg==
Date: Thu, 26 Feb 2026 11:22:11 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Ilpo =?utf-8?B?SsOkcnZpbmVu?= <ilpo.jarvinen@linux.intel.com>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org, 
	linux-trace-kernel@vger.kernel.org, linux-doc@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>
Subject: Re: [PATCH v4 1/3] PCI: trace: Add PCI controller LTSSM transition
 tracepoint
Message-ID: <3jdg3jgekf4xrdzr2yg7ufa6anllvlebnkgbwfcchicz7ww6tk@zrm5hn5x4dxz>
References: <1769047340-113287-1-git-send-email-shawn.lin@rock-chips.com>
 <1769047340-113287-2-git-send-email-shawn.lin@rock-chips.com>
 <7d195f03-978a-2d0d-acdf-e583e68377f2@linux.intel.com>
 <2sgfbgsgrbztqadhzz6wf6b7j2lmyzmhwugr3tycsjeaik5xdz@ncehsafpi2y5>
 <75b206bb-7fcd-2f59-4181-1839ba5aa8e4@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <75b206bb-7fcd-2f59-4181-1839ba5aa8e4@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_215220_792046_44AD33AD 
X-CRM114-Status: GOOD (  31.09  )
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

T24gVHVlLCBGZWIgMjQsIDIwMjYgYXQgMDU6NDY6MjlQTSArMDIwMCwgSWxwbyBKw6RydmluZW4g
d3JvdGU6Cj4gT24gVHVlLCAyNCBGZWIgMjAyNiwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtIHdyb3Rl
Ogo+IAo+ID4gT24gVHVlLCBGZWIgMjQsIDIwMjYgYXQgMDU6MjI6MzVQTSArMDIwMCwgSWxwbyBK
w6RydmluZW4gd3JvdGU6Cj4gPiA+IE9uIFRodSwgMjIgSmFuIDIwMjYsIFNoYXduIExpbiB3cm90
ZToKPiA+ID4gCj4gPiA+ID4gU29tZSBwbGF0Zm9ybXMgbWF5IHByb3ZpZGUgTFRTU00gdHJhY2Ug
ZnVuY3Rpb25hbGl0eSwgcmVjb3JkaW5nIGhpc3RvcmljYWwKPiA+ID4gPiBMVFNTTSBzdGF0ZSB0
cmFuc2l0aW9uIGluZm9ybWF0aW9uLiBUaGlzIGlzIHZlcnkgdXNlZnVsIGZvciBkZWJ1Z2dpbmcs
IHN1Y2gKPiA+ID4gPiBhcyB3aGVuIGNlcnRhaW4gZGV2aWNlcyBjYW5ub3QgYmUgcmVjb2duaXpl
ZCBvciBsaW5rIGJyb2tlbiBkdXJpbmcgdGVzdC4KPiA+ID4gPiBJbXBsZW1lbnQgdGhlIHBjaSBj
b250cm9sbGVyIHRyYWNlcG9pbnQgZm9yIHJlY29yZGluZyBMVFNTTSBhbmQgcmF0ZS4KPiA+ID4g
PiAKPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBz
LmNvbT4KPiA+ID4gPiAtLS0KPiA+ID4gPiAKPiA+ID4gPiBDaGFuZ2VzIGluIHY0Ogo+ID4gPiA+
IC0gdXNlIFRSQUNFX0VWRU5UX0ZOIHRvIG5vdGlmeSB3aGVuIHRvIHN0YXJ0IGFuZCBzdG9wIHRo
ZSB0cmFjZXBvaW50LAo+ID4gPiA+ICAgYW5kIGV4cG9ydCBwY2lfbHRzc21fdHBfZW5hYmxlZCgp
IGZvciBob3N0IGRyaXZlcnMgdG8gdXNlCj4gPiA+ID4gCj4gPiA+ID4gQ2hhbmdlcyBpbiB2MzoK
PiA+ID4gPiAtIGFkZCBUUkFDRV9ERUZJTkVfRU5VTSBmb3IgYWxsIGVudW1zKFN0ZXZlbiBSb3N0
ZWR0KQo+ID4gPiA+IAo+ID4gPiA+IENoYW5nZXMgaW4gdjI6IE5vbmUKPiA+ID4gPiAKPiA+ID4g
PiAgZHJpdmVycy9wY2kvdHJhY2UuYyAgICAgICAgICAgICAgICAgICB8IDIwICsrKysrKysrKysr
Kwo+ID4gPiA+ICBpbmNsdWRlL2xpbnV4L3BjaS5oICAgICAgICAgICAgICAgICAgIHwgIDQgKysr
Cj4gPiA+ID4gIGluY2x1ZGUvdHJhY2UvZXZlbnRzL3BjaV9jb250cm9sbGVyLmggfCA1NyArKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ID4gPiA+ICAzIGZpbGVzIGNoYW5nZWQs
IDgxIGluc2VydGlvbnMoKykKPiA+ID4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvdHJh
Y2UvZXZlbnRzL3BjaV9jb250cm9sbGVyLmgKPiA+ID4gPiAKPiA+ID4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9wY2kvdHJhY2UuYyBiL2RyaXZlcnMvcGNpL3RyYWNlLmMKPiA+ID4gPiBpbmRleCBj
ZjExYWJjLi5kMzUxYTUxIDEwMDY0NAo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvcGNpL3RyYWNlLmMK
PiA+ID4gPiArKysgYi9kcml2ZXJzL3BjaS90cmFjZS5jCj4gPiA+ID4gQEAgLTksMyArOSwyMyBA
QAo+ID4gPiA+ICAKPiA+ID4gPiAgI2RlZmluZSBDUkVBVEVfVFJBQ0VfUE9JTlRTCj4gPiA+ID4g
ICNpbmNsdWRlIDx0cmFjZS9ldmVudHMvcGNpLmg+Cj4gPiA+ID4gKyNpbmNsdWRlIDx0cmFjZS9l
dmVudHMvcGNpX2NvbnRyb2xsZXIuaD4KPiA+ID4gPiArCj4gPiA+ID4gK3N0YXRpYyBhdG9taWNf
dCBwY2llX2x0c3NtX3RwX2VuYWJsZWQgPSBBVE9NSUNfSU5JVCgwKTsKPiA+ID4gPiArCj4gPiA+
ID4gK2Jvb2wgcGNpX2x0c3NtX3RwX2VuYWJsZWQodm9pZCkKPiA+ID4gPiArewo+ID4gPiA+ICsJ
cmV0dXJuIGF0b21pY19yZWFkKCZwY2llX2x0c3NtX3RwX2VuYWJsZWQpID4gMDsKPiA+ID4gPiAr
fQo+ID4gPiA+ICtFWFBPUlRfU1lNQk9MKHBjaV9sdHNzbV90cF9lbmFibGVkKTsKPiA+ID4gPiAr
Cj4gPiA+ID4gK2ludCBwY2lfbHRzc21fdHBfcmVnKHZvaWQpCj4gPiA+ID4gK3sKPiA+ID4gPiAr
CWF0b21pY19pbmMoJnBjaWVfbHRzc21fdHBfZW5hYmxlZCk7Cj4gPiA+ID4gKwlyZXR1cm4gMDsK
PiA+ID4gPiArfQo+ID4gPiA+ICsKPiA+ID4gPiArdm9pZCBwY2lfbHRzc21fdHBfdW5yZWcodm9p
ZCkKPiA+ID4gPiArewo+ID4gPiA+ICsJYXRvbWljX2RlYygmcGNpZV9sdHNzbV90cF9lbmFibGVk
KTsKPiA+ID4gPiArfQo+ID4gPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L3BjaS5oIGIv
aW5jbHVkZS9saW51eC9wY2kuaAo+ID4gPiA+IGluZGV4IGU3Y2I1MjcuLmFjMjVhM2UgMTAwNjQ0
Cj4gPiA+ID4gLS0tIGEvaW5jbHVkZS9saW51eC9wY2kuaAo+ID4gPiA+ICsrKyBiL2luY2x1ZGUv
bGludXgvcGNpLmgKPiA+ID4gPiBAQCAtMjc3MCw2ICsyNzcwLDEwIEBAIHN0YXRpYyBpbmxpbmUg
c3RydWN0IGVlaF9kZXYgKnBjaV9kZXZfdG9fZWVoX2RldihzdHJ1Y3QgcGNpX2RldiAqcGRldikK
PiA+ID4gPiAgfQo+ID4gPiA+ICAjZW5kaWYKPiA+ID4gPiAgCj4gPiA+ID4gKyNpZmRlZiBDT05G
SUdfVFJBQ0lORwo+ID4gPiA+ICtib29sIHBjaV9sdHNzbV90cF9lbmFibGVkKHZvaWQpOwo+ID4g
PiA+ICsjZW5kaWYKPiA+ID4gPiArCj4gPiA+ID4gIHZvaWQgcGNpX2FkZF9kbWFfYWxpYXMoc3Ry
dWN0IHBjaV9kZXYgKmRldiwgdTggZGV2Zm5fZnJvbSwgdW5zaWduZWQgbnJfZGV2Zm5zKTsKPiA+
ID4gPiAgYm9vbCBwY2lfZGV2c19hcmVfZG1hX2FsaWFzZXMoc3RydWN0IHBjaV9kZXYgKmRldjEs
IHN0cnVjdCBwY2lfZGV2ICpkZXYyKTsKPiA+ID4gPiAgaW50IHBjaV9mb3JfZWFjaF9kbWFfYWxp
YXMoc3RydWN0IHBjaV9kZXYgKnBkZXYsCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvdHJh
Y2UvZXZlbnRzL3BjaV9jb250cm9sbGVyLmggYi9pbmNsdWRlL3RyYWNlL2V2ZW50cy9wY2lfY29u
dHJvbGxlci5oCj4gPiA+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiA+ID4gPiBpbmRleCAwMDAw
MDAwLi5kYjRhOTYwCj4gPiA+ID4gLS0tIC9kZXYvbnVsbAo+ID4gPiA+ICsrKyBiL2luY2x1ZGUv
dHJhY2UvZXZlbnRzL3BjaV9jb250cm9sbGVyLmgKPiA+ID4gPiBAQCAtMCwwICsxLDU3IEBACj4g
PiA+ID4gKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wICovCj4gPiA+ID4gKyN1
bmRlZiBUUkFDRV9TWVNURU0KPiA+ID4gPiArI2RlZmluZSBUUkFDRV9TWVNURU0gcGNpX2NvbnRy
b2xsZXIKPiA+ID4gCj4gPiA+IEkgZmluZCBwdXR0aW5nIHRoaXMgaW50byAicGNpX2NvbnRyb2xs
ZXIiIGxpdHRsZSBvZGQgYXMgTFRTU00gaXMgcmVsYXRlZCAKPiA+ID4gdG8gUENJZSBsaW5rcy9w
b3J0cy4gVG8gbWUgbG9va3Mgc29tZXRoaW5nIHRoYXQgYmVsb25ncyB0byB0aGUgZXhpc3Rpbmcg
Cj4gPiA+IGluY2x1ZGUvdHJhY2UvZXZlbnRzL3BjaS5oLgo+ID4gCj4gPiBJIHN1Z2dlc3RlZCAn
cGNpX2NvbnRyb2xsZXIuaCcgc2luY2UgdGhlc2UgdHJhY2Vwb2ludHMgYXJlIG9ubHkgZ29pbmcg
dG8gYmUgdXNlZAo+ID4gYnkgdGhlIGNvbnRyb2xsZXIgZHJpdmVycy4gUHV0dGluZyBpdCB1bmRl
ciAncGNpLmgnIHdpbGwgaW1wbHkgdGhhdCB0aGVzZSBjYW4gYmUKPiA+IHVzZWQgYnkgdGhlIGNs
aWVudCBkcml2ZXJzIGFsc28uCj4gCj4gUENJZSByNyBzcGVjIGhhcyBGbGl0IFBlcmZvcm1hbmNl
IE1lYXN1cmVtZW50IEV4dGVuZGVkIENhcGFiaWxpdHkgdGhhdCAKPiBzZWVtcyB0byBoYXZlIHNv
bWV0aGluZyBmb3IgTFRTU00gdHJhY2tpbmcgYW5kIHRob3NlIHNlZW0gbW9yZSBnZW5lcmljIAo+
IHRoYW4ganVzdCBmb3IgY29udHJvbGxlcnMgKEkndmUgbm90IHNwZW50IG11Y2ggdGltZSBvbiB0
cnlpbmcgdG8gZnVsbHkgCj4gdW5kZXJzdGFuZCB0aG9zZSBjYXBhYmlsaXRpZXMsIGp1c3QgcmVj
YWxsZWQgc2VlaW5nIHRoZW0gZWFybGllcikuCj4gCgpFdmVuIHNvLCB3ZSBkb24ndCBrbm93IGhv
dyB0aGF0IGlzIGdvaW5nIHRvIGxvb2sgdW50aWwgc29tZW9uZSBpbXBsZW1lbnRzIGl0LiBTbwpJ
J2QgcHJlZmVyIHdlIHB1dCB0aGlzIGluIHBjaV9jb250cm9sbGVyLmggaW4gdGhlIG1lYW50aW1l
IHRvIGF2b2lkIGNvbmZ1c2lvbi4KV2UgY2FuIGFsd2F5cyBjb21lIGJhY2sgbGF0ZXIgd2hlbiB0
aGUgRmxpdCBiYXNlZCBMVFNTTSB0cmFjaW5nIHBhdGNoIGFwcGVhcnMgaW4KdGhlIGxpc3QuCgot
IE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K61
4K6u4K+NCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
