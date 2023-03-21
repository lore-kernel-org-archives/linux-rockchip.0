Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A0F4C761AF
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Mar 2023 19:33:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kdvOihNtFKYuM/c33qDxcuTU6+CYq/VcRAUkgBHZYeo=; b=CMw72SdmB2CKKw
	rV3PjEAgOfiuoUbHKkbqC++Q8XVp8JvzgArMjbPnmLJ2BNpuGzagwgce+cWV82hYVKTfLk/vjPTbf
	rOWA830LPyVlDqEmT6y6t5FE6Phw1Jc5FWkBhzYAFA84lKpXv4X9uhkUW/LmO+Vakx2xq93OqHfgh
	zV22aCJHF6vnCGHCgfzGNI4oOzUCWawv3GODfd2MGk/psAv5hfmehveO3WHqP//OsD4lK2k6jXJxM
	QETrAL5etfSPqMS8YzZvuEL5oe4bOTk/9clEagDyEtv6K/eClz5xl9fqt7Uu/HHVWp7NQLUhAVwOz
	tnpZ0jCruidK47VM5prw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pehjR-00DV4S-0S;
	Tue, 21 Mar 2023 19:33:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pehij-00DUhC-13
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Mar 2023 19:32:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pehiZ-0008H0-Li; Tue, 21 Mar 2023 20:32:23 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pehiX-005l6g-9d; Tue, 21 Mar 2023 20:32:21 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pehiW-006qyT-H9; Tue, 21 Mar 2023 20:32:20 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH 13/15] PCI: rockchip-host: Convert to platform remove callback returning void
Date: Tue, 21 Mar 2023 20:32:06 +0100
Message-Id: <20230321193208.366561-14-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230321193208.366561-1-u.kleine-koenig@pengutronix.de>
References: <20230321193208.366561-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1911; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=ofg5jFyTz9TdBxGAvLkoTuHqV4U6+M5kLCVHC2oN85w=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBkGgYaEVenR+PbZmv1vqyaQaldvtjlCJf2NK7Xb RzAKqhDjLiJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZBoGGgAKCRCPgPtYfRL+ To+OB/9fjegMCZsidNokCfKIS2VY0NiiY64ungPOLTfd4v+zmDT8anQS2ZlnmQuywnWUBiyM2ci MwGV2W8/hjaRK4VxmreBZBm2lGRhAKS11SqwkmKojJTTxSHJirKrBDtu6tg/IlcBS6dOgboFG81 qkLTxU0KZAdC23KCxQSluDJQfkVq/h3nuwRgSIejPDe5te/p9f2iH4spXS/fWWeU1YK7Up+liLp UGGiDWgK2Np2MZ0x8DGnNi/Z69xN4zP/D65UFRAvCHPbKnjpdGP1kiULJHbzXyRHLzfbrN+50+V 9k5vXDKt/Ol4Sh+R8eolaLfWP9XZvi1GyHI5dkmBWJvU04BR
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230321_123233_463552_1339009B 
X-CRM114-Status: GOOD (  15.79  )
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
dmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLWhvc3QuYyB8IDYgKystLS0tCiAxIGZp
bGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1ob3N0LmMgYi9kcml2ZXJzL3Bj
aS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAtaG9zdC5jCmluZGV4IGM5NmMwZjQ1NDU3MC4uMjQz
OGJjOWIzYTFhIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2No
aXAtaG9zdC5jCisrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1ob3N0
LmMKQEAgLTEwMDksNyArMTAwOSw3IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfcGNpZV9wcm9iZShz
dHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCXJldHVybiBlcnI7CiB9CiAKLXN0YXRpYyBp
bnQgcm9ja2NoaXBfcGNpZV9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKK3N0
YXRpYyB2b2lkIHJvY2tjaGlwX3BjaWVfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBk
ZXYpCiB7CiAJc3RydWN0IGRldmljZSAqZGV2ID0gJnBkZXYtPmRldjsKIAlzdHJ1Y3Qgcm9ja2No
aXBfcGNpZSAqcm9ja2NoaXAgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsKQEAgLTEwMjksOCArMTAy
OSw2IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfcGNpZV9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2Rl
dmljZSAqcGRldikKIAkJcmVndWxhdG9yX2Rpc2FibGUocm9ja2NoaXAtPnZwY2llM3YzKTsKIAly
ZWd1bGF0b3JfZGlzYWJsZShyb2NrY2hpcC0+dnBjaWUxdjgpOwogCXJlZ3VsYXRvcl9kaXNhYmxl
KHJvY2tjaGlwLT52cGNpZTB2OSk7Ci0KLQlyZXR1cm4gMDsKIH0KIAogc3RhdGljIGNvbnN0IHN0
cnVjdCBkZXZfcG1fb3BzIHJvY2tjaGlwX3BjaWVfcG1fb3BzID0gewpAQCAtMTA1MSw3ICsxMDQ5
LDcgQEAgc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgcm9ja2NoaXBfcGNpZV9kcml2ZXIg
PSB7CiAJCS5wbSA9ICZyb2NrY2hpcF9wY2llX3BtX29wcywKIAl9LAogCS5wcm9iZSA9IHJvY2tj
aGlwX3BjaWVfcHJvYmUsCi0JLnJlbW92ZSA9IHJvY2tjaGlwX3BjaWVfcmVtb3ZlLAorCS5yZW1v
dmVfbmV3ID0gcm9ja2NoaXBfcGNpZV9yZW1vdmUsCiB9OwogbW9kdWxlX3BsYXRmb3JtX2RyaXZl
cihyb2NrY2hpcF9wY2llX2RyaXZlcik7CiAKLS0gCjIuMzkuMgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
