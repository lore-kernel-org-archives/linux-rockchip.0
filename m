Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28007C46CA1
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Sep 2023 20:43:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EI5T7a/LQA4yAK8rejCkNORD9JWRfrsuDofUhMidx50=; b=rWVn2s29K+cMbd
	0xTx73Ds79Aol40ruGrvfadB/2PoqePC4gInG75RMeKNxgmeQlKSkTOU2RPa4M4Ziq2Bam9Bv+yff
	Xz9csCP5nFXiYRDQ7a5BDg+QlKwXSP6zVZIpAyi0aSLqsbckEFvP0wYyp+TpFEYtlq9X/kKZjY25f
	HneJK2KJyQnXjVll9JtXErY3Rb7TJfWKWYvoxzwyqv3Ch8u9yHm24afy2hDgyymHf6EupxU29I2g6
	pIgUI/reXkmNOVOEbrl1jrsd42tab5v2HCiBd+cCw1GhF9ww5rxIkLYv3eUCUF/G0AFQVt76Nk98f
	b2U3+Cj/517KRWgxBgEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiL5J-00GIlK-27;
	Mon, 18 Sep 2023 20:43:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiL57-00GIgj-2e
	for linux-rockchip@lists.infradead.org;
	Mon, 18 Sep 2023 20:42:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1qiL4n-0006ke-6G; Mon, 18 Sep 2023 22:42:37 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qiL4m-007Ii2-N0; Mon, 18 Sep 2023 22:42:36 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qiL4m-002mnm-De; Mon, 18 Sep 2023 22:42:36 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Simon Horman <horms@kernel.org>,
	netdev@vger.kernel.org,
	kernel@pengutronix.de,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH net-next 09/54] net: ethernet: arc: Convert to platform remove callback returning void
Date: Mon, 18 Sep 2023 22:41:41 +0200
Message-Id: <20230918204227.1316886-10-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230918204227.1316886-1-u.kleine-koenig@pengutronix.de>
References: <20230918204227.1316886-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2830; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=rYsQlnU4Zpdy+1FCQVNsYjaerpegxcHny3CbdTGErvU=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBlCLXuXjW2oGENYdmI6sEhfokUmb+RNb6H0vrWP 5gcBjUooP6JATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZQi17gAKCRCPgPtYfRL+ TjECB/0dP7YUtvYCnAJ7Tq9beTJ4KxL+9Om6TuE9RAKtvlRBUEq+Zs58P5xE4064WMq+77fpLLX uro2dBIaIC/dQC6YUQEGm2uN6wbMEb6rE6onpSKh0kTcmmjG0fsLa2zzvR2YP72O2Bi6ZlHQLX6 fiP37LojrVBYW8W3PtpW9qY1hqat6DH2M5dQEmbHSgnYhxYJa469AAknFTQ+IIqjBLNEcevOR8H tI0bY9PiXjUOWoKy8e+ulrGsLzK45n6adzE7ibxKHj2rwhqVEVx0+5V3ELw/4PqnHJKnokXtFAt 5NLFylv5phTtR38Tl82bpynW+BW+dcq8pozkqqhqr13U1xki
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230918_134257_858886_99927B78 
X-CRM114-Status: GOOD (  16.60  )
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
b3dldmVyIHRoZSB2YWx1ZSByZXR1cm5lZCBpcyBpZ25vcmVkIChhcGFydApmcm9tIGVtaXR0aW5n
IGEgd2FybmluZykgYW5kIHRoaXMgdHlwaWNhbGx5IHJlc3VsdHMgaW4gcmVzb3VyY2UgbGVha3Mu
ClRvIGltcHJvdmUgaGVyZSB0aGVyZSBpcyBhIHF1ZXN0IHRvIG1ha2UgdGhlIHJlbW92ZSBjYWxs
YmFjayByZXR1cm4Kdm9pZC4gSW4gdGhlIGZpcnN0IHN0ZXAgb2YgdGhpcyBxdWVzdCBhbGwgZHJp
dmVycyBhcmUgY29udmVydGVkIHRvCi5yZW1vdmVfbmV3KCkgd2hpY2ggYWxyZWFkeSByZXR1cm5z
IHZvaWQuIEV2ZW50dWFsbHkgYWZ0ZXIgYWxsIGRyaXZlcnMKYXJlIGNvbnZlcnRlZCwgLnJlbW92
ZV9uZXcoKSBpcyByZW5hbWVkIHRvIC5yZW1vdmUoKS4KClRyaXZpYWxseSBjb252ZXJ0IHRoZXNl
IGRyaXZlcnMgZnJvbSBhbHdheXMgcmV0dXJuaW5nIHplcm8gaW4gdGhlIHJlbW92ZQpjYWxsYmFj
ayB0byB0aGUgdm9pZCByZXR1cm5pbmcgdmFyaWFudC4KClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVp
bmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQogZHJpdmVycy9u
ZXQvZXRoZXJuZXQvYXJjL2VtYWNfYXJjLmMgICAgICB8IDYgKystLS0tCiBkcml2ZXJzL25ldC9l
dGhlcm5ldC9hcmMvZW1hY19yb2NrY2hpcC5jIHwgNSArKy0tLQogMiBmaWxlcyBjaGFuZ2VkLCA0
IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvYXJjL2VtYWNfYXJjLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9hcmMvZW1hY19h
cmMuYwppbmRleCBjZTMxNDdlODg2YTEuLmEzYWZkZGIyM2VlOCAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvYXJjL2VtYWNfYXJjLmMKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
YXJjL2VtYWNfYXJjLmMKQEAgLTU4LDE0ICs1OCwxMiBAQCBzdGF0aWMgaW50IGVtYWNfYXJjX3By
b2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJcmV0dXJuIGVycjsKIH0KIAotc3Rh
dGljIGludCBlbWFjX2FyY19yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKK3N0
YXRpYyB2b2lkIGVtYWNfYXJjX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQog
ewogCXN0cnVjdCBuZXRfZGV2aWNlICpuZGV2ID0gcGxhdGZvcm1fZ2V0X2RydmRhdGEocGRldik7
CiAKIAlhcmNfZW1hY19yZW1vdmUobmRldik7CiAJZnJlZV9uZXRkZXYobmRldik7Ci0KLQlyZXR1
cm4gMDsKIH0KIAogc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgZW1hY19hcmNfZHRf
aWRzW10gPSB7CkBAIC03Niw3ICs3NCw3IEBAIE1PRFVMRV9ERVZJQ0VfVEFCTEUob2YsIGVtYWNf
YXJjX2R0X2lkcyk7CiAKIHN0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIGVtYWNfYXJjX2Ry
aXZlciA9IHsKIAkucHJvYmUgPSBlbWFjX2FyY19wcm9iZSwKLQkucmVtb3ZlID0gZW1hY19hcmNf
cmVtb3ZlLAorCS5yZW1vdmVfbmV3ID0gZW1hY19hcmNfcmVtb3ZlLAogCS5kcml2ZXIgPSB7CiAJ
CS5uYW1lID0gRFJWX05BTUUsCiAJCS5vZl9tYXRjaF90YWJsZSAgPSBlbWFjX2FyY19kdF9pZHMs
CmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9hcmMvZW1hY19yb2NrY2hpcC5jIGIv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvYXJjL2VtYWNfcm9ja2NoaXAuYwppbmRleCA1MDkxMDExMTIy
NzkuLjQ5M2Q2MzU2YzhjYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvYXJjL2Vt
YWNfcm9ja2NoaXAuYworKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9hcmMvZW1hY19yb2NrY2hp
cC5jCkBAIC0yNDQsNyArMjQ0LDcgQEAgc3RhdGljIGludCBlbWFjX3JvY2tjaGlwX3Byb2JlKHN0
cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJcmV0dXJuIGVycjsKIH0KIAotc3RhdGljIGlu
dCBlbWFjX3JvY2tjaGlwX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQorc3Rh
dGljIHZvaWQgZW1hY19yb2NrY2hpcF9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRl
dikKIHsKIAlzdHJ1Y3QgbmV0X2RldmljZSAqbmRldiA9IHBsYXRmb3JtX2dldF9kcnZkYXRhKHBk
ZXYpOwogCXN0cnVjdCByb2NrY2hpcF9wcml2X2RhdGEgKnByaXYgPSBuZXRkZXZfcHJpdihuZGV2
KTsKQEAgLTI2MCwxMiArMjYwLDExIEBAIHN0YXRpYyBpbnQgZW1hY19yb2NrY2hpcF9yZW1vdmUo
c3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAkJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHBy
aXYtPm1hY2Nsayk7CiAKIAlmcmVlX25ldGRldihuZGV2KTsKLQlyZXR1cm4gMDsKIH0KIAogc3Rh
dGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgZW1hY19yb2NrY2hpcF9kcml2ZXIgPSB7CiAJLnBy
b2JlID0gZW1hY19yb2NrY2hpcF9wcm9iZSwKLQkucmVtb3ZlID0gZW1hY19yb2NrY2hpcF9yZW1v
dmUsCisJLnJlbW92ZV9uZXcgPSBlbWFjX3JvY2tjaGlwX3JlbW92ZSwKIAkuZHJpdmVyID0gewog
CQkubmFtZSA9IERSVl9OQU1FLAogCQkub2ZfbWF0Y2hfdGFibGUgID0gZW1hY19yb2NrY2hpcF9k
dF9pZHMsCi0tIAoyLjQwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
