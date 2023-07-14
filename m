Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BBE1EB64DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Jul 2023 20:56:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=azC0+BeC3iRB+OyNpmgf8JcfLD8qi0W+mwKuMNiBjxA=; b=zUsUCMkLjc9K/e
	sfR/XDadu53udkXIFxBoPQSX4OQd6hLoWVEfG045J/hvEcgf5gWYB6o08w1M0fBJkqmiiDcetQmgY
	AZfHUr5UO0DwUleFHSi7cKBIsNsnJGGXiqzDUWcIXvWUMtpUKzm+ASaOODY7Ha7yJmZkc62yeU44j
	yMndD4K/YaN8ZdmpfRo3VmjGGvqefAFHvvYbXIsG7Pw/fEnQb3d+D4GOjw/WcmqrxPp5+cdScVv18
	EyD7f4HjDGqI5O0oJwWBbJh/RpfgnnViOyoTj5F2ytYcpWXS0cGfcHhsBxZddYVLCKtcKq2roPUdZ
	Q3/g/P6melq6+fmqkRyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qKPqG-007ElE-0d;
	Fri, 14 Jul 2023 20:56:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qKPqC-007Ej5-1G
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Jul 2023 20:56:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1qKPq6-00084j-E7; Fri, 14 Jul 2023 22:56:34 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qKPq5-00EQSm-N5; Fri, 14 Jul 2023 22:56:33 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qKPq4-004u47-Ub; Fri, 14 Jul 2023 22:56:32 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Thierry Reding <thierry.reding@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-pwm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH 07/10] pwm: rockchip: Consistenly name pwm_chip variables "chip"
Date: Fri, 14 Jul 2023 22:56:20 +0200
Message-Id: <20230714205623.2496590-8-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230714205623.2496590-1-u.kleine-koenig@pengutronix.de>
References: <20230714205623.2496590-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1012; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=wmvev9dVApR529FLTx3AbMYD+vyfhjH6G8GR9o32e+s=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBksbZuODYB8bkDh7pH5CyGZdLbAFRPigIYUZ0Yt NmtNyuwwEaJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZLG2bgAKCRCPgPtYfRL+ Ts+3CACba6Y0XIVavyIlQJrGTgInI9Lkk0RgmJ26EovG2sZKrofV0oU1ZNfaleq8YeAkO8KH+hu rt/QU7p97NjN7eJLphQAsND7mpE/ngaWkEPuKFiUzdMmonS4y87OQjBNF0zfPqzX1Daj+NJ9LcR efywbRUkBfMSwY5siuoZ3z1oM15exBmrH0toLUGRrR9zJoCyJVhp8Tsxem/MT4TDWq3twtBhoZP bhdpy6ULgxrt0oRCMK18hf4x8eOjPMJC2T8t8HF1YV+EbyX3fO9aHUBghFXMj84K91OCzAhvlR5 CJhQNnSRQm0qgcIMRddqLV4nktWwU9hXVLmMo5H6P01oanlH
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230714_135640_426120_CCFB4C1B 
X-CRM114-Status: GOOD (  12.13  )
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

TW9zdCB2YXJpYWJsZXMgaG9sZGluZyBhIHBvaW50ZXIgdG8gYSBwd21fY2hpcCBhcmUgY2FsbGVk
ICJjaGlwIiB3aGljaAppcyBhbHNvIHRoZSB1c3VhbCBuYW1lIGluIG1vc3Qgb3RoZXIgcHdtIGRy
aXZlcnMuIFJlbmFtZSB0aGUgc2luZ2xlCnZhcmlhYmxlIHRoYXQgaGF2ZSBhIGRpZmZlcmVudCBu
YW1lIHRvIGJlIGNhbGxlZCAiY2hpcCIsIHRvbywgZm9yCmNvbnNpc3RlbmN5LgoKU2lnbmVkLW9m
Zi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4K
LS0tCiBkcml2ZXJzL3B3bS9wd20tcm9ja2NoaXAuYyB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQs
IDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3B3
bS9wd20tcm9ja2NoaXAuYyBiL2RyaXZlcnMvcHdtL3B3bS1yb2NrY2hpcC5jCmluZGV4IGMxYTFm
MmQ4NjRiNS4uMDNlZTE4ZmI4MmQ1IDEwMDY0NAotLS0gYS9kcml2ZXJzL3B3bS9wd20tcm9ja2No
aXAuYworKysgYi9kcml2ZXJzL3B3bS9wd20tcm9ja2NoaXAuYwpAQCAtNTIsOSArNTIsOSBAQCBz
dHJ1Y3Qgcm9ja2NoaXBfcHdtX2RhdGEgewogCXUzMiBlbmFibGVfY29uZjsKIH07CiAKLXN0YXRp
YyBpbmxpbmUgc3RydWN0IHJvY2tjaGlwX3B3bV9jaGlwICp0b19yb2NrY2hpcF9wd21fY2hpcChz
dHJ1Y3QgcHdtX2NoaXAgKmMpCitzdGF0aWMgaW5saW5lIHN0cnVjdCByb2NrY2hpcF9wd21fY2hp
cCAqdG9fcm9ja2NoaXBfcHdtX2NoaXAoc3RydWN0IHB3bV9jaGlwICpjaGlwKQogewotCXJldHVy
biBjb250YWluZXJfb2YoYywgc3RydWN0IHJvY2tjaGlwX3B3bV9jaGlwLCBjaGlwKTsKKwlyZXR1
cm4gY29udGFpbmVyX29mKGNoaXAsIHN0cnVjdCByb2NrY2hpcF9wd21fY2hpcCwgY2hpcCk7CiB9
CiAKIHN0YXRpYyBpbnQgcm9ja2NoaXBfcHdtX2dldF9zdGF0ZShzdHJ1Y3QgcHdtX2NoaXAgKmNo
aXAsCi0tIAoyLjM5LjIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
