Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5779DC88E6A
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Sep 2026 09:28:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZRcgcx5pVjzTuhUzZOUBp1J84NkaOfVUFEeiz5eTAXA=; b=UbVGWzJNV7yqh9
	kBsnlrJcXoHjBbViWWGxSIKlYPZfTP9qvK2w+gDojNX/igOgkijrqDwSlJcJ76fXMe99bxt6SWOSU
	5NVNTWnkh+Xx03kttzWNwpIJJ4JsLuj+ffbSKIOOQDXIiCQM/7EVMYN0YoqvNh61dkuWXaIka7umU
	wTi6MRCWUKnlGmNky+YKB4bvnSZS4zBwI2mL+JEdlfQjVlTOYWUtz6ugxFiDht/YPRik3PCYDdUi5
	s0chFETJIk+yN4K/a+Knjk6mUv+yHrKmVVwRljVbawPj4UzNaTEnXd9lCM6tmDF57oCiqry+chg1v
	Yl8S0Ltz9bGdFJmWFTKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x62zP-00000002xcO-01F4;
	Mon, 14 Sep 2026 09:28:39 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x62zM-00000002xaX-1yBa
	for linux-rockchip@lists.infradead.org;
	Mon, 14 Sep 2026 09:28:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1789378116;
 bh=mewteUdeB+vh/ROowqyMXpJPpjRCsZe73lQbBQU5dyg=;
 b=T32piIf6dMMOPmOM2U7G3pzHoeEkzHT6eOVlhnK9NbFUoGMw5vHQZEimUHYIl3bAXVScz7Jp6
 1wHKVm38kS4lOms/GL5igCiGK/OoxtMJ3RfsIfwkzAc1+lxoJ88HRlZk9c1SazNvOIFNdT5dWMo
 mR03+d3pYyn6QaYWOrY+9u3TtE12hfMm6CWyhLcN9M0DNuoviXmk9/u6J3YXxZSVy4VO/Hn8Eho
 g6fLshDmBJ6HGa1S9lHj9AfFdC07xST6UayStHZ4u5VcLYiCQq1+90LRZPElfvSqX0RaA0o8IRL
 luW88/cK1r99haB4/wpsRXUKEXJIAfjrB4qG42u/IxIw==
X-Forward-Email-ID: 6aa7be39469f56687e0fbce3
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 2.14.2
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <1074c834-1d64-4bda-b6d5-599755324dcd@kwiboo.se>
Date: Mon, 14 Sep 2026 11:28:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/4] arm64: dts: rockchip: Split out the common NanoPi
 RK3528 parts
To: HystericalDragons@proton.me
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Chukun Pan <amadeus@jmu.edu.cn>, jensen <jensenhuang@friendlyarm.com>,
 Andrey Korshunov <razor1702@gmail.com>,
 Diederik de Haas <diederik@cknow-tech.com>
References: <20260914-r28s-upstream-v5-0-7409c498e8dc@proton.me>
 <20260914-r28s-upstream-v5-2-7409c498e8dc@proton.me>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20260914-r28s-upstream-v5-2-7409c498e8dc@proton.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260914_022836_541147_4DB83D26 
X-CRM114-Status: GOOD (  14.49  )
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

SGksCgpPbiA5LzE0LzIwMjYgMTA6MjQgQU0sIOWuieWuuSB2aWEgQjQgUmVsYXkgd3JvdGU6Cj4g
RnJvbTog5a6J5a65IDxIeXN0ZXJpY2FsRHJhZ29uc0Bwcm90b24ubWU+Cj4gCj4gVGhlIEZyaWVu
ZGx5RWxlYyBOYW5vUGkgWmVybzIgYW5kIHRoZSBOYW5vUGkgUjI4UyBzaGFyZSB0aGVpciBwb3dl
cgo+IHRyZWUsIHN0b3JhZ2UsIFJHTUlJIEV0aGVybmV0LCBSVEMsIFNZUyBMRUQgYW5kIGRlYnVn
IGNvbnNvbGUuIE1vdmUKPiB0aG9zZSBwYXJ0cyBpbnRvIHJrMzUyOC1uYW5vcGkuZHRzaSBzbyB0
aGUgTmFub1BpIFIyOFMgY2FuIHJldXNlIHRoZW0sCj4gYW5kIGxlYXZlIG9ubHkgdGhlIGJvYXJk
IHNwZWNpZmljIG5vZGVzIGluIHRoZSBOYW5vUGkgWmVybzIgZGV2aWNldHJlZS4KPiAKPiBTdWdn
ZXN0ZWQtYnk6IENodWt1biBQYW4gPGFtYWRldXNAam11LmVkdS5jbj4KPiBTaWduZWQtb2ZmLWJ5
OiDlronlrrkgPEh5c3RlcmljYWxEcmFnb25zQHByb3Rvbi5tZT4KPiAtLS0KPiAgLi4uL2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzUyOC1uYW5vcGktemVybzIuZHRzICAgICAgfCAzMDcgKy0tLS0tLS0t
LS0tLS0tLS0tLS0tCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTI4LW5hbm9w
aS5kdHNpICAgIHwgMzA0ICsrKysrKysrKysrKysrKysrKysrCj4gIDIgZmlsZXMgY2hhbmdlZCwg
MzEzIGluc2VydGlvbnMoKyksIDI5OCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1MjgtbmFub3BpLXplcm8yLmR0cyBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTI4LW5hbm9waS16ZXJvMi5kdHMKPiBpbmRleCA5
N2Q4NTEyNGQyLi5hOGQ5OWY5ODNmIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTI4LW5hbm9waS16ZXJvMi5kdHMKPiArKysgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzUyOC1uYW5vcGktemVybzIuZHRzCgpbc25pcF0KCj4gLQo+ICAmdXNi
X2hvc3QwX2VoY2kgewo+ICAJc3RhdHVzID0gIm9rYXkiOwo+ICB9Owo+IEBAIC0zNDcsMjMgKzc0
LDcgQEAgJnVzYl9ob3N0MF9vaGNpIHsKPiAgCXN0YXR1cyA9ICJva2F5IjsKPiAgfTsKPiAgCj4g
LSZ1c2JfaG9zdDBfeGhjaSB7Cj4gLQlleHRjb24gPSA8JnVzYjJwaHk+Owo+IC0JbWF4aW11bS1z
cGVlZCA9ICJoaWdoLXNwZWVkIjsKPiAtCXBoeXMgPSA8JnVzYjJwaHlfb3RnPjsKPiAtCXBoeS1u
YW1lcyA9ICJ1c2IyLXBoeSI7Cj4gLQlzdGF0dXMgPSAib2theSI7Cj4gLX07CgpJIHN1Z2dlc3Qg
eW91IGtlZXAgYWxsIFVTQiBub2RlcyBpbiB0aGUgZGV2aWNlIGJvYXJkIGZpbGVzLCBORU8zIFBs
dXMKaGF2ZSBVU0IgMy4wIHN1cHBvcnQgYW5kIHVzZXMgZGlmZmVyZW50IGNvbmZpZ3VyYXRpb24u
IFNvIGl0IHdpbGwgYmUKZWFzaWVyIHRvIGdldCBhbiBvdmVydmlldyBpZiBVU0Igbm9kZXMgYXJl
IGtlcHQgaW4gdGhlIGJvYXJkIERULgoKRWxzZSBtb3N0IG9mIHRoaXMgc3BsaXQgbWF0Y2hlcyB3
aGF0IEkgcGxheWVkIGFyb3VuZCB3aXRoIGZvciBVLUJvb3QgYXQKWzFdIGEgZmV3IHdlZWtzIGFn
by4gSSBwbGFuIHRvIHNlbmQgb3V0IHRoZSBORU8zIFBsdXMgRFQgYmFzZWQgb24gdGhpcwpzZXJp
ZXMgbGF0ZXIuCgpbMV0gaHR0cHM6Ly9naXQudS1ib290LXByb2plY3Qub3JnL3UtYm9vdC9jb250
cmlidXRvcnMva3dpYm9vL3UtYm9vdC8tL2NvbW1pdC80MDM4MjQ2OGJhN2NlOWFhMmU3ZGNkZTBl
NTkwMDNmZDBkMjIwYjQzCgpSZWdhcmRzLApKb25hcwoKPiAtCj4gLSZ1c2IycGh5IHsKPiAtCXN0
YXR1cyA9ICJva2F5IjsKPiAtfTsKPiAtCj4gICZ1c2IycGh5X2hvc3Qgewo+ICAJcGh5LXN1cHBs
eSA9IDwmdXNiMl9ob3N0XzV2PjsKPiAgCXN0YXR1cyA9ICJva2F5IjsKPiAgfTsKPiAtCj4gLSZ1
c2IycGh5X290ZyB7Cj4gLQlzdGF0dXMgPSAib2theSI7Cj4gLX07Cgpbc25pcF0KCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
