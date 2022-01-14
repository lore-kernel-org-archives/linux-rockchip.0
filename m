Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9CB5C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Jan 2022 16:42:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QCI+Pup6Yx/vbvcETYDYF+e9MYaz/5SGsuzg0VwMxdA=; b=EK2TemWeNGbLEX
	glCmYUVbC2RZYnx3Q/7xIgGbm8chLQCr/k8ZAFvTF37yWdnQXW+VhMM4IGskJpKYju+Wtp0mK1FcJ
	7gynQvWJUDyxdeDlAbAlVpmrW1sS4XL02Gax6P3PyHp2xL9DFW8bWib0EWdcgQNN/NTaJ5lWTSvNV
	ujB6ZKryMky4dTbsfIgbJRtIhA0GwhYzcii2uhlL9Ix7qHswppOeMLBaD7pKb8fDPj+JTpmN30Zox
	RZKciYmTbO/fal5ZcGZ8Cusyzpaj7h4dd20xmrsJN6sb98nIXwiJhPnFEZbdWdMUf0u4oUO+L3FzQ
	hd8wtm43/EiXArmlpLQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8Pem-009oMH-RU; Fri, 14 Jan 2022 16:42:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8PeX-009oIG-Rv; Fri, 14 Jan 2022 16:42:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CBBF76D;
 Fri, 14 Jan 2022 08:42:12 -0800 (PST)
Received: from [10.57.67.190] (unknown [10.57.67.190])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4A2F13F766;
 Fri, 14 Jan 2022 08:42:11 -0800 (PST)
Message-ID: <d2d54776-b4ee-2cda-334d-f868a6bbdf8b@arm.com>
Date: Fri, 14 Jan 2022 16:42:06 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 4/4] arm64: dts: rockchip: Enable the GPU on Quartz64
 Model A
Content-Language: en-GB
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>,
 Alex Bee <knaerzche@gmail.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 linux-rockchip@lists.infradead.org,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>
References: <20211126151729.1026566-1-knaerzche@gmail.com>
 <20211126151729.1026566-5-knaerzche@gmail.com>
 <EB2E04F1-BACA-4A4F-97F9-0257F29D57B5@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <EB2E04F1-BACA-4A4F-97F9-0257F29D57B5@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_084214_045705_176F46D0 
X-CRM114-Status: GOOD (  14.05  )
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

T24gMjAyMi0wMS0xNCAxNjoyNSwgUGlvdHIgT25pc3pjenVrIHdyb3RlOgo+IAo+IAo+PiBXaWFk
b21vxZvEhyBuYXBpc2FuYSBwcnpleiBBbGV4IEJlZSA8a25hZXJ6Y2hlQGdtYWlsLmNvbT4gdyBk
bml1IDI2LjExLjIwMjEsIG8gZ29kei4gMTY6MTc6Cj4+Cj4+IEZyb206IEV6ZXF1aWVsIEdhcmNp
YSA8ZXplcXVpZWxAY29sbGFib3JhLmNvbT4KPj4KPj4gRW5hYmxlIHRoZSBHUFUgY29yZSBvbiB0
aGUgUGluZTY0IFF1YXJ0ejY0IE1vZGVsIEEuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEV6ZXF1aWVs
IEdhcmNpYSA8ZXplcXVpZWxAY29sbGFib3JhLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogQWxleCBC
ZWUgPGtuYWVyemNoZUBnbWFpbC5jb20+Cj4+IC0tLQo+PiBhcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzU2Ni1xdWFydHo2NC1hLmR0cyB8IDUgKysrKysKPj4gMSBmaWxlIGNoYW5nZWQs
IDUgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazM1NjYtcXVhcnR6NjQtYS5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU2Ni1xdWFydHo2NC1hLmR0cwo+PiBpbmRleCA0ZDRiMmEzMDFiMWEuLjYyNTQ4OWM2
MDYyMiAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjYt
cXVhcnR6NjQtYS5kdHMKPj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1
NjYtcXVhcnR6NjQtYS5kdHMKPj4gQEAgLTIwNSw2ICsyMDUsMTEgQEAgJmdtYWMxbTBfY2xraW5v
dXQKPj4gCXN0YXR1cyA9ICJva2F5IjsKPj4gfTsKPj4KPj4gKyZncHUgewo+PiArCW1hbGktc3Vw
cGx5ID0gPCZ2ZGRfZ3B1PjsKPj4gKwlzdGF0dXMgPSAib2theSI7Cj4+ICt9Owo+PiArCj4+ICZp
MmMwIHsKPj4gCXN0YXR1cyA9ICJva2F5IjsKPj4KPj4gLS0gCj4+Cj4gCj4gQWxleCwgRXplcXVp
ZWwKPiAKPiBJJ20gcGxheWluZyB3aXRoIDUuMTYgbWFpbmxpbmUgb24gcmszNTY2IGJhc2VkIHR2
Ym94ICh4OTYteDYpCj4gCj4gQm94IGJvb3RzIGFuZCBJIGhhdmUgd29ya2luZyBTRCBjYXJkLCBF
dGgsIEhETUkuCj4gCj4gSSBhcHBsaWVkIHRoaXMgc2VyaWVzIGFzIEkgd2FudCB0byBnZXQgR1BV
IHdvcmtpbmcgYnV0IEknbSBnZXR0aW5nOgo+IAo+IFsgICAgMy4xNjkxNDRdIHBhbmZyb3N0IGZk
ZTYwMDAwLmdwdTogZ2V0IGNsb2NrIGZhaWxlZCAtNTE3Cj4gWyAgICAzLjE2OTY0Nl0gcGFuZnJv
c3QgZmRlNjAwMDAuZ3B1OiBjbGsgaW5pdCBmYWlsZWQgLTUxNwo+IFsgICAgMy4yMTM2NTNdIHBh
bmZyb3N0IGZkZTYwMDAwLmdwdTogZ2V0IGNsb2NrIGZhaWxlZCAtNTE3Cj4gWyAgICAzLjIxNDE1
Nl0gcGFuZnJvc3QgZmRlNjAwMDAuZ3B1OiBjbGsgaW5pdCBmYWlsZWQgLTUxNwo+IFsgICAgMy4y
MzA1MDVdIHBhbmZyb3N0IGZkZTYwMDAwLmdwdTogZ2V0IGNsb2NrIGZhaWxlZCAtNTE3Cj4gWyAg
ICAzLjIzMTAwNl0gcGFuZnJvc3QgZmRlNjAwMDAuZ3B1OiBjbGsgaW5pdCBmYWlsZWQgLTUxNwo+
IFsgICAgMy4yNTgwNzJdIHBhbmZyb3N0IGZkZTYwMDAwLmdwdTogZ2V0IGNsb2NrIGZhaWxlZCAt
NTE3Cj4gWyAgICAzLjI1ODU3NV0gcGFuZnJvc3QgZmRlNjAwMDAuZ3B1OiBjbGsgaW5pdCBmYWls
ZWQgLTUxNwo+IAo+IE1heWJlIHlvdSBoYXZlIHNvbWUgaGludHMgaGVyZT8KCjUxNyBpcyBFUFJP
QkVfREVGRVIsIHdoaWNoIGltcGxpZXMgaXQncyB3YWl0aW5nIGZvciB0aGUgcmVsZXZhbnQgY2xv
Y2sgCnByb3ZpZGVyIHRvIHNob3cgdXAuIEkgc2VlIGZyb20gcGF0Y2ggIzIgdGhhdCBTQ01JIGlz
IGludm9sdmVkLCBzbyBJJ2QgCmNoZWNrIHRoYXQgdGhhdCdzIHdvcmtpbmcgYW5kIHlvdSBoYXZl
IENPTkZJR19DT01NT05fQ0xPQ0tfU0NNSSBlbmFibGVkLgoKUm9iaW4uCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
