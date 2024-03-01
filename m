Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E633FC5475B
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Mar 2024 16:19:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xifgvUewqaXd+qRU/TaSb29fl5l+rVC76Ct2cxrSbO0=; b=tFIlaoWphHgZJu
	eyUWSTPWFqgd5fdlsQ5teC9RXRXC0CLR9YyKqYVBBKFNCVnjmROmFMkSBMxCB/kRKOhC1vh5diGkg
	CaqHCythBSoumAMUGqlascBKknJ3PFaa1yMVsk6Z8Z6Lpn28/J9TqiO8WpwwRSeCGQ/OCM8lSfQss
	qjhtBtjbe1KE3uoHYHaWkFuuam5OfOR+1ppguuT/HEIJkKF8k05leRNnpqxFnQ1EvLyqFdZ9IKSBs
	XwqV4SQ6h5sxFDyPmCFZ58sqaWs5ulQoStjij8s2tJp6htrjzNf1tq+VKVTnbMBn6zs59vPC5//mC
	D1jeFBeEdTkQVyXs2jwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rg5bn-000000013rR-1Mf7;
	Fri, 01 Mar 2024 16:19:39 +0000
Received: from master.debian.org ([2001:41b8:202:deb:216:36ff:fe40:4001])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rg5bj-000000013oV-0rYS;
	Fri, 01 Mar 2024 16:19:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.master; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	In-Reply-To:References; bh=IpAWeoNur8XPIpmTyfMcESNz/wRzFONQ9VyIf7SnmZw=; b=gm
	ow9JDwFHI4VWSStlrK5k5F00kB8UFc1afFSwxQGhv26C797k7Zamku37cYgDTzR+LS6+xQM4jUqfW
	zlhTwkLX69P+MsisjUewPR30VOhbNDkule9/DVElZ5NKOkUgtVZjqBYs4e8AQ5VhX+OwKE1aZ8XTX
	fDZYnfX2RVRhlr963mBCiwbdl9sVZt+bnvTvRlwuGGCOIDZk+JEEIRTe2V1GiBXqo7fKp2yivfYhw
	6P3tsotZVC2K4WDOxAJLEWsS55ZmmjhwTls++a33IhDshZszgkHfzOgQQ3uie/YLzYaTtkvXgjNro
	es21vMSTXyG47MRZBYjmhnlqjoO2RJKQ==;
Received: from ukleinek by master.debian.org with local (Exim 4.94.2)
	(envelope-from <ukleinek@master.debian.org>)
	id 1rg5bP-00AnHs-MQ; Fri, 01 Mar 2024 16:19:15 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@debian.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: [PATCH] arm64: dts: rockchip: qnap-ts433: Fix name for UART pin header
Date: Fri,  1 Mar 2024 17:19:11 +0100
Message-ID: <20240301161911.558982-2-ukleinek@debian.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=911; i=ukleinek@debian.org; h=from:subject; bh=BxfXF7N/PpOIsKgeQQq9QzSICzrigsYszswaL8R9Lr8=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBl4f//Qh1JlbqOm+AmJNZ07ajDTSmWSAvFY+53r +Mb5KQse7GJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZeH//wAKCRCPgPtYfRL+ TptxB/9+7OFndy9pHJP9co/+LGWLjI73BcfyCn3fYlN0eXLT2qhe3DaUCq8SvLxXMDm2Lv9kmTL tffTYsVL1EVEntBGvaww73CA4aO5c7o0jj2OIjRnVNvKOH1CV4po2oiHE3/ofpzXoso4r4bohyu Z31B93BjcFz7R7a2EF0r061voQ5NfrHhMIJ69KC2FvegtDzmBZZTH0P7neBsCP6j9Uo6+If+sEU vJ3GMDorV0dxt/MoGTHjLj6Q0AN0u4NjJU6t6Hj1iLcvvhJJ8PobT92vlkP82VnBe13Nvxd0eiJ R4Tm5ZnFGBSPQeavU6CT/fBtEuDKU9H2dHvL/h7IPQfeOYa8
X-Developer-Key: i=ukleinek@debian.org; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240301_081935_285541_D61A0AF7 
X-CRM114-Status: GOOD (  11.57  )
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

SSB0eXBvZWQgdGhlIHBpbiBoZWFkZXIgbmFtZSB3aGVuIGNvcHlpbmcgaXQgZnJvbSBteSBub3Rl
cyBvbiBwYXBlci4KCkZpeGVzOiA5ZGExYzAzMjdkNTggKCJhcm02NDogZHRzOiByb2NrY2hpcDog
QWRkIGJhc2ljIHN1cHBvcnQgZm9yIFFOQVAgVFMtNDMzIikKU2lnbmVkLW9mZi1ieTogVXdlIEts
ZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0tCiBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1xbmFwLXRzNDMzLmR0cyB8IDIgKy0KIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXFuYXAtdHM0MzMuZHRzIGIvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtcW5hcC10czQzMy5kdHMKaW5kZXggMjkwODQ4
NmJjOTI0Li42YTk5ODE2NjAwM2MgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTY4LXFuYXAtdHM0MzMuZHRzCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTY4LXFuYXAtdHM0MzMuZHRzCkBAIC03Niw3ICs3Niw3IEBAICZzZGhjaSB7CiB9
OwogCiAvKgotICogUGlucyBhdmFpbGFibGUgb24gQ04yIGNvbm5lY3RvciBhdCBUVEwgdm9sdGFn
ZSBsZXZlbCAoM1YzKS4KKyAqIFBpbnMgYXZhaWxhYmxlIG9uIENOMyBjb25uZWN0b3IgYXQgVFRM
IHZvbHRhZ2UgbGV2ZWwgKDNWMykuCiAgKiAsXyAgXy4KICAqIHwxMjM0fCAgMT1UWCAyPVZDQwog
ICogYC0tLS0nICAzPVJYIDQ9R05ECgpiYXNlLWNvbW1pdDogMTg3MGNkYzBlOGRlZTMyZTNjMjIx
NzA0YTI5Nzc4OThiYTRjMTBlOAotLSAKMi40My4wCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
