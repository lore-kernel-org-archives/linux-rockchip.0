Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E1B8C3DA49
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Jul 2024 19:57:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EHUqjYrFrpQOoIrbI5tpiXyjdB743VbegP+4cB/nyII=; b=BLVm1rBKgEFfJL
	JVbtjhHi6qjivNrgPiKO+rFPvyR03lWKx3oWfnxUZ+8RQol3LUgnenDOOkOss7smIBjsLns7NCh2c
	pjIMipWqBT1DuqUgiLZw/zd+TaT3FxwxiBv2MEDhxGwjcL2NoEzzO8Yr5KL4fcs3Y8OYl+I9scra/
	HzU8fsq4FCuhAv99tskj5fDwd8mRC2X8B4rRDShAJIt7xAthtsRTIqLn9BLf5gHAI2zyZSjUepnJV
	CrKSXBDMNuvbG+GNZNNIgyWOK0VuA6TUkoMxIQwIhWqurb23CTTJISf1BuWxpn0OJ6fy2TuXM5lJ8
	ilyq9R+BPQo011gzPHig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWLdg-0000000DORK-0Trw;
	Tue, 23 Jul 2024 19:57:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWLbu-0000000DNcS-2Nqw;
	Tue, 23 Jul 2024 19:55:49 +0000
Received: from i5e860cd3.versanet.de ([94.134.12.211] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sWLbt-0005iD-8f; Tue, 23 Jul 2024 21:55:45 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: ukleinek@debian.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 05/14] arm64: dts: rockchip: add stdout path on Qnap-TS433
Date: Tue, 23 Jul 2024 21:55:29 +0200
Message-Id: <20240723195538.1133436-6-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240723195538.1133436-1-heiko@sntech.de>
References: <20240723195538.1133436-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240723_125546_633666_7087AD1A 
X-CRM114-Status: GOOD (  11.79  )
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

QXMgbW9zdCBSb2NrY2hpcCBib2FyZHMgZG8sIHRoZSBUUzQzMyBhbHNvIHVzZXMgdWFydDIgZm9y
IGl0cyBzZXJpYWwKb3V0cHV0LiBTZXQgdGhlIGNvcnJlY3QgY2hvc2VuIGVudHJ5IGZvciBpdC4K
ClRlc3RlZC1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHVrbGVpbmVrQGRlYmlhbi5vcmc+ClNpZ25l
ZC1vZmYtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+Ci0tLQogYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtcW5hcC10czQzMy5kdHMgfCA0ICsrKysKIDEgZmls
ZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU2OC1xbmFwLXRzNDMzLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTY4LXFuYXAtdHM0MzMuZHRzCmluZGV4IGRhNzM1YzQ3NjRmNGQuLmJlMWMy
Mjg2YzJkM2YgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4
LXFuYXAtdHM0MzMuZHRzCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4
LXFuYXAtdHM0MzMuZHRzCkBAIC0xMyw2ICsxMywxMCBAQCAvIHsKIAltb2RlbCA9ICJRbmFwIFRT
LTQzMy00RyBOQVMgU3lzdGVtIDQtQmF5IjsKIAljb21wYXRpYmxlID0gInFuYXAsdHM0MzMiLCAi
cm9ja2NoaXAscmszNTY4IjsKIAorCWNob3NlbiB7CisJCXN0ZG91dC1wYXRoID0gInNlcmlhbDI6
MTE1MjAwbjgiOworCX07CisKIAlkY18xMnY6IHJlZ3VsYXRvci1kYy0xMnYgewogCQljb21wYXRp
YmxlID0gInJlZ3VsYXRvci1maXhlZCI7CiAJCXJlZ3VsYXRvci1uYW1lID0gImRjXzEydiI7Ci0t
IAoyLjM5LjIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
