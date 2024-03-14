Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C03F0C54E67
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Mar 2024 12:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Ir9wIHB/37/y1W1CWAZ5/geaQuu+8Tp+1SWK5u/Igo=; b=HnSRgp/lN6qOXI
	q3OpVzSp+esOIB98OBAtXU9zXXjnce/0p6RnmJOkavXJ3nxS/dG7Fd4v653JOLhkz6SsnY2Z8+od8
	/HgjBu7yhdClx7LH5ZXcaFH0fjrbjeQnvT8Eli0xCWmEeCt/w/Ijt84Da2rVJuTYdE2PDDlfOGxuW
	bg2IMYUrv5Elg8NoN82n/ubv5SzAGZmLHyVIsA17csZ0XHVPfz+dOB4pqhA25EIhh78sQLPeHXeIa
	Ky/e0UrRlYQGlIm2XyGw0aEslLYZv+5Hwhc+dAE9maZ3tlVz2k5OY7tExGAdC5CNfLcbBbUtKcUoN
	6LRgaGNaZmzJDDYfd7pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkkF2-0000000EG54-2i4J;
	Thu, 14 Mar 2024 12:31:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkkEy-0000000EG24-2kFq;
	Thu, 14 Mar 2024 12:31:21 +0000
Received: from i53875a9e.versanet.de ([83.135.90.158] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rkkEs-0003Ip-Sw; Thu, 14 Mar 2024 13:31:14 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, arinc.unal@arinc9.com
Cc: mithat.guner@xeront.com, erkin.bozoglu@xeront.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 =?utf-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>
Subject: Re: [PATCH] arm64: dts: rockchip: set PHY address of MT7531 switch to 0x1f
Date: Thu, 14 Mar 2024 13:31:13 +0100
Message-ID: <4682635.taCxCBeP46@diego>
In-Reply-To: <20240314-for-rockchip-mt7531-phy-address-v1-1-743b5873358f@arinc9.com>
References: <20240314-for-rockchip-mt7531-phy-address-v1-1-743b5873358f@arinc9.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240314_053120_747347_CCC713F6 
X-CRM114-Status: GOOD (  20.22  )
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

QW0gRG9ubmVyc3RhZywgMTQuIE3DpHJ6IDIwMjQsIDEzOjI0OjM1IENFVCBzY2hyaWViIEFyxLFu
w6cgw5xOQUwgdmlhIEI0IFJlbGF5Ogo+IEZyb206IEFyxLFuw6cgw5xOQUwgPGFyaW5jLnVuYWxA
YXJpbmM5LmNvbT4KPiAKPiBUaGUgTVQ3NTMxIHN3aXRjaCBsaXN0ZW5zIG9uIFBIWSBhZGRyZXNz
IDB4MWYgb24gYW4gTURJTyBidXMuIEkndmUgZ290IHR3bwo+IGZpbmRpbmdzIHRoYXQgc3VwcG9y
dCB0aGlzLiBUaGVyZSdzIG5vIGJvb3RzdHJhcHBpbmcgb3B0aW9uIHRvIGNoYW5nZSB0aGUKPiBQ
SFkgYWRkcmVzcyBvZiB0aGUgc3dpdGNoLiBUaGUgTGludXggZHJpdmVyIGhhcmRjb2RlcyAweDFm
IGFzIHRoZSBQSFkKPiBhZGRyZXNzIG9mIHRoZSBzd2l0Y2guIFNvIHRoZSByZWcgcHJvcGVydHkg
b24gdGhlIGRldmljZSB0cmVlIGlzIGN1cnJlbnRseQo+IGlnbm9yZWQgYnkgdGhlIExpbnV4IGRy
aXZlci4KPiAKPiBUaGVyZWZvcmUsIGRlc2NyaWJlIHRoZSBjb3JyZWN0IFBIWSBhZGRyZXNzIG9u
IEJhbmFuYSBQaSBCUEktUjIgUHJvIHRoYXQKPiBoYXMgdGhpcyBzd2l0Y2guCj4gCj4gU2lnbmVk
LW9mZi1ieTogQXLEsW7DpyDDnE5BTCA8YXJpbmMudW5hbEBhcmluYzkuY29tPgoKRml4ZXM6IGMx
ODA0NDYzZTVjNiAoImFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgbXQ3NTMxIGRzYSBub2RlIHRv
IEJQSS1SMi1Qcm8gYm9hcmQiKQoKPiAtLS0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazM1NjgtYnBpLXIyLXByby5kdHMgfCA0ICsrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5z
ZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazM1NjgtYnBpLXIyLXByby5kdHMgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU2OC1icGktcjItcHJvLmR0cwo+IGluZGV4IDdiNWYzOTA0ZWY2MS4u
MDNkNmQ5MjA0NDZhIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszNTY4LWJwaS1yMi1wcm8uZHRzCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazM1NjgtYnBpLXIyLXByby5kdHMKPiBAQCAtNTI1LDkgKzUyNSw5IEBAICZtZGlvMCB7Cj4g
IAkjYWRkcmVzcy1jZWxscyA9IDwxPjsKPiAgCSNzaXplLWNlbGxzID0gPDA+Owo+ICAKPiAtCXN3
aXRjaEAwIHsKPiArCXN3aXRjaEAxZiB7Cj4gIAkJY29tcGF0aWJsZSA9ICJtZWRpYXRlayxtdDc1
MzEiOwo+IC0JCXJlZyA9IDwwPjsKPiArCQlyZWcgPSA8MHgxZj47Cj4gIAo+ICAJCXBvcnRzIHsK
PiAgCQkJI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4gCj4gLS0tCj4gYmFzZS1jb21taXQ6IDAyNzZk
Nzk3NTMxZWEyZDE4NjVhMDRmYmU1NGM2NTk2MDhmNTc4OGYKPiBjaGFuZ2UtaWQ6IDIwMjQwMzE0
LWZvci1yb2NrY2hpcC1tdDc1MzEtcGh5LWFkZHJlc3MtYmE2YzJmZmY0ODVmCj4gCj4gQmVzdCBy
ZWdhcmRzLAo+IAoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
