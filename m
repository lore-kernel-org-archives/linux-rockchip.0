Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAA19C3600C
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Apr 2025 19:42:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NrL6+pc3a2G7zyra37C3uGIDyADHASou2q4eKATB8JM=; b=hhFtdlfzDQgl3h
	3x8ht99IvRNyGQwk0Ai1P+9cpLd80rwp9rPOBk2WznL1i2MCyf6/4jUbbr2yXMhYxPp2VO/a/JmbN
	N89wNRc546EunvSu0I4s3R58CQvdPPUsVFC7tQ7ENj21Ef3teloY0kx8tAehkHNsWrDzhZgTSSn/Y
	yes0H79qMAXe2vZ09GxFH1812XelMklCxjHgTnfdqpB4tnak4LyeZgxcLyHUaQcvP+IhOALgQEBYv
	FZ3w2QEWik0ZRm/D8EFwCQw7YIcyZxIgCMIT5fzDDsO2OMWWGFXs74RcbIXSBvBpobIpuPue77LXh
	WyYqZTZhEc+1T5IVLC4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0QSO-00000009nk7-1pVn;
	Thu, 03 Apr 2025 19:42:32 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0Q38-00000009hCQ-0weg;
	Thu, 03 Apr 2025 19:16:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 7133044C78;
	Thu,  3 Apr 2025 19:16:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 41A8EC4CEE3;
	Thu,  3 Apr 2025 19:16:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743707785;
	bh=sDaOFhGbRXKWWgBDXTjF3gFFkmNVkCcMKXVKbM97/jg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=dDATM6KdwA8pBnk71COgokFTPaH5slXGlZJ6aKzqfl15z76e0RYKEdHFVe8Z/CAth
	 HIHdR/bRgA3zmYV+ZAS7sjrhNjKxsjeeudlZCD7dZNYcT6vIN4Us2IX4n+LPl1NNmc
	 cwWQCDvO19g4ci9A/rQ8RbtzB/3me8S0HvfjZeB4JHHwuYWI4csJiegKiFJvqGgiBH
	 GG30+Ye782RzGiieInIteze1bULL4ceWQkos5Z8jcu1wAd2oBDAs+Jv26zAzOGFtm5
	 Q/EgAp4hMlHexTajZ0PFBYH+7GocjaSIUXyul4yKDR+jhIthn/v0a4xf7diq+VYjcn
	 ckLNiekzf/XDg==
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
Subject: [PATCH AUTOSEL 6.13 25/37] PCI: Add Rockchip Vendor ID
Date: Thu,  3 Apr 2025 15:15:01 -0400
Message-Id: <20250403191513.2680235-25-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250403191513.2680235-1-sashal@kernel.org>
References: <20250403191513.2680235-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.13.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250403_121626_306736_981FC567 
X-CRM114-Status: GOOD (  11.50  )
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
cnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5oCmluZGV4IGE1MWIwODdjZTg3ODYuLmY5
ZWFhYzljOGVlNWQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2Nr
Y2hpcC5oCisrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5oCkBAIC0x
OTgsNyArMTk4LDYgQEAKICNkZWZpbmUgQVhJX1dSQVBQRVJfTk9SX01TRwkJCTB4YwogCiAjZGVm
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
