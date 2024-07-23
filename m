Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A29CBC3DA63
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Jul 2024 20:00:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eEX8+S6ICKiDtbAWhsJ2ul1MfgBJREWkZq7IHNi/iaQ=; b=f4Jj1ZoZD7rjBm
	j/Byc2mjLs5vWDbHUQo99ze214YtSMVPxqE8QD8U0MmNjmH5JRSbL6sofEHHmDXNv8fsdzxcoRiM4
	2or6/u74xiiUxl0xcgTYj3KyMXFJLcGlQoOIClR32SFMZiUsViYSKUkyFLt8+hkpzPordF+3wygqa
	Hea1aUZfASOySauZESxXeR4QLQ02sn1NPbVVMO7xJp9czVvvL2eysRoURMj2JMUprvU1tbUTSog+I
	rBZPdZdezjmNOzfOwE/FeM+bWC2+w2R5KVVmjgAdSgE/XmP+AgCL3Ef9JqQPUhXXE8zmhRGrUx3V6
	3hCu5QHqe8mdmKhZAFIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWLgs-0000000DPfZ-1xjM;
	Tue, 23 Jul 2024 20:00:54 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWLck-0000000DO0w-02VV;
	Tue, 23 Jul 2024 19:56:39 +0000
Received: from i5e860cd3.versanet.de ([94.134.12.211] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sWLbv-0005iD-Iq; Tue, 23 Jul 2024 21:55:47 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: ukleinek@debian.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 13/14] arm64: dts: rockchip: enable gpu on Qnap-TS433
Date: Tue, 23 Jul 2024 21:55:37 +0200
Message-Id: <20240723195538.1133436-14-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240723195538.1133436-1-heiko@sntech.de>
References: <20240723195538.1133436-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240723_125638_101270_7F48C833 
X-CRM114-Status: GOOD (  11.89  )
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

VGhlIFRTNDMzIGRvZXNuJ3QgcHJvdmlkZSBkaXNwbGF5IG91dHB1dCwgYnV0IHRoZSBncHUgbmV2
ZXJ0aGVsZXNzIGNhbiBiZQp1c2VkIGZvciBjb21wdXRlIHRhc2tzIGZvciBleGFtcGxlLgoKU28g
dGhlcmUgaXMgbm8gcmVhc29uIG5vdCB0byBlbmFibGUgaXQuCgpUZXN0ZWQtYnk6IFV3ZSBLbGVp
bmUtS8O2bmlnIDx1a2xlaW5la0BkZWJpYW4ub3JnPgpTaWduZWQtb2ZmLWJ5OiBIZWlrbyBTdHVl
Ym5lciA8aGVpa29Ac250ZWNoLmRlPgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszNTY4LXFuYXAtdHM0MzMuZHRzIHwgNSArKysrKwogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0
aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4
LXFuYXAtdHM0MzMuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtcW5h
cC10czQzMy5kdHMKaW5kZXggYjgwN2RhNmU4NTAxNS4uOWEwY2I2OWMzY2ZhMCAxMDA2NDQKLS0t
IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtcW5hcC10czQzMy5kdHMKKysr
IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtcW5hcC10czQzMy5kdHMKQEAg
LTIxMCw2ICsyMTAsMTEgQEAgJmdtYWMwX3JnbWlpX2NsawogCXN0YXR1cyA9ICJva2F5IjsKIH07
CiAKKyZncHUgeworCW1hbGktc3VwcGx5ID0gPCZ2ZGRfZ3B1PjsKKwlzdGF0dXMgPSAib2theSI7
Cit9OworCiAmaTJjMCB7CiAJc3RhdHVzID0gIm9rYXkiOwogCi0tIAoyLjM5LjIKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
