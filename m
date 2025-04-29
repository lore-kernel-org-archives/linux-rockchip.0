Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B953AC369DC
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Apr 2025 12:51:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t+WY/WxAqCqY0vyZ0KhY4wBf7nfErvThg4zk877kwOQ=; b=JEfta+fTsUqEsI
	1UFIAyR1Gr/Ff5zUjmGUHZWOnU8YqUjWEkqbLuf9v5K9YuMxxlfk6DHK7KRpyLWbSjDUjliTgQ72f
	+NNqlDDR/fgIBWYyKdLYAC/2G+9Z8LZXXqKGFFQAeVOLt38ta094wKNwgR8yaCenzAKzUo/PBafns
	KUPQXmQz8zpdjq5pB5G1KnbU18wu91wzeu4uwfFRZCaC6rX16JwOZG+8cwN6DEPsyO0wwBu6b0zh+
	/P0Tn9/BPV4u9tt278h8N00zXeYWF8qHp6755q4K3WajiaORuLohGeJfZZFw0Esqr1JL2Kryr1hcd
	Maj1QQuBTziFflNBOQIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9kRC-00000009gir-0Msb;
	Tue, 29 Apr 2025 12:51:50 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9kRA-00000009giR-0jBu
	for linux-rockchip@lists.infradead.org;
	Tue, 29 Apr 2025 12:51:49 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1745931096; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=LP4S9htb/tdPQTA3dqPD4Eu5tvwNdQS9ERqyw4qzqIOVSFZWqRLPR3P03Uqp20uF0+wyoQMIBoe7NlNfw4gts3e4KQafXgjKYpt/Jb+jVD3vhgmMTRgOUMxxxJGRYiozBNE/zbvwOD7yAPKHApCUHE0FsRMFEHzdUH5ci4SFTI0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1745931096; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=wAqddgCvCAXmKLXb0X53fyiZ4qXPPUZR54/Xu7bltQs=; 
	b=DAyh9eHU8Fl/fxMo2EBlE00D71Yb1Wiwc1Yb0lkBwAOQRu5ZFUBq7oLbqmPEKmwqg2qqHLM4j5uejbanXByLdLyN3+hg3/xYbJEfykwpJd+rr75d7OzjoaZYQdaTBDihqjJ5tQfHS+iQuYUnhA90irck6RFMBkSOhTsHgPN+UY4=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1745931096;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=wAqddgCvCAXmKLXb0X53fyiZ4qXPPUZR54/Xu7bltQs=;
	b=Dn7mn+UJnXsXb8xFEEs9Tsu9KdhEDs9rWgBgndz7C+uX1fPse/Zq2PDJRV5pytYY
	UCoZKhbdT4o/doQlSseVlwKcvtREcpR92n8HIxk/ehXiTv5QVgDhyM3X7HK6faheHDQ
	+0XElXoFKUZsOUWkV6VbmneN1WisJojwYPztEMEY=
Received: by mx.zohomail.com with SMTPS id 1745931094377930.5836650113462;
	Tue, 29 Apr 2025 05:51:34 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH] media: verisilicon: Free post processor buffers on error
Date: Tue, 29 Apr 2025 08:51:32 -0400
Message-ID: <2782084.mvXUDI8C0e@earth>
In-Reply-To: <d901822b2710a2d642f1372fbfb53f99f1e60b2e.camel@collabora.com>
References: <20250425192447.227063-1-detlev.casanova@collabora.com>
 <d901822b2710a2d642f1372fbfb53f99f1e60b2e.camel@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250429_055148_273376_57481BCF 
X-CRM114-Status: GOOD (  20.09  )
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

T24gTW9uZGF5LCAyOCBBcHJpbCAyMDI1IDEzOjI1OjU5IEVEVCBOaWNvbGFzIER1ZnJlc25lIHdy
b3RlOgo+IExlIHZlbmRyZWRpIDI1IGF2cmlsIDIwMjUgw6AgMTU6MjQgLTA0MDAsIERldGxldiBD
YXNhbm92YSBhIMOpY3JpdCA6Cj4gPiBXaGVuIGluaXRpYWxpemluZyB0aGUgcG9zdCBwcm9jZXNz
b3IsIGl0IGFsbG9jYXRlcyB0aGUgc2FtZSBudW1iZXIgb2YKPiAKPiBXaGF0IGRvIHlvdSB0aGlu
ayByZXdvcmtpbmcgYXM6Cj4gCj4gICBEdXJpbmcgaW5pdGlhbGl6YXRpb24sIHRoZSBwb3N0IHBy
b2Nlc3NvciBhbGxvY2F0ZXMgdGhlIHNhbWUgbnVtYmVyIG9mCj4gCj4gPiBidWZmZXJzIGFzIHRo
ZSBidWYgcXVldWUuCj4gPiBBcyB0aGUgaW5pdCBmdW5jdGlvbiBpcyBjYWxsZWQgaW4gc3RyZWFt
b24oKSwgaWYgYW4gYWxsb2NhdGlvbiBmYWlscywKPiA+IHN0cmVhbW9uIHdpbGwgcmV0dXJuIGFu
IGVycm9yIGFuZCBzdHJlYW1vZmYoKSB3aWxsIG5vdCBiZSBjYWxsZWQsIGtlZXBpbmcKPiA+IGFs
bCBwb3N0IHByb2Nlc3NvciBidWZmZXJzIGFsbG9jYXRlZC4KPiA+IAo+ID4gVG8gYXZvaWQgdGhh
dCwgYWxsIHBvc3QgcHJvYyBidWZmZXJzIGFyZSBmcmVlZCBpbiBjYXNlIG9mIGFuIGFsbG9jYXRp
b24KPiA+IGVycm9yLgo+ID4gCj4gPiBGaXhlczogMjY3MTE0OTFhODA3ICgibWVkaWE6IHZlcmlz
aWxpY29uOiBSZWZhY3RvciBwb3N0cHJvY2Vzc29yIHRvIHN0b3JlCj4gPiBtb3JlIGJ1ZmZlcnMi
KSBTaWduZWQtb2ZmLWJ5OiBEZXRsZXYgQ2FzYW5vdmEKPiA+IDxkZXRsZXYuY2FzYW5vdmFAY29s
bGFib3JhLmNvbT4KPiAKPiBSZXZpZXdlZC1ieTogTmljb2xhcyBEdWZyZXNuZSA8bmljb2xhcy5k
dWZyZXNuZUBjb2xsYWJvcmEuY29tPgo+IAo+IElmIHlvdSBhcmUgZmluZSB3aXRoIHRoZSBzdWdn
ZXN0aW9uLCBJIGNhbiBtYWtlIHRoZSBjaGFuZ2VzIHdoaWxlCj4gYXBwbHlpbmcuCgpZZXMsIHRo
YXQncyBnb290IGZvciBtZS4KCkRldGxldi4KCj4gPiAtLS0KPiA+ICBkcml2ZXJzL21lZGlhL3Bs
YXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19wb3N0cHJvYy5jIHwgNCArKystCj4gPiAgMSBmaWxl
IGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+ID4gCj4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fcG9zdHByb2Mu
Ywo+ID4gYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19wb3N0cHJv
Yy5jIGluZGV4Cj4gPiBjNDM1YTM5M2UwY2I3Li45ZjU1OWExM2Q0MDliIDEwMDY0NAo+ID4gLS0t
IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fcG9zdHByb2MuYwo+
ID4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fcG9zdHBy
b2MuYwo+ID4gQEAgLTI1MCw4ICsyNTAsMTAgQEAgaW50IGhhbnRyb19wb3N0cHJvY19pbml0KHN0
cnVjdCBoYW50cm9fY3R4ICpjdHgpCj4gPiAgCj4gPiAgCWZvciAoaSA9IDA7IGkgPCBudW1fYnVm
ZmVyczsgaSsrKSB7Cj4gPiAgCQlyZXQgPSBoYW50cm9fcG9zdHByb2NfYWxsb2MoY3R4LCBpKTsK
PiA+IC0JCWlmIChyZXQpCj4gPiArCQlpZiAocmV0KSB7Cj4gPiArCQkJaGFudHJvX3Bvc3Rwcm9j
X2ZyZWUoY3R4KTsKPiA+ICAJCQlyZXR1cm4gcmV0Owo+ID4gKwkJfQo+ID4gIAl9Cj4gPiAgCj4g
PiAgCXJldHVybiAwOwoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
