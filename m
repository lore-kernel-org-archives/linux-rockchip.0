Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFD87C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Mar 2022 03:02:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Mime-Version:References:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=e6k3c9AKgzkHEi44OGXfazxULiZgtexvyqpsqqOC66E=; b=jDHjQBhWIoZx8B
	A13srtbAFD96yDjC3vVYbfrFMKkqd+hWDdreZX2yrAzgueCXoIueuuqGDI2mjO36lArq6JgaKrrL3
	9teDBOCwGadfVukUtQ0iSrVqUZmH0m4wofHviKjng5QBscImHjptY33igiDxx+O2fe3DZIa6rs/kx
	j/NT34EMA0zs55a9vg614hk3rnoiAa21aM/duRJD11CRfgiHeW7AHOPNDT8PiFVI+KmTSjRoGcRB0
	6UH6fER/QoGunIAgugDz2+x/ruN01H5sqBn481M8zXO3xEonVQQqUScfHQJOh4xN06STpgwvDzgWR
	Nw8MZG3n9WTUjyFE3Mrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPyDB-008PCg-SB; Fri, 04 Mar 2022 03:02:33 +0000
Received: from mail-m17661.qiye.163.com ([59.111.176.61])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPyD8-008PC8-RU
 for linux-rockchip@lists.infradead.org; Fri, 04 Mar 2022 03:02:32 +0000
Received: from DESKTOP-SG5V5EA (unknown [58.22.7.114])
 by mail-m17661.qiye.163.com (Hmail) with ESMTPA id B2FFD1DF6F3;
 Fri,  4 Mar 2022 11:02:28 +0800 (CST)
Date: Fri, 4 Mar 2022 11:02:32 +0800
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
Message-ID: <202203041102325121938@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUlKS0tKN1dZLVlBSVdZDwkaFQgSH1lBWRodTUJWTUxMHksfTB
 geH08dVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6KxA6Hzo5Mz4DHTgYFgtOFDYZ
 FB5PFB1VSlVKTU9NSE1JQk9CSklCVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
 WU5DVUlJVUxVSkpPWVdZCAFZQU5JT003Bg++
X-HM-Tid: 0a7f52e0f4d9da2bkuwsb2ffd1df6f3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220303_190231_087422_DF2DECEB 
X-CRM114-Status: GOOD (  22.76  )
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

SGkgSGVpa286CgotLS0tLS0tLS0tLS0tLQpqYXkueHVAcm9jay1jaGlwcy5jb20KPkhpIEppYW5x
dW4sCj4KPkFtIERvbm5lcnN0YWcsIDMuIE3DpHJ6IDIwMjIsIDA3OjIyOjExIENFVCBzY2hyaWVi
IEppYW5xdW4gWHU6Cj4+IFRoZSBkdCBub2RlcyBmb3Igcm9ja2NoaXAgc29jIGRlc2lnbmVzIGFz
Cj4+Cj4+IHBpbmN0cmw6IHBpbmN0cmwgewo+PiBncGlvIHsKPj4gZ3Bpby1yYW5nZXMgPSA8JnBp
bmN0cmwgeHh4PjsKPj4gfTsKPj4gfTsKPj4KPj4gQ3VycmVudGx5LCB3ZSBnZXQgdGhlIHBpbmN0
cmwgZHQgbm9kZSBmcm9tIHBhcmVudCBvZiBncGlvLCB0aGlzIHBhdGNoCj4+IHRyeSB0byBnZXQg
cGluY3RybCBkdCBub2RlIGZyb20gJ2dwaW8tcmFuZ2VzJyBwcm9wZXJ0eS4KPj4KPj4gQWZ0ZXIg
dGhpcyBwYXRjaCwgdGhlIGR0IG5vZGVzIHBvc3NpYmxlIHRvIGJlCj4+Cj4+IGdwaW8gewo+PiBn
cGlvLXJhbmdlcyA9IDwmcGluY3RybCB4eHg+Owo+PiB9Owo+Pgo+PiBwaW5jdHJsOiBwaW5jdHJs
IHsKPj4KPj4gfTsKPj4KPj4gdGhlbiB0aGUgZ3BpbyBkcml2ZXIgY291bGQgcmVnaXN0ZXIgYXMg
cGxhdGZvcm0gZGV2aWNlIGl0c2VsZiwgYnV0IG5vdAo+PiBwb3B1bGF0ZSBmcm9tIHBpbmN0cmwg
ZHJpdmVyLgo+Cj5UaGUgY2hhbmdlIGxvb2tzIGludGVyZXN0aW5nLCBhcyBpdCB3b3VsZCBzb2x2
ZSB0aGF0IGxvbmctc3RhbmRpbmcKPmRlc2lnbi1pc3N1ZSBJICJjcmVhdGVkIiBiYWNrIGluIDIw
MTMgOy0pIC4KPgo+VGhvdWdoIHlvdSBuZWVkIHRvIGtlZXAgc29tZSB0aGluZ3MgaW4gbWluZDoK
Pgo+KDEpIFN1Y2ggYSBjaGFuZ2Ugc2hvdWxkIGJlIHJlZmxlY3RlZCBpbiB0aGUgZGV2aWNldHJl
ZSBiaW5kaW5nCj7CoMKgwqAgYXMgaXQgaW52b2x2ZXMgYSBkaWZmZXJlbnQgZm9ybSBvZiBub2Rl
cyBhbmQgaW50cm9kdWNlcy4KPgo+wqDCoMKgIExvb2tpbmcgYXQgdGhlIGJpbmRpbmcgZGVzY3Jp
cHRpb24sIHVzaW5nIGdwaW8tcmFuZ2VzIHRvIG1hcAo+wqDCoMKgIHRvIHNwZWNpZmljIHBpbmN0
cmwgcGlucyByZWFsbHkgc2VlbXMgdG8gYmUgYSB2YWxpZCB1c2UgZm9yIHRoaXMuCj4gCnRoYW5r
cywgaSB3aWxsIGFkZCB0aGUgZml4IGluIG5leHQgcGF0Y2hzZXQgYnkgYWRkaW5nIGFub3RoZXIg
cGF0Y2guCgo+Cj4oMikgS2VlcCB0aGluZ3MgYmFja3dhcmRzIGNvbXBhdGlibGUuCj7CoMKgwqAg
T2xkIGRldmljZXRyZWVzIHNob3VsZCBzdGF5IHdvcmtpbmcgd2l0aCBuZXcga2VybmVsIHZlcnNp
b25zCj4KPsKgwqDCoCBBIGNvbW1vbiBwYXR0ZXJuIGlzIHRvIHRyeSB0aGUgbmV3IGFwcHJvYWNo
IGFuZCBpZiB0aGF0IGZhaWxzCj7CoMKgwqAgdHJ5IHRoZSAiZGVwcmVjYXRlZCIgbWV0aG9kLCB3
aGljaCBzaG91bGQgYmUgbmljZWx5IGRvYWJsZQo+wqDCoMKgIHdoZW4gbG9va2luZyBhdCB0aGUg
Y29kZSBjaGFuZ2UgYmVsb3cuCj4gCm9rYXksIGkgd2lsbCB0ZXN0IHRoaXMgY2FzZS4KPgo+SGVp
a28KPgo+PiBTaWduZWQtb2ZmLWJ5OiBKaWFucXVuIFh1IDxqYXkueHVAcm9jay1jaGlwcy5jb20+
Cj4+IC0tLQo+PsKgIGRyaXZlcnMvZ3Bpby9ncGlvLXJvY2tjaGlwLmMgfCAxMCArKysrKysrLS0t
Cj4+wqAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPj4K
Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3Bpby9ncGlvLXJvY2tjaGlwLmMgYi9kcml2ZXJzL2dw
aW8vZ3Bpby1yb2NrY2hpcC5jCj4+IGluZGV4IDFkYTAzMjQ0NDVjYy4uNDZjNTRkZmY5MmRiIDEw
MDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwaW8vZ3Bpby1yb2NrY2hpcC5jCj4+ICsrKyBiL2RyaXZl
cnMvZ3Bpby9ncGlvLXJvY2tjaGlwLmMKPj4gQEAgLTY5MCw2ICs2OTAsOSBAQCByb2NrY2hpcF9n
cGlvX2ZpbmRfYmFuayhzdHJ1Y3QgcGluY3RybF9kZXYgKnBjdGxkZXYsIGludCBpZCkKPj7CoCBp
bnQgaSwgZm91bmQgPSAwOwo+PsKgCj4+wqAgaW5mbyA9IHBpbmN0cmxfZGV2X2dldF9kcnZkYXRh
KHBjdGxkZXYpOwo+PiArCWlmICghaW5mbykKPj4gKwlyZXR1cm4gTlVMTDsKPj4gKwo+PsKgIGJh
bmsgPSBpbmZvLT5jdHJsLT5waW5fYmFua3M7Cj4+wqAgZm9yIChpID0gMDsgaSA8IGluZm8tPmN0
cmwtPm5yX2JhbmtzOyBpKyssIGJhbmsrKykgewo+PsKgIGlmIChiYW5rLT5iYW5rX251bSA9PSBp
ZCkgewo+PiBAQCAtNzA1LDE1ICs3MDgsMTYgQEAgc3RhdGljIGludCByb2NrY2hpcF9ncGlvX3By
b2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4+wqAgewo+PsKgIHN0cnVjdCBkZXZp
Y2UgKmRldiA9ICZwZGV2LT5kZXY7Cj4+wqAgc3RydWN0IGRldmljZV9ub2RlICpucCA9IGRldi0+
b2Zfbm9kZTsKPj4gLQlzdHJ1Y3QgZGV2aWNlX25vZGUgKnBjdGxucCA9IG9mX2dldF9wYXJlbnQo
bnApOwo+PiArCXN0cnVjdCBkZXZpY2Vfbm9kZSAqcGN0bG5wID0gTlVMTDsKPj7CoCBzdHJ1Y3Qg
cGluY3RybF9kZXYgKnBjdGxkZXYgPSBOVUxMOwo+PsKgIHN0cnVjdCByb2NrY2hpcF9waW5fYmFu
ayAqYmFuayA9IE5VTEw7Cj4+wqAgc3RydWN0IHJvY2tjaGlwX3Bpbl9vdXRwdXRfZGVmZXJyZWQg
KmNmZzsKPj7CoCBzdGF0aWMgaW50IGdwaW87Cj4+wqAgaW50IGlkLCByZXQ7Cj4+wqAKPj4gLQlp
ZiAoIW5wIHx8ICFwY3RsbnApCj4+IC0JcmV0dXJuIC1FTk9ERVY7Cj4+ICsJcGN0bG5wID0gb2Zf
cGFyc2VfcGhhbmRsZShucCwgImdwaW8tcmFuZ2VzIiwgMCk7Cj4+ICsJaWYgKCFwY3RsbnApCj4+
ICsJcGN0bG5wID0gb2ZfZ2V0X3BhcmVudChucCk7Cj4+wqAKPj7CoCBwY3RsZGV2ID0gb2ZfcGlu
Y3RybF9nZXQocGN0bG5wKTsKPj7CoCBpZiAoIXBjdGxkZXYpCj4+Cj4KPgo+Cj4KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
