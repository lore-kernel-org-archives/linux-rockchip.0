Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 272C6C021B8
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 Mar 2025 12:57:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AI8J2PFyqLdpbRSOmdUEGbC/pIm7eJ/LLzUCsX/Sl5o=; b=XCAUPGN0gkBREn
	BmyErhtkJFa8Q8Ya1xojEhWuvfAnL3xUY28QH8hdd0pwKSEaBGCkQzoO8HIFK1EVaZEZwSa6fRJ2o
	sav9LFHZxBx859a+1bZsmfoBijqxolXnsz0E8DrkhBSbgkWsmteyxv7aaHKqZfsMjbsUdW8kIepKJ
	8IHRmCoEO8KpZJ2/NOwR9twQN/aIVuWTUlq+dDq/2QB4gCPMfb3dQxIcNp7O66OuBbw/mczJZpJgR
	MRSKYN1V0+Ao+sAQPG4v86EizPosc6uCYb3IaA/LJBgsVLmdyeNLnawIl4G65OgQOW6NWcjP0rMM7
	nDQkM3i77FF51iQJKAoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1toMPX-0000000DxCZ-1Xsw;
	Sat, 01 Mar 2025 12:57:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1toMNw-0000000Dx2y-2hG3;
	Sat, 01 Mar 2025 12:56:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=QQbVUX9DGectl4cZrWM+928q6CAZcLW6ZWeZi0G8Co0=; b=yrqnQ9n8A3aSrv/NYvybjVGf10
	ts1rw/5eQKEt40caJ4d+/dnSv5q4UHtWYEnHaUjswye8w0xjrMQOvq1E+6Sqg1as1RA0jOK1Mfmyk
	rj1pt6cCZJQzHUf3kAuQ6ngCUWaLVl6EOn8dY5P/b6rrJPXbV70H38nAyAZaE0Crv9hNoRA9msWZc
	9MOL5/Tcv3jQR/Xceg5I8sINY48k0koIl1W4wQ7syhBdlYbfB8LmVvMYMZqCU0cuyQPI5qJNdQglR
	994u4Xh9A8I0AO3O4X65sHENstTs9ALMWwoh6wdMspFTG/MIgKVU3sUl9eC+vMd/0DTkaIvwisBVU
	sa0ITHTw==;
Received: from i53875b47.versanet.de ([83.135.91.71] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1toMNm-0008HZ-Vb; Sat, 01 Mar 2025 13:55:55 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Yao Zi <ziyao@disroot.org>, Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH 7/8] arm64: dts: rockchip: Add SDMMC/SDIO controllers for RK3528
Date: Sat, 01 Mar 2025 13:55:53 +0100
Message-ID: <3574922.QJadu78ljV@diego>
In-Reply-To: <9fd51bcb-3e6a-46b6-b1f7-ff16fa562d9e@kwiboo.se>
References: <20250301104250.36295-1-ziyao@disroot.org>
 <20250301104749.36423-1-ziyao@disroot.org>
 <9fd51bcb-3e6a-46b6-b1f7-ff16fa562d9e@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250301_045604_698195_15903536 
X-CRM114-Status: GOOD (  22.38  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Detlev Casanova <detlev.casanova@collabora.com>, Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>, linux-mmc@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>, linux-kernel@vger.kernel.org, Frank Wang <frank.wang@rock-chips.com>, devicetree@vger.kernel.org, Shresth Prasad <shresthprasad7@gmail.com>, linux-rockchip@lists.infradead.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGV5IEpvYXMsCgpBbSBTYW1zdGFnLCAxLiBNw6RyeiAyMDI1LCAxMzo0Nzo0NyBNRVogc2Nocmll
YiBKb25hcyBLYXJsbWFuOgo+IE9uIDIwMjUtMDMtMDEgMTE6NDcsIFlhbyBaaSB3cm90ZToKPiA+
IFJLMzUyOCBmZWF0dXJlcyB0d28gU0RJTyBjb250cm9sbGVycyBhbmQgb25lIFNEL01NQyBjb250
cm9sbGVyLCBkZXNjcmliZQo+ID4gdGhlbSBpbiBkZXZpY2V0cmVlLiBTaW5jZSB0aGVpciBzYW1w
bGUgYW5kIGRyaXZlIGNsb2NrcyBhcmUgbG9jYXRlZCBpbgo+ID4gdGhlIFZPIGFuZCBWUFUgR1JG
cywgY29ycmVzcG9uZGluZyBzeXNjb25zIGFyZSBhZGRlZCB0byBtYWtlIHRoZXNlCj4gPiBjbG9j
a3MgYXZhaWxhYmxlLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBZYW8gWmkgPHppeWFvQGRpc3Jv
b3Qub3JnPgo+ID4gLS0tCj4gPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1Mjgu
ZHRzaSB8IDYyICsrKysrKysrKysrKysrKysrKysrKysrKwo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA2
MiBpbnNlcnRpb25zKCspCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzUyOC5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1
MjguZHRzaQo+ID4gaW5kZXggNWIzMzQ2OTAzNTZhLi4wNzhjOTdmYTFkOWYgMTAwNjQ0Cj4gPiAt
LS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzUyOC5kdHNpCj4gPiArKysgYi9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzUyOC5kdHNpCj4gPiBAQCAtNyw2ICs3LDcg
QEAKPiA+ICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvYXJtLWdp
Yy5oPgo+ID4gICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJvbGxlci9pcnEu
aD4KPiA+ICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvY2xvY2svcm9ja2NoaXAscmszNTI4LWNydS5o
Pgo+ID4gKyNpbmNsdWRlIDxkdC1iaW5kaW5ncy9yZXNldC9yb2NrY2hpcCxyazM1MjgtY3J1Lmg+
Cj4gPiAgCj4gPiAgLyB7Cj4gPiAgCWNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszNTI4IjsKPiA+
IEBAIC0xMjIsNiArMTIzLDE2IEBAIGdpYzogaW50ZXJydXB0LWNvbnRyb2xsZXJAZmVkMDEwMDAg
ewo+ID4gIAkJCSNpbnRlcnJ1cHQtY2VsbHMgPSA8Mz47Cj4gPiAgCQl9Owo+ID4gIAo+ID4gKwkJ
dnB1X2dyZjogc3lzY29uQGZmMzQwMDAwIHsKPiA+ICsJCQljb21wYXRpYmxlID0gInJvY2tjaGlw
LHJrMzUyOC12cHUtZ3JmIiwgInN5c2NvbiI7Cj4gCj4gdnB1X2dyZiBpcyBhbHNvIHVzZWQgZm9y
IGdtYWMxLCBzbyBzaG91bGQgcG9zc2libGUgYmUgYSAic3lzY29uIiwKPiAic2ltcGxlLW1mZCIs
IG9yIGhhdmUgSSBtaXN1bmRlcnN0b29kIHdoZW4gdG8gdXNlIHNpbXBsZS1tZmQgPwoKc2ltcGxl
LW1mZCBpcyBuZWVkZWQgd2hlbiB0aGUgYWRkaXRpb25hbCBkZXZpY2UgaXMgY29tcGxldGVseSBj
b250YWluZWQKaW5zaWRlIHRoZSBwYXJ0aWN1bGFyIHN5c2Nvbi4KCkZvciBleGFtcGxlLCB0aGUg
dXNiMnBoeTAgb24gcmszNTg4IGlzIGNvbXBsZXRlbHkgbGl2aW5nIGluc2lkZSB0aGUKdXNiMnBo
eTAtZ3JmLgoKU2ltaWxhcmx5IHRoZSBwb3dlci1kb21haW5zIGFyZSBsaXZpbmcgaW5zaWRlIHRo
ZSByazM1ODggcG11Z3JmLgpCdXQgdGhlIHBtdWdyZiBhbHNvIGNvbnRhaW5zIG1vcmUgc3R1ZmYs
IHNvIHRoZSBwb3dlci1kb21haW5zIGFyZSBhCnN1YnNldCBvZiB0aGUgcG11Z3JmLgoKQm90aCBv
ZiB0aGVzZSBhYm92ZSBhcmUgYSBjYXNlIGZvciBhIHNpbXBsZS1tZmQuCgoKU2ltaWxhcmx5LCBn
bWFjMSBvbiByazM1ODggaXMgZXRoZXJuZXRAZmUxYzAwMDAgLCBzbyBhIGNvbXBsZXRlbHkgc2Vw
YXJhdGUKaW8tbWVtb3J5IGFyZWEsIGJ1dCByZWZlcmVuY2VzIGJvdGggdGhlIHN5c2dyZiBhcyB3
ZWxsIGFzIHRoZSBwaHAtZ3JmCmFzIHN5c2NvbnMgZm9yIGFkZGl0aW9uYWwgc2V0dGluZ3MuCgpT
byBoZXJlIHRoZSBzeXNjb24gZG9lcyBub3QgbmVlZCB0byBiZSBhIHNpbXBsZS1tZmQuCgoKSG9w
ZSB0aGF0IGhlbHBzIGEgYml0CkhlaWtvCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
