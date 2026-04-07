Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0219CEDB7E8
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Apr 2026 10:00:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4eP7mN8TktFkayGYPNYwQjxOvrcrxBl1DDT8JgPDF2U=; b=jz2F3RMID06Tjx
	D5utKf6bUFtNOnFiesvZ7DVT9wL4kuP0NUL2/Yd7Xon0ISnmci0S0/Jw+ngULfjVwgAcAU7egQ/Ts
	QkMkVgUu3OvP6Ce7Y7q4GfzhnIOTU14K8tIL9Zfkma5U0XddP91HG2KYIyLmkeaQp71kXQTyCvYZI
	AOdgx+U8PYO6NsrHMADilaH24j/ubDjrW6LkxnQ9fLi63EMfXN0lFV4qT617EWyYa/h+vhmRFuYEA
	aQ1CfaDv1zoeX6h7fKz1CoSPAzPeLNPKxLhHQWEbPli2JiTuxdBoy9EXoChngVq6V9bD6p2727CHE
	yNIub1knTXn0h93LbB6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wA3EH-00000006G6j-2Y4v;
	Tue, 07 Apr 2026 10:00:17 +0000
Received: from mail-m49251.qiye.163.com ([45.254.49.251])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wA3EE-00000006G5y-2YSc
	for linux-rockchip@lists.infradead.org;
	Tue, 07 Apr 2026 10:00:16 +0000
Received: from [172.16.12.17] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 39cb7de78;
	Tue, 7 Apr 2026 17:59:58 +0800 (GMT+08:00)
Message-ID: <73130e47-dbd7-c0d0-eba1-8bafba9f91e5@rock-chips.com>
Date: Tue, 7 Apr 2026 17:59:56 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Cc: shawn.lin@rock-chips.com, Linus Walleij <linusw@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, linux-gpio@vger.kernel.org,
 linux-rockchip@lists.infradead.org, ye.zhang@rock-chips.com
Subject: Re: [PATCH] gpio: rockchip: convert to dynamic GPIO base allocation
To: Bartosz Golaszewski <brgl@kernel.org>
References: <1774864401-177149-1-git-send-email-shawn.lin@rock-chips.com>
 <CAMRc=Mfg3KvifZgpD8c7kkLNhv3zgDKvHB=n_=MQJ2EtwRi44A@mail.gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <CAMRc=Mfg3KvifZgpD8c7kkLNhv3zgDKvHB=n_=MQJ2EtwRi44A@mail.gmail.com>
X-HM-Tid: 0a9d676272cd09cckunme7e3b5c731f66e
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQk8aHVYZSUwZQ0wdSh4dHk5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUJCSU5LVU
	pLS1VKQktCWQY+
DKIM-Signature: a=rsa-sha256;
	b=Ne3cqx7/hycE/L7vLnAr5+H4FkmuJEhvp3LteaHn70J1+zV7BPsGXlg6XYEx6jqsBfBuCAwNi9xNbwYRA9Bqo3WUzT4YY/RY2Bu/PpuYMJ8Q1Lehst0aTGbkCgFTs19ZuDjTUOZMReYPZUiXtjPlxONbugtijV2GABGracMYBh4=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=UykfOqm44M0JqkidCmZPxPcoafZJDvVGKJeuSCcLscc=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260407_030015_250599_59041CA5 
X-CRM114-Status: GOOD (  13.81  )
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

SGkgQmFydG9zeiwKCuWcqCAyMDI2LzAzLzMxIOaYn+acn+S6jCAxNjowNSwgQmFydG9zeiBHb2xh
c3pld3NraSDlhpnpgZM6Cj4gT24gTW9uLCBNYXIgMzAsIDIwMjYgYXQgMTE6NTPigK9BTSBTaGF3
biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4gd3JvdGU6Cj4+Cj4+IFRoaXMgZHJpdmVy
IGlzIHVzZWQgb24gZGV2aWNlIHRyZWUgYmFzZWQgcGxhdGZvcm0uIFVzZSBkeW5hbWljCj4+IEdQ
SU8gbnVtYmVyc3BhY2UgYmFzZSB0byBzdXBwcmVzcyB0aGUgd2FybmluZzoKPj4KPj4gZ3BpbyBn
cGlvY2hpcDA6IFN0YXRpYyBhbGxvY2F0aW9uIG9mIEdQSU8gYmFzZSBpcyBkZXByZWNhdGVkLCB1
c2UgZHluYW1pYyBhbGxvY2F0aW9uLgo+PiBncGlvIGdwaW9jaGlwMTogU3RhdGljIGFsbG9jYXRp
b24gb2YgR1BJTyBiYXNlIGlzIGRlcHJlY2F0ZWQsIHVzZSBkeW5hbWljIGFsbG9jYXRpb24uCj4+
IGdwaW8gZ3Bpb2NoaXAyOiBTdGF0aWMgYWxsb2NhdGlvbiBvZiBHUElPIGJhc2UgaXMgZGVwcmVj
YXRlZCwgdXNlIGR5bmFtaWMgYWxsb2NhdGlvbi4KPj4gZ3BpbyBncGlvY2hpcDM6IFN0YXRpYyBh
bGxvY2F0aW9uIG9mIEdQSU8gYmFzZSBpcyBkZXByZWNhdGVkLCB1c2UgZHluYW1pYyBhbGxvY2F0
aW9uLgo+PiBncGlvIGdwaW9jaGlwNDogU3RhdGljIGFsbG9jYXRpb24gb2YgR1BJTyBiYXNlIGlz
IGRlcHJlY2F0ZWQsIHVzZSBkeW5hbWljIGFsbG9jYXRpb24uCj4+Cj4+IFNpZ25lZC1vZmYtYnk6
IFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29tPgo+PiAtLS0KPj4KPj4gICBkcml2
ZXJzL2dwaW8vZ3Bpby1yb2NrY2hpcC5jIHwgMiArLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncGlv
L2dwaW8tcm9ja2NoaXAuYyBiL2RyaXZlcnMvZ3Bpby9ncGlvLXJvY2tjaGlwLmMKPj4gaW5kZXgg
YWMxYjkzOS4uMDhlYTY0NCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncGlvL2dwaW8tcm9ja2No
aXAuYwo+PiArKysgYi9kcml2ZXJzL2dwaW8vZ3Bpby1yb2NrY2hpcC5jCj4+IEBAIC01ODIsNyAr
NTgyLDcgQEAgc3RhdGljIGludCByb2NrY2hpcF9ncGlvbGliX3JlZ2lzdGVyKHN0cnVjdCByb2Nr
Y2hpcF9waW5fYmFuayAqYmFuaykKPj4gICAgICAgICAgYmFuay0+Z3Bpb19jaGlwID0gcm9ja2No
aXBfZ3Bpb2xpYl9jaGlwOwo+Pgo+PiAgICAgICAgICBnYyA9ICZiYW5rLT5ncGlvX2NoaXA7Cj4+
IC0gICAgICAgZ2MtPmJhc2UgPSBiYW5rLT5waW5fYmFzZTsKPj4gKyAgICAgICBnYy0+YmFzZSA9
IC0xOwo+PiAgICAgICAgICBnYy0+bmdwaW8gPSBiYW5rLT5ucl9waW5zOwo+PiAgICAgICAgICBn
Yy0+bGFiZWwgPSBiYW5rLT5uYW1lOwo+PiAgICAgICAgICBnYy0+cGFyZW50ID0gYmFuay0+ZGV2
Owo+PiAtLQo+PiAyLjcuNAo+Pgo+IAo+IEkgdGFrZSBpdCB5b3Uga25vdyBmaXJzdC1oYW5kIHRo
YXQgbm9ib2R5IGRlcGVuZHMgb24gdGhlIHByZWRlZmluZWQKPiBHUElPIG51bWJlcmluZyBmb3Ig
dGhpcyBkcml2ZXI/IElmIHNvLCBJIGNhbiBxdWV1ZSBpdCBmb3IgdjcuMS4KPiAKCkkgaGF2ZSBj
b25maXJtZWQgaW50ZXJuYWxseSB0aGF0IG5vYm9keSBkZXBlbmRzIG9uIHRoZSBwcmUtZGVmaW5l
ZApHUElPIG51bWJlcmluZy4KClRoYW5rcy4KCj4gQmFydAo+IAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
