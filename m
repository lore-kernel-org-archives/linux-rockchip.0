Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75245C3DA63
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Jul 2024 19:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UQzCagw+WnrZj3kRlaB2ESWsd3ZRrzX/WCOrM5E8Nls=; b=P4hGWzKpmoY0aD
	djS3mwGJpSifQz7IBY0buoK0or/XB/UYu6u/lAmaXqFcYAU+V08rPd3vveJ4at5Re/W0nSL6SctI1
	7IeoNDh7eusg2BqTCcEVvf/wg0hrd0N1O9C1u2fEzlCRf2b/R4EHFRlBUKFtW5HWyRhHeRS3Rsfd+
	cpKCE9vJ5KYKRgqVCoEGHAKPcPyKjKrWSky13Ioi12YIngASJloJJg7lRk9z+oHQ0xFPetP4RXKAV
	uIz9O/pAEjrxC+0Uqi43nICSyznORzREzxQNn/hAfSRVL0pnozxknEIxZxV8pRGhe8Aglvz3aFruK
	JP3E3hPXIAerKl7Tplhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWLf8-0000000DP7P-1PWA;
	Tue, 23 Jul 2024 19:59:06 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWLbu-0000000DNcT-3crD;
	Tue, 23 Jul 2024 19:55:50 +0000
Received: from i5e860cd3.versanet.de ([94.134.12.211] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sWLbt-0005iD-Hk; Tue, 23 Jul 2024 21:55:45 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: ukleinek@debian.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 06/14] arm64: dts: rockchip: enable sata1+2 on Qnap-TS433
Date: Tue, 23 Jul 2024 21:55:30 +0200
Message-Id: <20240723195538.1133436-7-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240723195538.1133436-1-heiko@sntech.de>
References: <20240723195538.1133436-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240723_125546_919339_9B986FC9 
X-CRM114-Status: GOOD (  12.06  )
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

VGhlIFRTNDMzIGhhcyA0IGJheXMuIFRoZSBsYXN0IHR3byBhcmUgYWNjZXNzZWQgdmlhIGEgcGNp
LWNvbm5lY3RlZApzYXRhIGNvbnRyb2xsZXIsIHdoaWxlIHRoZSBmaXJzdCB0d28gYXJlIGFjY2Vz
c2VkIHZpYSB0aGUgcmszNTY4J3MKc2F0YSBjb250cm9sbGVycy4gRW5hYmxlIHRoZXNlIHR3byBu
b3cuCgpUZXN0ZWQtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1a2xlaW5la0BkZWJpYW4ub3JnPgpT
aWduZWQtb2ZmLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgotLS0KIC4uLi9i
b290L2R0cy9yb2NrY2hpcC9yazM1NjgtcW5hcC10czQzMy5kdHMgICAgfCAxOCArKysrKysrKysr
KysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtcW5hcC10czQzMy5kdHMgYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1xbmFwLXRzNDMzLmR0cwppbmRleCBiZTFj
MjI4NmMyZDNmLi40MGFmNGRkMGU0MTU4IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzU2OC1xbmFwLXRzNDMzLmR0cworKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzU2OC1xbmFwLXRzNDMzLmR0cwpAQCAtODAsNiArODAsMTYgQEAgJmNvbWJw
aHkwIHsKIAlzdGF0dXMgPSAib2theSI7CiB9OwogCisvKiBjb25uZWN0ZWQgdG8gc2F0YTEgKi8K
KyZjb21icGh5MSB7CisJc3RhdHVzID0gIm9rYXkiOworfTsKKworLyogY29ubmVjdGVkIHRvIHNh
dGEyICovCismY29tYnBoeTIgeworCXN0YXR1cyA9ICJva2F5IjsKK307CisKICZnbWFjMCB7CiAJ
YXNzaWduZWQtY2xvY2tzID0gPCZjcnUgU0NMS19HTUFDMF9SWF9UWD4sIDwmY3J1IFNDTEtfR01B
QzA+OwogCWFzc2lnbmVkLWNsb2NrLXBhcmVudHMgPSA8JmNydSBTQ0xLX0dNQUMwX1JHTUlJX1NQ
RUVEPiwgPCZjcnUgQ0xLX01BQzBfMlRPUD47CkBAIC0xNTYsNiArMTY2LDE0IEBAIHZjYzV2MF9v
dGdfZW46IHZjYzV2MC1vdGctZW4gewogCX07CiB9OwogCismc2F0YTEgeworCXN0YXR1cyA9ICJv
a2F5IjsKK307CisKKyZzYXRhMiB7CisJc3RhdHVzID0gIm9rYXkiOworfTsKKwogJnNkaGNpIHsK
IAlidXMtd2lkdGggPSA8OD47CiAJbWF4LWZyZXF1ZW5jeSA9IDwyMDAwMDAwMDA+OwotLSAKMi4z
OS4yCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
