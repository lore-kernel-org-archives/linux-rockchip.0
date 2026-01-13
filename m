Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B05BDD29DE0
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jan 2026 06:42:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MhBPyx9yWvfQxd2oBE5YWYl4w/A91z1Ad6GuE4gA/8E=; b=Yv+bnTBBZSA0H6
	aZ3ATCu8AWW1uuM3pMFTEcXbwhQaw90uta1UW+XzsYsbJfKjWNK2hcortugDxOSwpVh3Qif+QnZXP
	LesGPUiRlNwhNEJCs9A9PEbqqg0ENvYPw/46RNVhrYLs70jmn5sTV/ORMQkLqB73QXuVk/uclNVn3
	Q7vZwjJUEIAb/VKM/k7MEaTD3v/K7f7aeell3r8WCBq/1WAyn9fZO4FsuCIf0tDNVTRz4lzqPBL+e
	HP8azjs3TRpEQkpV4SHF65QghemLDtXEfU/6eVbPS3qwe18ZAtfduCTlyk17U1b5uPzez1oW483ev
	kBJZ6HYy67A2QPQaMyzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfY6o-00000006bfd-0SJB;
	Tue, 13 Jan 2026 06:42:30 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfY6l-00000006bdS-1Ahc;
	Tue, 13 Jan 2026 06:42:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 23567600AA;
	Tue, 13 Jan 2026 06:42:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0098C19423;
	Tue, 13 Jan 2026 06:42:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768286545;
	bh=tgNrJivakY84LN4ffX7ynvqrLuzdsKS6bBMEvtxUBUM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=CVkNgAwowTw3rkY43D3p+qbnYOV8nlcpIC+gdamWnBdYYkQiH60E0xY+VYSGKvOz3
	 W//tZqbuemKHNoltN36iKRkAU2grVtUr+sTmkErxuhM5ajrbynxok6UsVCbhR55q/P
	 2+sInRkNCU0PYrIRyEPOCOyISf4g5IVKkQrbWv0HhV9pu6ZHSc7VsSnTcnTVx/We5L
	 4gIu42OyGTRLwhcpxsUgMY0eIyGNwJ0cu+fMHsqRQtTaxtdXMYHb/QRkw6Lq6drmtI
	 5hW6Jz8xMXOeSqgvm6wMo1F8PTsYNZd2u62L6mAGqDziM/QWAzZxCDwpSvyjyP2+5r
	 4Nsyq3ObCbeHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0374D29DDC;
	Tue, 13 Jan 2026 06:42:25 +0000 (UTC)
From: Rudraksha Gupta via B4 Relay <devnull+guptarud.gmail.com@kernel.org>
Date: Mon, 12 Jan 2026 22:42:24 -0800
Subject: [PATCH 1/3] arm64: dts: rockchip: Add modem to the Pinephone Pro
MIME-Version: 1.0
Message-Id: <20260112-ppp_connectivity-v1-1-284d6e83b212@gmail.com>
References: <20260112-ppp_connectivity-v1-0-284d6e83b212@gmail.com>
In-Reply-To: <20260112-ppp_connectivity-v1-0-284d6e83b212@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Lee Jones <lee@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Rudraksha Gupta <guptarud@gmail.com>, Martijn Braam <martijn@brixit.nl>, 
 =?utf-8?q?Kamil_Trzci=C5=84ski?= <ayufan@ayufan.eu>, 
 Ondrej Jirman <megi@xff.cz>, Danct12 <danct12@disroot.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768286545; l=3643;
 i=guptarud@gmail.com; s=20240916; h=from:subject:message-id;
 bh=4uS+h5BwUlSPrxpCAFJLMPNjdiivO6iFy+cSgNfP0p0=;
 b=2ksy0syKTvw7tTSOjQGRnnffr+1niVslNBIkAg2/x41pqLBRVxPYmnDfrYxHhjVTbjbMotF10
 4/L/4w2w6ybD5Ram1A8zLKUfrUbuTb4LTHAN8WNWBnfPBjxYbRoVaqX
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

RnJvbTogUnVkcmFrc2hhIEd1cHRhIDxndXB0YXJ1ZEBnbWFpbC5jb20+CgpUaGlzIGFkZHMgdGhl
IFF1ZWN0ZWwgRUcyNS1HIG1vZGVtIHRvIHRoZSBQaW5lcGhvbmUgUHJvLgoKQ28tZGV2ZWxvcGVk
LWJ5OiBNYXJ0aWpuIEJyYWFtIDxtYXJ0aWpuQGJyaXhpdC5ubD4KU2lnbmVkLW9mZi1ieTogTWFy
dGlqbiBCcmFhbSA8bWFydGlqbkBicml4aXQubmw+CkNvLWRldmVsb3BlZC1ieTogS2FtaWwgVHJ6
Y2nFhHNraSA8YXl1ZmFuQGF5dWZhbi5ldT4KU2lnbmVkLW9mZi1ieTogS2FtaWwgVHJ6Y2nFhHNr
aSA8YXl1ZmFuQGF5dWZhbi5ldT4KQ28tZGV2ZWxvcGVkLWJ5OiBPbmRyZWogSmlybWFuIDxtZWdp
QHhmZi5jej4KU2lnbmVkLW9mZi1ieTogT25kcmVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+CkNvLWRl
dmVsb3BlZC1ieTogRGFuY3QxMiA8ZGFuY3QxMkBkaXNyb290Lm9yZz4KU2lnbmVkLW9mZi1ieTog
RGFuY3QxMiA8ZGFuY3QxMkBkaXNyb290Lm9yZz4KU2lnbmVkLW9mZi1ieTogUnVkcmFrc2hhIEd1
cHRhIDxndXB0YXJ1ZEBnbWFpbC5jb20+Ci0tLQogLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5
OS1waW5lcGhvbmUtcHJvLmR0cyAgICAgfCA4MyArKysrKysrKysrKysrKysrKysrKysrCiAxIGZp
bGUgY2hhbmdlZCwgODMgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszMzk5LXBpbmVwaG9uZS1wcm8uZHRzIGIvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazMzOTktcGluZXBob25lLXByby5kdHMKaW5kZXggNmIzNWY1OWNkNThl
Li45N2QwYmY0NTUyNTggMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszMzk5LXBpbmVwaG9uZS1wcm8uZHRzCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszMzk5LXBpbmVwaG9uZS1wcm8uZHRzCkBAIC05Nyw2ICs5Nyw0NiBAQCBtdWx0aS1sZWQg
ewogCQlsZWRzID0gPCZsZWRfcmVkPiwgPCZsZWRfZ3JlZW4+LCA8JmxlZF9ibHVlPjsKIAl9Owog
CisJdmNjXzRnXzV2OiByZWd1bGF0b3ItdmNjLTRnLTV2IHsKKwkJY29tcGF0aWJsZSA9ICJyZWd1
bGF0b3ItZml4ZWQiOworCQllbmFibGUtYWN0aXZlLWhpZ2g7CisJCWdwaW8gPSA8JmdwaW8xIFJL
X1BDNyBHUElPX0FDVElWRV9ISUdIPjsKKwkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKKwkJ
cGluY3RybC0wID0gPCZ2Y2NfNGdfNXZfZW4+OworCQlyZWd1bGF0b3ItbmFtZSA9ICJ2Y2NfNGdf
NXYiOworCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw1MDAwMDAwPjsKKwkJcmVndWxhdG9y
LW1heC1taWNyb3ZvbHQgPSA8NTAwMDAwMD47CisJCXZpbi1zdXBwbHkgPSA8JnZjYzV2MF9zeXM+
OworCQlyZWd1bGF0b3ItYWx3YXlzLW9uOworCX07CisKKwl2Y2NfNGc6IHJlZ3VsYXRvci12Y2Mt
NGcgeworCQljb21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7CisJCWVuYWJsZS1hY3RpdmUt
aGlnaDsKKwkJZ3BpbyA9IDwmZ3BpbzQgUktfUEM3IEdQSU9fQUNUSVZFX0hJR0g+OworCQlwaW5j
dHJsLW5hbWVzID0gImRlZmF1bHQiOworCQlwaW5jdHJsLTAgPSA8JnZjY180Z19lbj47CisJCXJl
Z3VsYXRvci1uYW1lID0gInZjY180ZyI7CisJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDM4
MDAwMDA+OworCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwzODAwMDAwPjsKKwkJdmluLXN1
cHBseSA9IDwmdmNjX3N5cz47CisJCXJlZ3VsYXRvci1hbHdheXMtb247CisJfTsKKworCXZjYzV2
MF9zeXM6IHJlZ3VsYXRvci12Y2M1djAtaG9zdCB7CisJCWNvbXBhdGlibGUgPSAicmVndWxhdG9y
LWZpeGVkIjsKKwkJcmVndWxhdG9yLW5hbWUgPSAidmNjNXYwX3N5cyI7CisJCXJlZ3VsYXRvci1t
aW4tbWljcm92b2x0ID0gPDUwMDAwMDA+OworCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDw1
MDAwMDAwPjsKKwkJcmVndWxhdG9yLWFsd2F5cy1vbjsKKwkJcmVndWxhdG9yLWJvb3Qtb247CisJ
CXZpbi1zdXBwbHkgPSA8JmJvb3N0X290Zz47CisKKwkJcmVndWxhdG9yLXN0YXRlLW1lbSB7CisJ
CQlyZWd1bGF0b3Itb24taW4tc3VzcGVuZDsKKwkJfTsKKwl9OworCiAJdmNjX3N5czogcmVndWxh
dG9yLXZjYy1zeXMgewogCQljb21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7CiAJCXJlZ3Vs
YXRvci1uYW1lID0gInZjY19zeXMiOwpAQCAtMjc0LDYgKzMxNCwxNyBAQCByazgxODogcG1pY0Ax
YyB7CiAJCXZjYzktc3VwcGx5ID0gPCZ2Y2MzdjNfc3lzPjsKIAogCQlyZWd1bGF0b3JzIHsKKwkJ
CWJvb3N0X290ZzogRENEQ19CT09TVCB7CisJCQkJcmVndWxhdG9yLW5hbWUgPSAiYm9vc3Rfb3Rn
IjsKKwkJCQlyZWd1bGF0b3ItYWx3YXlzLW9uOworCQkJCXJlZ3VsYXRvci1ib290LW9uOworCQkJ
CXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDUwMDAwMDA+OworCQkJCXJlZ3VsYXRvci1tYXgt
bWljcm92b2x0ID0gPDUwMDAwMDA+OworCQkJCXJlZ3VsYXRvci1zdGF0ZS1tZW0geworCQkJCQly
ZWd1bGF0b3Itb24taW4tc3VzcGVuZDsKKwkJCQl9OworCQkJfTsKKwogCQkJdmRkX2NwdV9sOiBE
Q0RDX1JFRzEgewogCQkJCXJlZ3VsYXRvci1uYW1lID0gInZkZF9jcHVfbCI7CiAJCQkJcmVndWxh
dG9yLWFsd2F5cy1vbjsKQEAgLTcwMiw2ICs3NTMsMTYgQEAgYmx1ZV9sZWRfcGluOiBibHVlLWxl
ZC1waW4gewogCQl9OwogCX07CiAKKwltb2RlbSB7CisJCXZjY180Z181dl9lbjogdmNjLTRnLTV2
LWVuLXBpbiB7CisJCQlyb2NrY2hpcCxwaW5zID0gPDEgUktfUEM3IFJLX0ZVTkNfR1BJTyAmcGNm
Z19wdWxsX25vbmU+OworCQl9OworCisJCXZjY180Z19lbjogdmNjLTRnLWVuLXBpbiB7CisJCQly
b2NrY2hpcCxwaW5zID0gPDQgUktfUEM3IFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX25vbmU+Owor
CQl9OworCX07CisKIAlwbWljIHsKIAkJcG1pY19pbnRfbDogcG1pYy1pbnQtbCB7CiAJCQlyb2Nr
Y2hpcCxwaW5zID0gPDEgUktfUEM1IFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX3VwPjsKQEAgLTgy
Nyw2ICs4ODgsMTYgQEAgJnRzYWRjIHsKIAlzdGF0dXMgPSAib2theSI7CiB9OwogCisKKyZ1MnBo
eTEgeworCXN0YXR1cyA9ICJva2F5IjsKK307CisKKyZ1MnBoeTFfaG9zdCB7CisJc3RhdHVzID0g
Im9rYXkiOworCXBoeS1zdXBwbHkgPSA8JnZjYzV2MF9zeXM+OworfTsKKwogJnVhcnQwIHsKIAlw
aW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwogCXBpbmN0cmwtMCA9IDwmdWFydDBfeGZlciAmdWFy
dDBfY3RzICZ1YXJ0MF9ydHM+OwpAQCAtODUyLDYgKzkyMywxOCBAQCAmdWFydDIgewogCXN0YXR1
cyA9ICJva2F5IjsKIH07CiAKKyZ1YXJ0MyB7CisJc3RhdHVzID0gIm9rYXkiOworfTsKKworJnVz
Yl9ob3N0MV9laGNpIHsKKwlzdGF0dXMgPSAib2theSI7Cit9OworCismdXNiX2hvc3QxX29oY2kg
eworCXN0YXR1cyA9ICJva2F5IjsKK307CisKICZ2b3BiIHsKIAlzdGF0dXMgPSAib2theSI7CiAJ
YXNzaWduZWQtY2xvY2tzID0gPCZjcnUgRENMS19WT1AwX0RJVj4sIDwmY3J1IERDTEtfVk9QMD4s
CgotLSAKMi41Mi4wCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
