Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 048C0C001B0
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Jul 2023 09:47:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1hiwXqpbID7A2ZQ+UEh7B4+kgVQh2QikqCsvgp3ggNM=; b=k2DyoA8aRlmggb
	y1Q7I8cyzHUqy9FY3l0mU7JcyKJE9NhQskOP5an6DasRet7jeLXYb50R1lK9wY+vP2PHLdJt5BLrp
	qeWT0PWfFC4vgumolLvjUQU4+sbzpUrVTJJW+09Gf+heA5aqah2cszfbSxWkUVz+7JLU4QHbQITNL
	SoAkBesM9MNhzV9YEuLLseaHSOUA45TCBfKBU1GftR41epFsOh99sOHzwDukCCpKWizSrp/yVgNGf
	juXNS7RkG/xSbKhSM0IUTfZxiGS7vmBV9kN8RK6943MAJu18BLacuGNQJAFlbo7iNBnESAM47M9dm
	QLbiSSdH++LAVFIU4PBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJWRX-00H5Nr-1O;
	Wed, 12 Jul 2023 09:47:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJWRO-00H5Dy-2J
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Jul 2023 09:47:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1qJWRH-0001V6-I3; Wed, 12 Jul 2023 11:47:15 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qJWRE-00Dr5f-F2; Wed, 12 Jul 2023 11:47:12 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qJWRD-004GU0-CV; Wed, 12 Jul 2023 11:47:11 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Sandy Huang <hjc@rock-chips.com>,
	=?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH RFC v1 33/52] drm/rockchip: Use struct drm_crtc::drm_dev instead of struct drm_crtc::dev
Date: Wed, 12 Jul 2023 11:46:43 +0200
Message-Id: <20230712094702.1770121-34-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230712094702.1770121-1-u.kleine-koenig@pengutronix.de>
References: <20230712094702.1770121-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4041; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=fzTkzJ2crxvB0YLT3xbxIaqmdKh8jjxij3HqLKEm5PY=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBkrnZ8rkrJTPSo7Q7VWyz6pZBFJotWpQXtY4bLU lY8/Ee2UpmJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZK52fAAKCRCPgPtYfRL+ TubhB/9pOJGXkc/cyv7BNxmrRzypJDTk3FSpHNvbRozIfGcXy53Tu/yD21H+UiyEryA7fGyHZRI PJrBDh4JeY5AxFL7g+JOBchnonP408coRmx0FP82u+aysOUTgfEBk9Ap7m1BmM1z2uwjM6mEsca Y8MZI20ZWiTTo4acJbP1djyOAfZTRN1ZC2kfVS3JIkVtxjtFMmDeKkT2TsFw7SY2Rs7ye9Hg3gJ 187shJh4768S3OFzXeEjMX1LZ7cKEHKf/fpihqrl1RjyjZkCKiYuUcffD6Het+qn8v+N2S/Qo3W 6VvkRBk9XatONJ2eNyRUgcIob7MWVREYVP4LkOJe2tUIEPc6
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230712_024722_766941_8275FA61 
X-CRM114-Status: GOOD (  14.08  )
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

UHJlcGFyZSBkcm9wcGluZyB0aGUgYWxpYXMgImRldiIgZm9yIHN0cnVjdCBkcm1fY3J0Yzo6ZHJt
X2Rldi4gImRybV9kZXYiCmlzIHRoZSBiZXR0ZXIgbmFtZSBhcyAiZGV2IiBpcyB1c3VhbGx5IGEg
c3RydWN0IGRldmljZSBwb2ludGVyLgoKTm8gc2VtYW50aWMgY2hhbmdlcy4KClNpZ25lZC1vZmYt
Ynk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuYyAgfCAgOCArKysr
LS0tLQogZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmMgfCAxNSAr
KysrKysrKy0tLS0tLS0KIDIgZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgMTEgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlw
X2RybV92b3AuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMK
aW5kZXggYTUzMGVjYzRkMjA3Li44MTFkZGZkMDZkM2UgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3Jv
Y2tjaGlwL3JvY2tjaGlwX2RybV92b3AuYwpAQCAtNzU4LDkgKzc1OCw5IEBAIHN0YXRpYyB2b2lk
IHZvcF9jcnRjX2F0b21pY19kaXNhYmxlKHN0cnVjdCBkcm1fY3J0YyAqY3J0YywKIAogb3V0Ogog
CWlmIChjcnRjLT5zdGF0ZS0+ZXZlbnQgJiYgIWNydGMtPnN0YXRlLT5hY3RpdmUpIHsKLQkJc3Bp
bl9sb2NrX2lycSgmY3J0Yy0+ZGV2LT5ldmVudF9sb2NrKTsKKwkJc3Bpbl9sb2NrX2lycSgmY3J0
Yy0+ZHJtX2Rldi0+ZXZlbnRfbG9jayk7CiAJCWRybV9jcnRjX3NlbmRfdmJsYW5rX2V2ZW50KGNy
dGMsIGNydGMtPnN0YXRlLT5ldmVudCk7Ci0JCXNwaW5fdW5sb2NrX2lycSgmY3J0Yy0+ZGV2LT5l
dmVudF9sb2NrKTsKKwkJc3Bpbl91bmxvY2tfaXJxKCZjcnRjLT5kcm1fZGV2LT5ldmVudF9sb2Nr
KTsKIAogCQljcnRjLT5zdGF0ZS0+ZXZlbnQgPSBOVUxMOwogCX0KQEAgLTE1NjcsNyArMTU2Nyw3
IEBAIHN0YXRpYyB2b2lkIHZvcF9jcnRjX2F0b21pY19mbHVzaChzdHJ1Y3QgZHJtX2NydGMgKmNy
dGMsCiAJICovCiAJdm9wX3dhaXRfZm9yX2lycV9oYW5kbGVyKHZvcCk7CiAKLQlzcGluX2xvY2tf
aXJxKCZjcnRjLT5kZXYtPmV2ZW50X2xvY2spOworCXNwaW5fbG9ja19pcnEoJmNydGMtPmRybV9k
ZXYtPmV2ZW50X2xvY2spOwogCWlmIChjcnRjLT5zdGF0ZS0+ZXZlbnQpIHsKIAkJV0FSTl9PTihk
cm1fY3J0Y192YmxhbmtfZ2V0KGNydGMpICE9IDApOwogCQlXQVJOX09OKHZvcC0+ZXZlbnQpOwpA
QCAtMTU3NSw3ICsxNTc1LDcgQEAgc3RhdGljIHZvaWQgdm9wX2NydGNfYXRvbWljX2ZsdXNoKHN0
cnVjdCBkcm1fY3J0YyAqY3J0YywKIAkJdm9wLT5ldmVudCA9IGNydGMtPnN0YXRlLT5ldmVudDsK
IAkJY3J0Yy0+c3RhdGUtPmV2ZW50ID0gTlVMTDsKIAl9Ci0Jc3Bpbl91bmxvY2tfaXJxKCZjcnRj
LT5kZXYtPmV2ZW50X2xvY2spOworCXNwaW5fdW5sb2NrX2lycSgmY3J0Yy0+ZHJtX2Rldi0+ZXZl
bnRfbG9jayk7CiAKIAlmb3JfZWFjaF9vbGRuZXdfcGxhbmVfaW5fc3RhdGUob2xkX3N0YXRlLCBw
bGFuZSwgb2xkX3BsYW5lX3N0YXRlLAogCQkJCSAgICAgICBuZXdfcGxhbmVfc3RhdGUsIGkpIHsK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5j
IGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmMKaW5kZXggY2E3
M2I4Y2NjMjlmLi42Y2JkZWYzMjRkODIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2Nr
Y2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9y
b2NrY2hpcF9kcm1fdm9wMi5jCkBAIC05MjQsOSArOTI0LDkgQEAgc3RhdGljIHZvaWQgdm9wMl9j
cnRjX2F0b21pY19kaXNhYmxlKHN0cnVjdCBkcm1fY3J0YyAqY3J0YywKIAl2b3AyX3VubG9jayh2
b3AyKTsKIAogCWlmIChjcnRjLT5zdGF0ZS0+ZXZlbnQgJiYgIWNydGMtPnN0YXRlLT5hY3RpdmUp
IHsKLQkJc3Bpbl9sb2NrX2lycSgmY3J0Yy0+ZGV2LT5ldmVudF9sb2NrKTsKKwkJc3Bpbl9sb2Nr
X2lycSgmY3J0Yy0+ZHJtX2Rldi0+ZXZlbnRfbG9jayk7CiAJCWRybV9jcnRjX3NlbmRfdmJsYW5r
X2V2ZW50KGNydGMsIGNydGMtPnN0YXRlLT5ldmVudCk7Ci0JCXNwaW5fdW5sb2NrX2lycSgmY3J0
Yy0+ZGV2LT5ldmVudF9sb2NrKTsKKwkJc3Bpbl91bmxvY2tfaXJxKCZjcnRjLT5kcm1fZGV2LT5l
dmVudF9sb2NrKTsKIAogCQljcnRjLT5zdGF0ZS0+ZXZlbnQgPSBOVUxMOwogCX0KQEAgLTE1NjQs
NyArMTU2NCw4IEBAIHN0YXRpYyB2b2lkIHZvcDJfY3J0Y19hdG9taWNfZW5hYmxlKHN0cnVjdCBk
cm1fY3J0YyAqY3J0YywKIAlpZiAobW9kZS0+ZmxhZ3MgJiBEUk1fTU9ERV9GTEFHX1BWU1lOQykK
IAkJcG9sZmxhZ3MgfD0gQklUKFZTWU5DX1BPU0lUSVZFKTsKIAotCWRybV9mb3JfZWFjaF9lbmNv
ZGVyX21hc2soZW5jb2RlciwgY3J0Yy0+ZGV2LCBjcnRjX3N0YXRlLT5lbmNvZGVyX21hc2spIHsK
Kwlkcm1fZm9yX2VhY2hfZW5jb2Rlcl9tYXNrKGVuY29kZXIsIGNydGMtPmRybV9kZXYsCisJCQkJ
ICBjcnRjX3N0YXRlLT5lbmNvZGVyX21hc2spIHsKIAkJc3RydWN0IHJvY2tjaGlwX2VuY29kZXIg
KnJrZW5jb2RlciA9IHRvX3JvY2tjaGlwX2VuY29kZXIoZW5jb2Rlcik7CiAKIAkJcmszNTY4X3Nl
dF9pbnRmX211eCh2cCwgcmtlbmNvZGVyLT5jcnRjX2VuZHBvaW50X2lkLCBwb2xmbGFncyk7CkBA
IC0yMDYwLDcgKzIwNjEsNyBAQCBzdGF0aWMgdm9pZCB2b3AyX2NydGNfYXRvbWljX2ZsdXNoKHN0
cnVjdCBkcm1fY3J0YyAqY3J0YywKIAogCXZvcDJfY2ZnX2RvbmUodnApOwogCi0Jc3Bpbl9sb2Nr
X2lycSgmY3J0Yy0+ZGV2LT5ldmVudF9sb2NrKTsKKwlzcGluX2xvY2tfaXJxKCZjcnRjLT5kcm1f
ZGV2LT5ldmVudF9sb2NrKTsKIAogCWlmIChjcnRjLT5zdGF0ZS0+ZXZlbnQpIHsKIAkJV0FSTl9P
Tihkcm1fY3J0Y192YmxhbmtfZ2V0KGNydGMpKTsKQEAgLTIwNjgsNyArMjA2OSw3IEBAIHN0YXRp
YyB2b2lkIHZvcDJfY3J0Y19hdG9taWNfZmx1c2goc3RydWN0IGRybV9jcnRjICpjcnRjLAogCQlj
cnRjLT5zdGF0ZS0+ZXZlbnQgPSBOVUxMOwogCX0KIAotCXNwaW5fdW5sb2NrX2lycSgmY3J0Yy0+
ZGV2LT5ldmVudF9sb2NrKTsKKwlzcGluX3VubG9ja19pcnEoJmNydGMtPmRybV9kZXYtPmV2ZW50
X2xvY2spOwogfQogCiBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9jcnRjX2hlbHBlcl9mdW5jcyB2
b3AyX2NydGNfaGVscGVyX2Z1bmNzID0gewpAQCAtMjE2Miw3ICsyMTYzLDcgQEAgc3RhdGljIGly
cXJldHVybl90IHZvcDJfaXNyKGludCBpcnEsIHZvaWQgKmRhdGEpCiAKIAkJaWYgKGlycXMgJiBW
UF9JTlRfRlNfRklFTEQpIHsKIAkJCWRybV9jcnRjX2hhbmRsZV92YmxhbmsoY3J0Yyk7Ci0JCQlz
cGluX2xvY2soJmNydGMtPmRldi0+ZXZlbnRfbG9jayk7CisJCQlzcGluX2xvY2soJmNydGMtPmRy
bV9kZXYtPmV2ZW50X2xvY2spOwogCQkJaWYgKHZwLT5ldmVudCkgewogCQkJCXUzMiB2YWwgPSB2
b3AyX3JlYWRsKHZvcDIsIFJLMzU2OF9SRUdfQ0ZHX0RPTkUpOwogCkBAIC0yMTcyLDcgKzIxNzMs
NyBAQCBzdGF0aWMgaXJxcmV0dXJuX3Qgdm9wMl9pc3IoaW50IGlycSwgdm9pZCAqZGF0YSkKIAkJ
CQkJZHJtX2NydGNfdmJsYW5rX3B1dChjcnRjKTsKIAkJCQl9CiAJCQl9Ci0JCQlzcGluX3VubG9j
aygmY3J0Yy0+ZGV2LT5ldmVudF9sb2NrKTsKKwkJCXNwaW5fdW5sb2NrKCZjcnRjLT5kcm1fZGV2
LT5ldmVudF9sb2NrKTsKIAogCQkJcmV0ID0gSVJRX0hBTkRMRUQ7CiAJCX0KLS0gCjIuMzkuMgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
