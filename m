Return-Path: <SRS0=14fJ=LF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A3DCC48BE0
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Jun 2021 08:14:41 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 117A5613AE
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Jun 2021 08:14:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 117A5613AE
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=kleine-koenig.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0DS/6I5HNTSG54k8INXIktpXmeLSvFU2b5HcNUyqlbE=; b=3FBiGIi3wze+xT
	YtwhKhL90tG5x1eZPSfOeFONlQJ2EGoyZQMbKCImN0L/3MzFCBbQ6ZyB72fYxYQQu5zMIqMUgH87M
	y+7AhcNdiFDMmNNBgF5rmeFlv10+9RDjGGq2hW7TCeP7pkSrHS0EuEql7ffUUQtiGiXzLDgiy9F03
	iKJ1Ff9l2/ijEnrpU/Ns3NzQxFBtHCjz1mV+qj6FLzHHsN2XuomXgwQdXwGliDVuRve572SMx8Ucb
	qXGRD/qrs8+uMJVSMuc/ILFcF8PT0AzerG8T/mQUjELXrl/9BKC+02LJJjAbWIt66uHSfFYUx+0Om
	sIowlgBqVVvk9UdJvrag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrcJI-004Ier-Ah; Fri, 11 Jun 2021 08:14:36 +0000
Received: from antares.kleine-koenig.org ([94.130.110.236])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrcJ5-004Icy-AJ; Fri, 11 Jun 2021 08:14:25 +0000
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
 id AD8EBBC7F45; Fri, 11 Jun 2021 10:14:18 +0200 (CEST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Add support for USB on helios64
Date: Fri, 11 Jun 2021 10:14:14 +0200
Message-Id: <20210611081414.1448786-1-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210611_011423_533872_F358C876 
X-CRM114-Status: GOOD (  10.42  )
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

VGhpcyBlbmFibGVzIHRoZSBVU0IgaGFyZHdhcmUgbmVlZGVkIHRvIGFjY2VzcyBkZXZpY2VzIG9u
IHRoZSBzb2NrZXRzIEoxCmFuZCBKMTMuCgpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5p
ZyA8dXdlQGtsZWluZS1rb2VuaWcub3JnPgotLS0KIC4uLi9kdHMvcm9ja2NoaXAvcmszMzk5LWtv
Ym9sLWhlbGlvczY0LmR0cyAgICB8IDQ0ICsrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFu
Z2VkLCA0NCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazMzOTkta29ib2wtaGVsaW9zNjQuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazMzOTkta29ib2wtaGVsaW9zNjQuZHRzCmluZGV4IDAzN2RjNWNkYzNmMy4uYzE0
MjY0OWNkMWJkIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5
OS1rb2JvbC1oZWxpb3M2NC5kdHMKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azMzOTkta29ib2wtaGVsaW9zNjQuZHRzCkBAIC0xNTUsNiArMTU1LDIwIEBAIHJlZ3VsYXRvci1z
dGF0ZS1tZW0gewogCQl9OwogCX07CiAKKwl2Y2M1djBfdXNiOiB2Y2M1djAtdXNiIHsKKwkJY29t
cGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOworCQllbmFibGUtYWN0aXZlLWhpZ2g7CisJCWdw
aW8gPSA8JmdwaW8xIFJLX1BDNiBHUElPX0FDVElWRV9ISUdIPjsKKwkJcGluY3RybC1uYW1lcyA9
ICJkZWZhdWx0IjsKKwkJcGluY3RybC0wID0gPCZ2Y2M1djBfdXNiX2VuPjsKKwkJcmVndWxhdG9y
LW5hbWUgPSAidmNjNXYwX3VzYiI7CisJCXJlZ3VsYXRvci1hbHdheXMtb247CisJCXJlZ3VsYXRv
ci1ib290LW9uOworCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw1MDAwMDAwPjsKKwkJcmVn
dWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8NTAwMDAwMD47CisJCXZpbi1zdXBwbHkgPSA8JnZjYzV2
MF9wZXJkZXY+OworCX07CisKIAl2Y2MxMnZfZGNpbjogdmNjMTJ2LWRjaW4gewogCQljb21wYXRp
YmxlID0gInJlZ3VsYXRvci1maXhlZCI7CiAJCXJlZ3VsYXRvci1uYW1lID0gInZjYzEydl9kY2lu
IjsKQEAgLTQwNyw2ICs0MjEsMTIgQEAgcG1pY19pbnRfbDogcG1pYy1pbnQtbCB7CiAJCX07CiAJ
fTsKIAorCXBvd2VyIHsKKwkJdmNjNXYwX3VzYl9lbjogdmNjNXYwLXVzYi1lbiB7CisJCQlyb2Nr
Y2hpcCxwaW5zID0gPDEgUktfUEM2IFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX25vbmU+OworCQl9
OworCX07CisKIAl2Y2MzdjAtc2QgewogCQlzZG1tYzBfcHdyX2g6IHNkbW1jMC1wd3ItaCB7CiAJ
CQlyb2NrY2hpcCxwaW5zID0gPDAgUktfUEExIFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX3VwPjsK
QEAgLTQ0OSw2ICs0NjksMzAgQEAgJnNkbW1jIHsKIAlzdGF0dXMgPSAib2theSI7CiB9OwogCism
dGNwaHkxIHsKKwkvLyBwaHkgZm9yICZ1c2JkcmRfZHdjM18xCisJc3RhdHVzID0gIm9rYXkiOwor
fTsKKworJnUycGh5MSB7CisJc3RhdHVzID0gIm9rYXkiOworCisJb3RnLXBvcnQgeworCQkvLyBw
aHkgZm9yICZ1c2JkcmRfZHdjM18xCisJCXBoeS1zdXBwbHkgPSA8JnZjYzV2MF91c2I+CisJCXN0
YXR1cyA9ICJva2F5IjsKKwl9OworfTsKKwogJnVhcnQyIHsKIAlzdGF0dXMgPSAib2theSI7CiB9
OworCismdXNiZHJkM18xIHsKKwlzdGF0dXMgPSAib2theSI7CisKKwl1c2JAZmU5MDAwMDAgewor
CQlkcl9tb2RlID0gImhvc3QiOworCQlzdGF0dXMgPSAib2theSI7CisJfTsKK307Ci0tIAoyLjMw
LjIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
