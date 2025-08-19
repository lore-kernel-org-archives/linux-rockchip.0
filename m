Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90FEFCA0EE6
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Aug 2025 20:43:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dBgkG1IcmGvCQpxVes+kZlBqxo/iAnaDRL9Fb15/tWU=; b=G7Rm/XNzmoxCDS
	P77+89Hz8MyokE+MyGekrvu7xj+wB/wh2PPVTJpCW0VSQiX017EBX9RydN3HvMGOX/ZlYkcoBqC7Y
	pO0nqkq6B+fPRLKOzLBHVCWKuDjnqDNTKiuCliP+iAdKUVZwtxzXHcM9TPq5tyqLJJQy2DLbrnjuf
	Ldaz8hZhvAeg/oTFkqRBxZqnq1uhUWtV+BZRA7nRYqSr4g0wF2ZhPBhBmNb/R/rkS3m2ZtnWnuRc9
	v4B+daz+25zR2YJLc5W70Z+qwEZmx/FwbHHHFASWFSNQ3BYI6nFb/0zOdGQvqJGVN6cgnBAsP228+
	X5Zo2/2/ow9jv3kHx+/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoTAT-0000000BYwo-3y4o;
	Tue, 19 Aug 2025 20:42:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoRJu-0000000BKU6-0JZL;
	Tue, 19 Aug 2025 18:44:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=8l89w4bHTJH83H28ZxlWSCRMM0V8+br4qkqPy5/xjd0=; b=gcR8kMD9Q71A7ezSFp0EEPQhem
	TJqW4ftDjs3qSqnC8AZ0XXhgHZn9wkOD+bwUNPMEn9JTbWOm4DsgbMES6CmD5dWREc3BFGop2eJBH
	+TEB01ubMjD8uJ0/T1fiSq4Kz5l21rKXWIGHnvm7CgRquGhL6v9H3ZimHeWfL86D6drVCh++UxjGF
	+dln30WIYeoic3imgQ0tnzjIhzqNBvTtJzfsn0kbKxQD0VKHwsevGtMvh9gsvX/jTdh5wiYHs1bO+
	g4+6KZTKeWf93whbuJErQgPevIuN1gl77doOV9YB98XI5+YjJoVzD/v5nVw9he7hC0hMegIiAgzGU
	pZuimlAQ==;
Received: from i53875a31.versanet.de ([83.135.90.49] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uoRJq-0004Ru-TA; Tue, 19 Aug 2025 20:44:26 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Dongjin Kim <tobetter@gmail.com>, Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Change ethernet TXD timing delay value
Date: Tue, 19 Aug 2025 20:44:26 +0200
Message-ID: <2821088.9PvXe5no7K@diego>
In-Reply-To: <4d25c642-d457-4cb7-8bc1-587edd4f1d75@lunn.ch>
References: <20250819045018.2094282-1-tobetter@gmail.com>
 <4d25c642-d457-4cb7-8bc1-587edd4f1d75@lunn.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250819_114430_114653_0E194E8F 
X-CRM114-Status: GOOD (  15.40  )
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

QW0gRGllbnN0YWcsIDE5LiBBdWd1c3QgMjAyNSwgMTg6MDM6NDcgTWl0dGVsZXVyb3DDpGlzY2hl
IFNvbW1lcnplaXQgc2NocmllYiBBbmRyZXcgTHVubjoKPiBPbiBUdWUsIEF1ZyAxOSwgMjAyNSBh
dCAwMTo1MDoxN1BNICswOTAwLCBEb25namluIEtpbSB3cm90ZToKPiA+IFZlcnkgcG9vciBuZXR3
b3JrIHBlcmZvcm1hbmNlIGlzIG9ic2VydmVkIG9uIHRoZSBPRFJPSUQtTTEgQm9hcmQKPiA+IChS
RVYgMS4wIDIwMjIwNjEzKSB3aGVuIHJ1bm5pbmcgaXBlcmYzICh1bmRlciAyMDBNYml0cy9zZWMp
LCBhbmQKPiA+IHRoaXMgcHJvYmxlbSBjYW4gYmUgcmVzb2x2ZWQgYWZ0ZXIgY2hhbmdpbmcgdGhl
IHZhbHVlIG9mIFRYRAo+ID4gdGltaW5nIHRvIDB4MzUgZnJvbSAweDRmLgo+IAo+IEhvdyBkaWQg
eW91IGRlY2lkZSBvbiAweDM1PwoKanVzdCBiZWNhdXNlIEkgYWNjaWRlbnRpYWxseSBzdHVtYmxl
ZCBvdmVyIHRoYXQgcmVjZW50bHksIFJvY2tjaGlwIGhhcwpzb21lIHNjYW5uaW5nIGZ1bmN0aW9u
YWxpdHkgaW4gdGhlaXIgdmVuZG9yLWtlcm5lbCB0byBnZXQgcG9zc2libGUKZGVsYXkgdmFsdWVz
IGZvciBhIGJvYXJkLgoKRGVzY3JpYmVkIGluIGEgZG9jdW1lbnQgY2FsbGVkICJSb2NrY2hpcCBH
TUFDIFJHTUlJIERlbGF5bGluZSBHdWlkZSIgWzBdCmFuZCBvbmUgY29kZSBsb2NhdGlvbiBpcyBm
b3IgZXhhbXBsZSB0aGUgYXJtYmlhbiB0cmVlIFsxXQoKQXQgbGVhc3QgdGhhdCBpcyBvbmUgcG9z
c2libGUgc291cmNlIG9mIHBlci1ib2FyZCBkZWxheSB2YWx1ZXMgOi0pCgoKSGVpa28KCgpbMF0g
aHR0cHM6Ly9sbzAxLmc3N2suY29tL2FlYi9kb2NzL2VuL0NvbW1vbi9HTUFDL1JvY2tjaGlwX0Rl
dmVsb3Blcl9HdWlkZV9MaW51eF9HTUFDX1JHTUlJX0RlbGF5bGluZV9FTi5wZGYKKHJhbmRvbSBp
bnRlcm5ldCBzb3VyY2UgR29vZ2xlIGZvdW5kIG1lKQpbMV0gaHR0cHM6Ly9naXRodWIuY29tL2Fy
bWJpYW4vbGludXgtcm9ja2NoaXAvYmxvYi9yay02LjEtcmtyNS4xL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L3N0bWljcm8vc3RtbWFjL2R3bWFjLXJrLXRvb2wuYwoKCj4gCj4gfi9saW51eC9hcmNoL2Fy
bTY0JCBncmVwIC1ociAidHhfZGVsYXkgPSAiIHwgc29ydCB8IHVuaXEgLWMKPiAgICAgICA0IAl0
eF9kZWxheSA9IDwweDEwPjsKPiAgICAgICAxIAl0eF9kZWxheSA9IDwweDFhPjsKPiAgICAgICAx
IAl0eF9kZWxheSA9IDwweDIxPjsKPiAgICAgICAyIAl0eF9kZWxheSA9IDwweDIyPjsKPiAgICAg
ICA0IAl0eF9kZWxheSA9IDwweDI0PjsKPiAgICAgICAyIAl0eF9kZWxheSA9IDwweDI2PjsKPiAg
ICAgIDE0IAl0eF9kZWxheSA9IDwweDI4PjsKPiAgICAgICAxIAl0eF9kZWxheSA9IDwweDJhPjsK
PiAgICAgICA2IAl0eF9kZWxheSA9IDwweDMwPjsKPiAgICAgICAxIAl0eF9kZWxheSA9IDwweDNh
PjsKPiAgICAgICAzIAl0eF9kZWxheSA9IDwweDNjPjsKPiAgICAgICAyIAl0eF9kZWxheSA9IDww
eDQyPjsKPiAgICAgICA1IAl0eF9kZWxheSA9IDwweDQzPjsKPiAgICAgICAyIAl0eF9kZWxheSA9
IDwweDQ0PjsKPiAgICAgICAxIAl0eF9kZWxheSA9IDwweDQ2PjsKPiAgICAgICA2IAl0eF9kZWxh
eSA9IDwweDRmPjsKPiAKPiBUaGUgbnVtYmVycyBhcmUgYWxsIG92ZXIgdGhlIHBsYWNlLCBidXQg
aXQgaXMgY2xlYXIgdGhhdCAweDI4IGlzIHRoZQo+IG1vc3QgcG9wdWxhciBmb3Igc29tZSByZWFz
b24uIEJ1dCBzaW5jZSB0aGlzIGRlbGF5IHZhbHVlcyBhcmUgbWFnaWMsCj4gaSd2ZSBubyBpZGVh
IHdoeS4KPiAKPiAgICAgIEFuZHJldwo+IAoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
