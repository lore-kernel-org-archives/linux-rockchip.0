Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82AE7C88E40
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Sep 2026 14:34:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZrgxyqtwrJCQFvUOCfOmRgTuhPjOjnskCwZx3nVeFXQ=; b=Xf1G4NrWusmSPr
	0TFui7DEd7WT1LLSfHLDkNTsoWltMK2W9cXbE8sDV3hdizNs60b9UYzlkDWQLA8qOxVBqMV3wNeJ1
	rUoPWVMr1a34b8vFjZnTJ6CTQ5oY0U23uPHADutEv0X2GwBw7Y5oBVQp2ergfZH8vksilqRGmZz64
	+9eoI48HGnnTKURMqudxTjI6V9XWKqWPZOwOeUVf+uLiFeIm5DRDv9g8Fomaf45p6K3mxQJKa1zfo
	1F1sE+BmxZCN81+xLtarSEAln7o1cUFBxKyYYVP+XVdcERhb/whfnE2DRuaZou8z7SEVWUmXDgzDe
	86F5DrGj/nMCPcDcTRhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4JN8-0000000BzKg-22up;
	Wed, 09 Sep 2026 14:33:58 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4JN6-0000000BzHb-24S6;
	Wed, 09 Sep 2026 14:33:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id CBC8960218;
	Wed,  9 Sep 2026 14:33:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7355DC2BCF6;
	Wed,  9 Sep 2026 14:33:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788964435;
	bh=rssftvIB7JoeWgPHfSiz0eTsk9hUcMMvgkEOARy/pIY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=kAdba5f+RakFKdpMriPx1K93vIY7A5TJlvMhh9DExtsyDexUCDVEZ418E4+NoahYY
	 B+E6TRxpMZE2szTyFudEjcHwoWMqIC66u9usikNxZXkdY2/XsNi8NMSHxRoAlpglF6
	 XIxrLtBeIkXvjoZ2UTBtKPxllGpu7rlVUfuXk+e/JbF1PL+E1IVU0940hfWm/eyNUg
	 +EVveEAWOp/hYZqxk86WoK0S2FPa7wGAWa/iH6bunGbxF5TunBTQabun3ZhrIAddlm
	 RU8ymDtID0PhONxXkPI0q19A+uDlt8JhqaBJXM3k2me9MN4WnOMiEuMlItMB+uoVpx
	 Hu8hzilLcI5AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D8DAC79FB7;
	Wed,  9 Sep 2026 14:33:55 +0000 (UTC)
From: =?utf-8?q?=E5=AE=89=E5=AE=B9_via_B4_Relay?= <devnull+HystericalDragons.proton.me@kernel.org>
Date: Wed, 09 Sep 2026 22:33:22 +0800
Subject: [PATCH v3 1/5] arm64: dts: rockchip: Reset the NanoPi Zero2 PHY
 from the MDIO bus
MIME-Version: 1.0
Message-Id: <20260909-r28s-upstream-v3-1-ee3e1a34a353@proton.me>
References: <20260909-r28s-upstream-v3-0-ee3e1a34a353@proton.me>
In-Reply-To: <20260909-r28s-upstream-v3-0-ee3e1a34a353@proton.me>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Chukun Pan <amadeus@jmu.edu.cn>, jensen <jensenhuang@friendlyarm.com>, 
 Andrey Korshunov <razor1702@gmail.com>, 
 Diederik de Haas <diederik@cknow-tech.com>, 
 =?utf-8?q?=E5=AE=89=E5=AE=B9?= <HystericalDragons@proton.me>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2540;
 i=HystericalDragons@proton.me; h=from:subject:message-id;
 bh=Uf1K3l1f7dmnIbSjn3YINB58f9z+/Y2KTLHOEJQ3J20=;
 b=owGbwMvMwCUmepz3XUtTHjvjabUkhqyFeYF5wTYZZufNc3dv9ruWplDnsHhyx9trYu0Lv3zrE
 u3q4vToKGVhEONikBVTZJHdVB0ptCp6ZhGL1HGYOaxMIEMYuDgFYCIvgxkZukw3NQa+aF/TeMRv
 6UcLK3PfqOgfIS5GTAs2Tt2+6M6XWwz/tH+27+k/yZp+dYfyf4YzmlpG4X+yPcw2WyzvS5Y0qw9
 kBwA=
X-Developer-Key: i=HystericalDragons@proton.me; a=openpgp;
 fpr=1DB27B5912AA5B9972041AC715C70DEE84826E07
X-Endpoint-Received: by B4 Relay for HystericalDragons@proton.me/default
 with auth_id=1004
X-Original-From: =?utf-8?q?=E5=AE=89=E5=AE=B9?= <HystericalDragons@proton.me>
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
Reply-To: HystericalDragons@proton.me
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

RnJvbTog5a6J5a65IDxIeXN0ZXJpY2FsRHJhZ29uc0Bwcm90b24ubWU+CgpUaGUgUkdNSUkgUEhZ
IHJlc2V0IGlzIGRlc2NyaWJlZCBpbiB0aGUgUEhZIG5vZGUsIHdoZXJlIGl0IGlzIGFwcGxpZWQK
dG9vIGxhdGUgdG8gYmUgb2YgdXNlLiBfX29mX21kaW9idXNfcmVnaXN0ZXIoKSByZWdpc3RlcnMg
dGhlIGJ1cyBiZWZvcmUKd2Fsa2luZyBpdHMgY2hpbGRyZW4sIGFuZCBmb3IgYSBQSFkgbm9kZSB3
aXRob3V0IGFuIGV4cGxpY2l0CmV0aGVybmV0LXBoeS1pZEFBQUEuQkJCQiBjb21wYXRpYmxlLCBm
d25vZGVfbWRpb2J1c19yZWdpc3Rlcl9waHkoKSBjYWxscwpnZXRfcGh5X2RldmljZSgpIHRvIHJl
YWQgdGhlIFBIWSBJRCBvdmVyIHRoZSBidXMgYmVmb3JlCnBoeV9kZXZpY2VfcmVnaXN0ZXIoKSBn
ZXRzIGFzIGZhciBhcyByZXF1ZXN0aW5nIHJlc2V0LWdwaW9zLiBBIFBIWSB0aGF0CnRoZSBib290
bG9hZGVyIGxlZnQgaW4gcmVzZXQgaXMgdGhlcmVmb3JlIG5ldmVyIGZvdW5kOgoKICBtZGlvX2J1
cyBzdG1tYWMtMDogTURJTyBkZXZpY2UgYXQgYWRkcmVzcyAxIGlzIG1pc3NpbmcuCgpUaGlzIGhh
cHBlbnMgd2l0aCBtYWlubGluZSBVLUJvb3QgKGdlbmVyaWMtcmszNTI4KSwgd2hpY2ggZG9lcyBu
b3QgdG91Y2gKdGhlIHBpbiwgYW5kIGxlYXZlcyB0aGUgcG9ydCBkZWFkLgoKRGVzY3JpYmUgdGhl
IHJlc2V0IG9uIHRoZSBNRElPIGJ1cyBpbnN0ZWFkLiBfX21kaW9idXNfcmVnaXN0ZXIoKSBhc3Nl
cnRzCmFuZCByZWxlYXNlcyB0aGUgYnVzIGxldmVsIHJlc2V0LWdwaW9zIGJlZm9yZSBhbnkgZGV2
aWNlIG9uIHRoZSBidXMgaXMKcmVnaXN0ZXJlZCwgc28gdGhlIFBIWSByZXNwb25kcyB3aGF0ZXZl
ciBzdGF0ZSB0aGUgYm9vdGxvYWRlciBsZWZ0IGl0CmluLiBUaGVyZSBpcyBvbmx5IG9uZSBQSFkg
b24gbWRpbzEsIHNvIGEgYnVzIHdpZGUgcmVzZXQgaXMgZXF1aXZhbGVudC4KClRoZSBwaW4gaXMg
bXV4ZWQgYnkgdGhlIEdQSU8gcmVxdWVzdCBpdHNlbGYsIGJ1dCBrZWVwIGdtYWMxX3JzdG5fbApk
ZXNjcmliZWQ6IG1vdmUgaXQgdG8gdGhlIE1BQywgYXMgdGhlIE1ESU8gYnVzIGhhcyBubyBkZXZp
Y2Ugb2YgaXRzIG93bgp0byBhcHBseSBwaW5jdHJsIHRvLgoKRml4ZXM6IGI5NDQxMTJhYmVmNCAo
ImFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgRnJpZW5kbHlFbGVjIE5hbm9QaSBaZXJvMiIpClJl
cG9ydGVkLWJ5OiBBbmRyZXkgS29yc2h1bm92IDxyYXpvcjE3MDJAZ21haWwuY29tPgpDbG9zZXM6
IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNjA5MDkxMzQ3MTYuODc5LTEtcmF6b3IxNzAy
QGdtYWlsLmNvbQpTaWduZWQtb2ZmLWJ5OiDlronlrrkgPEh5c3RlcmljYWxEcmFnb25zQHByb3Rv
bi5tZT4KLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzUyOC1uYW5vcGktemVy
bzIuZHRzIHwgMTEgKysrKystLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyks
IDYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazM1MjgtbmFub3BpLXplcm8yLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszNTI4LW5hbm9waS16ZXJvMi5kdHMKaW5kZXggOTdkODUxMjRkMi4uZjNlNTQzZDI2MSAxMDA2
NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1MjgtbmFub3BpLXplcm8y
LmR0cworKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzUyOC1uYW5vcGktemVy
bzIuZHRzCkBAIC0yMTUsNyArMjE1LDcgQEAgJmdtYWMxIHsKIAlwaHktc3VwcGx5ID0gPCZ2Y2Nf
M3YzPjsKIAlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwogCXBpbmN0cmwtMCA9IDwmcmdtaWlf
bWlpbT4sIDwmcmdtaWlfdHhfYnVzMj4sIDwmcmdtaWlfcnhfYnVzMj4sCi0JCSAgICA8JnJnbWlp
X3JnbWlpX2Nsaz4sIDwmcmdtaWlfcmdtaWlfYnVzPjsKKwkJICAgIDwmcmdtaWlfcmdtaWlfY2xr
PiwgPCZyZ21paV9yZ21paV9idXM+LCA8JmdtYWMxX3JzdG5fbD47CiAJc3RhdHVzID0gIm9rYXki
OwogfTsKIApAQCAtMjQyLDE0ICsyNDIsMTMgQEAgaHltODU2MzogcnRjQDUxIHsKIH07CiAKICZt
ZGlvMSB7CisJcmVzZXQtZGVsYXktdXMgPSA8MjAwMDA+OworCXJlc2V0LWdwaW9zID0gPCZncGlv
NCBSS19QQzIgR1BJT19BQ1RJVkVfTE9XPjsKKwlyZXNldC1wb3N0LWRlbGF5LXVzID0gPDEwMDAw
MD47CisKIAlyZ21paV9waHk6IGV0aGVybmV0LXBoeUAxIHsKIAkJY29tcGF0aWJsZSA9ICJldGhl
cm5ldC1waHktaWVlZTgwMi4zLWMyMiI7CiAJCXJlZyA9IDwweDE+OwotCQlwaW5jdHJsLW5hbWVz
ID0gImRlZmF1bHQiOwotCQlwaW5jdHJsLTAgPSA8JmdtYWMxX3JzdG5fbD47Ci0JCXJlc2V0LWFz
c2VydC11cyA9IDwyMDAwMD47Ci0JCXJlc2V0LWRlYXNzZXJ0LXVzID0gPDEwMDAwMD47Ci0JCXJl
c2V0LWdwaW9zID0gPCZncGlvNCBSS19QQzIgR1BJT19BQ1RJVkVfTE9XPjsKIAl9OwogfTsKIAoK
LS0gCjIuNTUuMAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
