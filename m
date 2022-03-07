Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48852C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Mar 2022 08:08:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Mime-Version:References:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=cI16wszywn3G2YlB8BAE7vJmIpzqoBjlKepSEMC+lFc=; b=X2kcNVvjXLS/vg
	WxWGdtU3Cibe5eowxQYhdv3dC5bpwQ+XLCZkptzTVHsnimiSSm3nTGLDM/9Z04fXSa7PsxNVbbKMV
	q0txs8ARBZOVmqPh6NZq81YSEFY+gJMHc3D3TCQ0emVfZPAYHKlqMdwSyUnfKm7WsSWy86BMT99pW
	Xr56v9sWulxYhYh2OczJa0/lSFgsmCBlBM6bttC09+UqR+XUC+xPIdZMpi/gviOkpw9EEl+Xm4oOb
	mhtZVn1qravqdO7s5fz1XqcMDCuCzSdAK5ov3u7Wihar7KDGrLw2aUeJb/M3yQfMxD65VcLmdf8x1
	fArfvmlapl0F/GOQsv5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nR8Pd-00GOC2-EK; Mon, 07 Mar 2022 08:08:13 +0000
Received: from mail-m17661.qiye.163.com ([59.111.176.61])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nR8Pa-00GOAo-4K
 for linux-rockchip@lists.infradead.org; Mon, 07 Mar 2022 08:08:12 +0000
Received: from DESKTOP-SG5V5EA (unknown [58.22.7.114])
 by mail-m17661.qiye.163.com (Hmail) with ESMTPA id 39B6B1DFDAD;
 Mon,  7 Mar 2022 16:08:06 +0800 (CST)
Date: Mon, 7 Mar 2022 16:08:09 +0800
From: "jay.xu@rock-chips.com" <jay.xu@rock-chips.com>
To: =?utf-8?B?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>
Cc: linus.walleij <linus.walleij@linaro.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-gpio <linux-gpio@vger.kernel.org>
Subject: Re: Re: [PATCH 2/2] gpio: rockchip: get pinctrl node from
 'gpio-ranges' property
References: <20220303062211.1378883-1-jay.xu@rock-chips.com>, 
 <20220303062211.1378883-3-jay.xu@rock-chips.com>, 
 <2004737.KQk8vJUODO@diego>
X-Priority: 3
X-Has-Attach: no
X-Mailer: Foxmail 7.2.19.158[cn]
Mime-Version: 1.0
Message-ID: <2022030716080935094010@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUlKS0tKN1dZLVlBSVdZDwkaFQgSH1lBWUNCHR9WSRlMTUpDGE
 1CTkweVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OCI6Cjo5Mj5CGTwYGSkdEjIV
 ExkaCRVVSlVKTU9NTU9LT0NNTUpPVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
 WU5DVUlJVUxVSkpPWVdZCAFZQU5ITE03Bg++
X-HM-Tid: 0a7f636bd7bcda2bkuws39b6b1dfdad
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220307_000810_367081_36D1BFB8 
X-CRM114-Status: GOOD (  23.51  )
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

Ci0tLS0tLS0tLS0tLS0tCmpheS54dUByb2NrLWNoaXBzLmNvbQo+SGkgSmlhbnF1biwKPgo+QW0g
RG9ubmVyc3RhZywgMy4gTcOkcnogMjAyMiwgMDc6MjI6MTEgQ0VUIHNjaHJpZWIgSmlhbnF1biBY
dToKPj4gVGhlIGR0IG5vZGVzIGZvciByb2NrY2hpcCBzb2MgZGVzaWduZXMgYXMKPj4KPj4gcGlu
Y3RybDogcGluY3RybCB7Cj4+IGdwaW8gewo+PiBncGlvLXJhbmdlcyA9IDwmcGluY3RybCB4eHg+
Owo+PiB9Owo+PiB9Owo+Pgo+PiBDdXJyZW50bHksIHdlIGdldCB0aGUgcGluY3RybCBkdCBub2Rl
IGZyb20gcGFyZW50IG9mIGdwaW8sIHRoaXMgcGF0Y2gKPj4gdHJ5IHRvIGdldCBwaW5jdHJsIGR0
IG5vZGUgZnJvbSAnZ3Bpby1yYW5nZXMnIHByb3BlcnR5Lgo+Pgo+PiBBZnRlciB0aGlzIHBhdGNo
LCB0aGUgZHQgbm9kZXMgcG9zc2libGUgdG8gYmUKPj4KPj4gZ3BpbyB7Cj4+IGdwaW8tcmFuZ2Vz
ID0gPCZwaW5jdHJsIHh4eD47Cj4+IH07Cj4+Cj4+IHBpbmN0cmw6IHBpbmN0cmwgewo+Pgo+PiB9
Owo+Pgo+PiB0aGVuIHRoZSBncGlvIGRyaXZlciBjb3VsZCByZWdpc3RlciBhcyBwbGF0Zm9ybSBk
ZXZpY2UgaXRzZWxmLCBidXQgbm90Cj4+IHBvcHVsYXRlIGZyb20gcGluY3RybCBkcml2ZXIuCj4K
PlRoZSBjaGFuZ2UgbG9va3MgaW50ZXJlc3RpbmcsIGFzIGl0IHdvdWxkIHNvbHZlIHRoYXQgbG9u
Zy1zdGFuZGluZwo+ZGVzaWduLWlzc3VlIEkgImNyZWF0ZWQiIGJhY2sgaW4gMjAxMyA7LSkgLgo+
Cj5UaG91Z2ggeW91IG5lZWQgdG8ga2VlcCBzb21lIHRoaW5ncyBpbiBtaW5kOgo+Cj4oMSkgU3Vj
aCBhIGNoYW5nZSBzaG91bGQgYmUgcmVmbGVjdGVkIGluIHRoZSBkZXZpY2V0cmVlIGJpbmRpbmcK
PsKgwqDCoCBhcyBpdCBpbnZvbHZlcyBhIGRpZmZlcmVudCBmb3JtIG9mIG5vZGVzIGFuZCBpbnRy
b2R1Y2VzLgo+Cj7CoMKgwqAgTG9va2luZyBhdCB0aGUgYmluZGluZyBkZXNjcmlwdGlvbiwgdXNp
bmcgZ3Bpby1yYW5nZXMgdG8gbWFwCj7CoMKgwqAgdG8gc3BlY2lmaWMgcGluY3RybCBwaW5zIHJl
YWxseSBzZWVtcyB0byBiZSBhIHZhbGlkIHVzZSBmb3IgdGhpcy4KPgo+Cj4oMikgS2VlcCB0aGlu
Z3MgYmFja3dhcmRzIGNvbXBhdGlibGUuCj7CoMKgwqAgT2xkIGRldmljZXRyZWVzIHNob3VsZCBz
dGF5IHdvcmtpbmcgd2l0aCBuZXcga2VybmVsIHZlcnNpb25zCj4KPsKgwqDCoCBBIGNvbW1vbiBw
YXR0ZXJuIGlzIHRvIHRyeSB0aGUgbmV3IGFwcHJvYWNoIGFuZCBpZiB0aGF0IGZhaWxzCj7CoMKg
wqAgdHJ5IHRoZSAiZGVwcmVjYXRlZCIgbWV0aG9kLCB3aGljaCBzaG91bGQgYmUgbmljZWx5IGRv
YWJsZQo+wqDCoMKgIHdoZW4gbG9va2luZyBhdCB0aGUgY29kZSBjaGFuZ2UgYmVsb3cuCj4gCkhp
IGhlaWtvCgpjb3VsZCBpIGdldCBwaW5jdHJsIGRldmljZSBmcm9tIG5hbWUgPyBsaWtlIHRoaXM6
CgpwY3RsZGV2ID0gZ2V0X3BpbmN0cmxfZGV2X2Zyb21fZGV2bmFtZShST0NLQ0hJUF9QSU5DVFJM
X0RFVl9OQU1FKTsKCnRoZcKgUk9DS0NISVBfUElOQ1RSTF9ERVZfTkFNRSBpcyBhIGNvbnN0IHN0
cmluZyBmcm9tIHBpbmN0cmwgaGVhZCBmaWxlLgoKPgo+SGVpa28KPgo+PiBTaWduZWQtb2ZmLWJ5
OiBKaWFucXVuIFh1IDxqYXkueHVAcm9jay1jaGlwcy5jb20+Cj4+IC0tLQo+PsKgIGRyaXZlcnMv
Z3Bpby9ncGlvLXJvY2tjaGlwLmMgfCAxMCArKysrKysrLS0tCj4+wqAgMSBmaWxlIGNoYW5nZWQs
IDcgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3Bpby9ncGlvLXJvY2tjaGlwLmMgYi9kcml2ZXJzL2dwaW8vZ3Bpby1yb2NrY2hpcC5jCj4+
IGluZGV4IDFkYTAzMjQ0NDVjYy4uNDZjNTRkZmY5MmRiIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJz
L2dwaW8vZ3Bpby1yb2NrY2hpcC5jCj4+ICsrKyBiL2RyaXZlcnMvZ3Bpby9ncGlvLXJvY2tjaGlw
LmMKPj4gQEAgLTY5MCw2ICs2OTAsOSBAQCByb2NrY2hpcF9ncGlvX2ZpbmRfYmFuayhzdHJ1Y3Qg
cGluY3RybF9kZXYgKnBjdGxkZXYsIGludCBpZCkKPj7CoCBpbnQgaSwgZm91bmQgPSAwOwo+PsKg
Cj4+wqAgaW5mbyA9IHBpbmN0cmxfZGV2X2dldF9kcnZkYXRhKHBjdGxkZXYpOwo+PiArCWlmICgh
aW5mbykKPj4gKwlyZXR1cm4gTlVMTDsKPj4gKwo+PsKgIGJhbmsgPSBpbmZvLT5jdHJsLT5waW5f
YmFua3M7Cj4+wqAgZm9yIChpID0gMDsgaSA8IGluZm8tPmN0cmwtPm5yX2JhbmtzOyBpKyssIGJh
bmsrKykgewo+PsKgIGlmIChiYW5rLT5iYW5rX251bSA9PSBpZCkgewo+PiBAQCAtNzA1LDE1ICs3
MDgsMTYgQEAgc3RhdGljIGludCByb2NrY2hpcF9ncGlvX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9k
ZXZpY2UgKnBkZXYpCj4+wqAgewo+PsKgIHN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7
Cj4+wqAgc3RydWN0IGRldmljZV9ub2RlICpucCA9IGRldi0+b2Zfbm9kZTsKPj4gLQlzdHJ1Y3Qg
ZGV2aWNlX25vZGUgKnBjdGxucCA9IG9mX2dldF9wYXJlbnQobnApOwo+PiArCXN0cnVjdCBkZXZp
Y2Vfbm9kZSAqcGN0bG5wID0gTlVMTDsKPj7CoCBzdHJ1Y3QgcGluY3RybF9kZXYgKnBjdGxkZXYg
PSBOVUxMOwo+PsKgIHN0cnVjdCByb2NrY2hpcF9waW5fYmFuayAqYmFuayA9IE5VTEw7Cj4+wqAg
c3RydWN0IHJvY2tjaGlwX3Bpbl9vdXRwdXRfZGVmZXJyZWQgKmNmZzsKPj7CoCBzdGF0aWMgaW50
IGdwaW87Cj4+wqAgaW50IGlkLCByZXQ7Cj4+wqAKPj4gLQlpZiAoIW5wIHx8ICFwY3RsbnApCj4+
IC0JcmV0dXJuIC1FTk9ERVY7Cj4+ICsJcGN0bG5wID0gb2ZfcGFyc2VfcGhhbmRsZShucCwgImdw
aW8tcmFuZ2VzIiwgMCk7Cj4+ICsJaWYgKCFwY3RsbnApCj4+ICsJcGN0bG5wID0gb2ZfZ2V0X3Bh
cmVudChucCk7Cj4+wqAKPj7CoCBwY3RsZGV2ID0gb2ZfcGluY3RybF9nZXQocGN0bG5wKTsKPj7C
oCBpZiAoIXBjdGxkZXYpCj4+Cj4KPgo+Cj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
