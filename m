Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17F44C5DF94
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Aug 2026 05:18:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xrLD9yem9QqIWwXuIblU5T0JP6cC6Bsrn4f2nOyd1tM=; b=g6ILkaVpSpue+T
	ypwbKe+GQ2fgRUCilEX+ZNXdWbn8Dk7TjUrRrIM0W6n6TKBAuruW5AjTe+hl3JdeaklxOBImalFyw
	svMqaM1ThQzsAiuKT9bzVp/PFVZZJccZDLh+G6FWh6ddgOnGMWNmBDQSMTa/Hcv0t7tYjhbpeInTI
	Qbn/FiSiYZjlPhy/EdL+PR6wFxhjgTgLYZ+1AXtPz/2OHNzENQGGVMhS+2wGXNtbX+kT6S/XQ9kun
	iTpQWK8MsMZwUEwtJjS4sA56f6G3CjIzq7NVmMm6xg2u5uGSQIHJdUjDz78WBx94Nt26h6PTVFCkE
	F0lCE1XEphFdD1/1P7VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyjYD-00000000AWp-29Kg;
	Tue, 25 Aug 2026 05:18:21 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyjYA-00000000AVM-1j6J;
	Tue, 25 Aug 2026 05:18:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id D88484404A;
	Tue, 25 Aug 2026 05:18:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99D95C2BCFA;
	Tue, 25 Aug 2026 05:18:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787635097;
	bh=1vJXSwb71+DIkIBLQxNtwxCWQXMAvT77Lw0qeqLFOm4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=EpJklauPLAqPyoFLSLdBB6FXWQbFMgl5529wAVYn7xoFbeY/v/yakHMueEi+6sMkC
	 fvQWQc6pkp4k3D3bHX0p8gJEyMP4J1e9wsJWIRznfZfMJV8wTOLS3BUdIf7wGq4O8l
	 NDa6TCgWiq4+d0RcGq4aqAgbFNv/RC6PBAbgZAX70P9j67uTppXJ5+9/GKzYOShpaz
	 z+Z1cHXbKdzjNsFYyoDFaQX6DYIgTYKBn0KKi9+lc6485wD9+1Vk7gO0tMiZZnaZHy
	 VuTqvv45SK6bnboNDoGmk52LaEMSx1VT38d4xJ98imM5Ix8LBrVmFWJIXeULvO4TW4
	 2lxxfgdHP87og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 859CEC61CE3;
	Tue, 25 Aug 2026 05:18:17 +0000 (UTC)
From: Rudraksha Gupta via B4 Relay <devnull+guptarud.gmail.com@kernel.org>
Date: Mon, 24 Aug 2026 22:18:17 -0700
Subject: [PATCH v2 2/2] clk: rk808: Select the clock function of CLK32KOUT2
 on the RK818
MIME-Version: 1.0
Message-Id: <20260824-ppp_connectivity-v2-2-a4b0e11cd62c@gmail.com>
References: <20260824-ppp_connectivity-v2-0-a4b0e11cd62c@gmail.com>
In-Reply-To: <20260824-ppp_connectivity-v2-0-a4b0e11cd62c@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Lee Jones <lee@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Rudraksha Gupta <guptarud@gmail.com>, linux-clk@vger.kernel.org, 
 mfd@lists.linux.dev, Martijn Braam <martijn@brixit.nl>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787635096; l=3455;
 i=guptarud@gmail.com; s=20240916; h=from:subject:message-id;
 bh=btBxv1+lK3NuJ3bLMeNAP2UZMK2asFecMzZxkL+Msaw=;
 b=hc3J13W/s34ea0bH6JLfnQLZaWIagLwAHIyZadpZ16gudpVF+ttaRbDdXkMoHA+ARJ6eYeZ0m
 tdH+itjfuWeAqhiMtIVBnJgnrFLkeqGRqL+4Xo8BRLA3st+1wFsA2iB
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

RnJvbTogTWFydGlqbiBCcmFhbSA8bWFydGlqbkBicml4aXQubmw+CgpPbiB0aGUgUks4MTggdGhl
IENMSzMyS09VVDIgcGluIGlzIHNoYXJlZCBiZXR3ZWVuIHRoZSAzMi43Njgga0h6IGNsb2NrCm91
dHB1dCBhbmQgYSByZWNvdmVyeSBmdW5jdGlvbiwgc2VsZWN0ZWQgYnkgYml0IDEgb2YgUks4MDhf
Q0xLMzJPVVRfUkVHLgpDTEszMktPVVQyX0VOIG9ubHkgdGFrZXMgZWZmZWN0IG9uIHRoZSBjbG9j
ayBmdW5jdGlvbiwgc28gdGhlIG91dHB1dCBjYW4KYmUgZW5hYmxlZCBhbmQgc3RpbGwgYmUgc2ls
ZW50LiBUaGUgZGF0YXNoZWV0IHJlc2V0cyB0aGUgcmVnaXN0ZXIgdG8KemVybywgYnV0IHRoYXQg
Y2Fubm90IGJlIHJlbGllZCBvbjogb24gdGhlIFBpbmU2NCBQaW5lUGhvbmUgUHJvIGl0IHJlYWRz
CjB4MDMgb25jZSBMaW51eCBpcyB1cCwgbGVhdmluZyB0aGUgd2lmaSBhbmQgYmx1ZXRvb3RoIHdp
dGhvdXQgdGhlaXIKMzIuNzY4IGtIeiByZWZlcmVuY2UuCgpTZWxlY3QgdGhlIGNsb2NrIGZ1bmN0
aW9uIHdoZW4gdGhlIG91dHB1dCBpcyBwcmVwYXJlZCwgc28gdGhhdCBpdCBjYW4KYWxzbyBiZSBn
aXZlbiBiYWNrLCBhbmQgcmVwb3J0IHRoZSBvdXRwdXQgYXMgcHJlcGFyZWQgb25seSB3aGVuIGl0
IGlzCmVuYWJsZWQgYW5kIG9uIHRoZSBjbG9jayBmdW5jdGlvbi4gVGhlIGJpdCBpcyBub3QgZGVm
aW5lZCBvbiB0aGUgb3RoZXIKdmFyaWFudHMsIHNvIGdpdmUgdGhlIFJLODE4IGl0cyBvd24gY2xr
X29wcy4gQm9hcmRzIHRoYXQgbmV2ZXIgdGFrZSB0aGUKY2xvY2sgYXJlIHVuYWZmZWN0ZWQuCgpC
YXNlZCBvbiBhbiBvdXQtb2YtdHJlZSBwYXRjaCBieSBNYXJ0aWpuIEJyYWFtICYgS2FtaWwgVHJ6
Y2nFhHNraSwKY2FycmllZCBieSBPbmRyZWogSmlybWFuLgoKU2lnbmVkLW9mZi1ieTogTWFydGlq
biBCcmFhbSA8bWFydGlqbkBicml4aXQubmw+ClNpZ25lZC1vZmYtYnk6IFJ1ZHJha3NoYSBHdXB0
YSA8Z3VwdGFydWRAZ21haWwuY29tPgotLS0KIGRyaXZlcnMvY2xrL2Nsay1yazgwOC5jICAgfCA0
NiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystCiBpbmNsdWRl
L2xpbnV4L21mZC9yazgwOC5oIHwgIDEgKwogMiBmaWxlcyBjaGFuZ2VkLCA0NiBpbnNlcnRpb25z
KCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvY2xrLXJrODA4LmMg
Yi9kcml2ZXJzL2Nsay9jbGstcms4MDguYwppbmRleCA1YTc1YjVjOTE1NTUuLjRhYWJlMDIzNDc2
OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9jbGsvY2xrLXJrODA4LmMKKysrIGIvZHJpdmVycy9jbGsv
Y2xrLXJrODA4LmMKQEAgLTcxLDYgKzcxLDQ5IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgY2xrX29w
cyByazgwOF9jbGtvdXQyX29wcyA9IHsKIAkucmVjYWxjX3JhdGUgPSByazgwOF9jbGtvdXRfcmVj
YWxjX3JhdGUsCiB9OwogCitzdGF0aWMgaW50IHJrODE4X2Nsa291dDJfZW5hYmxlKHN0cnVjdCBj
bGtfaHcgKmh3LCBib29sIGVuYWJsZSkKK3sKKwlzdHJ1Y3Qgcms4MDhfY2xrb3V0ICpyazgwOF9j
bGtvdXQgPSBjb250YWluZXJfb2YoaHcsCisJCQkJCQkJIHN0cnVjdCByazgwOF9jbGtvdXQsCisJ
CQkJCQkJIGNsa291dDJfaHcpOworCisJcmV0dXJuIHJlZ21hcF91cGRhdGVfYml0cyhyazgwOF9j
bGtvdXQtPnJlZ21hcCwgUks4MDhfQ0xLMzJPVVRfUkVHLAorCQkJCSAgUks4MThfQ0xLMzJLT1VU
Ml9GVU5DX01BU0sgfCBDTEszMktPVVQyX0VOLAorCQkJCSAgZW5hYmxlID8gQ0xLMzJLT1VUMl9F
TiA6IDApOworfQorCitzdGF0aWMgaW50IHJrODE4X2Nsa291dDJfcHJlcGFyZShzdHJ1Y3QgY2xr
X2h3ICpodykKK3sKKwlyZXR1cm4gcms4MThfY2xrb3V0Ml9lbmFibGUoaHcsIHRydWUpOworfQor
CitzdGF0aWMgdm9pZCByazgxOF9jbGtvdXQyX3VucHJlcGFyZShzdHJ1Y3QgY2xrX2h3ICpodykK
K3sKKwlyazgxOF9jbGtvdXQyX2VuYWJsZShodywgZmFsc2UpOworfQorCitzdGF0aWMgaW50IHJr
ODE4X2Nsa291dDJfaXNfcHJlcGFyZWQoc3RydWN0IGNsa19odyAqaHcpCit7CisJc3RydWN0IHJr
ODA4X2Nsa291dCAqcms4MDhfY2xrb3V0ID0gY29udGFpbmVyX29mKGh3LAorCQkJCQkJCSBzdHJ1
Y3Qgcms4MDhfY2xrb3V0LAorCQkJCQkJCSBjbGtvdXQyX2h3KTsKKwl1MzIgdmFsOworCisJaW50
IHJldCA9IHJlZ21hcF9yZWFkKHJrODA4X2Nsa291dC0+cmVnbWFwLCBSSzgwOF9DTEszMk9VVF9S
RUcsICZ2YWwpOworCisJaWYgKHJldCA8IDApCisJCXJldHVybiAwOworCisJcmV0dXJuICh2YWwg
JiAoUks4MThfQ0xLMzJLT1VUMl9GVU5DX01BU0sgfCBDTEszMktPVVQyX0VOKSkgPT0gQ0xLMzJL
T1VUMl9FTjsKK30KKworc3RhdGljIGNvbnN0IHN0cnVjdCBjbGtfb3BzIHJrODE4X2Nsa291dDJf
b3BzID0geworCS5wcmVwYXJlID0gcms4MThfY2xrb3V0Ml9wcmVwYXJlLAorCS51bnByZXBhcmUg
PSByazgxOF9jbGtvdXQyX3VucHJlcGFyZSwKKwkuaXNfcHJlcGFyZWQgPSByazgxOF9jbGtvdXQy
X2lzX3ByZXBhcmVkLAorCS5yZWNhbGNfcmF0ZSA9IHJrODA4X2Nsa291dF9yZWNhbGNfcmF0ZSwK
K307CisKIHN0YXRpYyBzdHJ1Y3QgY2xrX2h3ICoKIG9mX2Nsa19yazgwOF9nZXQoc3RydWN0IG9m
X3BoYW5kbGVfYXJncyAqY2xrc3BlYywgdm9pZCAqZGF0YSkKIHsKQEAgLTEzNCwxMSArMTc3LDEy
IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgY2xrX29wcyAqcmtwbWljX2dldF9vcHMobG9uZyB2YXJp
YW50KQogCWNhc2UgUks4MDlfSUQ6CiAJY2FzZSBSSzgxN19JRDoKIAkJcmV0dXJuICZyazgxN19j
bGtvdXQyX29wczsKKwljYXNlIFJLODE4X0lEOgorCQlyZXR1cm4gJnJrODE4X2Nsa291dDJfb3Bz
OwogCS8qCiAJICogRm9yIHRoZSBkZWZhdWx0IGNhc2UsIGl0IG1hdGNoIHRoZSBmb2xsb3dpbmcg
UE1JQyB0eXBlLgogCSAqIFJLODA1X0lECiAJICogUks4MDhfSUQKLQkgKiBSSzgxOF9JRAogCSAq
LwogCWRlZmF1bHQ6CiAJCXJldHVybiAmcms4MDhfY2xrb3V0Ml9vcHM7CmRpZmYgLS1naXQgYS9p
bmNsdWRlL2xpbnV4L21mZC9yazgwOC5oIGIvaW5jbHVkZS9saW51eC9tZmQvcms4MDguaAppbmRl
eCA3ZmZjOTA0Yzg2NGMuLmUzY2I1ODZkMzRhMCAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9t
ZmQvcms4MDguaAorKysgYi9pbmNsdWRlL2xpbnV4L21mZC9yazgwOC5oCkBAIC0xMDUxLDYgKzEw
NTEsNyBAQCBlbnVtIHJrODA2X2R2c19tb2RlIHsKIAogI2RlZmluZSBWT1VUX0xPX0lOVAlCSVQo
MCkKICNkZWZpbmUgQ0xLMzJLT1VUMl9FTglCSVQoMCkKKyNkZWZpbmUgUks4MThfQ0xLMzJLT1VU
Ml9GVU5DX01BU0sJQklUKDEpCiAKICNkZWZpbmUgVEVNUDEwNUMJCQkweDA4CiAjZGVmaW5lIFRF
TVAxMTVDCQkJMHgwYwoKLS0gCjIuNTUuMAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
