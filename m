Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C874C77B73
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 May 2023 20:31:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GI1i4jRZ0K3fCfyrSC5uo4KPvyuUODLtS/bpLlfucQo=; b=bLAXC+Dlhn6MAV
	bioMYP8/NlQ2kEkpp4/08mx8SkEykuHAp4cubEOJLA8C3N4S4QXGWEYglFpfgFOwQXRLFVm9/nzi+
	7EKZDSveraKGmvXuyToFmddrXOCscVcKvyom3h7+uWkJk0hW1Ij63CHwweQBzrdfHpSwpQ65JWzoK
	KUpq5ol45RQoy3UyKdGxKtts2qEMdv83aycgpvEg5wm+nRx/gl9z4UPakzrUMB0DoltkH84RDo8Qn
	Rna0fdz/QzDX7aC/Kp5yOvkwz0yrLOKUoJRjtHBm6om1DggcuUhRS/AcVXGZSIraCUJduJhwUFaV+
	zQcplf6MTwxoK8FbVbUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzkHX-00E6Vq-0N;
	Thu, 18 May 2023 20:31:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzkHU-00E6Ux-34
	for linux-rockchip@lists.infradead.org;
	Thu, 18 May 2023 20:31:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pzkHK-0003fW-Oa; Thu, 18 May 2023 22:31:14 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pzkHI-0019vd-QC; Thu, 18 May 2023 22:31:12 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pzkHI-005l13-1H; Thu, 18 May 2023 22:31:12 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: netdev@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH net-next] net: arc: Make arc_emac_remove() return void
Date: Thu, 18 May 2023 22:30:49 +0200
Message-Id: <20230518203049.275805-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3231; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=i7bRACr8XsrDpvJ8bE6eLVkYIMKYRoc+4qMA9lSuxN8=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBkZor4CJXvMs9TXqgHgZE5EouRnhESGxz7YJqe7 mM7rpW01B6JATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZGaK+AAKCRCPgPtYfRL+ TtybCACT15vZHTZHoZw2wmk/mJ7SJqLap1dZWKuflXUSpEAXhzLlUAj+m2xWbYAKKxq13ygVysa dpR1nlXMsKugf39Lo3k6IrrXJPm/PGuYWFn9vMnqWt+gUNs4rtSYRFCnvVB0x/vh8H9slT/sYjL 94ZPLPyP5nPkz5OLBoetV1htMFvWnK6w8/Uj0ni2BIQ8FkNg3PQaD20tTJYU8PKkJeJIzZ1JT42 wYJGMGOu6FwEdCReeWK/MlopGqpS3HsULDKvKA2Q2Y27RAeytEWrDlP0raL26EdIOUrdS5WttXK uJXUuqMBobcgwg3lFvqPNB+g0u6Sbr/rv5Pczu3e98FOTPoB
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230518_133124_985568_E1E339CF 
X-CRM114-Status: GOOD (  14.41  )
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

VGhlIGZ1bmN0aW9uIHJldHVybnMgemVybyB1bmNvbmRpdGlvbmFsbHkuIENoYW5nZSBpdCB0byBy
ZXR1cm4gdm9pZCBpbnN0ZWFkCndoaWNoIHNpbXBsaWZpZXMgaXRzIGNhbGxlcnMgYXMgZXJyb3Ig
aGFuZGluZyBiZWNvbWVzIHVubmVjZXNzYXJ5LgoKU2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1L
w7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0tCiBkcml2ZXJzL25ldC9l
dGhlcm5ldC9hcmMvZW1hYy5oICAgICAgICAgIHwgMiArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQv
YXJjL2VtYWNfYXJjLmMgICAgICB8IDYgKysrLS0tCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9hcmMv
ZW1hY19tYWluLmMgICAgIHwgNCArLS0tCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9hcmMvZW1hY19y
b2NrY2hpcC5jIHwgNSArKy0tLQogNCBmaWxlcyBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDEw
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2FyYy9lbWFj
LmggYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9hcmMvZW1hYy5oCmluZGV4IGQ4MjBhZTAzYTk2Ni4u
MGUyNDRmMGUyNWZkIDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9hcmMvZW1hYy5o
CisrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2FyYy9lbWFjLmgKQEAgLTIyMCw2ICsyMjAsNiBA
QCBzdGF0aWMgaW5saW5lIHZvaWQgYXJjX3JlZ19jbHIoc3RydWN0IGFyY19lbWFjX3ByaXYgKnBy
aXYsIGludCByZWcsIGludCBtYXNrKQogaW50IGFyY19tZGlvX3Byb2JlKHN0cnVjdCBhcmNfZW1h
Y19wcml2ICpwcml2KTsKIGludCBhcmNfbWRpb19yZW1vdmUoc3RydWN0IGFyY19lbWFjX3ByaXYg
KnByaXYpOwogaW50IGFyY19lbWFjX3Byb2JlKHN0cnVjdCBuZXRfZGV2aWNlICpuZGV2LCBpbnQg
aW50ZXJmYWNlKTsKLWludCBhcmNfZW1hY19yZW1vdmUoc3RydWN0IG5ldF9kZXZpY2UgKm5kZXYp
Owordm9pZCBhcmNfZW1hY19yZW1vdmUoc3RydWN0IG5ldF9kZXZpY2UgKm5kZXYpOwogCiAjZW5k
aWYgLyogQVJDX0VNQUNfSCAqLwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvYXJj
L2VtYWNfYXJjLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9hcmMvZW1hY19hcmMuYwppbmRleCA4
MDA2MjBiOGYxMGQuLmNlMzE0N2U4ODZhMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvYXJjL2VtYWNfYXJjLmMKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvYXJjL2VtYWNfYXJj
LmMKQEAgLTYxLDExICs2MSwxMSBAQCBzdGF0aWMgaW50IGVtYWNfYXJjX3Byb2JlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiBzdGF0aWMgaW50IGVtYWNfYXJjX3JlbW92ZShzdHJ1Y3Qg
cGxhdGZvcm1fZGV2aWNlICpwZGV2KQogewogCXN0cnVjdCBuZXRfZGV2aWNlICpuZGV2ID0gcGxh
dGZvcm1fZ2V0X2RydmRhdGEocGRldik7Ci0JaW50IGVycjsKIAotCWVyciA9IGFyY19lbWFjX3Jl
bW92ZShuZGV2KTsKKwlhcmNfZW1hY19yZW1vdmUobmRldik7CiAJZnJlZV9uZXRkZXYobmRldik7
Ci0JcmV0dXJuIGVycjsKKworCXJldHVybiAwOwogfQogCiBzdGF0aWMgY29uc3Qgc3RydWN0IG9m
X2RldmljZV9pZCBlbWFjX2FyY19kdF9pZHNbXSA9IHsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2FyYy9lbWFjX21haW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2FyYy9lbWFj
X21haW4uYwppbmRleCBiYTA2NDZiM2IxMjIuLjJiNDI3ZDhhMTgzMSAxMDA2NDQKLS0tIGEvZHJp
dmVycy9uZXQvZXRoZXJuZXQvYXJjL2VtYWNfbWFpbi5jCisrKyBiL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2FyYy9lbWFjX21haW4uYwpAQCAtMTAwOCw3ICsxMDA4LDcgQEAgaW50IGFyY19lbWFjX3By
b2JlKHN0cnVjdCBuZXRfZGV2aWNlICpuZGV2LCBpbnQgaW50ZXJmYWNlKQogfQogRVhQT1JUX1NZ
TUJPTF9HUEwoYXJjX2VtYWNfcHJvYmUpOwogCi1pbnQgYXJjX2VtYWNfcmVtb3ZlKHN0cnVjdCBu
ZXRfZGV2aWNlICpuZGV2KQordm9pZCBhcmNfZW1hY19yZW1vdmUoc3RydWN0IG5ldF9kZXZpY2Ug
Km5kZXYpCiB7CiAJc3RydWN0IGFyY19lbWFjX3ByaXYgKnByaXYgPSBuZXRkZXZfcHJpdihuZGV2
KTsKIApAQCAtMTAxOSw4ICsxMDE5LDYgQEAgaW50IGFyY19lbWFjX3JlbW92ZShzdHJ1Y3QgbmV0
X2RldmljZSAqbmRldikKIAogCWlmICghSVNfRVJSKHByaXYtPmNsaykpCiAJCWNsa19kaXNhYmxl
X3VucHJlcGFyZShwcml2LT5jbGspOwotCi0JcmV0dXJuIDA7CiB9CiBFWFBPUlRfU1lNQk9MX0dQ
TChhcmNfZW1hY19yZW1vdmUpOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9h
cmMvZW1hY19yb2NrY2hpcC5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvYXJjL2VtYWNfcm9ja2No
aXAuYwppbmRleCAxYzljYTNiY2I4NzEuLjUwOTEwMTExMjI3OSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvYXJjL2VtYWNfcm9ja2NoaXAuYworKysgYi9kcml2ZXJzL25ldC9ldGhl
cm5ldC9hcmMvZW1hY19yb2NrY2hpcC5jCkBAIC0yNDgsOSArMjQ4LDggQEAgc3RhdGljIGludCBl
bWFjX3JvY2tjaGlwX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogewogCXN0
cnVjdCBuZXRfZGV2aWNlICpuZGV2ID0gcGxhdGZvcm1fZ2V0X2RydmRhdGEocGRldik7CiAJc3Ry
dWN0IHJvY2tjaGlwX3ByaXZfZGF0YSAqcHJpdiA9IG5ldGRldl9wcml2KG5kZXYpOwotCWludCBl
cnI7CiAKLQllcnIgPSBhcmNfZW1hY19yZW1vdmUobmRldik7CisJYXJjX2VtYWNfcmVtb3ZlKG5k
ZXYpOwogCiAJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHByaXYtPnJlZmNsayk7CiAKQEAgLTI2MSw3
ICsyNjAsNyBAQCBzdGF0aWMgaW50IGVtYWNfcm9ja2NoaXBfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9y
bV9kZXZpY2UgKnBkZXYpCiAJCWNsa19kaXNhYmxlX3VucHJlcGFyZShwcml2LT5tYWNjbGspOwog
CiAJZnJlZV9uZXRkZXYobmRldik7Ci0JcmV0dXJuIGVycjsKKwlyZXR1cm4gMDsKIH0KIAogc3Rh
dGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgZW1hY19yb2NrY2hpcF9kcml2ZXIgPSB7CgpiYXNl
LWNvbW1pdDogYWM5YTc4NjgxYjkyMTg3NzUxODc2M2JhMGU4OTIwMjI1NDM0OWQxYgotLSAKMi4z
OS4yCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
