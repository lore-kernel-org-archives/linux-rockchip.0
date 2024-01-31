Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E30DCC47DB3
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jan 2024 12:22:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ytb49WjMcJVOsXSIFAWfdF3aR+k+6/a3QnfH3txhn6o=; b=lvCyGWMfnmZquA
	OvwX+yBifkOY36M8Fwg790jZD/X1ePxHOQrFQaH1/BtR9rJ0PGirKlcDEOHtxKb4iWE6Wab6DJeew
	OzUL96Qd+rkOcP3tmDR3QqjH5EZm+lJP6XtcEjWh1nCIkSMdkkX3rWWFZtyyPIFtZqCA8Qc3PIsca
	W7GsMKovidk7D3ugC90O41nJg7+FM+PGhi6zgKR1xh9Z5h/L0kStKsx6e8HHxUpumfDTmZr6VEmjf
	QvQwTeiJq8sVS1PaVPfTdE8KOl3vzJRIhQLU9xs6hVx4LhEiPyDeli9c70i2iMSPaTW9M3/iGbHhv
	x2Wa6cE+vIDi7t19NibA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV9c3-00000003JuA-1w2V;
	Wed, 31 Jan 2024 12:22:43 +0000
Received: from m13147.mail.163.com ([220.181.13.147])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV9bx-00000003JoW-3whJ;
	Wed, 31 Jan 2024 12:22:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=OsSUrux52qy4us14QjKFN5r4cn3VE00WM1oRo7fpI4g=; b=l
	NCg89IJAh3LAg5UcF+fuwzSgcF0WHIqwvyiOEn2rvnS1k+t7yvXp60mzYbrGNhC0
	YfRFdRC7G+a/C+wOHNEUafVeogkqRdSIh7bnyD4ng5FTIdYCsoVE5Oz4ptKahMSR
	lIIZa1A1y4fEY2VIqd7Gy3EsgjHab5/8S1d8YKj89Q=
Received: from andyshrk$163.com ( [58.22.7.114] ) by ajax-webmail-wmsvr147
 (Coremail) ; Wed, 31 Jan 2024 20:21:56 +0800 (CST)
X-Originating-IP: [58.22.7.114]
Date: Wed, 31 Jan 2024 20:21:56 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Dragan Simic" <dsimic@manjaro.org>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re:Re: [PATCH 3/4] arm64: dts: rockchip: rename vcc5v0_usb30_host
 regulator for Cool Pi CM5 EVB
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20230109(dcb5de15)
 Copyright (c) 2002-2024 www.mailtech.cn 163com
In-Reply-To: <00ed78ea06aecde202a11a23c80f80af@manjaro.org>
References: <20240127092034.887085-1-andyshrk@163.com>
 <20240127092034.887085-3-andyshrk@163.com> <2798389.3c9HiEOlIg@diego>
 <23650d42.ecb.18d4ad89c0c.Coremail.andyshrk@163.com>
 <00ed78ea06aecde202a11a23c80f80af@manjaro.org>
X-NTES-SC: AL_Qu2bBPubvE8q4CSZY+kXn0kXhec2W8Czvvgg34JRP5k0pizz/zEdYVBPHkbv9dK1EgWQnzemVhRP8sVDe4tfW5mcBBZtnLa8bqKg/AxG5W1t
MIME-Version: 1.0
Message-ID: <1e98352e.2dd2.18d5f780043.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: k8GowADnDwNkO7pln4MHAA--.45483W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0h12XmWXvz1f5gACss
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240131_042238_394518_DD439634 
X-CRM114-Status: GOOD (  13.06  )
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

CkhpIEhlaWtv77yaCgrlnKggMjAyNC0wMS0yNyAyMTowOTo0Nu+8jCJEcmFnYW4gU2ltaWMiIDxk
c2ltaWNAbWFuamFyby5vcmc+IOWGmemBk++8mgo+T24gMjAyNC0wMS0yNyAxMzoxNSwgQW5keSBZ
YW4gd3JvdGU6Cj4+IEF0IDIwMjQtMDEtMjcgMTg6MzY6NDAsICJIZWlrbyBTdMO8Ym5lciIgPGhl
aWtvQHNudGVjaC5kZT4gd3JvdGU6Cj4+PiBBbSBTYW1zdGFnLCAyNy4gSmFudWFyIDIwMjQsIDEw
OjIwOjMzIENFVCBzY2hyaWViIEFuZHkgWWFuOgo+Pj4+IEFjY29yZGluZyB0byB0aGUgc2NoZW1h
dGljLCB0aGlzIHJlZ3VsYXRvciBpcyB1c2VkIGJvdGggZm9yIFVTQjMwIGFuZAo+Pj4+IFVTQjIw
LCBzbyBnaXZlIGl0IGEgbW9yZSBhcHByb3ByaWF0ZSBuYW1lLgo+Pj4gCj4+PiBJIGRvbid0IGhh
dmUgdGhlIHNjaGVtYXRpY3MsIHNvIEknbGwgbmVlZCB5b3UgdG8gYW5zd2VyIHRoaXMsIGJ1dCB3
aGF0Cj4+PiBpcyB0aGUgcmVndWxhdG9yIGNhbGxlZCBfaW5fIHRoZSBzY2hlbWF0aWNzPwo+PiAK
Pj4gVGhlcmUgYXJlIHR3byByZWd1bGF0b3JzIGNhbGxlZCBWQ0M1MF9VU0JfSE9TVDEgYW5kIFZD
QzUwX1VTQl9IT1NUMiwKPj4gYW5kIHRoZXkgYXJlIGJvdGggY29udHJvbGxlZCBieSBHUElPMV9E
NQo+PiBUaGV5IGJvdGggZm9yIHR3byB1c2IgMi4wIGhvc3RzLCAgbm90IHVzYiAzMCwgdGhlIHNj
aGVtYXRpY3MgbWFrZQo+PiBtZSBhIGJpdCBjb25mdXNlZC4KPgo+SW4gdGhhdCBjYXNlLCBJJ2Qg
c2F5IHRoYXQgcmVuYW1pbmcgdGhlIHJlZ3VsYXRvciB0byB2Y2M1djBfdXNiX2hvc3QgaXMKPmZp
bmUsIGJ1dCB0aGVyZSBzaG91bGQgYWxzbyBiZSBhIGNvbW1lbnQgaW4gdGhlIGJvYXJkIGR0cyBm
aWxlIHRoYXQgaXQncwo+YWN0dWFsbHkgdHdvIHNlcGFyYXRlIHJlZ3VsYXRvcnMuCgpIb3cgZG8g
eW91IGZlZWwgYWJvdXQgdGhpcyDvvJ8gT3Igc29tZSBvdGhlciBzdHlsZSBsaWtl77yaCnZjYzV2
MF91c2JfaG9zdDE6IHZjYzV2MF91c2JfaG9zdDLvvJp2Y2M1djAtdXNiLWhvc3QtcmVndWxhdG9y
IHsKCgo+Cj4+PiBJLmUuIHdlIHdhbnQgcmVndWxhdG9ycyB0byByZWFsbHkgYmUgbmFtZWQgdGhl
IHNhbWUgYXMgaW4gdGhlIAo+Pj4gc2NoZW1hdGljCj4+PiBzbyBwZW9wbGUgY2FuIGxvb2sgdXAg
dGhpbmcgZnJvbSB0aGUgZHRzIGluIHRoZSBzY2hlbWF0aWNzIGFuZCB0aGUgCj4+PiBvdGhlcgo+
Pj4gd2F5IGFyb3VuZCB0b28uCj4KPkFoLCB0aGF0J3MgdmVyeSBoZWxwZnVsLgo+Cj4+Pj4gRml4
ZXM6IDc5MWMxNTRjMzk4MiAoImFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgc3VwcG9ydCBmb3Ig
cmszNTg4IAo+Pj4+IGJhc2VkIGJvYXJkIENvb2wgUGkgQ001IEVWQiIpCj4+Pj4gU2lnbmVkLW9m
Zi1ieTogQW5keSBZYW4gPGFuZHlzaHJrQDE2My5jb20+Cj4+Pj4gLS0tCj4+Pj4gCj4+Pj4gIGFy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWNvb2xwaS1jbTUtZXZiLmR0cyB8IDYg
KysrLS0tCj4+Pj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25z
KC0pCj4+Pj4gCj4+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszNTg4LWNvb2xwaS1jbTUtZXZiLmR0cyAKPj4+PiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTg4LWNvb2xwaS1jbTUtZXZiLmR0cwo+Pj4+IGluZGV4IDFiNTY4MWZlMDQ3MS4u
NWY0MmYxMDY1ZDczIDEwMDY0NAo+Pj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszNTg4LWNvb2xwaS1jbTUtZXZiLmR0cwo+Pj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTg4LWNvb2xwaS1jbTUtZXZiLmR0cwo+Pj4+IEBAIC04NCw3ICs4NCw3
IEBAIHZjYzN2M19sY2Q6IHZjYzN2My1sY2QtcmVndWxhdG9yIHsKPj4+PiAgCQl2aW4tc3VwcGx5
ID0gPCZ2Y2MzdjNfc3lzPjsKPj4+PiAgCX07Cj4+Pj4gCj4+Pj4gLQl2Y2M1djBfdXNiMzBfaG9z
dDogdmNjNXYwLXVzYjMwLWhvc3QtcmVndWxhdG9yIHsKPj4+PiArCXZjYzV2MF91c2JfaG9zdDog
dmNjNXYwLXVzYi1ob3N0LXJlZ3VsYXRvciB7Cj4+Pj4gIAkJY29tcGF0aWJsZSA9ICJyZWd1bGF0
b3ItZml4ZWQiOwo+Pj4+ICAJCXJlZ3VsYXRvci1uYW1lID0gInZjYzV2MF9ob3N0IjsKPj4+PiAg
CQlyZWd1bGF0b3ItYm9vdC1vbjsKPj4+PiBAQCAtMjAwLDEyICsyMDAsMTIgQEAgJnUycGh5MyB7
Cj4+Pj4gIH07Cj4+Pj4gCj4+Pj4gICZ1MnBoeTJfaG9zdCB7Cj4+Pj4gLQlwaHktc3VwcGx5ID0g
PCZ2Y2M1djBfdXNiMzBfaG9zdD47Cj4+Pj4gKwlwaHktc3VwcGx5ID0gPCZ2Y2M1djBfdXNiX2hv
c3Q+Owo+Pj4+ICAJc3RhdHVzID0gIm9rYXkiOwo+Pj4+ICB9Owo+Pj4+IAo+Pj4+ICAmdTJwaHkz
X2hvc3Qgewo+Pj4+IC0JcGh5LXN1cHBseSA9IDwmdmNjNXYwX3VzYjMwX2hvc3Q+Owo+Pj4+ICsJ
cGh5LXN1cHBseSA9IDwmdmNjNXYwX3VzYl9ob3N0PjsKPj4+PiAgCXN0YXR1cyA9ICJva2F5IjsK
Pj4+PiAgfTsKPgo+X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cj5saW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKPmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
