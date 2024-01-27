Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F9D2C48285
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Jan 2024 12:16:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TNhdlugoymRXSZywwKgU4zaDAKKoNf9j1518oUDeUkM=; b=uXxOYX94AbrMQo
	h2cmPbzaJuEgh5DHEBA5YUew57QmAgY3pvamnCaHnL5qXGFKfIM1nrcajKna+/+jwNlefg1iYl5Hc
	7yoQ884R+uuMuuOm6HxT6x3pBlOyS2dIwbCK2KlbKbDH+mNeUa38jpuVFAcz+zuLmWDAVPChEzdGQ
	KajqmCOfYYYaOsbDpIGgo7fIleyRnDQrFMqnlS+6dUX3B4HlxIxk0+khq8HkCUZAR/SjAmEYEm5di
	CGI8b//ICsxg2IqS/uGglA3MPpBH4+nZvGZ2mPcX6xPOowjrW81gvkqi2EJFW3IROfaeD5j2VhPtk
	x/rKSavClonABbj62C7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rThbW-00000007TL1-1UHj;
	Sat, 27 Jan 2024 12:16:10 +0000
Received: from m13139.mail.163.com ([220.181.13.139])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rThbP-00000007TKM-3XFr;
	Sat, 27 Jan 2024 12:16:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=ma9o5iWSbDq/1Z3hTE/8/k25l4jdI+7Y+bhwozoNTcw=; b=m
	WiJavxcnTrDgrQJlFkqw6eMWHjSHG+eVZh3ErJQVYKz/mzpuljqv6C/mvzgslaIt
	4/Jhd8snrHrSsgs0cm55DAvLHBfYU+ZTC5cSsKOaHDzDJI9YBdwC7EYrS2NLPyYr
	RtUQN5qRM4a0rhk+dlGk/okiZRM44CJ3bb7Oq1nIU8=
Received: from andyshrk$163.com ( [58.22.7.114] ) by ajax-webmail-wmsvr139
 (Coremail) ; Sat, 27 Jan 2024 20:15:26 +0800 (CST)
X-Originating-IP: [58.22.7.114]
Date: Sat, 27 Jan 2024 20:15:26 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re:Re: [PATCH 3/4] arm64: dts: rockchip: rename vcc5v0_usb30_host
 regulator for Cool Pi CM5 EVB
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20230109(dcb5de15)
 Copyright (c) 2002-2024 www.mailtech.cn 163com
In-Reply-To: <2798389.3c9HiEOlIg@diego>
References: <20240127092034.887085-1-andyshrk@163.com>
 <20240127092034.887085-3-andyshrk@163.com> <2798389.3c9HiEOlIg@diego>
X-NTES-SC: AL_Qu2bBP+euE8p4CKZYulS4DxUw7xtJb7F8ohRo94OW8gAvCTt6w8Db1tdMXT1/NOI5AfO+aK8YQzQdyUxQsjv
MIME-Version: 1.0
Message-ID: <23650d42.ecb.18d4ad89c0c.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: i8GowAD3n2Le87RlFZ0GAA--.64795W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0g1yXmWXvvpVlwACsF
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240127_041604_799663_D25A33F1 
X-CRM114-Status: GOOD (  12.97  )
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

CgoKSGkgSGVpa2/vvJoKCkF0IDIwMjQtMDEtMjcgMTg6MzY6NDAsICJIZWlrbyBTdMO8Ym5lciIg
PGhlaWtvQHNudGVjaC5kZT4gd3JvdGU6Cj5IaSBBbmR5LAo+Cj5BbSBTYW1zdGFnLCAyNy4gSmFu
dWFyIDIwMjQsIDEwOjIwOjMzIENFVCBzY2hyaWViIEFuZHkgWWFuOgo+PiBBY2NvcmRpbmcgdG8g
dGhlIHNjaGVtYXRpYywgdGhpcyByZWd1bGF0b3IgaXMgdXNlZCBib3RoIGZvciBVU0IzMCBhbmQK
Pj4gVVNCMjAsIHNvIGdpdmUgaXQgYSBtb3JlIGFwcHJvcHJpYXRlIG5hbWUuCj4KPkkgZG9uJ3Qg
aGF2ZSB0aGUgc2NoZW1hdGljcywgc28gSSdsbCBuZWVkIHlvdSB0byBhbnN3ZXIgdGhpcywgYnV0
IHdoYXQKPmlzIHRoZSByZWd1bGF0b3IgY2FsbGVkIF9pbl8gdGhlIHNjaGVtYXRpY3M/CgpUaGVy
ZSBhcmUgdHdvIHJlZ3VsYXRvcnMgY2FsbGVkIFZDQzUwX1VTQl9IT1NUMSBhbmQgVkNDNTBfVVNC
X0hPU1QyLCBhbmQgdGhleSBhcmUgYm90aCBjb250cm9sbGVkIGJ5IEdQSU8xX0Q1ClRoZXkgYm90
aCBmb3IgdHdvIHVzYiAyLjAgaG9zdHMsICBub3QgdXNiIDMwLCB0aGUgc2NoZW1hdGljcyBtYWtl
CiBtZSBhIGJpdCBjb25mdXNlZC4KCj4KPkkuZS4gd2Ugd2FudCByZWd1bGF0b3JzIHRvIHJlYWxs
eSBiZSBuYW1lZCB0aGUgc2FtZSBhcyBpbiB0aGUgc2NoZW1hdGljCj5zbyBwZW9wbGUgY2FuIGxv
b2sgdXAgdGhpbmcgZnJvbSB0aGUgZHRzIGluIHRoZSBzY2hlbWF0aWNzIGFuZCB0aGUgb3RoZXIK
PndheSBhcm91bmQgdG9vLgo+Cj4KPlRoYW5rcwo+SGVpa28KPgo+Cj4+IEZpeGVzOiA3OTFjMTU0
YzM5ODIgKCJhcm02NDogZHRzOiByb2NrY2hpcDogQWRkIHN1cHBvcnQgZm9yIHJrMzU4OCBiYXNl
ZCBib2FyZCBDb29sIFBpIENNNSBFVkIiKQo+PiBTaWduZWQtb2ZmLWJ5OiBBbmR5IFlhbiA8YW5k
eXNocmtAMTYzLmNvbT4KPj4gLS0tCj4+IAo+PiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazM1ODgtY29vbHBpLWNtNS1ldmIuZHRzIHwgNiArKystLS0KPj4gIDEgZmlsZSBjaGFuZ2Vk
LCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4+IAo+PiBkaWZmIC0tZ2l0IGEvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtY29vbHBpLWNtNS1ldmIuZHRzIGIvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtY29vbHBpLWNtNS1ldmIuZHRzCj4+IGlu
ZGV4IDFiNTY4MWZlMDQ3MS4uNWY0MmYxMDY1ZDczIDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1jb29scGktY201LWV2Yi5kdHMKPj4gKysrIGIvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtY29vbHBpLWNtNS1ldmIuZHRzCj4+IEBA
IC04NCw3ICs4NCw3IEBAIHZjYzN2M19sY2Q6IHZjYzN2My1sY2QtcmVndWxhdG9yIHsKPj4gIAkJ
dmluLXN1cHBseSA9IDwmdmNjM3YzX3N5cz47Cj4+ICAJfTsKPj4gIAo+PiAtCXZjYzV2MF91c2Iz
MF9ob3N0OiB2Y2M1djAtdXNiMzAtaG9zdC1yZWd1bGF0b3Igewo+PiArCXZjYzV2MF91c2JfaG9z
dDogdmNjNXYwLXVzYi1ob3N0LXJlZ3VsYXRvciB7Cj4+ICAJCWNvbXBhdGlibGUgPSAicmVndWxh
dG9yLWZpeGVkIjsKPj4gIAkJcmVndWxhdG9yLW5hbWUgPSAidmNjNXYwX2hvc3QiOwo+PiAgCQly
ZWd1bGF0b3ItYm9vdC1vbjsKPj4gQEAgLTIwMCwxMiArMjAwLDEyIEBAICZ1MnBoeTMgewo+PiAg
fTsKPj4gIAo+PiAgJnUycGh5Ml9ob3N0IHsKPj4gLQlwaHktc3VwcGx5ID0gPCZ2Y2M1djBfdXNi
MzBfaG9zdD47Cj4+ICsJcGh5LXN1cHBseSA9IDwmdmNjNXYwX3VzYl9ob3N0PjsKPj4gIAlzdGF0
dXMgPSAib2theSI7Cj4+ICB9Owo+PiAgCj4+ICAmdTJwaHkzX2hvc3Qgewo+PiAtCXBoeS1zdXBw
bHkgPSA8JnZjYzV2MF91c2IzMF9ob3N0PjsKPj4gKwlwaHktc3VwcGx5ID0gPCZ2Y2M1djBfdXNi
X2hvc3Q+Owo+PiAgCXN0YXR1cyA9ICJva2F5IjsKPj4gIH07Cj4+ICAKPj4gCj4KPgo+Cj4KPgo+
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0Cj5saW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKPmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
