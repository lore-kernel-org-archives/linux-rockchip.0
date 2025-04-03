Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23B3BC3600C
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Apr 2025 19:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0DHp5BW8D0Ceamnvl2dNU4KHgCP1ZePuAw9uZ64NhFY=; b=qLqGzARAK2S/Aj
	f36TxeVQrKJKO571jxg6ccZTd4Sct/KE8TPt4l+TAaA2HkEaI8g5ibBRtHLB7+atXPWgAEJoYb60C
	nspl1m/yY9meHC241W6QkrCbDYFeH+chQulyjum3BkCA/VfGoq30891fdVOxJpP9hTB0JJrMYuWD0
	PxVPsVyGLk+LNtQwnCjXzQ/AcX2B6Qb4fgUzuywlWPT6ZpCI8/6fYPVJ6yW77Nz1dZ6zRcNHaJByr
	WlvBuYKhHbdF50FqIvvijpQmMIUoJ0WTan9aQkx6EA8Qq1ttX2Fqa/wfZqTvSbrFcX1sPhrh/scJ0
	OINR3pbsZgKqmVjJuWSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0QN2-00000009mbi-4Avt;
	Thu, 03 Apr 2025 19:37:00 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0Q1P-00000009gVq-150k;
	Thu, 03 Apr 2025 19:14:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id B1806614BA;
	Thu,  3 Apr 2025 19:14:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97257C4CEE3;
	Thu,  3 Apr 2025 19:14:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743707678;
	bh=71wBi/cNBET7g7tuz2d1oBbbk5rq2cJkkfj8t+08GTU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=WBuH+QjAvTrLe3JdD6N32A7iweSTs54Ez/o4QXpclFpUKcDAs/nJNBvIUeyxixi2r
	 grEE2CGDYyHm5r5JAt3xDGVFqewhlATYyfdbM/YmuLZHEPsU+xoQnjjRuWXLu/Ouan
	 GYCgPGHAUIKi0gYSCMOP17+r11OtrJ5d3MydbnzX3TUfKoFJEvCXMV5p+alTQlRjZi
	 mFPJ4+gaLUVLYk2+6HyZj3E382c8THPUXsJikvb34WaO9NHMroJWXmM5p03yM6BLXn
	 d6dJTXChd1GumN5dCJ3MxQ2+z2YyaIx4Lw1sCMh8/EF6CCgQ/nT4c0c3IWpi/8VXCf
	 bGaU7LgBsqr5g==
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
Subject: [PATCH AUTOSEL 6.14 30/44] PCI: Add Rockchip Vendor ID
Date: Thu,  3 Apr 2025 15:12:59 -0400
Message-Id: <20250403191313.2679091-30-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250403191313.2679091-1-sashal@kernel.org>
References: <20250403191313.2679091-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.14
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
L2RyaXZlcnMvbWlzYy9wY2lfZW5kcG9pbnRfdGVzdC5jCmluZGV4IGQ1YWM3MWE0OTM4NjUuLmIw
MDI3NDBhY2Y4ZDUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWlzYy9wY2lfZW5kcG9pbnRfdGVzdC5j
CisrKyBiL2RyaXZlcnMvbWlzYy9wY2lfZW5kcG9pbnRfdGVzdC5jCkBAIC04OCw3ICs4OCw2IEBA
CiAjZGVmaW5lIFBDSV9ERVZJQ0VfSURfUkVORVNBU19SOEE3NzRFMQkJMHgwMDI1CiAjZGVmaW5l
IFBDSV9ERVZJQ0VfSURfUkVORVNBU19SOEE3NzlGMAkJMHgwMDMxCiAKLSNkZWZpbmUgUENJX1ZF
TkRPUl9JRF9ST0NLQ0hJUAkJCTB4MWQ4NwogI2RlZmluZSBQQ0lfREVWSUNFX0lEX1JPQ0tDSElQ
X1JLMzU4OAkJMHgzNTg4CiAKIHN0YXRpYyBERUZJTkVfSURBKHBjaV9lbmRwb2ludF90ZXN0X2lk
YSk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAtaG9z
dC5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLWhvc3QuYwppbmRleCA1
YWRhYzZhZGMwNDZmLi42YTQ2YmUxN2FhOTFiIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BjaS9jb250
cm9sbGVyL3BjaWUtcm9ja2NoaXAtaG9zdC5jCisrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIv
cGNpZS1yb2NrY2hpcC1ob3N0LmMKQEAgLTM2Nyw3ICszNjcsNyBAQCBzdGF0aWMgaW50IHJvY2tj
aGlwX3BjaWVfaG9zdF9pbml0X3BvcnQoc3RydWN0IHJvY2tjaGlwX3BjaWUgKnJvY2tjaGlwKQog
CQl9CiAJfQogCi0Jcm9ja2NoaXBfcGNpZV93cml0ZShyb2NrY2hpcCwgUk9DS0NISVBfVkVORE9S
X0lELAorCXJvY2tjaGlwX3BjaWVfd3JpdGUocm9ja2NoaXAsIFBDSV9WRU5ET1JfSURfUk9DS0NI
SVAsCiAJCQkgICAgUENJRV9DT1JFX0NPTkZJR19WRU5ET1IpOwogCXJvY2tjaGlwX3BjaWVfd3Jp
dGUocm9ja2NoaXAsCiAJCQkgICAgUENJX0NMQVNTX0JSSURHRV9QQ0lfTk9STUFMIDw8IDgsCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAuaCBiL2RyaXZl
cnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5oCmluZGV4IDExZGVmNTk4NTM0YjIuLjE0
OTU0ZjQzZTVlOWEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2Nr
Y2hpcC5oCisrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5oCkBAIC0y
MDAsNyArMjAwLDYgQEAKICNkZWZpbmUgQVhJX1dSQVBQRVJfTk9SX01TRwkJCTB4YwogCiAjZGVm
aW5lIFBDSUVfUkNfU0VORF9QTUVfT0ZGCQkJMHgxMTk2MAotI2RlZmluZSBST0NLQ0hJUF9WRU5E
T1JfSUQJCQkweDFkODcKICNkZWZpbmUgUENJRV9MSU5LX0lTX0wyKHgpIFwKIAkoKCh4KSAmIFBD
SUVfQ0xJRU5UX0RFQlVHX0xUU1NNX01BU0spID09IFBDSUVfQ0xJRU5UX0RFQlVHX0xUU1NNX0wy
KQogI2RlZmluZSBQQ0lFX0xJTktfVFJBSU5JTkdfRE9ORSh4KSBcCmRpZmYgLS1naXQgYS9pbmNs
dWRlL2xpbnV4L3BjaV9pZHMuaCBiL2luY2x1ZGUvbGludXgvcGNpX2lkcy5oCmluZGV4IDFhMjU5
NGEzODE5OWYuLjJhOWNhM2RiYWEwZTkgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbGludXgvcGNpX2lk
cy5oCisrKyBiL2luY2x1ZGUvbGludXgvcGNpX2lkcy5oCkBAIC0yNjA5LDYgKzI2MDksOCBAQAog
CiAjZGVmaW5lIFBDSV9WRU5ET1JfSURfWkhBT1hJTgkJMHgxZDE3CiAKKyNkZWZpbmUgUENJX1ZF
TkRPUl9JRF9ST0NLQ0hJUAkJMHgxZDg3CisKICNkZWZpbmUgUENJX1ZFTkRPUl9JRF9IWUdPTgkJ
MHgxZDk0CiAKICNkZWZpbmUgUENJX1ZFTkRPUl9JRF9NRVRBCQkweDFkOWIKLS0gCjIuMzkuNQoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
