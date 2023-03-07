Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41360C678D4
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Mar 2023 12:01:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s0DzPkR10LR5944/OhIRyt4snKLOW9+WFInqOLI9zrk=; b=t1ANLwu2PGCJB3
	fX0726MOlss8voW6TqPIh40bjpw5mtQf51iZMsYUzit6BqyhBJFPHST2fPI8hf7V3HmK2qs0owzBa
	N+mL4VSljddSbpwM+tO4Z0iRAupcX9v1ouHAezWiAw+/sWEzsOfOssH6FKK8bbGPMHVHVoyqAUMoQ
	1c/CCVAGCexrEOBtwz0IiA5TXiXqD5YTJqCm5dk2XsM/r4NRdEfMpZT6KvRVBegipPISUn6xV0d0X
	I1fInNdVmzr/99m9sspVUcwNM6C51X9M4+LcmxjLuMgP32wB8KvnyJswm7xqPYQKVnw5+Ee8n2hI8
	6IwOnxY+ULe/NGzmGF/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZW0F-00HaBX-Sp; Tue, 07 Mar 2023 12:01:11 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVyn-00HZFC-2N
	for linux-rockchip@bombadil.infradead.org; Tue, 07 Mar 2023 11:59:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=g1vqvTlUAhfbA/a07juXwrOrwoUg5CF3Bj8lXsjOs3k=; b=TuzRIaZqG5tCoKR9Am8N/ORDZG
	o7LbLEzjCqxibmbJ/slqtvtRTAKnoWh2xWFPwp2rmfDV/TpqxUYOLp4EdrURqD5dZpkqXVWqpHGgh
	BWdEttHBHLOf3FUzEMMlBGAK3FjM4peXL3e4IdI1fjhxs1vqVeLfcbEkE3PoiKGTFWCMAEhmg6kKz
	tSxVF3dXT65ZQoVbyoxNgfmllMpDLRvGzZivRa0h9ONHk8N+8vcJ9PUjqmY9XbSigW1Ax9BgGVrVK
	MOU9bQmft9L7rd4EHCQ/fADyMtN8pW2VVfA1+q/aHAkA1a1pdlLEsZAAjO8jzImEIfLvB25z+zAwX
	JIVl25Qg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pZVyd-00H2CY-24
	for linux-rockchip@lists.infradead.org;
	Tue, 07 Mar 2023 11:59:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyK-0006XQ-9l; Tue, 07 Mar 2023 12:59:12 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyJ-002TFm-6X; Tue, 07 Mar 2023 12:59:11 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyI-002yjo-6I; Tue, 07 Mar 2023 12:59:10 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH 20/31] phy: rockchip: phy-rockchip-inno-dsidphy: Convert to platform remove callback returning void
Date: Tue,  7 Mar 2023 12:58:49 +0100
Message-Id: <20230307115900.2293120-21-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
References: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1745; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=lehOlgnny9s9YCry74LCGOZ0ZUh8mvbpw5s20/s1D2E=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBkBybRLBReKv+70Ss8u3GHrR3lrh0qQpW+itAX6 fM01umsxBWJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCZAcm0QAKCRDB/BR4rcrs Ca6RCACDNdLE05biV9TVjBa1dw1Ho9bE39CgUqssJyw3KsPPTc/ieVj9irScI+gV4ZCrnG2VA1C PnOsgncF1VGtyqrpDGJ5qody35ck8N2hwL7skAm3UhcGk0RQEVZETeKPXKmbYx0YNgHCsgRoxCY MU7pFmXtlXL545NtYaqX0UymSo1MpUCcG8ImDRxRp1rXL6jpPpYbccpJHLJZ0dkWJ7dOHIqBnts CsZeH7L1nTqVabd3DP12ZuEUcOwo0ibzhzSi2ANKyWvQpzVFKxtLWLlvWEC7ERS9Qf+DGFPs/XE B9vz6+mUnWYCreFafvt6imG75rIrQtQz7F4QI1F9066t4rJK
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_115932_738033_1C784E3F 
X-CRM114-Status: GOOD (  15.61  )
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
dmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8tZHNpZHBoeS5jIHwgNiArKy0tLS0K
IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8tZHNpZHBoeS5jIGIv
ZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8tZHNpZHBoeS5jCmluZGV4IDJj
NTg0N2ZhZmY2My4uNzI2OTI4ZmYxMjczIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hp
cC9waHktcm9ja2NoaXAtaW5uby1kc2lkcGh5LmMKKysrIGIvZHJpdmVycy9waHkvcm9ja2NoaXAv
cGh5LXJvY2tjaGlwLWlubm8tZHNpZHBoeS5jCkBAIC03NTUsMTMgKzc1NSwxMSBAQCBzdGF0aWMg
aW50IGlubm9fZHNpZHBoeV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCXJl
dHVybiAwOwogfQogCi1zdGF0aWMgaW50IGlubm9fZHNpZHBoeV9yZW1vdmUoc3RydWN0IHBsYXRm
b3JtX2RldmljZSAqcGRldikKK3N0YXRpYyB2b2lkIGlubm9fZHNpZHBoeV9yZW1vdmUoc3RydWN0
IHBsYXRmb3JtX2RldmljZSAqcGRldikKIHsKIAlzdHJ1Y3QgaW5ub19kc2lkcGh5ICppbm5vID0g
cGxhdGZvcm1fZ2V0X2RydmRhdGEocGRldik7CiAKIAlwbV9ydW50aW1lX2Rpc2FibGUoaW5uby0+
ZGV2KTsKLQotCXJldHVybiAwOwogfQogCiBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9p
ZCBpbm5vX2RzaWRwaHlfb2ZfbWF0Y2hbXSA9IHsKQEAgLTc4OCw3ICs3ODYsNyBAQCBzdGF0aWMg
c3RydWN0IHBsYXRmb3JtX2RyaXZlciBpbm5vX2RzaWRwaHlfZHJpdmVyID0gewogCQkub2ZfbWF0
Y2hfdGFibGUJPSBvZl9tYXRjaF9wdHIoaW5ub19kc2lkcGh5X29mX21hdGNoKSwKIAl9LAogCS5w
cm9iZSA9IGlubm9fZHNpZHBoeV9wcm9iZSwKLQkucmVtb3ZlID0gaW5ub19kc2lkcGh5X3JlbW92
ZSwKKwkucmVtb3ZlX25ldyA9IGlubm9fZHNpZHBoeV9yZW1vdmUsCiB9OwogbW9kdWxlX3BsYXRm
b3JtX2RyaXZlcihpbm5vX2RzaWRwaHlfZHJpdmVyKTsKIAotLSAKMi4zOS4xCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
