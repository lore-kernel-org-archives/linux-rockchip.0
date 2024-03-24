Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1B77C54E58
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Mar 2024 22:39:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TmKD5YKuwbv+RpEDxXH0oeswrKnjPWuL6qbloBI13/8=; b=adOuWxfbmoh/8y
	TBSQBYvHZ6B1zsxVLwdEkWJrrFeKf/GJ6901BF5IevU9wq2g6C0mhl45A0nOm8q1NDu7nE9m2Hg1T
	bUv52ZS5ez7CyOO9ELfTcqCCaxCM2Z+ZlmSGXMF7eg5z6v0MeKLtnPlL8HWSR/Hntf6BmTF8vNoNO
	37DxITfcVHq6nxMbZWnfbHGEvq/I+58fKUJasiUnCCkH65oyD3FwbZjmM3Nci8n5r5C8zM9uLPT8s
	Tv9D9uB1Dffy8ilgTZBD1xMT/uCz2sM7NiZWJN3S0sUrTI2EJxq3uoCvqk5WJPk4CbfcFghXtcACH
	O6aiYP2s+fQax8vSZvbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roWUx-0000000Dd6G-2hqi;
	Sun, 24 Mar 2024 22:39:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roWUn-0000000DczY-1BVs;
	Sun, 24 Mar 2024 22:39:20 +0000
Received: from i53875a9e.versanet.de ([83.135.90.158] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1roWUV-0007sn-Gi; Sun, 24 Mar 2024 23:38:59 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: =?UTF-8?q?Ar=C4=B1n=C3=A7=20=C3=9CNAL?= <arinc.unal@arinc9.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	erkin.bozoglu@xeront.com,
	mithat.guner@xeront.com
Subject: Re: [PATCH] arm64: dts: rockchip: set PHY address of MT7531 switch to 0x1f
Date: Sun, 24 Mar 2024 23:38:52 +0100
Message-Id: <171131986741.918919.17715253575566956746.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240314-for-rockchip-mt7531-phy-address-v1-1-743b5873358f@arinc9.com>
References: <20240314-for-rockchip-mt7531-phy-address-v1-1-743b5873358f@arinc9.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240324_153917_403768_14CFE811 
X-CRM114-Status: GOOD (  13.34  )
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

T24gVGh1LCAxNCBNYXIgMjAyNCAxNToyNDozNSArMDMwMCwgQXLEsW7DpyDDnE5BTCB3cm90ZToK
PiBUaGUgTVQ3NTMxIHN3aXRjaCBsaXN0ZW5zIG9uIFBIWSBhZGRyZXNzIDB4MWYgb24gYW4gTURJ
TyBidXMuIEkndmUgZ290IHR3bwo+IGZpbmRpbmdzIHRoYXQgc3VwcG9ydCB0aGlzLiBUaGVyZSdz
IG5vIGJvb3RzdHJhcHBpbmcgb3B0aW9uIHRvIGNoYW5nZSB0aGUKPiBQSFkgYWRkcmVzcyBvZiB0
aGUgc3dpdGNoLiBUaGUgTGludXggZHJpdmVyIGhhcmRjb2RlcyAweDFmIGFzIHRoZSBQSFkKPiBh
ZGRyZXNzIG9mIHRoZSBzd2l0Y2guIFNvIHRoZSByZWcgcHJvcGVydHkgb24gdGhlIGRldmljZSB0
cmVlIGlzIGN1cnJlbnRseQo+IGlnbm9yZWQgYnkgdGhlIExpbnV4IGRyaXZlci4KPiAKPiBUaGVy
ZWZvcmUsIGRlc2NyaWJlIHRoZSBjb3JyZWN0IFBIWSBhZGRyZXNzIG9uIEJhbmFuYSBQaSBCUEkt
UjIgUHJvIHRoYXQKPiBoYXMgdGhpcyBzd2l0Y2guCj4gCj4gWy4uLl0KCkFwcGxpZWQsIHRoYW5r
cyEKClsxLzFdIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBzZXQgUEhZIGFkZHJlc3Mgb2YgTVQ3NTMx
IHN3aXRjaCB0byAweDFmCiAgICAgIGNvbW1pdDogYTJhYzJhMWIwMjU5MGEyMmEyMzZjNDNjNDU1
ZjQyMWNkZWRlNDVmNQoKQmVzdCByZWdhcmRzLAotLSAKSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNu
dGVjaC5kZT4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
