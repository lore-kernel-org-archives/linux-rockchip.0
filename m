Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECB8FD30CC2
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jan 2026 20:21:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CNVq1BaYpr1os3M2SNHWzRFvV0aey1m1aUlvvE5oto4=; b=wFy5wkxskbqVHJ
	poZUQNN3MW5R/qhHwqTPckuN7jp3084yrxmqfwE5SUJoCEa4s6vaD+wAZGvgRyqivwCJWkQ/kMTQw
	zbmSpK8j9gaOHvBujlwJ+HEo7801nuB6N82pezHCkbElK4YXrL20l2WILO8ml7EUdqm1NnEDY9D+W
	CBjQNMSsdICnBfBv32xX04ecNLZbHaXOWB6OQouFa0i5XxRR/Z+rzehivVzlaFnXjpbREvdM/3Dwo
	WUVxIu7aNyRJtEbXxIQUyXarQo57E6Ogf9XyPMHQw0818x504h79Ffw/+Uf0Z79d4b/7zHKW/9tCF
	DWq7mrDW6V1Q75sB9akA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfkt4-00000007gTl-2su6;
	Tue, 13 Jan 2026 20:21:10 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfksw-00000007gTA-3yal;
	Tue, 13 Jan 2026 20:21:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1768335657; bh=4qRB3n1SAwl6RtI0sIa55a0VepVkx8uJIqy5veReaWg=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=iMQZzVmEAPqwtnWIOrfBvjn78MLlUP45stGFjZBJOjL14mg5xgw24Fgce+Jm4CEm2
	 Y8g4jgebc+b9Te1t/g5sFm8ivP6vGfwOw1IqpeeQaoXFhekYK4vyROH+jsgf+PRfOY
	 x/Q3ToYiyAp9ipXF5lsQQDQSd2LBoeol7R1REkMU=
Date: Tue, 13 Jan 2026 21:20:57 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: guptarud@gmail.com
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Lee Jones <lee@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Kamil =?utf-8?Q?Trzci=C5=84ski?= <ayufan@ayufan.eu>, Martijn Braam <martijn@brixit.nl>
Subject: Re: [PATCH 2/3] mfd: rk8xx-core: Configure `rk808-clkout2` function
Message-ID: <w7vj2nkvxmledeptr7gd5twa6nxtgmaleenkdqjay22ppxba6t@z66nt7k5qi6q>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>, 
	guptarud@gmail.com, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Lee Jones <lee@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Kamil =?utf-8?Q?Trzci=C5=84ski?= <ayufan@ayufan.eu>, Martijn Braam <martijn@brixit.nl>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20260112-ppp_connectivity-v1-0-284d6e83b212@gmail.com>
 <20260112-ppp_connectivity-v1-2-284d6e83b212@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260112-ppp_connectivity-v1-2-284d6e83b212@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_122103_456530_EF4AAFDB 
X-CRM114-Status: GOOD (  15.36  )
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

T24gTW9uLCBKYW4gMTIsIDIwMjYgYXQgMTA6NDI6MjVQTSAtMDgwMCwgUnVkcmFrc2hhIEd1cHRh
IHZpYSBCNCBSZWxheSB3cm90ZToKPiBGcm9tOiBLYW1pbCBUcnpjacWEc2tpIDxheXVmYW5AYXl1
ZmFuLmV1Pgo+IAo+IFdoaWxlIHRoZSBXaWZpIGFuZCBCbHVldG9vdGggY2hpcCBhcmUgZGVmaW5l
ZCBpbiB0aGUgUGluZXBob25lIFBybydzCj4gRFRTLCBpdCBhY3R1YWxseSBpc24ndCBhYmxlIHRv
IGJlIHVzZWQuIExldCdzIGRlZmluZSByazgwOC1jbGtvdXQyIHNvCj4gdGhhdCB1c2Vyc3BhY2Ug
Y2FuIGFjdHVhbGx5IGludGVyYWN0IHdpdGggV2lmaSBhbmQgQmx1ZXRvb3RoCj4gCj4gQ28tZGV2
ZWxvcGVkLWJ5OiBNYXJ0aWpuIEJyYWFtIDxtYXJ0aWpuQGJyaXhpdC5ubD4KPiBTaWduZWQtb2Zm
LWJ5OiBNYXJ0aWpuIEJyYWFtIDxtYXJ0aWpuQGJyaXhpdC5ubD4KPiBTaWduZWQtb2ZmLWJ5OiBL
YW1pbCBUcnpjacWEc2tpIDxheXVmYW5AYXl1ZmFuLmV1Pgo+IFNpZ25lZC1vZmYtYnk6IE9uZHJl
aiBKaXJtYW4gPG1lZ2lAeGZmLmN6PgoKSGkgUnVkcmFrc2hhLCBJIGRvbid0IGJlbG9uZyBoZXJl
LiBTZW1pLW9yaWdpbmFsIHBhdGNoIGZyb20gNSB5cnMgYWdvIGlzIGhlcmU6CiAgCiAgaHR0cHM6
Ly9jb2RlYmVyZy5vcmcvbWVnaS9saW51eC9jb21taXQvNzViZTk2ZmFmOTM5NTA0ZDBmZDUxMTI4
NDZlNzNlNDM3NTczZjcxNgoKdGhhbmtzLAoJby4KCj4gU2lnbmVkLW9mZi1ieTogUnVkcmFrc2hh
IEd1cHRhIDxndXB0YXJ1ZEBnbWFpbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvbWZkL3JrOHh4LWNv
cmUuYyAgfCAxICsKPiAgaW5jbHVkZS9saW51eC9tZmQvcms4MDguaCB8IDIgKysKPiAgMiBmaWxl
cyBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZmQv
cms4eHgtY29yZS5jIGIvZHJpdmVycy9tZmQvcms4eHgtY29yZS5jCj4gaW5kZXggZGVmNDU4N2Zk
ZmI4Li42MDIyMTg2OTQzMzQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZmQvcms4eHgtY29yZS5j
Cj4gKysrIGIvZHJpdmVycy9tZmQvcms4eHgtY29yZS5jCj4gQEAgLTI4Miw2ICsyODIsNyBAQCBz
dGF0aWMgY29uc3Qgc3RydWN0IHJrODA4X3JlZ19kYXRhIHJrODE4X3ByZV9pbml0X3JlZ1tdID0g
ewo+ICAJeyBSSzgxOF9INVZfRU5fUkVHLAkgIEJJVCgwKSwJICAgIFJLODE4X0g1Vl9FTiB9LAo+
ICAJeyBSSzgwOF9WQl9NT05fUkVHLAkgIE1BU0tfQUxMLAkgICAgVkJfTE9fQUNUIHwKPiAgCQkJ
CQkJICAgIFZCX0xPX1NFTF8zNTAwTVYgfSwKPiArCXsgUks4MDhfQ0xLMzJPVVRfUkVHLCBDTEsz
MktPVVQyX0ZVTkNfTUFTSywgQ0xLMzJLT1VUMl9GVU5DIH0sCj4gIH07Cj4gIAo+ICBzdGF0aWMg
Y29uc3Qgc3RydWN0IHJlZ21hcF9pcnEgcms4MDVfaXJxc1tdID0gewo+IGRpZmYgLS1naXQgYS9p
bmNsdWRlL2xpbnV4L21mZC9yazgwOC5oIGIvaW5jbHVkZS9saW51eC9tZmQvcms4MDguaAo+IGlu
ZGV4IDI4MTcwZWUwODg5OC4uMDc3ZmUyZTE1Yjc4IDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvbGlu
dXgvbWZkL3JrODA4LmgKPiArKysgYi9pbmNsdWRlL2xpbnV4L21mZC9yazgwOC5oCj4gQEAgLTkz
NCw2ICs5MzQsOCBAQCBlbnVtIHJrODA2X2R2c19tb2RlIHsKPiAgCj4gICNkZWZpbmUgVk9VVF9M
T19JTlQJQklUKDApCj4gICNkZWZpbmUgQ0xLMzJLT1VUMl9FTglCSVQoMCkKPiArI2RlZmluZSBD
TEszMktPVVQyX0ZVTkMJCSgwIDw8IDEpCj4gKyNkZWZpbmUgQ0xLMzJLT1VUMl9GVU5DX01BU0sJ
QklUKDEpCj4gIAo+ICAjZGVmaW5lIFRFTVAxMDVDCQkJMHgwOAo+ICAjZGVmaW5lIFRFTVAxMTVD
CQkJMHgwYwo+IAo+IC0tIAo+IDIuNTIuMAo+IAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
