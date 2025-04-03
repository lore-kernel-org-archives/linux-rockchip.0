Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B813C3600C
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Apr 2025 19:48:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vh1Ac2SxeHPD7awGCw0oKCNgFXt9uprbajvjU/r1Z/I=; b=U1UTpzblsXz2Vt
	Gk4Zx22vMQGhjJ5GzpHQeLtvd+e8cJ78cXtXVsGljC7c8+sJ1xn7cVY1plLLLJtsafqunEeRD4X5c
	c/oRSYeOTDg5sNkoetnWqKW0U1veQ5Z2+9a4Hq8NtwzRY2F2QX/pHWKnEBpHGF6gBTfBwhyS/ReUQ
	CgETiUWMooJS7wDdRs5I90/EL25MIeLdMNRYLcVjNTKM8S+8NK6nCW+i3kH9k26ov03ITZbPL8dhf
	KKimBmAO/JaP5HEJaCPVq0r+OSYPgxgIRBOSSVH8XWtDHpA0uyLWa3ecYnoegQ31B7sGGvZhFtWgz
	XudcQiPFOBLra4qWYH/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0QXi-00000009one-2UFD;
	Thu, 03 Apr 2025 19:48:02 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0Q4Y-00000009hn9-0qaP;
	Thu, 03 Apr 2025 19:17:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id A80E7A430DC;
	Thu,  3 Apr 2025 19:12:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F695C4CEE8;
	Thu,  3 Apr 2025 19:17:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743707873;
	bh=1VLe6kYMo/56QKtHeLSTVSeCau7gIjIVv92RzmvfM38=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=H863L4b31M/pfCYPK7tGItJ8gCGe9M5mKcpq47OzJC3X5Z38u9SO7k+mUOKaL3M0a
	 RSDqDCuPlVpP7xissLwQbl+eKPkOD2Ze+P2nuyo17DD0A/zGJxDsIodaknGbQIvbCU
	 BwfpNTWOuW5Fkbv6A05A06QP6daW7zdPn7r/Uewz56w7WvX90Ayhw8/guCVgN0hgU6
	 qoA9H76xPbpR8mqK0MxACbLdS9DIyH9EAZIXXvsSvZf73c/GN4kRCU8GPTpUnmZir1
	 Rfqvjizf9+r+WZXSZA654H7iZB/nlcBn4zKOBC7m+c/pGThB1Gv+a+eq09D8bNpCHa
	 BoX5ya7Yzdc6g==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Niklas Cassel <cassel@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	manivannan.sadhasivam@linaro.org,
	kw@linux.com,
	gregkh@linuxfoundation.org,
	lpieralisi@kernel.org,
	heiko@sntech.de,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH AUTOSEL 6.12 22/33] PCI: Add Rockchip Vendor ID
Date: Thu,  3 Apr 2025 15:16:45 -0400
Message-Id: <20250403191656.2680995-22-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250403191656.2680995-1-sashal@kernel.org>
References: <20250403191656.2680995-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.12.21
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250403_121754_370788_17378579 
X-CRM114-Status: GOOD (  11.40  )
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

RnJvbTogU2hhd24gTGluIDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+CgpbIFVwc3RyZWFtIGNv
bW1pdCAyMGJiYjA4M2JiYzlkM2Y4ZGIzOTBmMmUzNWUxNjhmMWIyM2RhZThhIF0KCk1vdmUgUENJ
X1ZFTkRPUl9JRF9ST0NLQ0hJUCBmcm9tIHBjaV9lbmRwb2ludF90ZXN0LmMgdG8gcGNpX2lkcy5o
IGFuZApyZXVzZSBpdCBpbiBwY2llLXJvY2tjaGlwLWhvc3QuYy4KCkxpbms6IGh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL3IvMjAyNTAyMTgwOTIxMjAuMjMyMjc4NC0yLWNhc3NlbEBrZXJuZWwub3Jn
ClNpZ25lZC1vZmYtYnk6IFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29tPgpTaWdu
ZWQtb2ZmLWJ5OiBOaWtsYXMgQ2Fzc2VsIDxjYXNzZWxAa2VybmVsLm9yZz4KU2lnbmVkLW9mZi1i
eTogQmpvcm4gSGVsZ2FhcyA8YmhlbGdhYXNAZ29vZ2xlLmNvbT4KU2lnbmVkLW9mZi1ieTogS3J6
eXN6dG9mIFdpbGN6ecWEc2tpIDxrd2lsY3p5bnNraUBrZXJuZWwub3JnPgpTaWduZWQtb2ZmLWJ5
OiBTYXNoYSBMZXZpbiA8c2FzaGFsQGtlcm5lbC5vcmc+Ci0tLQogZHJpdmVycy9taXNjL3BjaV9l
bmRwb2ludF90ZXN0LmMgICAgICAgICAgICB8IDEgLQogZHJpdmVycy9wY2kvY29udHJvbGxlci9w
Y2llLXJvY2tjaGlwLWhvc3QuYyB8IDIgKy0KIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1y
b2NrY2hpcC5oICAgICAgfCAxIC0KIGluY2x1ZGUvbGludXgvcGNpX2lkcy5oICAgICAgICAgICAg
ICAgICAgICAgfCAyICsrCiA0IGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL21pc2MvcGNpX2VuZHBvaW50X3Rlc3QuYyBi
L2RyaXZlcnMvbWlzYy9wY2lfZW5kcG9pbnRfdGVzdC5jCmluZGV4IDNhYWFmNDdmYTRlZTIuLmI1
Yzg0MjJmZDJmMDQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWlzYy9wY2lfZW5kcG9pbnRfdGVzdC5j
CisrKyBiL2RyaXZlcnMvbWlzYy9wY2lfZW5kcG9pbnRfdGVzdC5jCkBAIC04NSw3ICs4NSw2IEBA
CiAjZGVmaW5lIFBDSV9ERVZJQ0VfSURfUkVORVNBU19SOEE3NzRFMQkJMHgwMDI1CiAjZGVmaW5l
IFBDSV9ERVZJQ0VfSURfUkVORVNBU19SOEE3NzlGMAkJMHgwMDMxCiAKLSNkZWZpbmUgUENJX1ZF
TkRPUl9JRF9ST0NLQ0hJUAkJCTB4MWQ4NwogI2RlZmluZSBQQ0lfREVWSUNFX0lEX1JPQ0tDSElQ
X1JLMzU4OAkJMHgzNTg4CiAKIHN0YXRpYyBERUZJTkVfSURBKHBjaV9lbmRwb2ludF90ZXN0X2lk
YSk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAtaG9z
dC5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLWhvc3QuYwppbmRleCBj
YmVjNzExMTQ4MjUzLi40ODFkY2M0NzZjNTU2IDEwMDY0NAotLS0gYS9kcml2ZXJzL3BjaS9jb250
cm9sbGVyL3BjaWUtcm9ja2NoaXAtaG9zdC5jCisrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIv
cGNpZS1yb2NrY2hpcC1ob3N0LmMKQEAgLTM2Nyw3ICszNjcsNyBAQCBzdGF0aWMgaW50IHJvY2tj
aGlwX3BjaWVfaG9zdF9pbml0X3BvcnQoc3RydWN0IHJvY2tjaGlwX3BjaWUgKnJvY2tjaGlwKQog
CQl9CiAJfQogCi0Jcm9ja2NoaXBfcGNpZV93cml0ZShyb2NrY2hpcCwgUk9DS0NISVBfVkVORE9S
X0lELAorCXJvY2tjaGlwX3BjaWVfd3JpdGUocm9ja2NoaXAsIFBDSV9WRU5ET1JfSURfUk9DS0NI
SVAsCiAJCQkgICAgUENJRV9DT1JFX0NPTkZJR19WRU5ET1IpOwogCXJvY2tjaGlwX3BjaWVfd3Jp
dGUocm9ja2NoaXAsCiAJCQkgICAgUENJX0NMQVNTX0JSSURHRV9QQ0lfTk9STUFMIDw8IDgsCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAuaCBiL2RyaXZl
cnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5oCmluZGV4IDE1ZWU5NDlmMjQ4NWUuLjY4
OGY1MWQ5YmRlNjMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2Nr
Y2hpcC5oCisrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5oCkBAIC0x
ODgsNyArMTg4LDYgQEAKICNkZWZpbmUgQVhJX1dSQVBQRVJfTk9SX01TRwkJCTB4YwogCiAjZGVm
aW5lIFBDSUVfUkNfU0VORF9QTUVfT0ZGCQkJMHgxMTk2MAotI2RlZmluZSBST0NLQ0hJUF9WRU5E
T1JfSUQJCQkweDFkODcKICNkZWZpbmUgUENJRV9MSU5LX0lTX0wyKHgpIFwKIAkoKCh4KSAmIFBD
SUVfQ0xJRU5UX0RFQlVHX0xUU1NNX01BU0spID09IFBDSUVfQ0xJRU5UX0RFQlVHX0xUU1NNX0wy
KQogI2RlZmluZSBQQ0lFX0xJTktfVVAoeCkgXApkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9w
Y2lfaWRzLmggYi9pbmNsdWRlL2xpbnV4L3BjaV9pZHMuaAppbmRleCBjOWRjMTUzNTVmMWJhLi5j
Mzk1YjNjNWMwNWNmIDEwMDY0NAotLS0gYS9pbmNsdWRlL2xpbnV4L3BjaV9pZHMuaAorKysgYi9p
bmNsdWRlL2xpbnV4L3BjaV9pZHMuaApAQCAtMjYwNSw2ICsyNjA1LDggQEAKIAogI2RlZmluZSBQ
Q0lfVkVORE9SX0lEX1pIQU9YSU4JCTB4MWQxNwogCisjZGVmaW5lIFBDSV9WRU5ET1JfSURfUk9D
S0NISVAJCTB4MWQ4NworCiAjZGVmaW5lIFBDSV9WRU5ET1JfSURfSFlHT04JCTB4MWQ5NAogCiAj
ZGVmaW5lIFBDSV9WRU5ET1JfSURfTUVUQQkJMHgxZDliCi0tIAoyLjM5LjUKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
