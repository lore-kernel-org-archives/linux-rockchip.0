Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D88EC48BF6
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Mar 2024 08:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=H3dE+8Sj2HQF3OfI8+0tvNVfybUZKMfrr6xYjw6pGI4=; b=BAlQDVY1yKFUiS
	Wbni1gsIZ3Pp8GjH2gJBiprM9Ki/VOy7MP6BcsP9HDQ0QTPCHn+3Qv93NYfmsj1uwBr375CBWAvc+
	p/aQw0aDyocTZK/QAVKoMGTRENa95XqPOOSGBWLnp1n3D0f8T/UZn9ySovHMiyuSDQACGv8dvkaTG
	1xzL9TpLvtGSUgVbmVFuuCqj0JwLYcRBAuWtoskdNuw4Z1I3vFeADfQgpEjDfIbmQQzy8d/BwWyVe
	j9fllfxBptTuBmz3BEjfnru8UkXWgaLH7IwfqS0VyjfW2USTZO3gAX9FL/R6Gj0uV3daUKkI0ndvH
	qrZN5r1RPnlQZ2Ic/oBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rh3yO-00000008CSS-2GIm;
	Mon, 04 Mar 2024 08:47:00 +0000
Received: from master.debian.org ([2001:41b8:202:deb:216:36ff:fe40:4001])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rh3yH-00000008CLm-1fzs;
	Mon, 04 Mar 2024 08:46:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.master; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	In-Reply-To:References; bh=/im0PfNw74+d2oHRPxe0VBg20WnXI5E5dX4laaUfGjc=; b=qs
	b3ekEoHliC0HokDfZFHQAZ6Qci+vj62POCI3UnrkLigZeNIFHxisQSlsLcVqtQl3ZiF4eDFqo4qpF
	5eRv2LBKZ84nrQ+HA3b6T1vlfXBxsinN+78MFzOnxnvP5T5UfmRpgWg91BFEILYAl7cqJGJ60Tn/x
	pAr5MJ+GGxvvtpb9hYQKI4ixHyv+gl/yBUz+Tu9PmfFKITzoyi1g5KcW8wBrczcq5RaNHF1W7ig7O
	PkJFFXD0UyvzCsZ45BicG1WaYXoDe4Jwj6L/dDTF23FiF7HCpjwfq59KBnTJaCaVzBOFI0GYblc63
	M1gJX+F6hrBIeOMNfs7r4byL7iW0AcgQ==;
Received: from ukleinek by master.debian.org with local (Exim 4.94.2)
	(envelope-from <ukleinek@master.debian.org>)
	id 1rh3xm-00Ercc-Pg; Mon, 04 Mar 2024 08:46:22 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@debian.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] arm64: dts: rockchip: qnap-ts433: Simplify network PHY connection
Date: Mon,  4 Mar 2024 09:46:11 +0100
Message-ID: <20240304084612.711678-2-ukleinek@debian.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1462; i=ukleinek@debian.org; h=from:subject; bh=4yrGMDvfZ9+wFWFoQHVCdF6NRcyP2vDf9cQK0UPreuE=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBl5YpVyKWkqJ+XYrrPILxhXJLzu3+lqUe07dKSE DJVTb+H9LKJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZeWKVQAKCRCPgPtYfRL+ TkfwB/9OEwVLPuRfXHMa79cH2RyS1gKFPEzOCbIZCxP/4+z14rScVrdyXrhAYdyFnBqM+KkrMih syJUAmdoeSLct5tuvFmCWsh7NHILU6aF28FtAnUSJkBMlK69ZvZYah0oK8HrktTYXCNQMa9O0Q+ wXvICBrKUyNp6JOvd/5a1YPyCFfNxPTp6lNTkmLmyRIQxIHGHJGuQCK4P+I8mG5IZQYMK+EC435 jPweMB8vz+OKrp1h7Owl1//JaNtp97Ecbdov5LlU4Cnv/m5BCjJ8usOnTMdNCOuuV6VmtkMXw4m JbKsBPux+6TsSME3hS+7xDrCOO1jW1U7tgEZvuihAx55OfxE
X-Developer-Key: i=ukleinek@debian.org; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_004653_906362_87730B32 
X-CRM114-Status: GOOD (  11.67  )
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

V2hpbGUgaXQgcmVxdWlyZXMgdG8gaGF2ZSB0aGUgcmlnaHQgcGh5IGRyaXZlciBsb2FkZWQgKGku
ZS4gbW90b3Jjb21tKQp0byBtYWtlIHRoZSBwaHkgYXNzZXJ0aW5nIHRoZSByaWdodCBkZWxheXMs
IHRoaXMgaXMgZ2VuZXJhbGx5IHRoZQpwcmVmZXJyZWQgd2F5IHRvIGRlZmluZSB0aGUgTUFDIDwt
PiBQSFkgY29ubmVjdGlvbi4KClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1a2xl
aW5la0BkZWJpYW4ub3JnPgotLS0KSGVsbG8sCgpBbmRyZXcgYWxyZWFkeSBwb2ludGVkIG91dCB3
aGVuIEkgcG9zdGVkIHRoZSBwYXRjaCBpbnRyb2R1Y2luZyB0aGUgZ21hYzAgbm9kZQp0aGF0IHJn
bWlpLWlkIHdvdWxkIGJlIHRoZSBwcmVmZXJyZWQgd2F5IHRvIHNldHVwIHRoaW5ncy4gQmFjayB0
aGVuIHRoaXMgZGlkbid0CmhhcHBlbiBiZWNhdXNlIHRoaXMgY2hhbmdlIGJyb2tlIHJlY2VwdGlv
biBvZiBuZXR3b3JrIHBhY2tldHMuIEhvd2V2ZXIgdGhpcwpvbmx5IGhhcHBlbmQgYmVjYXVzZSBJ
IGRpZG4ndCBoYXZlIHRoZSByaWdodCBwaHkgZHJpdmVyIGxvYWRlZC4KCkJlc3QgcmVnYXJkcwpV
d2UKCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1xbmFwLXRzNDMzLmR0cyB8
IDQgKy0tLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAzIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXFuYXAtdHM0
MzMuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtcW5hcC10czQzMy5k
dHMKaW5kZXggNmE5OTgxNjYwMDNjLi4zNmFkNDhkNDZiYzEgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXFuYXAtdHM0MzMuZHRzCisrKyBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXFuYXAtdHM0MzMuZHRzCkBAIC0yMCwxNSArMjAs
MTMgQEAgJmdtYWMwIHsKIAlhc3NpZ25lZC1jbG9jay1yYXRlcyA9IDwwPiwgPDEyNTAwMDAwMD47
CiAJY2xvY2tfaW5fb3V0ID0gIm91dHB1dCI7CiAJcGh5LWhhbmRsZSA9IDwmcmdtaWlfcGh5MD47
Ci0JcGh5LW1vZGUgPSAicmdtaWkiOworCXBoeS1tb2RlID0gInJnbWlpLWlkIjsKIAlwaW5jdHJs
LW5hbWVzID0gImRlZmF1bHQiOwogCXBpbmN0cmwtMCA9IDwmZ21hYzBfbWlpbQogCQkgICAgICZn
bWFjMF90eF9idXMyCiAJCSAgICAgJmdtYWMwX3J4X2J1czIKIAkJICAgICAmZ21hYzBfcmdtaWlf
Y2xrCiAJCSAgICAgJmdtYWMwX3JnbWlpX2J1cz47Ci0JcnhfZGVsYXkgPSA8MHgyZj47Ci0JdHhf
ZGVsYXkgPSA8MHgzYz47CiAJc3RhdHVzID0gIm9rYXkiOwogfTsKIAoKYmFzZS1jb21taXQ6IDY3
OTA4YmY2OTU0Yjc2MzVkMzM3NjBmZjZkZmMxODlmYzI2Y2NjODkKLS0gCjIuNDMuMAoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
