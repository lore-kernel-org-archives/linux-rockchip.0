Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 119C4C3DA63
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Jul 2024 19:56:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/9zIVAiQA5h+aA1qpVtlYDIJffdRvfqmf149XR1hi1E=; b=NMudeWvdHY2qKD
	qs/qXfxcM+0sViwte486OSKrnuUMRG33EL/FniUKjb+rd2zunxy28Z+pRNWJYwvtsLDo1l5QND2nT
	sSElE5CgYYmNqonjMlkKy/9UJKP8i+pJRgrfqteo+70ZTRfsHZK3i4zw7kbvffgqvWTC5LdqDJOGr
	HPnYsWFkwER+t4PJqGrE7xjGG8v/jkd615dKjSbbVyXZLKNTx7/XSu943FDEEIS+8na8m+DYtsXVp
	2wI6MX3S0uvhYb0Y0ArxrjMWwD60aykfYWqAuB6hPNmv9qhlLHHKTLGPLTUeVkSF6usSql3ZJRrsv
	Ck4YnBzPnKooOdns/h+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWLcf-0000000DNy1-0pT4;
	Tue, 23 Jul 2024 19:56:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWLbu-0000000DNcI-18xb;
	Tue, 23 Jul 2024 19:55:47 +0000
Received: from i5e860cd3.versanet.de ([94.134.12.211] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sWLbs-0005iD-3Y; Tue, 23 Jul 2024 21:55:44 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: ukleinek@debian.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 01/14] arm64: dts: rockchip: add PCIe supply regulator to Qnap-TS433
Date: Tue, 23 Jul 2024 21:55:25 +0200
Message-Id: <20240723195538.1133436-2-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240723195538.1133436-1-heiko@sntech.de>
References: <20240723195538.1133436-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240723_125546_345332_0BE5F8BF 
X-CRM114-Status: GOOD (  12.11  )
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

QWRkIHRoZSB2Y2MzdjMtc3VwcGx5IHJlZ3VsYXRvciBhbmQgaXRzIGxpbmsgdG8gdGhlIHBjaWUg
Y29udHJvbGxlcnMuCgpUZXN0ZWQtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1a2xlaW5la0BkZWJp
YW4ub3JnPgpTaWduZWQtb2ZmLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgot
LS0KIC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtcW5hcC10czQzMy5kdHMgICB8IDIxICsr
KysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAyMSBpbnNlcnRpb25zKCspCgpkaWZm
IC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtcW5hcC10czQzMy5k
dHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1xbmFwLXRzNDMzLmR0cwpp
bmRleCA2YTk5ODE2NjAwM2M5Li4wN2I0ZjA5NWQ3NjZhIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1xbmFwLXRzNDMzLmR0cworKysgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1xbmFwLXRzNDMzLmR0cwpAQCAtMTIsNiArMTIsMjUg
QEAKIC8gewogCW1vZGVsID0gIlFuYXAgVFMtNDMzLTRHIE5BUyBTeXN0ZW0gNC1CYXkiOwogCWNv
bXBhdGlibGUgPSAicW5hcCx0czQzMyIsICJyb2NrY2hpcCxyazM1NjgiOworCisJZGNfMTJ2OiBy
ZWd1bGF0b3ItZGMtMTJ2IHsKKwkJY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOworCQly
ZWd1bGF0b3ItbmFtZSA9ICJkY18xMnYiOworCQlyZWd1bGF0b3ItYWx3YXlzLW9uOworCQlyZWd1
bGF0b3ItYm9vdC1vbjsKKwkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MTIwMDAwMDA+Owor
CQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxMjAwMDAwMD47CisJfTsKKworCXZjYzN2M19w
Y2llOiByZWd1bGF0b3ItdmNjM3YzLXBjaWUgeworCQljb21wYXRpYmxlID0gInJlZ3VsYXRvci1m
aXhlZCI7CisJCXJlZ3VsYXRvci1uYW1lID0gInZjYzN2M19wY2llIjsKKwkJcmVndWxhdG9yLW1p
bi1taWNyb3ZvbHQgPSA8MzMwMDAwMD47CisJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDMz
MDAwMDA+OworCQllbmFibGUtYWN0aXZlLWhpZ2g7CisJCWdwaW9zID0gPCZncGlvMCBSS19QRDQg
R1BJT19BQ1RJVkVfSElHSD47CisJCXZpbi1zdXBwbHkgPSA8JmRjXzEydj47CisJfTsKIH07CiAK
ICZnbWFjMCB7CkBAIC02Miw5ICs4MSwxMSBAQCAmcGNpZTMwcGh5IHsKIAlzdGF0dXMgPSAib2th
eSI7CiB9OwogCisvKiBDb25uZWN0ZWQgdG8gYSBKTWljcm9uIEFIQ0kgU0FUQSBjb250cm9sbGVy
ICovCiAmcGNpZTN4MSB7CiAJLyogVGhlIGRvd25zdHJlYW0gZHRzIGhhczogcm9ja2NoaXAsYmlm
dXJjYXRpb24sIFhYWDogZmluZCBvdXQgd2hhdCB0aGlzIGlzIGFib3V0ICovCiAJcmVzZXQtZ3Bp
b3MgPSA8JmdwaW8wIFJLX1BDNyBHUElPX0FDVElWRV9ISUdIPjsKKwl2cGNpZTN2My1zdXBwbHkg
PSA8JnZjYzN2M19wY2llPjsKIAlzdGF0dXMgPSAib2theSI7CiB9OwogCi0tIAoyLjM5LjIKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
