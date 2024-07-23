Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37F9EC3DA63
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Jul 2024 20:00:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v8NHiHln/lclUrIhRkNlwKM/WoRZr5YkxUjYvE9PtQQ=; b=zi9sDyadyJ9B5T
	qg7BQlyu0HIwszVTVDk4nOyg41cxYfm4E9j0Q913lIOxuwi8RrXOs7qHkMFzb43MRMEBu99s+LEhR
	p5CWAvsrXCsDJEuntwtAJw7o8tgPIMBN0Q03NaYSRclMkVxqQUCNvrBLaPXwBgTNoWyEq9QsTyr32
	zKfhpHWdy+Q6UnX279EOUlKax7Av7cFdLvqpyjzDYVvN1cqiFCo0a26bcQlXzMmgKHkDZ+12dCFwH
	be6MRwe+G1rnBEplImI3Z7MK4PVGShE8Xwh6KPV1+glbX8Xwccrwg/KYbr36oAI9xBMSATg6tHS7N
	3agHbjeQfqNpJQJuxCVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWLgC-0000000DPTf-1LHl;
	Tue, 23 Jul 2024 20:00:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWLca-0000000DNvF-1yzu;
	Tue, 23 Jul 2024 19:56:29 +0000
Received: from i5e860cd3.versanet.de ([94.134.12.211] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sWLbv-0005iD-0R; Tue, 23 Jul 2024 21:55:47 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: ukleinek@debian.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 11/14] arm64: dts: rockchip: define cpu-supply on the Qnap-TS433
Date: Tue, 23 Jul 2024 21:55:35 +0200
Message-Id: <20240723195538.1133436-12-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240723195538.1133436-1-heiko@sntech.de>
References: <20240723195538.1133436-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240723_125628_537149_1F95B533 
X-CRM114-Status: GOOD (  12.05  )
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

VGhlIFRTNDMzIHNlZW1zIHRvIHVzZSBhIHNpbGVyZ3ksc3lyODI3IHJlZ3VsYXRvciBmb3IgdGhl
IGNwdSBzdXBwbHkuCkF0IGxlYXN0IHRoYXQgaXMgdGhlIGNvbXBhdGlibGUgdXNlZCBpbiB0aGUg
dmVuZG9yIGRldmljZXRyZWUsIHRob3VnaAppdCBjb3VsZCB2ZXJ5IHdlbGwgYWxzbyBiZSBhbm90
aGVyIGZhbjUzNTU1IGNsb25lLgoKRGVmaW5lIHRoZSBuZWVkZWQgcmVndWxhdG9yIG5vZGUgYW5k
IGhvb2sgdXAgdGhlIGNwdS1zdXBwbHkgdG8gdGhlCmNwdSBjb3Jlcy4KClRlc3RlZC1ieTogVXdl
IEtsZWluZS1Lw7ZuaWcgPHVrbGVpbmVrQGRlYmlhbi5vcmc+ClNpZ25lZC1vZmYtYnk6IEhlaWtv
IFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+Ci0tLQogLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzU2OC1xbmFwLXRzNDMzLmR0cyAgIHwgNDEgKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNo
YW5nZWQsIDQxIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzU2OC1xbmFwLXRzNDMzLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTY4LXFuYXAtdHM0MzMuZHRzCmluZGV4IDlmOTY0YjZmNDExYzkuLjRiY2NlZmMw
NTM3ZWQgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXFu
YXAtdHM0MzMuZHRzCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXFu
YXAtdHM0MzMuZHRzCkBAIC0xMzAsNiArMTMwLDE2IEBAIHZjYzV2MF9vdGc6IHJlZ3VsYXRvci12
Y2M1djAtb3RnIHsKIAkJdmluLXN1cHBseSA9IDwmdmNjNXYwX3VzYj47CiAJfTsKIAorCXZjYzV2
MF9zeXM6IHJlZ3VsYXRvci12Y2M1djAtc3lzIHsKKwkJY29tcGF0aWJsZSA9ICJyZWd1bGF0b3It
Zml4ZWQiOworCQlyZWd1bGF0b3ItbmFtZSA9ICJ2Y2M1djBfc3lzIjsKKwkJcmVndWxhdG9yLWFs
d2F5cy1vbjsKKwkJcmVndWxhdG9yLWJvb3Qtb247CisJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0
ID0gPDUwMDAwMDA+OworCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDw1MDAwMDAwPjsKKwkJ
dmluLXN1cHBseSA9IDwmZGNfMTJ2PjsKKwl9OworCiAJdmNjNXYwX3VzYjogcmVndWxhdG9yLXZj
YzV2MC11c2IgewogCQljb21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7CiAJCXJlZ3VsYXRv
ci1uYW1lID0gInZjYzV2MF91c2IiOwpAQCAtMTU2LDYgKzE2NiwyMiBAQCAmY29tYnBoeTIgewog
CXN0YXR1cyA9ICJva2F5IjsKIH07CiAKKyZjcHUwIHsKKwljcHUtc3VwcGx5ID0gPCZ2ZGRfY3B1
PjsKK307CisKKyZjcHUxIHsKKwljcHUtc3VwcGx5ID0gPCZ2ZGRfY3B1PjsKK307CisKKyZjcHUy
IHsKKwljcHUtc3VwcGx5ID0gPCZ2ZGRfY3B1PjsKK307CisKKyZjcHUzIHsKKwljcHUtc3VwcGx5
ID0gPCZ2ZGRfY3B1PjsKK307CisKICZnbWFjMCB7CiAJYXNzaWduZWQtY2xvY2tzID0gPCZjcnUg
U0NMS19HTUFDMF9SWF9UWD4sIDwmY3J1IFNDTEtfR01BQzA+OwogCWFzc2lnbmVkLWNsb2NrLXBh
cmVudHMgPSA8JmNydSBTQ0xLX0dNQUMwX1JHTUlJX1NQRUVEPiwgPCZjcnUgQ0xLX01BQzBfMlRP
UD47CkBAIC0xNzUsMTIgKzIwMSwyNyBAQCAmZ21hYzBfcmdtaWlfY2xrCiB9OwogCiAmaTJjMCB7
CisJc3RhdHVzID0gIm9rYXkiOworCiAJcG1pY0AyMCB7CiAJCWNvbXBhdGlibGUgPSAicm9ja2No
aXAscms4MDkiOwogCQlyZWcgPSA8MHgyMD47CiAJCWludGVycnVwdC1wYXJlbnQgPSA8JmdwaW8w
PjsKIAkJaW50ZXJydXB0cyA9IDwzIElSUV9UWVBFX0xFVkVMX0xPVz47CiAJfTsKKworCXZkZF9j
cHU6IHJlZ3VsYXRvckA0MCB7CisJCWNvbXBhdGlibGUgPSAic2lsZXJneSxzeXI4MjciOworCQly
ZWcgPSA8MHg0MD47CisJCWZjcyxzdXNwZW5kLXZvbHRhZ2Utc2VsZWN0b3IgPSA8MT47CisJCXJl
Z3VsYXRvci1uYW1lID0gInZkZF9jcHUiOworCQlyZWd1bGF0b3ItYWx3YXlzLW9uOworCQlyZWd1
bGF0b3ItYm9vdC1vbjsKKwkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8NzEyNTAwPjsKKwkJ
cmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MTM5MDAwMD47CisJCXJlZ3VsYXRvci1yYW1wLWRl
bGF5ID0gPDIzMDA+OworCQl2aW4tc3VwcGx5ID0gPCZ2Y2M1djBfc3lzPjsKKwl9OwogfTsKIAog
JmkyYzEgewotLSAKMi4zOS4yCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
