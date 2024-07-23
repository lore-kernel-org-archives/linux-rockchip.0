Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69847C3DA49
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Jul 2024 19:56:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=99yxUZwf7DZDYyhdVstALeVlpataQXiBIpVrhndewvM=; b=Y5c4lgBt2Gm39M
	ZBoNapC34bfCYtz3E5tHUVWK4xJjcQCmJC2mvdprfAXRGkofKujLrtBU8FskzvX4Nbnw9QdmK5UPh
	ilnqKu1yJaJcVW0Ee/qe6tWD851McipT+uoPV07PUd7aZxXdPUqH34kL2eFQ6WLx+xR4Yiaa/9k6p
	prFEnEwXluRNZ54lSiKc92rKTvkljwAuVSnWjfOxBJNnZpKkPgSdICSOrLkNSgMRhVXo47Q1JECRM
	hYG4ipYzdRKUUdtY2sVf89+wiHalOf0ks46GiYRe51rKF44f2QRvVa//UYS5Ta3Kgxlcz8gO8Jj5G
	gGTSHGSV21tsC9GRKhXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWLcI-0000000DNm9-2mBN;
	Tue, 23 Jul 2024 19:56:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWLbu-0000000DNcO-18fW;
	Tue, 23 Jul 2024 19:55:47 +0000
Received: from i5e860cd3.versanet.de ([94.134.12.211] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sWLbs-0005iD-MN; Tue, 23 Jul 2024 21:55:44 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: ukleinek@debian.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 03/14] arm64: dts: rockchip: enable uart0 on Qnap-TS433
Date: Tue, 23 Jul 2024 21:55:27 +0200
Message-Id: <20240723195538.1133436-4-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240723195538.1133436-1-heiko@sntech.de>
References: <20240723195538.1133436-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240723_125546_344416_7E94143B 
X-CRM114-Status: GOOD (  13.13  )
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

VWFydDAgaXMgY29ubmVjdGVkIHRvIGFuIE1DVSBvbiB0aGUgYm9hcmQgdGhhdCBoYW5kbGVzIHN5
c3RlbSBjb250cm9sCmxpa2UgdGhlIGZhbi1zcGVlZC4gU28gZmFyIG5vIGRyaXZlciBmb3IgaXQg
aXMgYXZhaWxhYmxlIHRob3VnaC4KClRlc3RlZC1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHVrbGVp
bmVrQGRlYmlhbi5vcmc+ClNpZ25lZC1vZmYtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRl
Y2guZGU+Ci0tLQogYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtcW5hcC10czQz
My5kdHMgfCA4ICsrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspCgpkaWZm
IC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtcW5hcC10czQzMy5k
dHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1xbmFwLXRzNDMzLmR0cwpp
bmRleCA5YmY5YzNiNjVjYTMxLi5iYzI2ZjJlOThjMTg1IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1xbmFwLXRzNDMzLmR0cworKysgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1xbmFwLXRzNDMzLmR0cwpAQCAtMTA0LDYgKzEwNCwx
NCBAQCAmc2RoY2kgewogCXN0YXR1cyA9ICJva2F5IjsKIH07CiAKKy8qCisgKiBDb25uZWN0ZWQg
dG8gYW4gTUNVLCB0aGF0IHByb3ZpZGVzIGFjY2VzcyB0byBtb3JlIExFRHMsCisgKiBidXp6ZXIs
IGZhbiBjb250cm9sIGFuZCBtb3JlLgorICovCismdWFydDAgeworCXN0YXR1cyA9ICJva2F5IjsK
K307CisKIC8qCiAgKiBQaW5zIGF2YWlsYWJsZSBvbiBDTjMgY29ubmVjdG9yIGF0IFRUTCB2b2x0
YWdlIGxldmVsICgzVjMpLgogICogLF8gIF8uCi0tIAoyLjM5LjIKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
