Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E72BC6FD1B
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Mar 2023 12:00:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=64mquFfGCNHC9R1KRkr0jjkx24kHd1pIp2GXEEnxj4U=; b=VZlBZC3uIfvDM/
	zKmUaYEWVynDop9MvQeenbzDmd/ivUo5ywJXzrNmfLr9npZ0ow3y5bq/QY8UW1IJ7smkvC+8IWSYH
	uDZchdBaCIrRCIWRSgDvdu5EOjzMFfG0dXMzj8UEMUkzfnlclyEFi7TeDRnvq3pCHTEM9MRnrJDai
	6ouKV5+wP2yFyKqtEbYcsOJsjU5yN6AXfSxM+QPUq82PGAEN93HPEQSvIm29kWfcRMJhOoaoiBqvg
	HMGWwc1c90zL8dsy4aO4M6FuRlW208/Y6qSvwYa0vnykEzOPK9bWKtXwCwPfdVWyaFzW1uXbBlj8V
	eqj/QsjaM3Smd07S4ctg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVz8-00HZRv-ES; Tue, 07 Mar 2023 12:00:02 +0000
Received: from metis.ext.pengutronix.de ([85.220.165.71])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVyZ-00HZ5H-6v
	for linux-rockchip@lists.infradead.org; Tue, 07 Mar 2023 11:59:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyK-0006Xr-A1; Tue, 07 Mar 2023 12:59:12 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyJ-002TFt-Bn; Tue, 07 Mar 2023 12:59:11 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyI-002yjl-0C; Tue, 07 Mar 2023 12:59:10 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH 19/31] phy: rockchip: phy-rockchip-inno-csidphy: Convert to platform remove callback returning void
Date: Tue,  7 Mar 2023 12:58:48 +0100
Message-Id: <20230307115900.2293120-20-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
References: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1823; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=rKB6vQSyEOcEB6Yn09C9wyfvQ7PzuQTyGnWZzQK5XLU=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBkBybNVprDdkO8rBIC9F9dBj8xmmgLxeNLSySC1 guLTVnTEQmJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCZAcmzQAKCRDB/BR4rcrs CUhmCACPB/d3JbmiA0MSXVBX8o7WtNePiXmVM4dNzpOw2CpLnzx9O7YgLKntZ88orU6AZcfJcKH U163C93zc3dgj3AYyNDH9OT3WQUffx/9qdIUBlfVa7A7qtl4LQfPmzhjvObuGyFwqd2zWQUaxkt JbScAyliEQNn7+oqIuqw0//piqCv0taM9giuMh7oSQHOSju2Cc01TKjb/9wbqNRX4+XCTnA68wP rqfwh1i9GF5mrzcVN0zw8Sfv3UayGPJFibOZYrxE1ZLj+L3KDgNnCeuZwLvxWutgIGuZcnUUrRA k3z7iA9Q76ztl3IncymOw2g1lGHYxEKUGaWYhZCwGdXW2do0
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_035927_330976_A80CFE38 
X-CRM114-Status: GOOD (  15.54  )
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

VGhlIC5yZW1vdmUoKSBjYWxsYmFjayBmb3IgYSBwbGF0Zm9ybSBkcml2ZXIgcmV0dXJucyBhbiBp
bnQgd2hpY2ggbWFrZXMKbWFueSBkcml2ZXIgYXV0aG9ycyB3cm9uZ2x5IGFzc3VtZSBpdCdzIHBv
c3NpYmxlIHRvIGRvIGVycm9yIGhhbmRsaW5nIGJ5CnJldHVybmluZyBhbiBlcnJvciBjb2RlLiBI
b3dldmVyIHRoZSB2YWx1ZSByZXR1cm5lZCBpcyAobW9zdGx5KSBpZ25vcmVkCmFuZCB0aGlzIHR5
cGljYWxseSByZXN1bHRzIGluIHJlc291cmNlIGxlYWtzLiBUbyBpbXByb3ZlIGhlcmUgdGhlcmUg
aXMgYQpxdWVzdCB0byBtYWtlIHRoZSByZW1vdmUgY2FsbGJhY2sgcmV0dXJuIHZvaWQuIEluIHRo
ZSBmaXJzdCBzdGVwIG9mIHRoaXMKcXVlc3QgYWxsIGRyaXZlcnMgYXJlIGNvbnZlcnRlZCB0byAu
cmVtb3ZlX25ldygpIHdoaWNoIGFscmVhZHkgcmV0dXJucwp2b2lkLgoKVHJpdmlhbGx5IGNvbnZl
cnQgdGhpcyBkcml2ZXIgZnJvbSBhbHdheXMgcmV0dXJuaW5nIHplcm8gaW4gdGhlIHJlbW92ZQpj
YWxsYmFjayB0byB0aGUgdm9pZCByZXR1cm5pbmcgdmFyaWFudC4KClNpZ25lZC1vZmYtYnk6IFV3
ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQogZHJp
dmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8tY3NpZHBoeS5jIHwgNiArKy0tLS0K
IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8tY3NpZHBoeS5jIGIv
ZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8tY3NpZHBoeS5jCmluZGV4IDc1
Zjk0OGJkZWE2YS4uOThjOTJkNmM0ODJmIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hp
cC9waHktcm9ja2NoaXAtaW5uby1jc2lkcGh5LmMKKysrIGIvZHJpdmVycy9waHkvcm9ja2NoaXAv
cGh5LXJvY2tjaGlwLWlubm8tY3NpZHBoeS5jCkBAIC00NTksMTMgKzQ1OSwxMSBAQCBzdGF0aWMg
aW50IHJvY2tjaGlwX2lubm9fY3NpZHBoeV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpw
ZGV2KQogCXJldHVybiAwOwogfQogCi1zdGF0aWMgaW50IHJvY2tjaGlwX2lubm9fY3NpZHBoeV9y
ZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKK3N0YXRpYyB2b2lkIHJvY2tjaGlw
X2lubm9fY3NpZHBoeV9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIHsKIAlz
dHJ1Y3Qgcm9ja2NoaXBfaW5ub19jc2lkcGh5ICpwcml2ID0gcGxhdGZvcm1fZ2V0X2RydmRhdGEo
cGRldik7CiAKIAlwbV9ydW50aW1lX2Rpc2FibGUocHJpdi0+ZGV2KTsKLQotCXJldHVybiAwOwog
fQogCiBzdGF0aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZlciByb2NrY2hpcF9pbm5vX2NzaWRwaHlf
ZHJpdmVyID0gewpAQCAtNDc0LDcgKzQ3Miw3IEBAIHN0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJp
dmVyIHJvY2tjaGlwX2lubm9fY3NpZHBoeV9kcml2ZXIgPSB7CiAJCS5vZl9tYXRjaF90YWJsZSA9
IHJvY2tjaGlwX2lubm9fY3NpZHBoeV9tYXRjaF9pZCwKIAl9LAogCS5wcm9iZSA9IHJvY2tjaGlw
X2lubm9fY3NpZHBoeV9wcm9iZSwKLQkucmVtb3ZlID0gcm9ja2NoaXBfaW5ub19jc2lkcGh5X3Jl
bW92ZSwKKwkucmVtb3ZlX25ldyA9IHJvY2tjaGlwX2lubm9fY3NpZHBoeV9yZW1vdmUsCiB9Owog
CiBtb2R1bGVfcGxhdGZvcm1fZHJpdmVyKHJvY2tjaGlwX2lubm9fY3NpZHBoeV9kcml2ZXIpOwot
LSAKMi4zOS4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
