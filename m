Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2F5AC3DA63
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Jul 2024 19:58:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=idfjenafw1nTL/SRnJJ0jfUWpe+Bj1IXR4lsY1f11gY=; b=0WR7AN+PUciazj
	BLxQ2MCaGGVwQggSv2TZpZQkt3ifU1mFVLSG0gCGeCiHtOP74iJ+E5toe/sHalC561UKdZ5ucZhUB
	beyEfy3hjfDp5S8KKh05wwnmxMn0K2wlJROt4gpaig3QAf5IwQXWW3KRArpf0ZzFBf53Lk3eWJBZJ
	/gluyenMnIaE/l9oa2sjUpBNVomrhWHp5VCL5DWXGCogkoTCMaRM3OWk1EcynBC+6Wwa5JaLm57e5
	9qy0FhlOFlTv1STuM36mguu8WV3gQQytMr/q1qxQkJz9W78wDL12dfiR+2xt9R43LNb7lfZw9O4P9
	xh7zQo89IvILQIi13Ekg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWLel-0000000DOwP-3E3J;
	Tue, 23 Jul 2024 19:58:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWLbv-0000000DNdr-1rke;
	Tue, 23 Jul 2024 19:55:50 +0000
Received: from i5e860cd3.versanet.de ([94.134.12.211] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sWLbu-0005iD-48; Tue, 23 Jul 2024 21:55:46 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: ukleinek@debian.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 08/14] arm64: dts: rockchip: add hdd leds to Qnap-TS433
Date: Tue, 23 Jul 2024 21:55:32 +0200
Message-Id: <20240723195538.1133436-9-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240723195538.1133436-1-heiko@sntech.de>
References: <20240723195538.1133436-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240723_125547_529191_FF0A61F6 
X-CRM114-Status: GOOD (  11.58  )
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

QWRkIHRoZSA0IGdwaW8tY29udHJvbGxlZCBMRURzIHRvIHRoZSBRbmFwLVRTNDMzLgoKVGhleSBh
cmUgbWVhbnQgZm9yIGluZGl2aWR1YWwgZGlzayBhY3Rpdml0aXZ5LCBidXQgSSBoYXZlbid0IGZv
dW5kIGEKd2F5IGZvciBob3cgdG8gY29ubmVjdCB0aGVtIHRvIHRoZWlyIGluZGl2aWR1YWwgc2F0
YSBzbG90IHlldC4KClRlc3RlZC1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHVrbGVpbmVrQGRlYmlh
bi5vcmc+ClNpZ25lZC1vZmYtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+Ci0t
LQogLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1xbmFwLXRzNDMzLmR0cyAgIHwgNTkgKysr
KysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDU5IGluc2VydGlvbnMoKykKCmRpZmYg
LS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1xbmFwLXRzNDMzLmR0
cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXFuYXAtdHM0MzMuZHRzCmlu
ZGV4IDhiZTM2MjUwYWExM2QuLmFiZWIwMGFkZDQyYTAgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXFuYXAtdHM0MzMuZHRzCisrKyBiL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXFuYXAtdHM0MzMuZHRzCkBAIC02LDYgKzYsNyBAQAog
CiAvZHRzLXYxLzsKIAorI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2xlZHMvY29tbW9uLmg+CiAjaW5j
bHVkZSA8ZHQtYmluZGluZ3MvZ3Bpby9ncGlvLmg+CiAjaW5jbHVkZSAicmszNTY4LmR0c2kiCiAK
QEAgLTIzLDYgKzI0LDQ2IEBAIGNob3NlbiB7CiAJCXN0ZG91dC1wYXRoID0gInNlcmlhbDI6MTE1
MjAwbjgiOwogCX07CiAKKwlsZWRzIHsKKwkJY29tcGF0aWJsZSA9ICJncGlvLWxlZHMiOworCisJ
CWxlZC0wIHsKKwkJCWNvbG9yID0gPExFRF9DT0xPUl9JRF9HUkVFTj47CisJCQlmdW5jdGlvbiA9
IExFRF9GVU5DVElPTl9ESVNLOworCQkJZ3Bpb3MgPSA8JmdwaW8xIFJLX1BENSBHUElPX0FDVElW
RV9MT1c+OworCQkJbGludXgsZGVmYXVsdC10cmlnZ2VyID0gImRpc2stYWN0aXZpdHkiOworCQkJ
cGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKKwkJCXBpbmN0cmwtMCA9IDwmaGRkMV9sZWRfcGlu
PjsKKwkJfTsKKworCQlsZWQtMSB7CisJCQljb2xvciA9IDxMRURfQ09MT1JfSURfR1JFRU4+Owor
CQkJZnVuY3Rpb24gPSBMRURfRlVOQ1RJT05fRElTSzsKKwkJCWdwaW9zID0gPCZncGlvMSBSS19Q
RDYgR1BJT19BQ1RJVkVfTE9XPjsKKwkJCWxpbnV4LGRlZmF1bHQtdHJpZ2dlciA9ICJkaXNrLWFj
dGl2aXR5IjsKKwkJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7CisJCQlwaW5jdHJsLTAgPSA8
JmhkZDJfbGVkX3Bpbj47CisJCX07CisKKwkJbGVkLTIgeworCQkJY29sb3IgPSA8TEVEX0NPTE9S
X0lEX0dSRUVOPjsKKwkJCWZ1bmN0aW9uID0gTEVEX0ZVTkNUSU9OX0RJU0s7CisJCQlncGlvcyA9
IDwmZ3BpbzEgUktfUEQ3IEdQSU9fQUNUSVZFX0xPVz47CisJCQlsaW51eCxkZWZhdWx0LXRyaWdn
ZXIgPSAiZGlzay1hY3Rpdml0eSI7CisJCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOworCQkJ
cGluY3RybC0wID0gPCZoZGQzX2xlZF9waW4+OworCQl9OworCisJCWxlZC0zIHsKKwkJCWNvbG9y
ID0gPExFRF9DT0xPUl9JRF9HUkVFTj47CisJCQlmdW5jdGlvbiA9IExFRF9GVU5DVElPTl9ESVNL
OworCQkJZ3Bpb3MgPSA8JmdwaW8yIFJLX1BBMCBHUElPX0FDVElWRV9MT1c+OworCQkJbGludXgs
ZGVmYXVsdC10cmlnZ2VyID0gImRpc2stYWN0aXZpdHkiOworCQkJcGluY3RybC1uYW1lcyA9ICJk
ZWZhdWx0IjsKKwkJCXBpbmN0cmwtMCA9IDwmaGRkNF9sZWRfcGluPjsKKwkJfTsKKwl9OworCiAJ
ZGNfMTJ2OiByZWd1bGF0b3ItZGMtMTJ2IHsKIAkJY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4
ZWQiOwogCQlyZWd1bGF0b3ItbmFtZSA9ICJkY18xMnYiOwpAQCAtMTYxLDYgKzIwMiwyNCBAQCAm
cGNpZTN4MiB7CiB9OwogCiAmcGluY3RybCB7CisJbGVkcyB7CisJCWhkZDFfbGVkX3BpbjogaGRk
MS1sZWQtcGluIHsKKwkJCXJvY2tjaGlwLHBpbnMgPSA8MSBSS19QRDUgUktfRlVOQ19HUElPICZw
Y2ZnX3B1bGxfdXA+OworCQl9OworCisJCWhkZDJfbGVkX3BpbjogaGRkMi1sZWQtcGluIHsKKwkJ
CXJvY2tjaGlwLHBpbnMgPSA8MSBSS19QRDYgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxfdXA+Owor
CQl9OworCisJCWhkZDNfbGVkX3BpbjogaGRkMy1sZWQtcGluIHsKKwkJCXJvY2tjaGlwLHBpbnMg
PSA8MSBSS19QRDcgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxfdXA+OworCQl9OworCisJCWhkZDRf
bGVkX3BpbjogaGRkNF9sZWQtcGluIHsKKwkJCXJvY2tjaGlwLHBpbnMgPSA8MiBSS19QQTAgUktf
RlVOQ19HUElPICZwY2ZnX3B1bGxfdXA+OworCQl9OworCX07CisKIAl1c2IgewogCQl2Y2M1djBf
aG9zdF9lbjogdmNjNXYwLWhvc3QtZW4gewogCQkJcm9ja2NoaXAscGlucyA9IDwwIFJLX1BBNiBS
S19GVU5DX0dQSU8gJnBjZmdfcHVsbF9ub25lPjsKLS0gCjIuMzkuMgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
