Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66F01C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Aug 2024 22:11:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EVtjDG90yqaUzBwn5jLcds0mcNPBHDKHdOMuV9qPvqs=; b=XACLEDI1rVdRN3
	SYnMbX74TF5aPX7r/2kmNFDmNbtx/YeEGVgsVlg6pKB5BzCbhzAb82Cm8fofJVOVM6x3ney4fYV2L
	Eg3SJhjKbcIAkABQSNfrc46QVwJhrqhEaJc7rjfxa8OfC1IiItz8jluin8xNfin8IMKXehhXoIe3A
	cuLreqHS1AGEIOZ11J4c7Wno22PFk9eVMKP0zMlAgcVbf1A7NoOddnvfB2JgI3BcN30TcgutPVWQF
	G/d7bzSxjl9j3R904A76oKXt6Syh7lCJeG6itPISHfXSh8trbKoKCjHXzv7pttJRJ2cQKOVPnRFyK
	p3pmoEANpifu6wDCOzdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sf5Ad-0000000EAqv-3nZW;
	Fri, 16 Aug 2024 22:11:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sf5Aa-0000000EApy-3wAz
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Aug 2024 22:11:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=3y95ZwWSl632o+sXaCqANOkSbXUNIJiKQPmDH7plQU0=; b=Vvuw/11lAEnKKI7205FZe2JcMv
	pcE1dEQpyOCfkyFOE3AVtMp4b7ri6nTnS61DWdcXBI8J6M38T2TPO9Ywj6TSO9lPAeciRMmkHy9/E
	MjO8BIMAs9yT2b0FzgaH5prdcajNGdcUSNIMv5iZrfrdrbVPaOqeTkOmByhd1qKgCBSfg0Oq9XFUk
	lMdf7OZHVa7uibgPXnQTFv8/J1E5cjT1a0dSN7fLmWrh/Ssfhbu2BidzNLm2/RjXduqqOjKKpicVi
	FJMG++uheLzwmxu3kkaeE1N4xucrlARppEkQrvpJZAHxb5/OBdC+1CIha8BAIrUHFclR0VH3XAWxK
	a5owt+aw==;
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sf5AR-0007hb-Jp; Sat, 17 Aug 2024 00:11:31 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH v5 2/2] arm64: dts: rockchip: add support for Radxa ROCK Pi E v3.0
Date: Sat, 17 Aug 2024 00:11:32 +0200
Message-ID: <1819066.TLkxdtWsSY@diego>
In-Reply-To: <20240816213429.1093-2-naoki@radxa.com>
References: <20240816213429.1093-1-naoki@radxa.com>
 <20240816213429.1093-2-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240816_151141_018939_6435B50C 
X-CRM114-Status: GOOD (  19.79  )
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

QW0gRnJlaXRhZywgMTYuIEF1Z3VzdCAyMDI0LCAyMzozNDoyOSBDRVNUIHNjaHJpZWIgRlVLQVVN
SSBOYW9raToKPiBSYWR4YSBST0NLIFBpIEUgdjMuMCBpcyBhIGNvbXBhY3QgbmV0d29ya2luZyBT
QkNbMV0gdXNpbmcgdGhlIFJvY2tjaGlwCj4gUkszMzI4IGNoaXAgdGhhdCBzaGlwcyBpbiBhIG51
bWJlciBvZiBSQU0vZU1NQy9XaUZpL0JUIGNvbmZpZ3VyYXRpb25zOgo+IAo+IC0gUm9ja2NoaXAg
UkszMzI4IFNvQwo+IC0gUXVhZCBBNTMgQ1BVCj4gLSA1MTJNQi8xR0IvMkdCIEREUjQgUkFNCj4g
LSA0LzgvMTYvMzJHQiBlTU1DCj4gLSBNaWNybyBTRCBDYXJkIHNsb3QKPiAtIFdpRmkgNCBhbmQg
QlQgNCwgb3IgV2lGaSA1IGFuZCBCVCA1Cj4gLSAxeCAxMDAwTSBFdGhlcm5ldCBzdXBwb3J0aW5n
IFBvRSB3aXRoIGFkZOKAkW9uIFBvRSBIQVQKPiAtIDF4IDEwME0gRXRoZXJuZXQKPiAtIDF4IFVT
QiAzLjAgVHlwZS1BIHBvcnQgKEhvc3QpCj4gLSAxeCA0LXJpbmcgMy41bW0gaGVhZHBob25lIGph
Y2sKPiAtIDQwIFBpbiBHUElPIGhlYWRlcgo+IAo+IFsxXSBodHRwczovL3JhZHhhLmNvbS9wcm9k
dWN0cy9yb2NrcGkvcGllCj4gCj4gU2lnbmVkLW9mZi1ieTogRlVLQVVNSSBOYW9raSA8bmFva2lA
cmFkeGEuY29tPgo+IC0tLQo+IENoYW5nZXMgaW4gdjU6Cj4gLSByZXZlcnQgY29tcGF0aWJsZSBz
dHJpbmcKPiBDaGFuZ2VzIGluIHY0Ogo+IC0gdXBkYXRlIGNvbXBhdGlibGUgc3RyaW5nIGZvciBP
cGVuV3J0Cj4gQ2hhbmdlcyBpbiB2MzoKPiAtIGZpeCBjb25mbGljdCBmb3IgcmVjZW50IGNoYW5n
ZQo+IENoYW5nZXMgaW4gdjI6Cj4gLSBmaXggdHlwbyBpbiBjb21taXQgbWVzc2FnZQo+IC0gYWRk
IG1pc3NpbmcgLS0tIGluIGNvbW1pdCBtZXNzYWdlCj4gLS0tCj4gIGFyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvTWFrZWZpbGUgICAgICAgICB8ICAgMSArCj4gIC4uLi9ib290L2R0cy9yb2Nr
Y2hpcC9yazMzMjgtcm9jay1waS1lLXYzLmR0cyB8ICAxNSArCj4gIC4uLi9ib290L2R0cy9yb2Nr
Y2hpcC9yazMzMjgtcm9jay1waS1lLmR0cyAgICB8IDQ2MCArLS0tLS0tLS0tLS0tLS0tLS0KPiAg
Li4uMjgtcm9jay1waS1lLmR0cyA9PiByazMzMjgtcm9jay1waS1lLmR0c2l9IHwgICA1IC0KPiAg
NCBmaWxlcyBjaGFuZ2VkLCAzMSBpbnNlcnRpb25zKCspLCA0NTAgZGVsZXRpb25zKC0pCj4gIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC1yb2Nr
LXBpLWUtdjMuZHRzCj4gIHJld3JpdGUgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMz
Mjgtcm9jay1waS1lLmR0cyAoOTclKQo+ICBjb3B5IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAve3JrMzMyOC1yb2NrLXBpLWUuZHRzID0+IHJrMzMyOC1yb2NrLXBpLWUuZHRzaX0gKDk4JSkK
PiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZSBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUKPiBpbmRleCBjYjMwOWIxOTc1
YmEuLmNjNzRjZDE3ODUwYSAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL01ha2VmaWxlCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmls
ZQo+IEBAIC0yNSw2ICsyNSw3IEBAIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSByazMz
MjgtbmFub3BpLXIycy1wbHVzLmR0Ygo+ICBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0g
cmszMzI4LW9yYW5nZXBpLXIxLXBsdXMuZHRiCj4gIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQ
KSArPSByazMzMjgtb3JhbmdlcGktcjEtcGx1cy1sdHMuZHRiCj4gIGR0Yi0kKENPTkZJR19BUkNI
X1JPQ0tDSElQKSArPSByazMzMjgtcm9jazY0LmR0Ygo+ICtkdGItJChDT05GSUdfQVJDSF9ST0NL
Q0hJUCkgKz0gcmszMzI4LXJvY2stcGktZS12My5kdGIKPiAgZHRiLSQoQ09ORklHX0FSQ0hfUk9D
S0NISVApICs9IHJrMzMyOC1yb2NrLXBpLWUuZHRiCj4gIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tD
SElQKSArPSByazMzMjgtcm9jLWNjLmR0Ygo+ICBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkg
Kz0gcmszMzI4LXJvYy1wYy5kdGIKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazMzMjgtcm9jay1waS1lLXYzLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszMzI4LXJvY2stcGktZS12My5kdHMKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGlu
ZGV4IDAwMDAwMDAwMDAwMC4uYWQ5YzRjNTYyOTE0Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LXJvY2stcGktZS12My5kdHMKPiBAQCAt
MCwwICsxLDE1IEBACj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCsgT1Ig
TUlUKQo+ICsKPiArL2R0cy12MS87Cj4gKwo+ICsjaW5jbHVkZSAicmszMzI4LXJvY2stcGktZS5k
dHNpIgo+ICsKPiArLyB7Cj4gKwltb2RlbCA9ICJSYWR4YSBST0NLIFBpIEUgdjMuMCI7Cj4gKwlj
b21wYXRpYmxlID0gInJhZHhhLHJvY2twaS1lLXYzIiwgInJvY2tjaGlwLHJrMzMyOCI7Cj4gKwo+
ICsJYWxpYXNlcyB7Cj4gKwkJbW1jMCA9ICZlbW1jOwo+ICsJCW1tYzEgPSAmc2RtbWM7Cj4gKwl9
Owo+ICt9OwoKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMz
Mjgtcm9jay1waS1lLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LXJv
Y2stcGktZS5kdHMKPiBkaXNzaW1pbGFyaXR5IGluZGV4IDk3JQo+IGluZGV4IDNlMDhlMmZkMGE3
OC4uMDkyOWRmM2M4MDNhIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszMzI4LXJvY2stcGktZS5kdHMKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzMyOC1yb2NrLXBpLWUuZHRzCj4gQEAgLTEsNDQ1ICsxLDE1IEBACgpbLi4uXQoKPiAr
Ly8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wKyBPUiBNSVQpCj4gKwo+ICsvZHRz
LXYxLzsKPiArCj4gKyNpbmNsdWRlICJyazMzMjgtcm9jay1waS1lLmR0c2kiCj4gKwo+ICsvIHsK
PiArCW1vZGVsID0gIlJhZHhhIFJPQ0sgUGkgRSI7Cj4gKwljb21wYXRpYmxlID0gInJhZHhhLHJv
Y2twaS1lIiwgInJvY2tjaGlwLHJrMzMyOCI7Cj4gKwo+ICsJYWxpYXNlcyB7Cj4gKwkJbW1jMCA9
ICZzZG1tYzsKPiArCQltbWMxID0gJmVtbWM7Cj4gKwl9Owo+ICt9OwoKY2FuIHlvdSBwbGVhc2Ug
ZGVzY3JpYmUgd2hhdCBpcyBkaWZmZXJlbnQgaW4gdGhhdCB2MyBib2FyZD8KRGVzY3JpYmluZyB3
aGF0IGlzIGRpZmZlcmVudCB0byByZXF1aXJlIGEgc2VwYXJhdGUgYm9hcmQgc2hvdWxkJ3ZlIGJl
ZW4KcGFydCBvZiB0aGUgY29tbWl0IG1lc3NhZ2UuCgpCZWNhdXNlIGZyb20gdGhvc2UgY2hhbmdl
cywgdGhlIGJvdHRvbSBsaW5lIGN1cnJlbnRseSBzZWVtcyB0byBiZQp0aGUgc2FtZSBib2FyZCB3
aXRoIHN3YXBwZWQgbW1jIGFsaWFzZXM/CgpIZWlrbwoKCgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
