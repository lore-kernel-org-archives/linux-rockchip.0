Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF925C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Feb 2022 18:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YsleyAk7uGCJo53y9/9sGvWQk/JCs4Jd2M/5qS/qPjs=; b=OTzwJa3IpdoLNcOIqaDq3hG/ul
	o4rz4RMTu8QhhO4TlaJSgWlfWTwC9MNtxeD/NzttnZSk9p3Jr6Ytog9jHJPBOs+GfYRwhp3hBB2i5
	LjAQ6YYxFFFthH/3old+mzOhRB0ijAUNDckjoAyRj/zDZa5E9XKGcPDmOXwYLTorXD2ZeAOvlgNNu
	JJFDwGPBOwx/I0yMi2OARdBXoYniz/P45qrSFVAZrIrdAKqk+Ch+huVupKDpTo5IyGjRmbYM3n7z6
	SfD67TZHQ+fp3kS3CttFRcYpmzzuje6AdhyN3YL5Zsdb18WNLtb0mq8NwW83VtRa7NaGe3ktVMoVG
	rMyVlTRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGlxz-008Vpx-0m; Sun, 06 Feb 2022 18:08:51 +0000
Received: from pscan.eu ([31.193.140.172] helo=mail.pscan.uk)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGlxv-008Vpa-UO
 for linux-rockchip@lists.infradead.org; Sun, 06 Feb 2022 18:08:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=pscan.uk;
 s=2016050301; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:References
 :To:From:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=N/DoT+e7TWLpA1WJSukXHLtQsVfQz4st9twPTzZQQlY=; b=XMP+efzXvM2kbz1cS8/meKpVOz
 Ub6DEVPeUfu7EwxDfIJDg8R8YtE/H5se0h0tSTKEuKcCj6E/xZlIh7hlHRsYa3hs3yrZPNLuM4iaK
 LAfmK2KnUNUOw7Lv3lCwhtWrnuU/ZJE9JeEd38HI18mHVo49Z3JO1NW+FW9SXvZHFeIc=;
Received: from host86-151-200-4.range86-151.btcentralplus.com ([86.151.200.4]
 helo=[192.168.1.77])
 by mail.pscan.eu with esmtpsa  (TLS1.3) tls TLS_AES_128_GCM_SHA256
 (Exim 4.94.2 (FreeBSD)) (envelope-from <subs@pscan.uk>)
 id 1nGkuH-000DPL-P1
 for linux-rockchip@lists.infradead.org; Sun, 06 Feb 2022 17:00:57 +0000
Message-ID: <52eb0090-844e-d41d-a716-f735fc133b04@pscan.uk>
Date: Sun, 6 Feb 2022 18:08:40 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.1
Subject: Re: how to cross compile 4.19 BSP?
From: Philip C <subs@pscan.uk>
To: linux-rockchip@lists.infradead.org
References: <d33c78f6-2f27-35d2-4ac1-2124edf8cd66@pscan.uk>
In-Reply-To: <d33c78f6-2f27-35d2-4ac1-2124edf8cd66@pscan.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220206_100848_018513_5B313F41 
X-CRM114-Status: GOOD (  16.78  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

c29ycnkgZm9sa3MsICBteSBFWFBPUlQgd2FzIG1lc3NlZCB1cC4KCkkgZG93bmxvYWRlZCBnY2Mt
YXJtLTEwLjMtMjAyMS4wNy14ODZfNjQtYWFyY2g2NC1ub25lLWxpbnV4LWdudS50YXIueHogCmFu
ZCB1bnBhY2tlZCBpdCBhZ2FpbgoKZXhwb3J0IEFSQ0g9YXJtNjQKZXhwb3J0IApDUk9TU19DT01Q
SUxFPS9ob21lL3BoaWxpcC9nY2MtYXJtLzEwLjMvZ2NjLWFybS0xMC4zLTIwMjEuMDcteDg2XzY0
LWFhcmNoNjQtbm9uZS1saW51eC1nbnUvYmluL2FhcmNoNjQtbm9uZS1saW51eC1nbnUtCgpJZiBJ
IGRvIG1ha2UgbWVudWNvbmZpZyBhbmQgc2F2ZSBpdCAoc28gYSBkZWZhdWx0IC5jb25maWcpIEkg
c3RpbGwgZmFpbCAKd2l0aCB0aGlzOi0KCiAgIENDICAgICAgbW0vcGFnZV9jb3VudGVyLm8KICAg
Q0MgICAgICBtbS9tZW1jb250cm9sLm8KbW0vbWVtY29udHJvbC5jOiBJbiBmdW5jdGlvbiAnbWVt
Y2dfc3RhdF9zaG93JzoKbW0vbWVtY29udHJvbC5jOjM1NDI6MTogd2FybmluZzogdGhlIGZyYW1l
IHNpemUgb2YgMTA0MCBieXRlcyBpcyBsYXJnZXIgCnRoYW4gMTAyNCBieXRlcyBbLVdmcmFtZS1s
YXJnZXItdGhhbj1dCmVycm9yLCBmb3JiaWRkZW4gd2FybmluZzptZW1jb250cm9sLmM6MzU0Mgog
IDM1NDIgfCB9CiAgICAgICB8IF4KbW0vbWVtY29udHJvbC5jOiBJbiBmdW5jdGlvbiAnbWVtb3J5
X3N0YXRfc2hvdyc6Cm1tL21lbWNvbnRyb2wuYzo1NzA5OjE6IHdhcm5pbmc6IHRoZSBmcmFtZSBz
aXplIG9mIDEwNDAgYnl0ZXMgaXMgbGFyZ2VyIAp0aGFuIDEwMjQgYnl0ZXMgWy1XZnJhbWUtbGFy
Z2VyLXRoYW49XQplcnJvciwgZm9yYmlkZGVuIHdhcm5pbmc6bWVtY29udHJvbC5jOjU3MDkKICA1
NzA5IHwgfQogICAgICAgfCBeCm1ha2VbMV06ICoqKiBbc2NyaXB0cy9NYWtlZmlsZS5idWlsZDoz
MzQ6IG1tL21lbWNvbnRyb2wub10gRXJyb3IgMQptYWtlOiAqKiogW01ha2VmaWxlOjExOTQ6IG1t
XSBFcnJvciAyCgoKT24gMDYvMDIvMjAyMiAxMjo0OCwgUGhpbGlwIEMgd3JvdGU6Cj4gSSBhbSBz
b3JyeSBpZiB0aGlzIGxpc3QgaXMgbm90IGV4YWN0bHkgdGhlIHJpZ2h0IHBsYWNlIGZvciB0aGlz
IAo+IHF1ZXN0aW9uLCBidXQgSSBkb24ndCBrbm93IHdoZXJlIHRvIGFzay4KPiAKPiBVbnRpbCBt
YWlubGluZSBzdXBwb3J0cyB0aGUgRFNJL0xDRCBvdXRwdXQgSSBuZWVkIHNvbWV0aGluZyB0aGF0
IEkgY2FuIAo+IHVzZSBmb3IgbXkgcHJvamVjdCBiYXNlZCBvbiBhbiBSSzM1NjYgd2l0aCBhbiBM
Q0Qgc2NyZWVuLgo+IAo+IFNvIEkgaGF2ZSBiZWVuIHRyeWluZyAoYW5kIGZhaWxpbmcpIHRvIGNv
bXBpbGUgdGhlIDQuMTktZGV2ZWxvcCBicmFuY2ggCj4gb2YgaHR0cHM6Ly9naXRodWIuY29tL3Jv
Y2tjaGlwLWxpbnV4L2tlcm5lbAo+IAo+IEkgaGF2ZSBiZWVuIHVzaW5nIHRoaXMgY3Jvc3MgY29t
cGlsZXI6LQo+IGdjYy1hcm0tMTAuMy0yMDIxLjA3LXg4Nl82NC1hYXJjaDY0LW5vbmUtbGludXgt
Z251Cj4gCj4gdXNpbmcgdGhlc2UgY29tbWFuZHM6LQo+IGV4cG9ydCBBUkNIPWFybTY0Cj4gZXhw
b3J0IAo+IENST1NTX0NPTVBJTEU9L2hvbWUvcGhpbGlwL2djYy1hcm0tMTAuMy0yMDIxLjA3LXg4
Nl82NC1hYXJjaDY0LW5vbmUtbGludXgtZ251L2Jpbi9hYXJjaDY0LW5vbmUtbGludXgtZ251LSAK
PiAKPiBtYWtlIEltYWdlIG1vZHVsZXMKPiBtYWtlIGR0YnMKPiAKPiBUaGlzIHdvcmtzIG9uIG90
aGVyIGtlcm5lbHMsIGJ1dCB3aXRoIHRoZSBvZmZpY2lhbCBrZXJuZWwgc291cmNlIEkgZ2V0IAo+
IG1hbnksIG1hbnkgZXJyb3JzIHdoaWNoIGFyZSBwcm9iYWJseSBiZXlvbmQgbXkgYWJpbGl0aWVz
IHRvIGZpeC7CoCBGb3IgCj4gZXhhbXBsZSBJIGNhbiBjb21waWxlIFJhZHhhIFRlYW0gNC4xOSBr
ZXJuZWxzLCBidXQgbXkgcHJvamVjdCBpc24ndCBhIAo+IFJhZHhhIHByb2R1Y3QuCj4gCj4gVGhy
ZWUgcXVlc3Rpb25zOi0KPiAKPiAxLiBTaG91bGQgSSBiZSB1c2luZyBicmFuY2ggNC4xOS1kZXZl
bG9wPyBvciA0LjE5LWRldmVsb3AtcnQ4Nz8KPiAyLiBJcyB0aGVyZSBhIHBhcnRpY3VsYXIgT1Mv
dmVyc2lvbiBhbmQgY3Jvc3MgY29tcGlsZXIgdGhhdCBJIHNob3VsZCBiZSAKPiB1c2luZz/CoCBD
dXJyZW50bHkgSSBhbSBvbiB1YnVudHUgaGlyc3V0ZSBidXQgSSBoYXZlIG5vIHByb2JsZW0gdG8g
Y2hhbmdlIAo+IGl0IHRvIHNvbWV0aGluZyBlbHNlLgo+IDMuIElmIHRoaXMgaXNuJ3QgdGhlIHJp
Z2h0IHBsYWNlIHRvIGFzayB0aGVuIHBsZWFzZSB3aGVyZSBpcz8KPiAKPiB0aGFua3MsIFBoaWxp
cAo+IAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
