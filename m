Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B187E6B26F
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Dec 2025 03:44:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FR0T1W3URxIGySHqzKLWXbsV17uKk2ZHmekIJ+wY0BE=; b=J4Wjp9CMhlos31
	eylcPizSsxS+UT6p8Rh+LtnjXQlBWbQLLA1r0yBfhPk7kp6Qqyg6T2YE+6HyxObi8KGUHtCPfXmGe
	IZXahglwUxPnAYiVgTT+zNjclEurBXXjGrlBJ+YnRUWY5wPvXajTo+dYxwtzrUVq9DCv66ZUEISaA
	IHO9mz7y7+vRDdqgdbu98nXfgsSS/dFO81W8FflDSZbtYelNNQXlJxg0OZmrB3OM1vhmOg9M5BoX5
	jjILkpRtgjfqCb6NpKe/M/MCZxSUUQwBLSUY2Z6PEjB/15pmPBZvK3ee5T8hXstxCLOwmK75FITzl
	0PpPO+Ep4iY3hesLP+iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYykX-00000000sSF-1VPa;
	Fri, 26 Dec 2025 03:44:21 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYykT-00000000sQw-3qbe;
	Fri, 26 Dec 2025 03:44:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 7E4C9600BB;
	Fri, 26 Dec 2025 03:44:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2826EC4AF09;
	Fri, 26 Dec 2025 03:44:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766720656;
	bh=EKBIi6eKC8bwV3JcDE8QBa6/BCkSbEYrwKPv7YvsO48=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=EtInuGZWSvVK+yJ9Qp8U4xio8i2QkgWTjC05V7VbK77C8g+b9GxdhffzUY2VS1NK7
	 j10aHPyG0f6cbK1GPaZw8oRRovPwa5vGkFABFTzLmR5QAfrYvKN2di2uj8VpCqojmZ
	 ApIT31E6CcqWeWKfgiFhuwB1XZThX0ROQ3pNoDWSE/RmaWX7N0R4Ev0hBRdUom9CoC
	 W+qNaPBR5h4BNrdMynYBCyVOgLBP1OCG0YsWbY609m3Dx4eRlNJhgddeVvrOLO49GQ
	 f1CNCXedUdzLkzBIkrIGk+2PALcC3A4Td8UWd3g0wy4QXHRR6Xg2T2q7ZnWVn7LT0Z
	 5a9sAsBZ+LfRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 13690E82CA4;
	Fri, 26 Dec 2025 03:44:16 +0000 (UTC)
From: Rudraksha Gupta via B4 Relay <devnull+guptarud.gmail.com@kernel.org>
Date: Thu, 25 Dec 2025 19:43:20 -0800
Subject: [PATCH v6 2/2] arm64: dts: rockchip: Add light/proximity sensor to
 Pinephone Pro
MIME-Version: 1.0
Message-Id: <20251225-ppp_light_accel_mag_vol-down-v6-2-8c79a4e87001@gmail.com>
References: <20251225-ppp_light_accel_mag_vol-down-v6-0-8c79a4e87001@gmail.com>
In-Reply-To: <20251225-ppp_light_accel_mag_vol-down-v6-0-8c79a4e87001@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 phone-devel@vger.kernel.org, Rudraksha Gupta <guptarud@gmail.com>, 
 Ondrej Jirman <megi@xff.cz>, Martijn Braam <martijn@brixit.nl>, 
 =?utf-8?q?Kamil_Trzci=C5=84ski?= <ayufan@ayufan.eu>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766720655; l=2096;
 i=guptarud@gmail.com; s=20240916; h=from:subject:message-id;
 bh=73whftO4gyGNvsyeXM75XpLd8dUij1OhzKtrJMPtTnE=;
 b=2wmDdvBnsNlr47Cm6jczlYsiauKFzAVVHejv21YcBlNm2iRXcCA1OC1LsVECmlSPwBoBBgJBz
 ZmNcACNWI1KCMR5Kfs6BgJZ+zyVrwfYb4ahT3RKziGqbXEaVRs6uS/i
X-Developer-Key: i=guptarud@gmail.com; a=ed25519;
 pk=ETrudRugWAtOpr0OhRiheQ1lXM4Kk4KGFnBySlKDi2I=
X-Endpoint-Received: by B4 Relay for guptarud@gmail.com/20240916 with
 auth_id=211
X-Original-From: Rudraksha Gupta <guptarud@gmail.com>
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
Reply-To: guptarud@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

RnJvbTogT25kcmVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+CgpQaW5lcGhvbmUgUHJvIHVzZXMgU1RL
MzMxMSBhY2NvcmRpbmcgdG8gdGhlIHNjaGVtYXRpY3MuCgpUZXN0czoKfiAkIG1vbml0b3Itc2Vu
c29yIC0tbGlnaHQKICAgIC8vIFdoZW4gdGhlIHNlbnNvciBpcyBleHBvc2VkLCBpdCBnZXQncyBm
bHVjdGF0aW5nIHZhbHVlcyBzdWNoIGFzCiAgICBMaWdodCBjaGFuZ2VkOiAxLjgwMDAwMCAobHV4
KQogICAgTGlnaHQgY2hhbmdlZDogMS43MDAwMDAgKGx1eCkKICAgIExpZ2h0IGNoYW5nZWQ6IDEu
ODAwMDAwIChsdXgpCiAgICBMaWdodCBjaGFuZ2VkOiAxLjcwMDAwMCAobHV4KQogICAgTGlnaHQg
Y2hhbmdlZDogMS42MDAwMDAgKGx1eCkKICAgIExpZ2h0IGNoYW5nZWQ6IDEuMTAwMDAwIChsdXgp
CiAgICAvLyBXaGVuIGNvdmVyaW5nIHRoZSBzZW5zb3IsIGl0IHByaW50cyBhIGxvdyB2YWx1ZSBh
bmQgc3RvcHMgcHJpbnRpbmcKICAgIExpZ2h0IGNoYW5nZWQ6IDAuMjAwMDAwIChsdXgpCgp+ICQg
bW9uaXRvci1zZW5zb3IgLS1wcm94aW1pdHkKICAgIC8vIFdoZW4gaXQgZ29lcyBhd2F5IGZyb20g
YW4gb2JqZWN0CiAgICBQcm94aW1pdHkgdmFsdWUgY2hhbmdlZDogMAogICAgLy8gV2hlbiBpdCBj
b21lcyBuZWFyIGFuIG9iamVjdAogICAgUHJveGltaXR5IHZhbHVlIGNoYW5nZWQ6IDEKCkNvLWRl
dmVsb3BlZC1ieTogTWFydGlqbiBCcmFhbSA8bWFydGlqbkBicml4aXQubmw+ClNpZ25lZC1vZmYt
Ynk6IE1hcnRpam4gQnJhYW0gPG1hcnRpam5AYnJpeGl0Lm5sPgpDby1kZXZlbG9wZWQtYnk6IEth
bWlsIFRyemNpxYRza2kgPGF5dWZhbkBheXVmYW4uZXU+ClNpZ25lZC1vZmYtYnk6IEthbWlsIFRy
emNpxYRza2kgPGF5dWZhbkBheXVmYW4uZXU+ClNpZ25lZC1vZmYtYnk6IE9uZHJlaiBKaXJtYW4g
PG1lZ2lAeGZmLmN6PgpTaWduZWQtb2ZmLWJ5OiBSdWRyYWtzaGEgR3VwdGEgPGd1cHRhcnVkQGdt
YWlsLmNvbT4KLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1waW5lcGhv
bmUtcHJvLmR0cyB8IDE2ICsrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxNiBpbnNl
cnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMz
OTktcGluZXBob25lLXByby5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5
OS1waW5lcGhvbmUtcHJvLmR0cwppbmRleCAxZDNiYWE1NTdjNzAuLmU4OTc1OTYxM2I1NSAxMDA2
NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcGluZXBob25lLXBy
by5kdHMKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcGluZXBob25l
LXByby5kdHMKQEAgLTUyMCw2ICs1MjAsMTYgQEAgdG91Y2hzY3JlZW5AMTQgewogCQl0b3VjaHNj
cmVlbi1zaXplLXggPSA8NzIwPjsKIAkJdG91Y2hzY3JlZW4tc2l6ZS15ID0gPDE0NDA+OwogCX07
CisKKwlsaWdodC1zZW5zb3JANDggeworCQljb21wYXRpYmxlID0gInNlbnNvcnRlayxzdGszMzEx
IjsKKwkJcmVnID0gPDB4NDg+OworCQlpbnRlcnJ1cHQtcGFyZW50ID0gPCZncGlvND47CisJCWlu
dGVycnVwdHMgPSA8UktfUEQzIElSUV9UWVBFX0VER0VfRkFMTElORz47CisJCXBpbmN0cmwtbmFt
ZXMgPSAiZGVmYXVsdCI7CisJCXBpbmN0cmwtMCA9IDwmbGlnaHRfaW50X2w+OworCQlwcm94aW1p
dHktbmVhci1sZXZlbCA9IDwzMDA+OworCX07CiB9OwogCiAmaTJjNCB7CkBAIC03MTIsNiArNzIy
LDEyIEBAIHZjYzF2OF9jb2RlY19lbjogdmNjMXY4LWNvZGVjLWVuIHsKIAkJfTsKIAl9OwogCisJ
c3RrMzMxMSB7CisJCWxpZ2h0X2ludF9sOiBsaWdodC1pbnQtbCB7CisJCQlyb2NrY2hpcCxwaW5z
ID0gPDQgUktfUEQzIFJLX0ZVTkNfR1BJTyAmcGNmZ19pbnB1dF9wdWxsX3VwPjsKKwkJfTsKKwl9
OworCiAJd2lmaSB7CiAJCXdpZmlfaG9zdF93YWtlX2w6IHdpZmktaG9zdC13YWtlLWwgewogCQkJ
cm9ja2NoaXAscGlucyA9IDw0IFJLX1BEMCBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF9ub25lPjsK
Ci0tIAoyLjUyLjAKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
