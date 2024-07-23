Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13935C3DA63
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Jul 2024 20:00:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RC4F32Ojo3L1vFUlpidl5Bd0JrWQWk/EG63WHlCL/MY=; b=gstyt4aWFAWwfP
	u8VIclOfNtW2iHij6ApGvO/l0MFth9dO62+s84mXv5CoEK3HvCM6tazq5UZndsCKJ80fJoxsOMKcg
	j5pnuNeCVuXaz4dPSeyvCJ80hzXKhr019HhAiWnCT+njqdzmDmN8IjILw7fjJxH0Qiq32gvaFSw0Y
	zu3cfKbRdBHSsk6ZgBuJ50WIKPSCn9piF2ZZ9iLfRNnNzdJzoVM3YIaVQTMjcfZwhKtLu5Xcf3/BL
	llJmUAVbIGctKn3HSzZ+EUZxf/uaEwAFLNJ4Yl8cGl9g5PR7oMcDgah6AVwSdCfWTlrbH+M01PP1k
	id8nZI5IPzScKf8APaCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWLgX-0000000DPZb-0Eyc;
	Tue, 23 Jul 2024 20:00:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWLce-0000000DNwx-1rrw;
	Tue, 23 Jul 2024 19:56:33 +0000
Received: from i5e860cd3.versanet.de ([94.134.12.211] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sWLbv-0005iD-S2; Tue, 23 Jul 2024 21:55:47 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: ukleinek@debian.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 14/14] arm64: dts: rockchip: add 2 pmu_io_domain supplies for Qnap-TS433
Date: Tue, 23 Jul 2024 21:55:38 +0200
Message-Id: <20240723195538.1133436-15-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240723195538.1133436-1-heiko@sntech.de>
References: <20240723195538.1133436-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240723_125632_600530_A22D63DE 
X-CRM114-Status: GOOD (  11.83  )
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

QWRkIHRoZSB0d28gc3VwcGxpZXMgZm9yIHRoZSBwbXUtaW8tZG9tYWlucyB0aGF0IGFyZSBkZWZp
bmVkIGluIHRoZQp2ZW5kb3IgZGV2aWNldHJlZSBmb3IgdGhlIFRTNDMzLgoKVGVzdGVkLWJ5OiBV
d2UgS2xlaW5lLUvDtm5pZyA8dWtsZWluZWtAZGViaWFuLm9yZz4KU2lnbmVkLW9mZi1ieTogSGVp
a28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzU2OC1xbmFwLXRzNDMzLmR0cyB8IDUgKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA1
IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzU2OC1xbmFwLXRzNDMzLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTY4LXFuYXAtdHM0MzMuZHRzCmluZGV4IDlhMGNiNjljM2NmYTAuLjZjNDI2OWIzZDk1OTcgMTAw
NjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXFuYXAtdHM0MzMu
ZHRzCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXFuYXAtdHM0MzMu
ZHRzCkBAIC01MzEsNiArNTMxLDExIEBAIHZjYzV2MF9vdGdfZW46IHZjYzV2MC1vdGctZW4gewog
CX07CiB9OwogCismcG11X2lvX2RvbWFpbnMgeworCXZjY2lvNC1zdXBwbHkgPSA8JnZjY18xdjg+
OworCXZjY2lvNi1zdXBwbHkgPSA8JnZjY18xdjg+OworfTsKKwogJnNhdGExIHsKIAlzdGF0dXMg
PSAib2theSI7CiB9OwotLSAKMi4zOS4yCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
