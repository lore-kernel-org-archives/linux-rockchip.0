Return-Path: <SRS0=aAmn=KF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980F4C433B4
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 May 2021 09:13:47 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E904361432
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 May 2021 09:13:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E904361432
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=kleine-koenig.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Ugy79QqpIOaFex559Z1+BZGy/C3dpv4eeOYnR0qwNp8=; b=XVmcNNOdPHzxlZhRoHK6h/LaXt
	oeZISUintr3G5E3Bb0p0ZHJiUMkYXR7mBZrelEvUFSRkmhROkQRWj3HS/f25wmkjhor9GJkla4nqu
	ABsqYZzrULAkojxmgspoVhlS7vFVvwVAk7mgEf3cH52/HVKgnI0kTooIua4/9UujtEGjSJLbQTZ5o
	ihuvES8/tbfH36kyuVvOxAyDvw2zATpYZB4v9VA1xbT7A1fDl6lwFcaS49n0hlGf1MiSisrEyTXai
	teaMkYVKeyM1Zxg3z0zGDCLR+qwpzQtff41ofZ8nwFCz1DvxZdCsDUzQOrMsasfyV3ZX9mhd1ILcP
	L10iyoZg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lg1yv-00DjDC-DO; Mon, 10 May 2021 09:13:41 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lg1v0-00DiOQ-Pe
 for linux-rockchip@desiato.infradead.org; Mon, 10 May 2021 09:09:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=6W8o1GkPU5SmaGlwGf47/YkoTP+iwUx0Pbx6S4hmWBU=; b=nArG4TmSJw/kQodYKW5ryAfcjA
 lyaULfuD511NBjMsPuoZ++3Fa8A8XnWCnMFcTtM7a7mJfsgldX+/jbwnhCIhEsNRZbKOO6e+CFsUQ
 Q58L+0MumVX0E8zH8oKk4UF26nGIOWwpzerFp9sEm+i5dNGbanmsTNqd63keBs7WUULpYRcGMJ549
 oqSWVkYQm+qUSMPyoiRvB5lnCKjvsAVIn+twcwuJ1Go357ej2vHQeBDBwEIZN2TgcEQN8yI4iqVeU
 4DqzkZ8lVTl1/7WXJdIhqCup/XZTo24AD+jI9h07NM+RjpjOucI8XvOYTmHg+7+WMthFtEv878ScR
 CHfYg+aQ==;
Received: from antares.kleine-koenig.org ([94.130.110.236])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lg1uy-008RTV-6A
 for linux-rockchip@lists.infradead.org; Mon, 10 May 2021 09:09:37 +0000
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
 id 64E7FB91E57; Mon, 10 May 2021 11:09:34 +0200 (CEST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Aditya Prayoga <aditya@kobol.io>
Subject: [PATCH] arm64: dts: rockchip: helios64: Add support for PCIe
Date: Mon, 10 May 2021 11:09:32 +0200
Message-Id: <20210510090932.970447-1-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210510_020936_399613_EBA5B87F 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

VGhpcyBpcyBlbm91Z2ggdG8gbWFrZSB0aGUgU0FUQSBjb250cm9sbGVyIHZpc2libGU6CgojIGxz
cGNpCjAwOjAwLjAgUENJIGJyaWRnZTogRnV6aG91IFJvY2tjaGlwIEVsZWN0cm9uaWNzIENvLiwg
THRkIFJLMzM5OSBQQ0kgRXhwcmVzcyBSb290IFBvcnQKMDE6MDAuMCBTQVRBIGNvbnRyb2xsZXI6
IEpNaWNyb24gVGVjaG5vbG9neSBDb3JwLiBKTUI1OHggQUhDSSBTQVRBIGNvbnRyb2xsZXIKClNp
Z25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1d2VAa2xlaW5lLWtvZW5pZy5vcmc+Ci0t
LQogLi4uL2R0cy9yb2NrY2hpcC9yazMzOTkta29ib2wtaGVsaW9zNjQuZHRzICAgIHwgNTMgKysr
KysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDUzIGluc2VydGlvbnMoKykKCmRpZmYg
LS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1rb2JvbC1oZWxpb3M2
NC5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1rb2JvbC1oZWxpb3M2
NC5kdHMKaW5kZXggMWRkOTUzNTUyMGIyLi4zYzUzMmM0ZTFjZmUgMTAwNjQ0Ci0tLSBhL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LWtvYm9sLWhlbGlvczY0LmR0cworKysgYi9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1rb2JvbC1oZWxpb3M2NC5kdHMKQEAg
LTIzLDYgKzIzLDE2IEBAIGFsaWFzZXMgewogCQltbWMxID0gJnNkaGNpOwogCX07CiAKKwlhdmRk
XzB2OV9zMDogYXZkZC0wdjktczAgeworCQljb21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7
CisJCXJlZ3VsYXRvci1uYW1lID0gImF2ZGRfMHY5X3MwIjsKKwkJcmVndWxhdG9yLWFsd2F5cy1v
bjsKKwkJcmVndWxhdG9yLWJvb3Qtb247CisJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDkw
MDAwMD47CisJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDkwMDAwMD47CisJCXZpbi1zdXBw
bHkgPSA8JnZjYzF2OF9zeXNfczM+OworCX07CisKIAlhdmRkXzF2OF9zMDogYXZkZC0xdjgtczAg
ewogCQljb21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7CiAJCXJlZ3VsYXRvci1uYW1lID0g
ImF2ZGRfMXY4X3MwIjsKQEAgLTcyLDYgKzgyLDE4IEBAIGZhbjIgewogCQljb29saW5nLWxldmVs
cyA9IDwwIDgwIDE3MCAyNTU+OwogCX07CiAKKwlwY2llX3Bvd2VyOiBwY2llLXBvd2VyIHsKKwkJ
Y29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOworCQllbmFibGUtYWN0aXZlLWhpZ2g7CisJ
CWdwaW8gPSA8JmdwaW8xIFJLX1BEMCBHUElPX0FDVElWRV9ISUdIPjsKKwkJcGluY3RybC0wID0g
PCZwY2llX3B3cj47CisJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7CisJCXJlZ3VsYXRvci1i
b290LW9uOworCQlyZWd1bGF0b3ItbmFtZSA9ICJwY2llX3Bvd2VyIjsKKwkJc3RhcnR1cC1kZWxh
eS11cyA9IDwxMDAwMD47CisJCXZpbi1zdXBwbHkgPSA8JnZjYzV2MF9wZXJkZXY+OworCX07CisK
IAl2Y2Mxdjhfc3lzX3MwOiB2Y2Mxdjgtc3lzLXMwIHsKIAkJY29tcGF0aWJsZSA9ICJyZWd1bGF0
b3ItZml4ZWQiOwogCQlyZWd1bGF0b3ItbmFtZSA9ICJ2Y2Mxdjhfc3lzX3MwIjsKQEAgLTEwOSw2
ICsxMzEsMTYgQEAgcmVndWxhdG9yLXN0YXRlLW1lbSB7CiAJCX07CiAJfTsKIAorCXZjYzV2MF9w
ZXJkZXY6IHZjYzV2MC1wZXJkZXYgeworCQljb21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7
CisJCXJlZ3VsYXRvci1uYW1lID0gInZjYzV2MF9wZXJkZXYiOworCQlyZWd1bGF0b3ItYWx3YXlz
LW9uOworCQlyZWd1bGF0b3ItYm9vdC1vbjsKKwkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8
NTAwMDAwMD47CisJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDUwMDAwMDA+OworCQl2aW4t
c3VwcGx5ID0gPCZ2Y2MxMnZfZGNpbl9ia3VwPjsKKwl9OworCiAJdmNjNXYwX3N5czogdmNjNXYw
LXN5cyB7CiAJCWNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsKIAkJcmVndWxhdG9yLW5h
bWUgPSAidmNjNXYwX3N5cyI7CkBAIC0zMzEsNiArMzYzLDIwIEBAICZpb19kb21haW5zIHsKIAlz
dGF0dXMgPSAib2theSI7CiB9OwogCismcGNpZV9waHkgeworCXN0YXR1cyA9ICJva2F5IjsKK307
CisKKyZwY2llMCB7CisJbnVtLWxhbmVzID0gPDI+OworCXN0YXR1cyA9ICJva2F5IjsKKworCXZw
Y2llMTJ2LXN1cHBseSA9IDwmdmNjMTJ2X2RjaW4+OworCXZwY2llM3YzLXN1cHBseSA9IDwmcGNp
ZV9wb3dlcj47CisJdnBjaWUxdjgtc3VwcGx5ID0gPCZhdmRkXzF2OF9zMD47CisJdnBjaWUwdjkt
c3VwcGx5ID0gPCZhdmRkXzB2OV9zMD47Cit9OworCiAmcGluY3RybCB7CiAJZ21hYyB7CiAJCWdw
aHlfcmVzZXQ6IGdwaHktcmVzZXQgewpAQCAtMzQ4LDYgKzM5NCwxMyBAQCBzeXNfcmVkX2xlZF9v
bjogc3lzLXJlZC1sZWQtb24gewogCQl9OwogCX07CiAKKwlwY2llIHsKKwkJcGNpZV9wd3I6IHBj
aWUtcHdyIHsKKwkJCXJvY2tjaGlwLHBpbnMgPQorCQkJCTwxIFJLX1BEMCBSS19GVU5DX0dQSU8g
JnBjZmdfcHVsbF9ub25lPjsKKwkJfTsKKwl9OworCiAJcG1pYyB7CiAJCXBtaWNfaW50X2w6IHBt
aWMtaW50LWwgewogCQkJcm9ja2NoaXAscGlucyA9IDwwIFJLX1BCMiBSS19GVU5DX0dQSU8gJnBj
ZmdfcHVsbF9ub25lPjsKLS0gCjIuMzAuMgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
