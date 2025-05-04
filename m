Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB164C369DC
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 May 2025 08:10:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v3aUny9+ZhzGFjxfFD2UcwdBdHRvNDgD5VaGA1EQJR8=; b=ZtRari9AOczJTO
	/fDUmpyTfyOyM55/YXMMhOi0vnfDu1NhAG6l0m0JxmwnpwqtkaH57GGLOnEKab9ggn3C/43Ox+5DZ
	ouIN/icbylDLmp9PP2NZp6QNtx2f9lPmAIdYZS57uxXw5ElkKc7Gr1iQtUDthKDFWNsmN9MYKkhpX
	MDSsGa9Nt0d0nYLOZ6kRhvZTEyP/LEO9DsdFAxAUk6+ykhqcphf32XRNsTQ1Ov5pp3iy4ONP88ZKM
	AaT0kK5Vk26nQsFlIj65t4XecTeOkBM7vy4GLqFimXvZzCm08NMC6OWr+1b7kJtqeeWmwiAvyKmkK
	2c5JUkyIytdjJdSfjjeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBUQW-000000050NU-0phH;
	Sun, 04 May 2025 08:10:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBUOX-0000000507I-3CG9;
	Sun, 04 May 2025 08:08:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=mLP3R30hC3fxPu/ombNn8VmQhzKUIdMsoZzomOMeaIc=; b=CBTccOj3ebdyLaZrgxA4aknmOw
	R6+83tJkR8QqIMcWoSaVIyPPMKofb3EaUPoOji0nKrPwRLE2rgXm8S2iSRbv69b0GZ7tKNEYxUbSP
	i+bhJg4/g34NytT+GrHHArCTRAw4EP9lojtdyd0O0/+FH7geg7vhuGVKMqRVYP96wrQfq9rz0LWVz
	UQHalGbPRXHW2ftKJkVtEGXRWMdDId3JgPzboiK8ZpNcTAYcTyKgksZ2tScxbtx0CLXX+nDlW5rbq
	nd3+3aLAdbMOT7zjKdSgf8ZiL6/bAmQ8Wd4Gd7UFVtOR9xBOwCnOtJsQhnD1KuGA6ZYYEza1IRhzO
	PO6pKR5w==;
Received: from i53875bbc.versanet.de ([83.135.91.188] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uBUOQ-0006Ou-II; Sun, 04 May 2025 10:08:10 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: John Clark <inindev@gmail.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 detlev.casanova@collabora.com, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, John Clark <inindev@gmail.com>,
 sebastian.reichel@collabora.com
Subject: Re: [PATCH v1 0/3] Add Luckfox Omni3576 Carrier Board support for RK3576
Date: Sun, 04 May 2025 10:08:09 +0200
Message-ID: <3352030.oiGErgHkdL@diego>
In-Reply-To: <7462454.lOV4Wx5bFT@workhorse>
References: <20250502205533.51744-1-inindev@gmail.com> <7462454.lOV4Wx5bFT@workhorse>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250504_010817_820799_117840E3 
X-CRM114-Status: GOOD (  19.65  )
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

SGksCgpBbSBTb25udGFnLCA0LiBNYWkgMjAyNSwgMDE6Mzk6NTYgTWl0dGVsZXVyb3DDpGlzY2hl
IFNvbW1lcnplaXQgc2NocmllYiBOaWNvbGFzIEZyYXR0YXJvbGk6Cj4gT24gRnJpZGF5LCAyIE1h
eSAyMDI1IDIyOjU1OjMwIENlbnRyYWwgRXVyb3BlYW4gU3VtbWVyIFRpbWUgSm9obiBDbGFyayB3
cm90ZToKPiA+IERpc2FibGVkIGZlYXR1cmVzOgo+ID4gLSBlTU1DOiBOb3QgcG9wdWxhdGVkIG9u
IHRoZSB0ZXN0ZWQgYm9hcmQ7IGJlbGlldmVkIHRvIGJlIGZ1bmN0aW9uYWwgYnV0IGRpc2FibGVk
Lgo+ID4gLSBIRE1JOiBEaXNhYmxlZCBkdWUgdG8gbWFpbmxpbmUgZHJpdmVyIG1hdHVyaXR5IGlz
c3VlcyAoYmFzaWMgMTA4MHAgb3V0cHV0IHdvcmtzOyBhdWRpbyBhbmQgNEsgdW50ZXN0ZWQpLgo+
IAo+IHRoYXQncyBub3QgYSBnb29kIHJlYXNvbiB0byBkaXNhYmxlIHRoZSBub2RlLCBpbiBteSBl
eWVzLiBIRE1JIDIuMCA0SyBvdXRwdXQgCj4gc2hvdWxkIHdvcmsgQUZBSUssIEhETUkgYXVkaW8g
d2lsbCBsYW5kIHdpdGggdGhlIGFscmVhZHkgcG9zdGVkIFNBSSBhdWRpbyAKPiBjb250cm9sbGVy
IHBhdGNoIHNldC4gSXMgdGhlcmUgYW55IHNwZWNpZmljIGlzc3VlIGxpa2UgYW4gU29DIGxvY2st
dXAgeW91IHJhbiAKPiBpbnRvIHRoYXQgaXMga2VlcGluZyB5b3UgZnJvbSBlbmFibGluZyBpdD8g
SWYgc28sIHBsZWFzZSBkbyBsZXQgdGhlIG1haWxpbmcgbGlzdCAKPiBrbm93LgoKQWxzbyBhIG1v
cmUgZ2VuZXJhbCBwb2ludCwgRGV2aWNldHJlZSBpcyBzdXBwb3NlZCB0byBkZXNjcmliZSB0aGUg
aGFyZHdhcmUKYW5kIGJvdGggZW1tYyBhbmQgaGRtaSBkbyB3b3JrIG9uIGEgaHctbGV2ZWwgYW5k
IGhhdmUgcmV2aWV3ZWQgYmluZGluZ3MsCnNvIHRoZSBub2RlIGNhbiBiZSBlbmFibGVkIGFuZCBh
bHNvIGFueSBmdW5jdGlvbmFsaXR5IGltcHJvdmVtZW50IHNob3VsZApqdXN0IGFmZmVjdCB0aGUg
a2VybmVsIGRyaXZlci1zaWRlLgoKQW5kIGluIG15IHRlc3Rpbmcgb24gdGhlIHJrMzU3NiBmaXJl
Zmx5LCBJIGFsc28gZ290IGEgd29ya2luZyAzNDQweDE0NDAKb24gbXkgZGlzcGxheS4gU28gbm90
IGEgZnVsbCA0aywgYnV0IG5lYXJseSB0aGVyZSA6LSkgLgoKCj4gLSBSSzM1NzYgVVNCIFR5cGUt
QyBPVEcgc3R1ZmY6IHRoZSBVU0IgMiBQSFkgZHJpdmVyIG5lZWRlZCBzb21lIGNoYW5nZXMgdG8g
bWFrZQo+ICAgdGhpcyB3b3JrLiBJJ3ZlIHlldCB0byBzZW5kIG91dCB2MiB0aGF0IHJld29ya3Mg
dGhlIHdheSB3ZSBkZXRlY3QgYSB0eXBlLUMKPiAgIHBvcnQsIGJ1dCB0aGF0IHBhcnQgb2YgdGhl
IGNvZGUgaXMgYWxyZWFkeSBkb25lLiBJIHdhcyBiYXNpY2FsbHkganVzdCBsZXR0aW5nCj4gICBp
dCBzdGV3IG9uIG15IGxvY2FsIG1hY2hpbmUgZm9yIGEgYml0IGxvbmdlciB0byBzZWUgaWYgSSBj
YW4gZmlndXJlIG91dCB3aHkKPiAgIHN1cGVyc3BlZWQgb25seSB3b3JrcyBpbiBvbmUgY2FibGUg
b3JpZW50YXRpb24sCgpUaGF0IGlzIHByb2JhYmx5IHRoZSBzYW1lIGlzc3VlLCBJIGhhdmUgb24g
cmszNTg4LCB0aGUgdHlwZS1jIHBoeSBub3QKY2hhbmdpbmcgaXRzIHNldHRpbmdzIGFuZCB3YWl0
aW5nIGZvciB0aGUgZHdjMyB0byByZS1zdGFydCwgd2hpY2ggaXQgbmV2ZXIKZG9lcy4KClNlZSBb
MF0sIFsxXSAuLi4gYnV0IGltcG9ydGFudGx5IE9uZMWZZWogSmlybWFuJ3MgcmVzcG9uc2Ugb24g
d2h5IG15IGFwcHJvYWNoCmlzIHByb2JhYmx5IHdyb25nIFsyXS4KCkF0IHRoaXMgdGltZSwgSSBk
b24ndCBrbm93IHdoZW4gSSBnZXQgYXJvdW5kIHRvIGxvb2sgYXQgdGhhdCBhZ2Fpbiwgc28KaWYg
c29tZW9uZSB3YW50cyB0byBnaXZlIGl0IGEgdHJ5LCBmZWVsIGZyZWUgdG8gOi0pCgoKSGVpa28K
CgpbMF0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDI1MDIyNTE4NDUxOS4zNTg2OTI2LTEt
aGVpa29Ac250ZWNoLmRlClsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjUwMjI2MTAz
ODEwLjM3NDYwMTgtMS1oZWlrb0BzbnRlY2guZGUKWzJdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3Jn
L3IvaDU3b2syaHc2b3M3YmNhZnFrcnFrbmZ2bTdobnUyNW0yb2U1NHFtcnN1emR3cWxvczNAbTRv
Y2gyZmNkbTdzCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
