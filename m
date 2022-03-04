Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2854C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Mar 2022 03:00:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Mime-Version:References:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=Jvla5rd1JCvkUe6R6UuzF7QZPq4lTDo4KI2xBzkqS+A=; b=IXQkIFCdn0SE2+
	tar58TquCZDeYCPID/8h4gnY2x4MtZitkNy1jl/Fugzj/m7dk3cvc8GJmTkBlR8mDiTfwFAXgXyQM
	V/lPXNwoLuIhhcpG70SuBnFgz0A41k486E2ZDorXThvEs/qk7kJABjTdXkCVOJOC4s3cUuIkrYPAU
	gZaO7/gW1RRyEVopefivuPDxs9hfBDv+Z9vaC9wqOPnvhnAJ/+pX1zmbY5rGB9BU//q6p/+2tPUFR
	niUR1EUvzvunv+lcVdGCK9dJKklFT1wWWHdEwCOPAd+046MqUcq1o+ufpPprkBP7GclrhEUsp8Yji
	0PLsgcoMVA64VjHP/Ukg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPyBN-008Oq9-5e; Fri, 04 Mar 2022 03:00:41 +0000
Received: from mail-m17661.qiye.163.com ([59.111.176.61])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPyBJ-008Ooq-N4
 for linux-rockchip@lists.infradead.org; Fri, 04 Mar 2022 03:00:39 +0000
Received: from DESKTOP-SG5V5EA (unknown [58.22.7.114])
 by mail-m17661.qiye.163.com (Hmail) with ESMTPA id 1AA201DF3D0;
 Fri,  4 Mar 2022 11:00:33 +0800 (CST)
Date: Fri, 4 Mar 2022 11:00:32 +0800
From: "jay.xu@rock-chips.com" <jay.xu@rock-chips.com>
To: =?utf-8?B?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>
Cc: linus.walleij <linus.walleij@linaro.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-gpio <linux-gpio@vger.kernel.org>
Subject: Re: Re: [PATCH 1/2] gpio: rockchip: make gpio work without cru module
References: <20220303062211.1378883-1-jay.xu@rock-chips.com>, 
 <20220303062211.1378883-2-jay.xu@rock-chips.com>, 
 <8576445.5iEe77X0Xf@diego>
X-Priority: 3
X-Has-Attach: no
X-Mailer: Foxmail 7.2.19.158[cn]
Mime-Version: 1.0
Message-ID: <202203041100320387276@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUlKS0tKN1dZLVlBSVdZDwkaFQgSH1lBWRpIHx1WS00eSkNIGU
 kYHx4aVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6KxA6EDo4Sz4CIzg8SxcMKD5J
 LwhPCiFVSlVKTU9NSE1JQ0hITktJVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
 WU5DVUlJVUxVSkpPWVdZCAFZQU5JQ003Bg++
X-HM-Tid: 0a7f52df3133da2bkuws1aa201df3d0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220303_190037_951790_3FF66027 
X-CRM114-Status: GOOD (  17.97  )
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

SGkgSGVpa2/vvJoKCi0tLS0tLS0tLS0tLS0tCmpheS54dUByb2NrLWNoaXBzLmNvbQo+SGkgSmlh
bnF1biwKPgo+QW0gRG9ubmVyc3RhZywgMy4gTcOkcnogMjAyMiwgMDc6MjI6MTAgQ0VUIHNjaHJp
ZWIgSmlhbnF1biBYdToKPj4gSW4gc29tZSBjYXNlIHRoZSBzeXN0ZW0gbWF5IGhhcyBubyBidWls
dGluIGNydSBtb2R1bGUsIHRoZSBncGlvIGRyaXZlcgo+PiB3aWxsIGZhaWwgdG8gZ2V0IHBlcmlw
aCBjbG9jayBhbmQgZGVib3VuY2UgY2xvY2suCj4KPmNhbiB5b3UgZWxhYm9yYXRlIGEgYml0IG9u
IHdoYXQgdGhlc2UgY2FzZXMgYXJlPwo+Cj4+IE9uIHJvY2tjaGlwIFNvQ3MsIHRoZSBwY2xrIGFu
ZCBkYmcgY2xrIGFyZSBkZWZhdWx0IHRvIGJlIGVuYWJsZWQgYW5kCj4+IHVuZ2F0ZWQsIHRoZSBn
cGlvIHBvc3NpYmxlIHRvIHdvcmsgd2l0aG91dCBjcnUgbW9kdWxlLgo+Pgo+PiBUaGlzIHBhdGNo
IG1ha2VzIGdwaW8gd29yayBmaW5lIHdpdGhvdXQgY3J1IG1vZHVsZS4KPj4KPj4gU2lnbmVkLW9m
Zi1ieTogSmlhbnF1biBYdSA8amF5Lnh1QHJvY2stY2hpcHMuY29tPgo+PiAtLS0KPj7CoCBkcml2
ZXJzL2dwaW8vZ3Bpby1yb2NrY2hpcC5jIHwgMTQgKysrKysrKysrLS0tLS0KPj7CoCAxIGZpbGUg
Y2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncGlvL2dwaW8tcm9ja2NoaXAuYyBiL2RyaXZlcnMvZ3Bpby9ncGlvLXJvY2tj
aGlwLmMKPj4gaW5kZXggYTRjNGU0NTg0ZjViLi4xZGEwMzI0NDQ1Y2MgMTAwNjQ0Cj4+IC0tLSBh
L2RyaXZlcnMvZ3Bpby9ncGlvLXJvY2tjaGlwLmMKPj4gKysrIGIvZHJpdmVycy9ncGlvL2dwaW8t
cm9ja2NoaXAuYwo+PiBAQCAtMTk1LDYgKzE5NSw5IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfZ3Bp
b19zZXRfZGVib3VuY2Uoc3RydWN0IGdwaW9fY2hpcCAqZ2MsCj4+wqAgdW5zaWduZWQgaW50IGN1
cl9kaXZfcmVnOwo+PsKgIHU2NCBkaXY7Cj4+wqAKPj4gKwlpZiAoIWJhbmstPmRiX2NsaykKPj4g
KwlyZXR1cm4gLUVOT0VOVDsKPj4gKwo+PsKgIGlmIChiYW5rLT5ncGlvX3R5cGUgPT0gR1BJT19U
WVBFX1YyICYmICFJU19FUlIoYmFuay0+ZGJfY2xrKSkgewo+PsKgIGRpdl9kZWJvdW5jZV9zdXBw
b3J0ID0gdHJ1ZTsKPj7CoCBmcmVxID0gY2xrX2dldF9yYXRlKGJhbmstPmRiX2Nsayk7Cj4+IEBA
IC02NTQsOCArNjU3LDEwIEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfZ2V0X2JhbmtfZGF0YShzdHJ1
Y3Qgcm9ja2NoaXBfcGluX2JhbmsgKmJhbmspCj4+wqAgcmV0dXJuIC1FSU5WQUw7Cj4+wqAKPj7C
oCBiYW5rLT5jbGsgPSBvZl9jbGtfZ2V0KGJhbmstPm9mX25vZGUsIDApOwo+PiAtCWlmIChJU19F
UlIoYmFuay0+Y2xrKSkKPj4gLQlyZXR1cm4gUFRSX0VSUihiYW5rLT5jbGspOwo+PiArCWlmIChJ
U19FUlIoYmFuay0+Y2xrKSkgewo+PiArCWJhbmstPmNsayA9IE5VTEw7Cj4+ICsJZGV2X3dhcm4o
YmFuay0+ZGV2LCAid29ya3Mgd2l0aG91dCBjbGsgcG1cbiIpOwo+Cj5JJ2QgZGVmaW5pdGx5IGV4
cGVjdCBhIG1vcmUgc2Vuc2l0aXZlIGhhbmRsaW5nIGhlcmUgKGFuZCBiZWxvdykuIApBIG9mdGVu
IGNhc2UgaXMgd2hlbiB3ZSBwcmVwYXJlIGRyaXZlciBmb3IgYSBuZXcgU29DLCBhbmQgbmVlZCB0
byB0ZXN0IGl0IG9uIEZQR0Egb3IgWkVCVSwKdGhleSBoYXZlIG5vIGNydSBtb2R1bGUgd29ya3Ms
IHRoYXQgd2lsbCBjYXNlIGdwaW8gZHJpdmVyIGZhaWwsIEkgbmVlZCB0byBkbyB3aXAgZml4CgpB
bm90aGVyIGNhc2UgaXMgd2hlbiBhIHByb2R1Y3QgbmVlZHMgdG8gY3V0IGtlcm5lbCBhcyBtaW5p
IGFzIHBvc3NpYmxlLCB0aGVuIHRoZSBjcnUgbWF5YmUgY3V0IGFuZCBtb3ZlIHRvCm90aGVyIHBs
YWNlLCBsaWtlIHVib290LCB0aGUgZ3BpbyB3aWxsIGZhaWwgc2luY2UgZ2V0IGNsb2NrIGZhaWwu
CgpXZSBoYXZlIGtlZXAgcGNsayBhbmQgZGJnIGNsayAoaWYgaGF2ZSkgdG8gYWx3YXlzIG9uIGN1
cnJlbnRseSwgaXMgaXQgcG9zc2libGUgdG8gbm90IGhhbmRsZSBjbG9jayBmb3IgZ3BpbyA/Cgo+
Cj5JLmUuIHRoZSBjaGFuZ2UgcmlnaHQgbm93LCBzaW1wbHkgZGlzYWJsZXMgYWxsIGVycm9yIGhh
bmRsaW5nLgo+QnV0IEkgZG8gZXhwZWN0IGEgaGFuZGxpbmcgZGlmZmVyZW5jZSBiZXR3ZWVuOgo+
LSBjbG9jayBkZXNjcmliZWQgaW4gRFQsIGJ1dCBub3QgYXZhaWxhYmxlIC0gc2hvdWxkIGZhaWwK
Pi0gY2xvY2sgbm90IGRlc2NyaWJlZCBpbiBEVCAtIGNhbiBiZSBhbGxvd2VkIHRvIGdvIHRvIE5V
TEwKPgo+Cj5IZWlrbwo+Cj4KPj4gKwl9Cj4+wqAKPj7CoCBjbGtfcHJlcGFyZV9lbmFibGUoYmFu
ay0+Y2xrKTsKPj7CoCBpZCA9IHJlYWRsKGJhbmstPnJlZ19iYXNlICsgZ3Bpb19yZWdzX3YyLnZl
cnNpb25faWQpOwo+PiBAQCAtNjY2LDkgKzY3MSw4IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfZ2V0
X2JhbmtfZGF0YShzdHJ1Y3Qgcm9ja2NoaXBfcGluX2JhbmsgKmJhbmspCj4+wqAgYmFuay0+Z3Bp
b190eXBlID0gR1BJT19UWVBFX1YyOwo+PsKgIGJhbmstPmRiX2NsayA9IG9mX2Nsa19nZXQoYmFu
ay0+b2Zfbm9kZSwgMSk7Cj4+wqAgaWYgKElTX0VSUihiYW5rLT5kYl9jbGspKSB7Cj4+IC0JZGV2
X2VycihiYW5rLT5kZXYsICJjYW5ub3QgZmluZCBkZWJvdW5jZSBjbGtcbiIpOwo+PiAtCWNsa19k
aXNhYmxlX3VucHJlcGFyZShiYW5rLT5jbGspOwo+PiAtCXJldHVybiAtRUlOVkFMOwo+PiArCWJh
bmstPmRiX2NsayA9IE5VTEw7Cj4+ICsJZGV2X3dhcm4oYmFuay0+ZGV2LCAid29ya3Mgd2l0aG91
dCBkZWJvdW5jZSBjbGsgcG1cbiIpOwo+PsKgIH0KPj7CoCB9IGVsc2Ugewo+PsKgIGJhbmstPmdw
aW9fcmVncyA9ICZncGlvX3JlZ3NfdjE7Cj4+Cj4KPgo+Cj4KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
