Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 497CDC3DA63
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Jul 2024 20:01:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K2OcTVbpQdJ8+xiN94XZdeoPJ0AbKM/zgsH2oxtEpfw=; b=vJ/2IpQfNh6+uj
	Wpap2VsNjBVF5/4rUAEhEp/fCbEMwwGE4QJ5XC0so1FUto+hxo1yE2GmNSAoJeFqL7QuARGbp/b1p
	k5k3K8GiSR+kw6pKmkWAGNW7vrMYASUUK/XXnsqoq5q8822jITVYgH7q1NWLXZrtA8rnHytvNBN7M
	xzC5xFUa0H2X5L90q2xjUgGbeX8uP+ykysIFZ4s38X5YjswGGzL0oIA10xosolFxQ7DueyEYILWEp
	FeoHau2E5dxJumgmmuZank3OA9AWOwZN0HiKu3JXTP5SN/yIXd9dqC/DNB6bI34WU473fFUnYykRh
	fKSZXYPT1UjaAsWh2aPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWLhE-0000000DPmj-1IFW;
	Tue, 23 Jul 2024 20:01:16 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWLcn-0000000DO2Q-3Egq;
	Tue, 23 Jul 2024 19:56:42 +0000
Received: from i5e860cd3.versanet.de ([94.134.12.211] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sWLbu-0005iD-NE; Tue, 23 Jul 2024 21:55:46 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: ukleinek@debian.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 10/14] arm64: dts: rockchip: add gpio-keys to Qnap-TS433
Date: Tue, 23 Jul 2024 21:55:34 +0200
Message-Id: <20240723195538.1133436-11-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240723195538.1133436-1-heiko@sntech.de>
References: <20240723195538.1133436-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240723_125641_837791_08C11D3E 
X-CRM114-Status: GOOD (  13.30  )
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

VGhlIFRTNDMzIGhhcyAzIGJ1dHRvbnMsIHBvd2VyIGFuZCBjb3B5IGluIHRoZSBmcm9udCBhcyB3
ZWxsIGFzIGEgcmVzZXQKcGluaG9sZSBidXR0b24gb24gdGhlIGJhY2suIFRoZSBwb3dlci1idXR0
b24gaXMgY29ubmVjdGVkIHRvIHRoZSBlbWJlZGRlZApjb250cm9sbGVyIHdoaWxlIHRoZSBvdGhl
ciB0d28gYnV0dG9ucyBhcmUganVzdCBncGlvIGNvbm5lY3RlZC4KCkFkZCB0aGUgZ3Bpby1rZXlz
IGRlZmluaXRpb24gZm9yIHRoZSB0d28gYnV0dG9ucyB3ZSBjYW4gaGFuZGxlIHJpZ2h0IG5vdy4K
ClRlc3RlZC1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHVrbGVpbmVrQGRlYmlhbi5vcmc+ClNpZ25l
ZC1vZmYtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+Ci0tLQogLi4uL2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU2OC1xbmFwLXRzNDMzLmR0cyAgIHwgMjkgKysrKysrKysrKysrKysr
KysrKwogMSBmaWxlIGNoYW5nZWQsIDI5IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1xbmFwLXRzNDMzLmR0cyBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXFuYXAtdHM0MzMuZHRzCmluZGV4IDM0ZmMzMWVh
OWEzOWEuLjlmOTY0YjZmNDExYzkgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTY4LXFuYXAtdHM0MzMuZHRzCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTY4LXFuYXAtdHM0MzMuZHRzCkBAIC02LDYgKzYsNyBAQAogCiAvZHRzLXYxLzsK
IAorI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2lucHV0L2lucHV0Lmg+CiAjaW5jbHVkZSA8ZHQtYmlu
ZGluZ3MvbGVkcy9jb21tb24uaD4KICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9ncGlvL2dwaW8uaD4K
ICNpbmNsdWRlICJyazM1NjguZHRzaSIKQEAgLTI0LDYgKzI1LDI0IEBAIGNob3NlbiB7CiAJCXN0
ZG91dC1wYXRoID0gInNlcmlhbDI6MTE1MjAwbjgiOwogCX07CiAKKwlrZXlzIHsKKwkJY29tcGF0
aWJsZSA9ICJncGlvLWtleXMiOworCQlwaW5jdHJsLTAgPSA8JmNvcHlfYnV0dG9uX3Bpbj4sIDwm
cmVzZXRfYnV0dG9uX3Bpbj47CisJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7CisKKwkJa2V5
LWNvcHkgeworCQkJbGFiZWwgPSAiY29weSI7CisJCQlncGlvcyA9IDwmZ3BpbzAgUktfUEI2IEdQ
SU9fQUNUSVZFX0xPVz47CisJCQlsaW51eCxjb2RlID0gPEtFWV9DT1BZPjsKKwkJfTsKKworCQlr
ZXktcmVzZXQgeworCQkJbGFiZWwgPSAicmVzZXQiOworCQkJZ3Bpb3MgPSA8JmdwaW8wIFJLX1BC
NSBHUElPX0FDVElWRV9MT1c+OworCQkJbGludXgsY29kZSA9IDxLRVlfUkVTVEFSVD47CisJCX07
CisJfTsKKwogCWxlZHMgewogCQljb21wYXRpYmxlID0gImdwaW8tbGVkcyI7CiAKQEAgLTIwMiw2
ICsyMjEsMTYgQEAgJnBjaWUzeDIgewogfTsKIAogJnBpbmN0cmwgeworCWtleXMgeworCQljb3B5
X2J1dHRvbl9waW46IGNvcHktYnV0dG9uLXBpbiB7CisJCQlyb2NrY2hpcCxwaW5zID0gPDAgUktf
UEI2IFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX3VwPjsKKwkJfTsKKworCQlyZXNldF9idXR0b25f
cGluOiByZXNldC1idXR0b24tcGluIHsKKwkJCXJvY2tjaGlwLHBpbnMgPSA8MCBSS19QQjUgUktf
RlVOQ19HUElPICZwY2ZnX3B1bGxfdXA+OworCQl9OworCX07CisKIAlsZWRzIHsKIAkJaGRkMV9s
ZWRfcGluOiBoZGQxLWxlZC1waW4gewogCQkJcm9ja2NoaXAscGlucyA9IDwxIFJLX1BENSBSS19G
VU5DX0dQSU8gJnBjZmdfcHVsbF91cD47Ci0tIAoyLjM5LjIKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
