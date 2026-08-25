Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAB42C61DC2
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Aug 2026 14:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wpg7uVzYeVJunDbNGKlmDuOPs8Jn9LKAFTl1pvAX5Q0=; b=rYTJJ/VeDr5ecc
	a8TzGTNTD25Z45695lzwYjWln19Le933B3gY35vYbxFHeLpN12XLqd3rN1ziH1La6ElxhUlFIYopL
	xYFolkWXKPuWSbbtWEE+HRV/epMVoabwJqs/K91sWFq5phA/yBCq2Fs702ycJQ5bP4cqwqC6e6Oem
	eJ1S99DFX+1SXIuh5vNHHqYLPAX/urnSsgP1V/KXgli14nR8gMbi54ksoOxFcfZLAwuImF0ZDnPep
	WlQHoFBMdqZopRexWTxnSgDEbx4tclG5uNXMmfNZ3AHhuHeuLRx2SrubWB4ktMqTpVIqN6X9M9BPw
	maNRQi82bhn5CIEuGJMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wys0L-00000000wXL-1sUo;
	Tue, 25 Aug 2026 14:19:57 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wys0I-00000000wWA-3guE;
	Tue, 25 Aug 2026 14:19:54 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with UTF8SMTP id 8B0F143DA7;
	Tue, 25 Aug 2026 14:19:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with UTF8SMTPSA id DE74A1F000E9;
	Tue, 25 Aug 2026 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787667594;
	bh=Xk0dNc7B36bwDKmRn5sL8ALUnv0/054lZYNtGFvdOpY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=T8FH5/qAdqSaoDKKlg1O4VOOa89peEvvy+zljYLuWMBj6KoTlmU7+ZD2X0nEWDNzz
	 NLAYF3dbezVhevy41KhV1TV9LMyWt5a6NlsiuksVIFsXTmpgAXFkQ7Y5NAmCe973+0
	 R3B428/U82AHynqe2e4xG7+XzQAhGpoX9OVXDeprunA4RwLnznqKaQv4X/2CwT+myJ
	 NmFc4mqZQ6O0TVUQpLiluENK4ThWlgIWJSF0hno4b+4ASYJO/jfBnKD1S4gsWjMvmH
	 4Wu7P3OyeTv9YZSlThnX2A5P7ugzD0kmCIpsjTLLXbUSKrtDgj/KH1E++Af0rbgP6k
	 a5TFXdVGtwBGA==
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@kernel.org>
To: Jassi Brar <jassisinghbrar@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v1 1/3] mailbox: rockchip: Add a prefix for register defines
Date: Tue, 25 Aug 2026 16:19:24 +0200
Message-ID: <2f057b0a7fdec721457962e0f1ca37b07e2b592c.1787667315.git.ukleinek@kernel.org>
X-Mailer: git-send-email 2.55.0.11.g153666a7d9bb
In-Reply-To: <cover.1787667315.git.ukleinek@kernel.org>
References: <cover.1787667315.git.ukleinek@kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3104; i=ukleinek@kernel.org; h=from:subject:message-id; bh=RMzhspIF+h3rHuDcRebgUTq0TyN/+X/y3aEHxu6zPE8=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBqjaR3yVdKAwmmTzuja8pG1pzDOzm2ZrxQm7tzY 5E7/VLaEkeJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCao2kdwAKCRCPgPtYfRL+ ThKvB/4nFnH4yltKXhUbewS1SoYJsI4JqtpGaeKg0bmkvJss++HQhjjEviTV6tX+PN80bmPpBbU PtcOd06OsihwXSpXxwCsRJ+5ZvV+oOnztCon1PTKQ4B/82v9F0ucMKCcH/+7EJdVEcbDWyCt5dq 8SCtCnSQdweUyI4vhsjj1tv70j2SkkXTUzC10xYgRV0/3sH3tMDuhDtgZG80yXpoTgKnoojfQqk pqVGO6ag+YVn/726w8KCB2XY0uckGxGduteZROn/Dz3d+BrJpO4HeN4tCorUIj7kIHlOz+J16Xv n9I0cPytuNTGtWyL9HTEFFyt6zBDrSdtIiyvVlezdQfjpjRy
X-Developer-Key: i=ukleinek@kernel.org; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
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

RnJvbTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BiYXlsaWJyZS5jb20+CgpU
aGlzIHdheSB0aGUgZGVmaW5lcyBkb24ndCBtYWtlIHRoZSBpbXByZXNzaW9uIHRvIGJlIG1vcmUg
Z2VuZXJpYyB0aGFuCnRoZXkgYWN0dWFsbHkgYXJlLgoKU2lnbmVkLW9mZi1ieTogVXdlIEtsZWlu
ZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BiYXlsaWJyZS5jb20+Ci0tLQogZHJpdmVycy9tYWls
Ym94L3JvY2tjaGlwLW1haWxib3guYyB8IDI5ICsrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0t
CiAxIGZpbGUgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9tYWlsYm94L3JvY2tjaGlwLW1haWxib3guYyBiL2RyaXZlcnMvbWFp
bGJveC9yb2NrY2hpcC1tYWlsYm94LmMKaW5kZXggYmMyZjlkZDc5OGRkLi43ZWJlNWYwZDAyMzMg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWFpbGJveC9yb2NrY2hpcC1tYWlsYm94LmMKKysrIGIvZHJp
dmVycy9tYWlsYm94L3JvY2tjaGlwLW1haWxib3guYwpAQCAtMTIsMTUgKzEyLDE1IEBACiAjaW5j
bHVkZSA8bGludXgvbW9kdWxlLmg+CiAjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+
CiAKLSNkZWZpbmUgTUFJTEJPWF9BMkJfSU5URU4JCTB4MDAKLSNkZWZpbmUgTUFJTEJPWF9BMkJf
U1RBVFVTCQkweDA0Ci0jZGVmaW5lIE1BSUxCT1hfQTJCX0NNRCh4KQkJKDB4MDggKyAoeCkgKiA4
KQotI2RlZmluZSBNQUlMQk9YX0EyQl9EQVQoeCkJCSgweDBjICsgKHgpICogOCkKKyNkZWZpbmUg
Uk9DS0NISVBfTUFJTEJPWF9BMkJfSU5URU4JCTB4MDAKKyNkZWZpbmUgUk9DS0NISVBfTUFJTEJP
WF9BMkJfU1RBVFVTCQkweDA0CisjZGVmaW5lIFJPQ0tDSElQX01BSUxCT1hfQTJCX0NNRCh4KQkJ
KDB4MDggKyAoeCkgKiA4KQorI2RlZmluZSBST0NLQ0hJUF9NQUlMQk9YX0EyQl9EQVQoeCkJCSgw
eDBjICsgKHgpICogOCkKIAotI2RlZmluZSBNQUlMQk9YX0IyQV9JTlRFTgkJMHgyOAotI2RlZmlu
ZSBNQUlMQk9YX0IyQV9TVEFUVVMJCTB4MkMKLSNkZWZpbmUgTUFJTEJPWF9CMkFfQ01EKHgpCQko
MHgzMCArICh4KSAqIDgpCi0jZGVmaW5lIE1BSUxCT1hfQjJBX0RBVCh4KQkJKDB4MzQgKyAoeCkg
KiA4KQorI2RlZmluZSBST0NLQ0hJUF9NQUlMQk9YX0IyQV9JTlRFTgkJMHgyOAorI2RlZmluZSBS
T0NLQ0hJUF9NQUlMQk9YX0IyQV9TVEFUVVMJCTB4MkMKKyNkZWZpbmUgUk9DS0NISVBfTUFJTEJP
WF9CMkFfQ01EKHgpCQkoMHgzMCArICh4KSAqIDgpCisjZGVmaW5lIFJPQ0tDSElQX01BSUxCT1hf
QjJBX0RBVCh4KQkJKDB4MzQgKyAoeCkgKiA4KQogCiBzdHJ1Y3Qgcm9ja2NoaXBfbWJveF9tc2cg
ewogCXUzMiBjbWQ7CkBAIC02OCw5ICs2OCwxMCBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX21ib3hf
c2VuZF9kYXRhKHN0cnVjdCBtYm94X2NoYW4gKmNoYW4sIHZvaWQgKmRhdGEpCiAKIAltYi0+Y2hh
bnNbY2hhbnMtPmlkeF0ubXNnID0gbXNnOwogCi0Jd3JpdGVsX3JlbGF4ZWQobXNnLT5jbWQsIG1i
LT5tYm94X2Jhc2UgKyBNQUlMQk9YX0EyQl9DTUQoY2hhbnMtPmlkeCkpOworCXdyaXRlbF9yZWxh
eGVkKG1zZy0+Y21kLCBtYi0+bWJveF9iYXNlICsKKwkJICAgICAgIFJPQ0tDSElQX01BSUxCT1hf
QTJCX0NNRChjaGFucy0+aWR4KSk7CiAJd3JpdGVsX3JlbGF4ZWQobXNnLT5yeF9zaXplLCBtYi0+
bWJveF9iYXNlICsKLQkJICAgICAgIE1BSUxCT1hfQTJCX0RBVChjaGFucy0+aWR4KSk7CisJCSAg
ICAgICBST0NLQ0hJUF9NQUlMQk9YX0EyQl9EQVQoY2hhbnMtPmlkeCkpOwogCiAJcmV0dXJuIDA7
CiB9CkBAIC04MSw3ICs4Miw3IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfbWJveF9zdGFydHVwKHN0
cnVjdCBtYm94X2NoYW4gKmNoYW4pCiAKIAkvKiBFbmFibGUgYWxsIEIyQSBpbnRlcnJ1cHRzICov
CiAJd3JpdGVsX3JlbGF4ZWQoKDEgPDwgbWItPm1ib3gubnVtX2NoYW5zKSAtIDEsCi0JCSAgICAg
ICBtYi0+bWJveF9iYXNlICsgTUFJTEJPWF9CMkFfSU5URU4pOworCQkgICAgICAgbWItPm1ib3hf
YmFzZSArIFJPQ0tDSElQX01BSUxCT1hfQjJBX0lOVEVOKTsKIAogCXJldHVybiAwOwogfQpAQCAt
OTIsNyArOTMsNyBAQCBzdGF0aWMgdm9pZCByb2NrY2hpcF9tYm94X3NodXRkb3duKHN0cnVjdCBt
Ym94X2NoYW4gKmNoYW4pCiAJc3RydWN0IHJvY2tjaGlwX21ib3hfY2hhbiAqY2hhbnMgPSBtYi0+
Y2hhbnM7CiAKIAkvKiBEaXNhYmxlIGFsbCBCMkEgaW50ZXJydXB0cyAqLwotCXdyaXRlbF9yZWxh
eGVkKDAsIG1iLT5tYm94X2Jhc2UgKyBNQUlMQk9YX0IyQV9JTlRFTik7CisJd3JpdGVsX3JlbGF4
ZWQoMCwgbWItPm1ib3hfYmFzZSArIFJPQ0tDSElQX01BSUxCT1hfQjJBX0lOVEVOKTsKIAogCW1i
LT5jaGFuc1tjaGFucy0+aWR4XS5tc2cgPSBOVUxMOwogfQpAQCAtMTA3LDEzICsxMDgsMTMgQEAg
c3RhdGljIGlycXJldHVybl90IHJvY2tjaGlwX21ib3hfaXJxKGludCBpcnEsIHZvaWQgKmRldl9p
ZCkKIHsKIAlpbnQgaWR4OwogCXN0cnVjdCByb2NrY2hpcF9tYm94ICptYiA9IChzdHJ1Y3Qgcm9j
a2NoaXBfbWJveCAqKWRldl9pZDsKLQl1MzIgc3RhdHVzID0gcmVhZGxfcmVsYXhlZChtYi0+bWJv
eF9iYXNlICsgTUFJTEJPWF9CMkFfU1RBVFVTKTsKKwl1MzIgc3RhdHVzID0gcmVhZGxfcmVsYXhl
ZChtYi0+bWJveF9iYXNlICsgUk9DS0NISVBfTUFJTEJPWF9CMkFfU1RBVFVTKTsKIAogCWZvciAo
aWR4ID0gMDsgaWR4IDwgbWItPm1ib3gubnVtX2NoYW5zOyBpZHgrKykgewogCQlpZiAoKHN0YXR1
cyAmICgxIDw8IGlkeCkpICYmIChpcnEgPT0gbWItPmNoYW5zW2lkeF0uaXJxKSkgewogCQkJLyog
Q2xlYXIgbWJveCBpbnRlcnJ1cHQgKi8KIAkJCXdyaXRlbF9yZWxheGVkKDEgPDwgaWR4LAotCQkJ
CSAgICAgICBtYi0+bWJveF9iYXNlICsgTUFJTEJPWF9CMkFfU1RBVFVTKTsKKwkJCQkgICAgICAg
bWItPm1ib3hfYmFzZSArIFJPQ0tDSElQX01BSUxCT1hfQjJBX1NUQVRVUyk7CiAJCQlyZXR1cm4g
SVJRX1dBS0VfVEhSRUFEOwogCQl9CiAJfQotLSAKMi41NS4wLjExLmcxNTM2NjZhN2Q5YmIKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
