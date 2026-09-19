Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F950C982CC
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Sep 2026 09:39:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qTV6x24E37bdDsFvsRLJCr+yTZVuVdUCGafXYHiqa54=; b=d0C6xulmsR9XRy
	matk1lpCUB4J/tqXEUnd45bhAqTVnnxQvw/Cq1YhqGbkRQZoBP9KyBwJGuxw2JIqpMluxVIJbG7lv
	Ozk/JxUQTexNvo2Nq36S6nFbEsz7tdAVjBrGtAT9kxOvqDI3vtxlpLv6huVSgCykZhB5pyaiXobP8
	SRPWWhicZpy5lVuVwZj7MsvTYGQv0A4rSploDukn1vRCbln0rQDjCkUm1cXcC8O1MDdATX2+fiH3x
	WH2cMdXmsYaA9qwylI48uj2ae5bKftWeQC76jqaOSh9X9SiggXFLpf8bpwNQTBL72gSwvAyV+TiSj
	BWlOLr0or7srWSWX3O1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7rXN-0000000G8pT-15Iz;
	Sat, 19 Sep 2026 09:39:13 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7rXL-0000000G8oR-1eiQ
	for linux-rockchip@lists.infradead.org;
	Sat, 19 Sep 2026 09:39:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1789810750;
 bh=C5v7Aljt9tHacvzfj3/FAUxs1cLBe5dXs4Hz04Y3k7U=;
 b=InOh+eNGWfkcq1PRz7IBDw4PqQQeFvydZKBat5KBHfBhZu4nL4n1WMyuIDMhpC6+IgOsPUncs
 q74u24gaAQxP7YJ1U4P0/yH1q0/YIMtQRovSUcc0WVsFcFra9p3XIDkj2cjr/rWfgFTLrZSITfx
 ueiTYsvEMh+jff0DLpRZyhJLoZ6iurq5nWrFpqrp07Awmqd/apMl/7Ue7IarLiwAfO4iBthJB0K
 lm/GYdawGCzPGD+cBw9TFAEAQqNGwNzhf9+KUB6RPS+Wi+R+55PKwQIZjTSdx3ZuA5nVYgat4XH
 XSNPCE3b69S4LsvvO0InvCcmp5ac27RuP5/uCf6DKmog==
X-Forward-Email-ID: 6aae583c6b7a9fab87b109cf
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 2.14.2
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <2ca409b2-e614-4762-abc7-56b167f62a90@kwiboo.se>
Date: Sat, 19 Sep 2026 11:39:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/3] arm64: dts: rockchip: Split out the common NanoPi
 RK3528 parts
To: HystericalDragons@proton.me, Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Chukun Pan <amadeus@jmu.edu.cn>,
 jensen <jensenhuang@friendlyarm.com>, Andrey Korshunov
 <razor1702@gmail.com>, Diederik de Haas <diederik@cknow-tech.com>
References: <20260914-r28s-upstream-v6-0-ea9edd75c126@proton.me>
 <20260914-r28s-upstream-v6-2-ea9edd75c126@proton.me>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20260914-r28s-upstream-v6-2-ea9edd75c126@proton.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260919_023911_484110_BF301EDD 
X-CRM114-Status: GOOD (  19.35  )
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

SGksCgpPbiA5LzE0LzIwMjYgMzozNSBQTSwg5a6J5a65IHZpYSBCNCBSZWxheSB3cm90ZToKPiBG
cm9tOiDlronlrrkgPEh5c3RlcmljYWxEcmFnb25zQHByb3Rvbi5tZT4KPiAKPiBUaGUgRnJpZW5k
bHlFbGVjIE5hbm9QaSBaZXJvMiBhbmQgdGhlIE5hbm9QaSBSMjhTIHNoYXJlIHRoZWlyIHBvd2Vy
Cj4gdHJlZSwgc3RvcmFnZSwgUkdNSUkgRXRoZXJuZXQsIFJUQywgU1lTIExFRCBhbmQgZGVidWcg
Y29uc29sZS4gTW92ZQo+IHRob3NlIHBhcnRzIGludG8gcmszNTI4LW5hbm9waS5kdHNpIHNvIHRo
ZSBOYW5vUGkgUjI4UyBjYW4gcmV1c2UgdGhlbSwKPiBhbmQgbGVhdmUgb25seSB0aGUgYm9hcmQg
c3BlY2lmaWMgbm9kZXMgaW4gdGhlIE5hbm9QaSBaZXJvMiBkZXZpY2V0cmVlLgo+IAo+IFN1Z2dl
c3RlZC1ieTogQ2h1a3VuIFBhbiA8YW1hZGV1c0BqbXUuZWR1LmNuPgo+IFNpZ25lZC1vZmYtYnk6
IOWuieWuuSA8SHlzdGVyaWNhbERyYWdvbnNAcHJvdG9uLm1lPgo+IC0tLQo+ICAuLi4vYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTI4LW5hbm9waS16ZXJvMi5kdHMgICAgICB8IDI5MSArLS0tLS0tLS0t
LS0tLS0tLS0tLS0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1MjgtbmFub3Bp
LmR0c2kgICAgfCAyODggKysrKysrKysrKysrKysrKysrKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCAy
OTcgaW5zZXJ0aW9ucygrKSwgMjgyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzUyOC1uYW5vcGktemVybzIuZHRzIGIvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1MjgtbmFub3BpLXplcm8yLmR0cwo+IGluZGV4IDk3
ZDg1MTI0ZDIuLjhhN2RiZDUzOWYgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazM1MjgtbmFub3BpLXplcm8yLmR0cwo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTI4LW5hbm9waS16ZXJvMi5kdHMKPiBAQCAtMiw0MSArMiwxMyBAQAo+
ICAKPiAgL2R0cy12MS87Cj4gIAo+IC0jaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW5wdXQvaW5wdXQu
aD4KPiAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2xlZHMvY29tbW9uLmg+CgpZb3UgY2FuIGFsc28g
ZHJvcCB0aGlzIGluY2x1ZGUsIHlvdSBhcmUgYWxzbyBhZGRpbmcgdGhpcyBpbmNsdWRlIHRvIHRo
ZQpyazM1MjgtbmFub3BpLmR0c2kgZmlsZS4KCj4gLSNpbmNsdWRlIDxkdC1iaW5kaW5ncy9wd20v
cHdtLmg+Cj4gLSNpbmNsdWRlICJyazM1MjguZHRzaSIKPiArI2luY2x1ZGUgInJrMzUyOC1uYW5v
cGkuZHRzaSIKPiAgCj4gIC8gewo+ICAJbW9kZWwgPSAiRnJpZW5kbHlFbGVjIE5hbm9QaSBaZXJv
MiI7Cj4gIAljb21wYXRpYmxlID0gImZyaWVuZGx5YXJtLG5hbm9waS16ZXJvMiIsICJyb2NrY2hp
cCxyazM1MjgiOyAKCltzbmlwXQoKPiArJmxlZHMgewoKVGhpcyBzaG91bGQgYWxzbyBpbmNsdWRl
IGEgJ3BpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCInLCBhcyB3ZSBhcmUKcmUtZGVmaW5pbmcgcGlu
Y3RybC0wIGhlcmUuCgo+ICsJcGluY3RybC0wID0gPCZsZWQxPiwgPCZsZWRfc3lzPjsKClRoZSBs
ZWQxIGxhYmVsIGlzIGRlZmluZWQvc2hhcmVkIGFtb25nIHRoZSB0aHJlZSBib2FyZHMsIHlldCBs
ZWQtMSBpcwpkZWZpbmVkIGluIGVhY2ggYm9hcmQgRFQuIE1heWJlIGRlZmluZSBhIGNvbW1vbiBs
ZWQtMSBvciBtb3ZlIHRoZSBsZWQxCmxhYmVsIHRvIGJvYXJkIERUPwoKPiAgCj4gKwlsZWQtMSB7
Cj4gKwkJY29sb3IgPSA8TEVEX0NPTE9SX0lEX0dSRUVOPjsKPiArCQlkZWZhdWx0LXN0YXRlID0g
Im9uIjsKPiArCQlmdW5jdGlvbiA9IExFRF9GVU5DVElPTl9TVEFUVVM7Cj4gKwkJZ3Bpb3MgPSA8
JmdwaW80IFJLX1BCMSBHUElPX0FDVElWRV9ISUdIPjsKPiArCQlsaW51eCxkZWZhdWx0LXRyaWdn
ZXIgPSAiZGVmYXVsdC1vbiI7Cj4gIAl9Owo+ICB9OwoKW3NuaXBdCgo+IGRpZmYgLS1naXQgYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzUyOC1uYW5vcGkuZHRzaSBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTI4LW5hbm9waS5kdHNpCj4gbmV3IGZpbGUgbW9kZSAx
MDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwLi5mMTU0OTNmODI1Cj4gLS0tIC9kZXYvbnVsbAo+ICsr
KyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTI4LW5hbm9waS5kdHNpCj4gQEAg
LTAsMCArMSwyODggQEAKPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wKyBP
UiBNSVQpCj4gKy8qCj4gKyAqIENvbW1vbiBwYXJ0cyBvZiB0aGUgRnJpZW5kbHlFbGVjIFJLMzUy
OCBib2FyZHM6IE5hbm9QaSBaZXJvMiBhbmQgTmFub1BpIFIyOFMuCgpUaGlzIGNvbW1lbnQgZG9l
cyBub3QgcmVhbGx5IHNlcnZlIGEgcHVycG9zZSwgdGhpcyBpcyBhbHJlYWR5IGltcGxpZWQKZnJv
bSB0aGUgZmlsZW5hbWUuIEFuZCBpZiB5b3Ugd2FudCB0byBrZWVwIGl0LCBwbGVhc2UgdXNlIHNv
bWV0aGluZyB0aGF0CmlzIG1vcmUgZ2VuZXJpYyBhbmQgZG9lcyBub3QgbmVlZCB0byBjaGFuZ2Ug
d2hlbiBSMjhTIERUIGFuZCBORU8zIFBsdXMKRFQgaXMgYWRkZWQuCgogIENvbW1vbiBwYXJ0cyBv
ZiB0aGUgRnJpZW5kbHlFbGVjIE5hbm9QaSBSSzM1Mjggc2VyaWVzIGJvYXJkcwoKPiArICovCj4g
Kwo+ICsjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW5wdXQvaW5wdXQuaD4KPiArI2luY2x1ZGUgPGR0
LWJpbmRpbmdzL2xlZHMvY29tbW9uLmg+Cj4gKyNpbmNsdWRlIDxkdC1iaW5kaW5ncy9wd20vcHdt
Lmg+Cj4gKyNpbmNsdWRlICJyazM1MjguZHRzaSIKCltzbmlwXQoKPiArJnBpbmN0cmwgewo+ICsJ
ZXRoZXJuZXQgewo+ICsJCWdtYWMxX3JzdG5fbDogZ21hYzEtcnN0bi1sIHsKPiArCQkJcm9ja2No
aXAscGlucyA9IDw0IFJLX1BDMiBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF9ub25lPjsKPiArCQl9
Owo+ICsJfTsKPiArCj4gKwlsZWRzIHsKPiArCQlsZWQxOiBsZWQxIHsKPiArCQkJcm9ja2NoaXAs
cGlucyA9IDw0IFJLX1BCMSBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF9ub25lPjsKPiArCQl9OwoK
QXMgbWVudGlvbmVkIGFib3ZlLCBub3Qgc3VyZSB3aHkgd2UgY2Fubm90IGRlZmluZSBhIGNvbW1v
biBsZWQtMSBoZXJlIGlmCndlIGFsc28gZGVmaW5lIHRoZSBwaW4gaW4gdGhlIGNvbW1vbiBkdHNp
LgoKUmVnYXJkcywKSm9uYXMKCj4gKwo+ICsJCWxlZF9zeXM6IGxlZC1zeXMgewo+ICsJCQlyb2Nr
Y2hpcCxwaW5zID0gPDQgUktfUEIwIFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX25vbmU+Owo+ICsJ
CX07Cj4gKwl9Owo+ICsKPiArCXJ0YyB7Cj4gKwkJcnRjX2ludF9sOiBydGMtaW50LWwgewo+ICsJ
CQlyb2NrY2hpcCxwaW5zID0gPDQgUktfUEMxIFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX3VwPjsK
PiArCQl9Owo+ICsJfTsKPiArCj4gKwlzZG1tYyB7Cj4gKwkJc2RtbWNfcHdyZW5fbDogc2RtbWMt
cHdyZW4tbCB7Cj4gKwkJCXJvY2tjaGlwLHBpbnMgPSA8NCBSS19QQTEgUktfRlVOQ19HUElPICZw
Y2ZnX3B1bGxfbm9uZT47Cj4gKwkJfTsKPiArCj4gKwkJc2RtbWNfdm9sX2N0cmxfaDogc2RtbWMt
dm9sLWN0cmwtaCB7Cj4gKwkJCXJvY2tjaGlwLHBpbnMgPSA8NCBSS19QQjYgUktfRlVOQ19HUElP
ICZwY2ZnX3B1bGxfbm9uZT47Cj4gKwkJfTsKPiArCX07Cj4gK307Cgpbc25pcF0KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
