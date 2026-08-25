Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8AB2BC5DF9C
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Aug 2026 05:18:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cUgU/HuHE/Tp46E2dlkRDWKSNT++5vofZ8NxE4bQdS4=; b=ndTFlT5HLWoebc
	mNj4ySlNs0Ol5TxABIhjzn8JRfZB2P9dRqcNWvzh1DAfhdsoWZkCGQD1SAlGoWZHdoRxOa//QVc/C
	okXJvsvap3HYwe7ILclE2G9/bGzHs0E15cBxPsJlQICD4zNW4DkpAucvxFN5TdSkcVSy4JKh2ql7k
	dJZJoLbNjJm/K1sc+bxB2Vj437AYCvTOcgFuqcjtD6YDOWlocuSUiYnR/Y/23bfI+TTthffiPn1cd
	MqwpSQl4fDbt2wjUc2zaMf/UsYe0WVaLsyrbnJjp/T5xOlv4A39T1Ro1ungGTkQwG2+XHEAfwo7wd
	q0CwQia/05gjJHG8uV5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyjYD-00000000AWv-2PaJ;
	Tue, 25 Aug 2026 05:18:21 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyjYA-00000000AVL-1LM8;
	Tue, 25 Aug 2026 05:18:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id B27CF43AC9;
	Tue, 25 Aug 2026 05:18:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 869E5C2BCF4;
	Tue, 25 Aug 2026 05:18:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787635097;
	bh=BneTF6Xp5rmyFqyxHB08Ui4BQSkX5TS6o9LZKizGA58=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=Xo47GiyGhMkdCipCKnOTrjdRaYBT1T/wWO/QvSfALphPWrzex6DcYWTs+Vt2nOjq9
	 Xa2vtj02c3W107E3vmCbJNAVf5auPLa1ADwTrSdNRuH/svFJA+YptsFejhMrV2sf5O
	 pUOHLEplU3aq5jIAu8WwodeXKpGSIQbBMHR+AfpNMX1HToAJX/B0YOLrF+ZIwiLv4t
	 XPtw7YkbPHu6igsNd5XmpFHQeXnaHhICbthZ7FOm4CIfLu7I4OKPAZmFJHelL2fQjO
	 dVKYcpiL1BQOQPTt58iaQCVla/a1656cCHyQY+M6DgHKS0PSMB0BzDme/Z9ylJEHTv
	 kjSMHQQFsEdwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 741ECC5DF94;
	Tue, 25 Aug 2026 05:18:17 +0000 (UTC)
From: Rudraksha Gupta via B4 Relay <devnull+guptarud.gmail.com@kernel.org>
Date: Mon, 24 Aug 2026 22:18:16 -0700
Subject: [PATCH v2 1/2] arm64: dts: rockchip: Enable the EG25-G modem on
 the Pinephone Pro
MIME-Version: 1.0
Message-Id: <20260824-ppp_connectivity-v2-1-a4b0e11cd62c@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787635096; l=3686;
 i=guptarud@gmail.com; s=20240916; h=from:subject:message-id;
 bh=BKJ8ewE7fSzmNjTVUblEb/3+hReBdcpXwAlKzQmJ6A0=;
 b=JfLuqZDAAFi4RexAkel6rjPxl7Ab5EWlSrS/LXNb9jOehBe8iOvV5AQVjfdUL7x/lasiDV5iu
 R8unLNmd0Z6D/Or9z5ISDXintJ2aTYSBlEXJcMEiUDgmot8YG/DQ+xQ
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

RnJvbTogTWFydGlqbiBCcmFhbSA8bWFydGlqbkBicml4aXQubmw+CgpUaGUgUXVlY3RlbCBFRzI1
LUcgbW9kZW0gaXMgc29sZGVyZWQgdG8gdGhlIGJvYXJkLiBJdCBzaXRzIG9uIHRoZSBVU0IgMi4w
Cmhvc3QgY29udHJvbGxlciBiZWhpbmQgdTJwaHkxLCB3aXRoIHVhcnQzIGFzIGl0cyBBVCBjb21t
YW5kIHBvcnQsIGFuZApkcmF3cyBmcm9tIHR3byBzd2l0Y2hlZCByYWlsczogdmNjXzRnXzV2IG9m
ZiB0aGUgUks4MTggYm9vc3QsIGFuZCB2Y2NfNGcKb2ZmIHZjY19zeXMuCgpOZWl0aGVyIHJhaWwg
c3VwcGxpZXMgYW55dGhpbmcgYnV0IHRoZSBtb2RlbSwgd2hpY2ggaGFzIHRvIHN0YXkgcG93ZXJl
ZApmb3IgdGhlIGJvYXJkIHRvIHdvcmsgYXMgYSBwaG9uZSwgc28gYm90aCBhcmUgYWx3YXlzLW9u
LgoKVGhlIG1vZGVtIGl0c2VsZiBoYXMgbm8gYmluZGluZyBhbmQgbm8gaW4ta2VybmVsIGRyaXZl
ciwgc28gaXQgaXMgbm90CmRlc2NyaWJlZCBoZXJlOyBpdHMgY29udHJvbCBsaW5lcyBhcmUgZHJp
dmVuIGZyb20gdXNlcnNwYWNlLgoKQmFzZWQgb24gd29yayBieSBNYXJ0aWpuIEJyYWFtLCBLYW1p
bCBUcnpjacWEc2tpLCBPbmRyZWogSmlybWFuIGFuZCBEYW5nCkh1eW5oLgoKU2lnbmVkLW9mZi1i
eTogTWFydGlqbiBCcmFhbSA8bWFydGlqbkBicml4aXQubmw+ClNpZ25lZC1vZmYtYnk6IFJ1ZHJh
a3NoYSBHdXB0YSA8Z3VwdGFydWRAZ21haWwuY29tPgotLS0KIC4uLi9ib290L2R0cy9yb2NrY2hp
cC9yazMzOTktcGluZXBob25lLXByby5kdHMgICAgIHwgNjkgKysrKysrKysrKysrKysrKysrKysr
KwogMSBmaWxlIGNoYW5nZWQsIDY5IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1waW5lcGhvbmUtcHJvLmR0cyBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXBpbmVwaG9uZS1wcm8uZHRzCmluZGV4IDhkMjZi
ZDliNzUwMC4uOGQyYjZhNDZiMzlkIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzM5OS1waW5lcGhvbmUtcHJvLmR0cworKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzM5OS1waW5lcGhvbmUtcHJvLmR0cwpAQCAtMTM0LDYgKzEzNCwzMiBAQCB2
Y2NhMXY4X3MzOiByZWd1bGF0b3ItdmNjMXY4LXMzIHsKIAkJcmVndWxhdG9yLWJvb3Qtb247CiAJ
fTsKIAorCXZjY180ZzogcmVndWxhdG9yLXZjYy00ZyB7CisJCWNvbXBhdGlibGUgPSAicmVndWxh
dG9yLWZpeGVkIjsKKwkJZW5hYmxlLWFjdGl2ZS1oaWdoOworCQlncGlvID0gPCZncGlvNCBSS19Q
QzcgR1BJT19BQ1RJVkVfSElHSD47CisJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7CisJCXBp
bmN0cmwtMCA9IDwmdmNjXzRnX2VuPjsKKwkJcmVndWxhdG9yLW5hbWUgPSAidmNjXzRnIjsKKwkJ
cmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MzgwMDAwMD47CisJCXJlZ3VsYXRvci1tYXgtbWlj
cm92b2x0ID0gPDM4MDAwMDA+OworCQl2aW4tc3VwcGx5ID0gPCZ2Y2Nfc3lzPjsKKwkJcmVndWxh
dG9yLWFsd2F5cy1vbjsKKwl9OworCisJdmNjXzRnXzV2OiByZWd1bGF0b3ItdmNjLTRnLTV2IHsK
KwkJY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOworCQllbmFibGUtYWN0aXZlLWhpZ2g7
CisJCWdwaW8gPSA8JmdwaW8xIFJLX1BDNyBHUElPX0FDVElWRV9ISUdIPjsKKwkJcGluY3RybC1u
YW1lcyA9ICJkZWZhdWx0IjsKKwkJcGluY3RybC0wID0gPCZ2Y2NfNGdfNXZfZW4+OworCQlyZWd1
bGF0b3ItbmFtZSA9ICJ2Y2NfNGdfNXYiOworCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw1
MDAwMDAwPjsKKwkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8NTAwMDAwMD47CisJCXZpbi1z
dXBwbHkgPSA8JnZjYzV2MF9zeXM+OworCQlyZWd1bGF0b3ItYWx3YXlzLW9uOworCX07CisKIAl2
Y2MxdjhfY29kZWM6IHJlZ3VsYXRvci12Y2MxdjgtY29kZWMgewogCQljb21wYXRpYmxlID0gInJl
Z3VsYXRvci1maXhlZCI7CiAJCWVuYWJsZS1hY3RpdmUtaGlnaDsKQEAgLTI2NCw2ICsyOTAsNyBA
QCByazgxODogcG1pY0AxYyB7CiAJCXN5c3RlbS1wb3dlci1jb250cm9sbGVyOwogCQl3YWtldXAt
c291cmNlOwogCisJCWJvb3N0LXN1cHBseSA9IDwmdmNjX3N5cz47CiAJCXZjYzEtc3VwcGx5ID0g
PCZ2Y2Nfc3lzPjsKIAkJdmNjMi1zdXBwbHkgPSA8JnZjY19zeXM+OwogCQl2Y2MzLXN1cHBseSA9
IDwmdmNjX3N5cz47CkBAIC0zMTgsNiArMzQ1LDE3IEBAIHJlZ3VsYXRvci1zdGF0ZS1tZW0gewog
CQkJCX07CiAJCQl9OwogCisJCQl2Y2M1djBfc3lzOiBEQ0RDX0JPT1NUIHsKKwkJCQlyZWd1bGF0
b3ItbmFtZSA9ICJ2Y2M1djBfc3lzIjsKKwkJCQlyZWd1bGF0b3ItYWx3YXlzLW9uOworCQkJCXJl
Z3VsYXRvci1ib290LW9uOworCQkJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDUwMDAwMDA+
OworCQkJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDUwMDAwMDA+OworCQkJCXJlZ3VsYXRv
ci1zdGF0ZS1tZW0geworCQkJCQlyZWd1bGF0b3Itb24taW4tc3VzcGVuZDsKKwkJCQl9OworCQkJ
fTsKKwogCQkJdmNjYTN2MF9jb2RlYzogTERPX1JFRzEgewogCQkJCXJlZ3VsYXRvci1uYW1lID0g
InZjY2EzdjBfY29kZWMiOwogCQkJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDMwMDAwMDA+
OwpAQCAtNzAyLDYgKzc0MCwxNiBAQCBibHVlX2xlZF9waW46IGJsdWUtbGVkLXBpbiB7CiAJCX07
CiAJfTsKIAorCW1vZGVtIHsKKwkJdmNjXzRnXzV2X2VuOiB2Y2MtNGctNXYtZW4tcGluIHsKKwkJ
CXJvY2tjaGlwLHBpbnMgPSA8MSBSS19QQzcgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxfbm9uZT47
CisJCX07CisKKwkJdmNjXzRnX2VuOiB2Y2MtNGctZW4tcGluIHsKKwkJCXJvY2tjaGlwLHBpbnMg
PSA8NCBSS19QQzcgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxfbm9uZT47CisJCX07CisJfTsKKwog
CXBtaWMgewogCQlwbWljX2ludF9sOiBwbWljLWludC1sIHsKIAkJCXJvY2tjaGlwLHBpbnMgPSA8
MSBSS19QQzUgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxfdXA+OwpAQCAtODI3LDYgKzg3NSwxNSBA
QCAmdHNhZGMgewogCXN0YXR1cyA9ICJva2F5IjsKIH07CiAKKyZ1MnBoeTEgeworCXN0YXR1cyA9
ICJva2F5IjsKK307CisKKyZ1MnBoeTFfaG9zdCB7CisJcGh5LXN1cHBseSA9IDwmdmNjNXYwX3N5
cz47CisJc3RhdHVzID0gIm9rYXkiOworfTsKKwogJnVhcnQwIHsKIAlwaW5jdHJsLW5hbWVzID0g
ImRlZmF1bHQiOwogCXBpbmN0cmwtMCA9IDwmdWFydDBfeGZlciAmdWFydDBfY3RzICZ1YXJ0MF9y
dHM+OwpAQCAtODUyLDYgKzkwOSwxOCBAQCAmdWFydDIgewogCXN0YXR1cyA9ICJva2F5IjsKIH07
CiAKKyZ1YXJ0MyB7CisJc3RhdHVzID0gIm9rYXkiOworfTsKKworJnVzYl9ob3N0MV9laGNpIHsK
KwlzdGF0dXMgPSAib2theSI7Cit9OworCismdXNiX2hvc3QxX29oY2kgeworCXN0YXR1cyA9ICJv
a2F5IjsKK307CisKICZ2b3BiIHsKIAlzdGF0dXMgPSAib2theSI7CiAJYXNzaWduZWQtY2xvY2tz
ID0gPCZjcnUgRENMS19WT1AwX0RJVj4sIDwmY3J1IERDTEtfVk9QMD4sCgotLSAKMi41NS4wCgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
