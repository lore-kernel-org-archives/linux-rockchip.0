Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8C48E9E30D
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Feb 2026 14:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Cc:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ELyCutc9qtyaRP21arqtaJhdvbJDy1ctrlWfIcrPlAA=; b=mM1/996ifnCVVu2zIWDg1Ef9t+
	fiekElt73b6s5EW8Snz96NdGJvf7RDzM+7JJ/fRB561UA+TmAl5BgGYGfvd59R1OQEYrKD+0mXEfD
	J5FOBkdhBE6UHcU35mZea6UkyEicXZofPouL+TUFrIrAUW6TM9Ajja8ZDIANkxlEmbBJHnLVwFejO
	cjGdNBfp+vu1QHrZzTaNCEQSoZFoGPxoA+bhNWdLA9VdjkzYCMPIXATc4caqNTbphCTscEKaqGJxT
	Jj6VqL8bjb5NtevPTmJy915qUx/IfLei4opnUMiqa9f0ImPdo8aHAWxGnIkpgc6cHt64ounVK146H
	TIuAiM2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqB9E-00000000jF9-4Amr;
	Wed, 11 Feb 2026 14:24:57 +0000
Received: from mail-m49238.qiye.163.com ([45.254.49.238])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqB9C-00000000jET-1Gfn;
	Wed, 11 Feb 2026 14:24:55 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 33e12f735;
	Wed, 11 Feb 2026 22:24:51 +0800 (GMT+08:00)
Cc: shawn.lin@rock-chips.com, quentin.schulz@cherry.de,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: Re: [PATCH v2 2/4] arm64: dts: rockchip: use gated-fixed-clock for
 pcie-refclk on rk3588-tiger
To: Heiko Stuebner <heiko@sntech.de>
References: <20260210080303.680403-1-heiko@sntech.de>
 <20260210080303.680403-3-heiko@sntech.de>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <e82bd097-3f66-ea31-9dce-77e806174763@rock-chips.com>
Date: Wed, 11 Feb 2026 22:24:49 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20260210080303.680403-3-heiko@sntech.de>
X-HM-Tid: 0a9c4d172f9709cckunm937070351137e9
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQxlCS1ZPHksdS0pJSElOTElWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=XXEaKLkWVXFuigclxFWuBXetqB9jU7Iis9D+Z2ZK2gvCJLZCcyAcRUZoH4jIvMhWqEzslLTkTVkWBdU8HuJHHg+8Y3No4gustF4ZZY/bWMoSnz+GcSPg1ItD0/sQWj8cSv3K1CK7V9j4vuLGzAE9lE9HrVSG5aH7RIlNV1AIIz0=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=1cbYuRDQwymK6OOU58iBAkyi1AjdH/qPbmtobJhA14U=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260211_062454_534400_4551D6DB 
X-CRM114-Status: GOOD (  20.06  )
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
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

1NogMjAyNi8wMi8xMCDQx8batv4gMTY6MDMsIEhlaWtvIFN0dWVibmVyINC0tcA6Cj4gRnJvbTog
SGVpa28gU3R1ZWJuZXIgPGhlaWtvLnN0dWVibmVyQGNoZXJyeS5kZT4KPiAKPiBVc2luZyBhIGNv
bWJpbmF0aW9uIG9mIGZpeGVkIGNsb2NrIGFuZCBncGlvLWdhdGUgY2xvY2sgd29ya3MgYnV0IGRv
ZXMKPiBub3QgZGVzY3JpYmUgdGhlIGFjdHVhbCBoYXJkd2FyZS4gVXNlIHRoZSBnYXRlZC1maXhl
ZC1jbG9jayBiaW5kaW5nCj4gdG8gZGVzY3JpYmUgdGhpcyBpbiBhIG5pY2VyIHdheS4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa28uc3R1ZWJuZXJAY2hlcnJ5LmRlPgo+
IC0tLQo+ICAgLi4uL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC10aWdlci5kdHNpIHwg
MTkgKysrKystLS0tLS0tLS0tLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygr
KSwgMTQgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTg4LXRpZ2VyLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzU4OC10aWdlci5kdHNpCj4gaW5kZXggMjcyNjliN2IwOGFhLi5iNGI4ZjMwNTkzNWYgMTAw
NjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtdGlnZXIuZHRz
aQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXRpZ2VyLmR0c2kK
PiBAQCAtNDcsMjMgKzQ3LDE0IEBAIGxlZC0xIHsKPiAgIAkJfTsKPiAgIAl9Owo+ICAgCj4gLQkv
Kgo+IC0JICogMTAwTUh6IHJlZmVyZW5jZSBjbG9jayBmb3IgUENJZSBwZXJpcGhlcmFscyBmcm9t
IFBJNkM1NTctMDVCTEUKPiAtCSAqIGNsb2NrIGdlbmVyYXRvci4KPiAtCSAqIFRoZSBjbG9jayBv
dXRwdXQgaXMgZ2F0ZWQgdmlhIHRoZSBPRSBwaW4gb24gdGhlIGNsb2NrIGdlbmVyYXRvci4KPiAt
CSAqIFRoaXMgaXMgbW9kZWxlZCBhcyBhIGZpeGVkLWNsb2NrIHBsdXMgYSBncGlvLWdhdGUtY2xv
Y2suCj4gLQkgKi8KPiAtCXBjaWVfcmVmY2xrX2dlbjogcGNpZS1yZWZjbGstZ2VuLWNsb2NrIHsK
PiAtCQljb21wYXRpYmxlID0gImZpeGVkLWNsb2NrIjsKPiArCS8qIDEwME1IeiBQQ0llIHJlZmVy
ZW5jZSBjbG9jayBmcm9tIFBJNkM1NTctMDVCTEUgKi8KPiArCXBjaWVfcmVmY2xrOiBwY2llLWNs
b2NrLWdlbmVyYXRvciB7Cj4gKwkJY29tcGF0aWJsZSA9ICJnYXRlZC1maXhlZC1jbG9jayI7Cj4g
ICAJCSNjbG9jay1jZWxscyA9IDwwPjsKPiAgIAkJY2xvY2stZnJlcXVlbmN5ID0gPDEwMDAwMDAw
MD47Cj4gLQl9Owo+IC0KPiAtCXBjaWVfcmVmY2xrOiBwY2llLXJlZmNsay1jbG9jayB7Cj4gLQkJ
Y29tcGF0aWJsZSA9ICJncGlvLWdhdGUtY2xvY2siOwo+IC0JCWNsb2NrcyA9IDwmcGNpZV9yZWZj
bGtfZ2VuPjsKPiAtCQkjY2xvY2stY2VsbHMgPSA8MD47Cj4gKwkJY2xvY2stb3V0cHV0LW5hbWVz
ID0gInBjaWUtcmVmY2xrLWNsb2NrIjsKPiAgIAkJZW5hYmxlLWdwaW9zID0gPCZncGlvNCBSS19Q
QjQgR1BJT19BQ1RJVkVfSElHSD47IC8qIFBDSUUzMFg0X0NMS1JFUU5fTTFfTCAqLwoKVGhlIGNo
YW5nZSBpdHNlbGYgbG9va3MgZmluZSAsIHNvClJldmlld2VkLWJ5OiBTaGF3biBMaW4gPHNoYXdu
LmxpbkByb2NrLWNoaXBzLmNvbT4KCkhvd2V2ZXIsIGlmIGl0J3MgZGVzaWduZWQgYXMgYWN0aXZl
IGhpZ2gsIEkgd291bGQgc2F5IFRpZ2VyIGlzIGFnYWluc3QKdGhlIHRoZSBQQ0llIHNwZWMgYWJv
dXQgaG93IEwxIHN1YnN0YXRlIHdvcmsuIFBlcmhhcHMgeW91IGNvdWxkIGNoZWNrClBDSWUgc3Bl
YyB2Ny4wLCBGaWd1cmUgNS0xNiBFeGFtcGxlOiBMMS4yIFdhdmVmb3JtcyBJbGx1c3RyYXRpbmcK
VXBzdHJlYW0gUG9ydCBJbml0aWF0ZWQgRXhpdC4uIFdoZW4gaW4gTDEuMiwgY2xrcmVxIyBzaG91
bGQgYmUgcmVsZWFzZWQKYnkgYm90aCBlbmRzLCBhbmQgdGhlIHB1bGwtdXAgcmVnaXN0ZXIgYnkg
d2hhdGV2ZXJ5IHdheSB3aWxsIG1ha2UgaXQKaW50byBoaWdoLCBhbmQgdGh1cyByZWZjbGsgaXMg
Z2F0ZWQgYXV0b21hdGljYWxseS4KCgo+ICsJCXZkZC1zdXBwbHkgPSA8JnZjY2FfM3YzX3MwPjsK
PiAgIAl9Owo+ICAgCj4gICAJdmNjXzF2MV9ubGRvX3MzOiByZWd1bGF0b3ItdmNjLTF2MS1ubGRv
LXMzIHsKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
