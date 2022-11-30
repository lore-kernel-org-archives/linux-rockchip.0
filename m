Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9900C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Nov 2022 15:22:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=15A3N5rQABm7kFBmIrwyzvXd8zmAQh96dx223uQbq5U=; b=Hhss6sUsS5TdMZ
	eayC7k3/jDI7gU4wcW9qR2TCuPErx251mqrQYx46cjgol2iV8rYPw72VC5y+B2MIKYSp2Zu+hrB7r
	JXd72roMzBwfvc6w/SN9TrYzmrRwcsBVxE1/vEfLREyl2fO22m3VHtVZXK1z4m0fHpQlUL3L1+ZfD
	MU8VjEqy5q+SjvzTvkwpWxCDyxEC5EtrPRqhsAykkZ0R1AiU2uY58pTEXtD09LSYli4kjFEFfgQDU
	F9ol6B9n0QhL8mJ/VvQIMTrdLAhmazReBzAiVU1e0WBkl33F3XCDH8RM2/bUo0TtN19sip3y6Cs50
	OVsCGIYHSW1cnz1hRNWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0Oug-00HMwG-SH; Wed, 30 Nov 2022 15:22:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0OuT-00HMh3-9Z
	for linux-rockchip@lists.infradead.org; Wed, 30 Nov 2022 15:22:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1p0OuN-0000AX-07; Wed, 30 Nov 2022 16:21:59 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1p0OuL-001Le0-J5; Wed, 30 Nov 2022 16:21:58 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1p0OuL-001Vr4-Ld; Wed, 30 Nov 2022 16:21:57 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Thierry Reding <thierry.reding@gmail.com>
Cc: Conor Dooley <conor.dooley@microchip.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pwm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 09/11] pwm: rockchip: Propagate errors in .get_state() to the caller
Date: Wed, 30 Nov 2022 16:21:46 +0100
Message-Id: <20221130152148.2769768-10-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221130152148.2769768-1-u.kleine-koenig@pengutronix.de>
References: <20221130152148.2769768-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=730; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=pKEsqqELf8pqmyD4QAsi9Xpc86tdi7pQt9Er7E+Nu3o=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBjh3T/bN1g1kVNiJ/v8SIOIucUrMidx7s9Upuf1Iv8 Q3S2XXCJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCY4d0/wAKCRDB/BR4rcrsCVcQB/ 4o6RgFb19BY0wEs5wjZVFmTdgVeuclNrg1zVXaXOSCV6pNPDgj0IHt6CKqbCzd9BJq/yKEo3daI3Wr UhT78i6koC8btpmDDh7thoNUUlSayy1WTaOjxLgsqJ90PKjyG3oAIdIe8Fe3QT3P0mUDQKUUbc2x6M QxXDQpNH5NsetybZts2hi1OraEycQTiEO2Ff9fkUXAzuWBZ3nDp6eXiLN9ChkFuN6Q5M0Ir15DxvzC +iDh4mjN9H3LoLruxRGZt8uBb99fJ1uvv6SZu+5vPPcw8+amktlXtxxFN5NIY/HdvdxbGFUh1js227 sadEba0dTaPgZNjUj2pRzmF4jFBnv6
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221130_072205_404955_67227995 
X-CRM114-Status: GOOD (  12.94  )
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

LmdldF9zdGF0ZSgpIGNhbiByZXR1cm4gYW4gZXJyb3IgaW5kaWNhdGlvbi4gTWFrZSB1c2Ugb2Yg
aXQgdG8gcHJvcGFnYXRlCmZhaWxpbmcgaGFyZHdhcmUgYWNjZXNzZXMuCgpTaWduZWQtb2ZmLWJ5
OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgotLS0K
IGRyaXZlcnMvcHdtL3B3bS1yb2NrY2hpcC5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBp
bnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcHdtL3B3
bS1yb2NrY2hpcC5jIGIvZHJpdmVycy9wd20vcHdtLXJvY2tjaGlwLmMKaW5kZXggM2VjN2QxNzU2
OTAzLi43ZjA4NGViMzQwOTIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcHdtL3B3bS1yb2NrY2hpcC5j
CisrKyBiL2RyaXZlcnMvcHdtL3B3bS1yb2NrY2hpcC5jCkBAIC03MCwxMSArNzAsMTEgQEAgc3Rh
dGljIGludCByb2NrY2hpcF9wd21fZ2V0X3N0YXRlKHN0cnVjdCBwd21fY2hpcCAqY2hpcCwKIAog
CXJldCA9IGNsa19lbmFibGUocGMtPnBjbGspOwogCWlmIChyZXQpCi0JCXJldHVybiAwOworCQly
ZXR1cm4gcmV0OwogCiAJcmV0ID0gY2xrX2VuYWJsZShwYy0+Y2xrKTsKIAlpZiAocmV0KQotCQly
ZXR1cm4gMDsKKwkJcmV0dXJuIHJldDsKIAogCWNsa19yYXRlID0gY2xrX2dldF9yYXRlKHBjLT5j
bGspOwogCi0tIAoyLjM4LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
