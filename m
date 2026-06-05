Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 059ABCD8C87
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Jun 2026 22:08:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GZ0KJmIzzTkelfIa3TN+ggyLl3GVFpGfdGwC7xnhNJU=; b=pXchwn9q6JjeDy
	ZOC6Bxlhv9mqYriN0zyLyUzw0wjf5EBI3/CIwhyhiHbgg7R6INeJEx5e6ohMgwSni83u23+wJG9ea
	XcI3dIAg102UF8bTgqyZDB00E2HNS3DlWloD99md18Ph7C5wLRlIqOqHi51ctudztv5oAR4zfckfP
	tWGg1raApgDbkrXMxBPZtVPBO0WfN5PAdFtcs9V/RRHjixsVjAfblWcjDzHKBNuw75aIsKyr3N40X
	u7U9iEcYhXqVp52sOkYZfaE+rPrXF/Dao3PsMgW13NKlhYxhBMhVsp+y1QpyIAR1krBJJTvdEaTlt
	PaMZHMMjXRP5YezsB5DQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVciJ-00000001EKJ-3SHK;
	Fri, 05 Jun 2026 22:08:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVciF-00000001EBR-3CPm
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Jun 2026 22:08:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1wVciB-0000LW-DK; Sat, 06 Jun 2026 00:08:19 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Sat, 06 Jun 2026 00:06:58 +0200
Subject: [PATCH 12/17] media: rockchip: rga: move core initialization from
 bind to probe
MIME-Version: 1.0
Message-Id: <20260606-spu-rga3multicore-v1-12-3ec2b15675f7@pengutronix.de>
References: <20260606-spu-rga3multicore-v1-0-3ec2b15675f7@pengutronix.de>
In-Reply-To: <20260606-spu-rga3multicore-v1-0-3ec2b15675f7@pengutronix.de>
To: Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel@pengutronix.de, Detlev Casanova <detlev.casanova@collabora.com>, 
 Michael Tretter <m.tretter@pengutronix.de>, 
 =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
X-Mailer: b4 0.15.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260605_150823_901212_EAE8AF06 
X-CRM114-Status: GOOD (  15.24  )
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

TW92ZSB0aGUgY29yZSBpbml0aWFsaXphdGlvbiBmcm9tIHRoZSBjb3JlIGJpbmRpbmcgZnVuY3Rp
b24gdG8gdGhlIGNvcmUKcHJvYmluZyBmdW5jdGlvbi4gVGhpcyBiZXR0ZXIgbWF0Y2hlcyB0aGUg
YWN0dWFsIHNlcXVlbmNlLCB3aGVyZSB0aGUKY29yZSBwcm9iZSBpbml0aWFsaXplcyBtb3N0IHRo
aW5ncyBhbmQgdGhlIGJpbmQgZnVuY3Rpb24ganVzdCBiaW5kcyB0aGUKY29yZSB0byB0aGUgYWN0
dWFsIHJnYSBzdHJ1Y3QgZnJvbSB0aGUgbWFzdGVyIGRldmljZS4KClNpZ25lZC1vZmYtYnk6IFN2
ZW4gUMO8c2NoZWwgPHMucHVlc2NoZWxAcGVuZ3V0cm9uaXguZGU+Ci0tLQogZHJpdmVycy9tZWRp
YS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMgfCA4MyArKysrKysrKysrKysrKysrLS0tLS0t
LS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNDIgaW5zZXJ0aW9ucygrKSwgNDEgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2Evcmdh
LmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYwppbmRleCA5NTIz
NzdhZTQ2N2Y1Li4wNDEzYjg1MThkZmM4IDEwMDY0NAotLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3JvY2tjaGlwL3JnYS9yZ2EuYworKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tj
aGlwL3JnYS9yZ2EuYwpAQCAtNzQwLDIxICs3NDAsNDkgQEAgc3RhdGljIGludCByZ2FfcGFyc2Vf
ZHQoc3RydWN0IHJnYV9jb3JlICpjb3JlKQogCiBzdGF0aWMgaW50IHJnYV9jb3JlX2JpbmQoc3Ry
dWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgZGV2aWNlICptYXN0ZXIsIHZvaWQgKmRhdGEpCiB7Ci0J
c3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldiA9IHRvX3BsYXRmb3JtX2RldmljZShkZXYpOwog
CXN0cnVjdCByb2NrY2hpcF9yZ2EgKnJnYSA9IGRhdGE7CisJc3RydWN0IHJnYV9jb3JlICpjb3Jl
ID0gZGV2X2dldF9kcnZkYXRhKGRldik7CisJaW50IHJldCA9IDA7CisKKwljb3JlLT5yZ2EgPSBy
Z2E7CisKKwlyZXQgPSBwbV9ydW50aW1lX3Jlc3VtZV9hbmRfZ2V0KGNvcmUtPmRldik7CisJaWYg
KHJldCA8IDApCisJCXJldHVybiByZXQ7CisKKwlyZ2EtPnZlcnNpb24gPSByZ2EtPmh3LT5nZXRf
dmVyc2lvbihjb3JlKTsKKworCXY0bDJfaW5mbygmcmdhLT52NGwyX2RldiwgIkhXIFZlcnNpb246
IDB4JTAyeC4lMDJ4XG4iLAorCQkgIHJnYS0+dmVyc2lvbi5tYWpvciwgcmdhLT52ZXJzaW9uLm1p
bm9yKTsKKworCXBtX3J1bnRpbWVfcHV0KGNvcmUtPmRldik7CisKKwlyZ2EtPmNvcmVzWzBdID0g
Y29yZTsKKworCXJldHVybiAwOworfQorCitzdGF0aWMgY29uc3Qgc3RydWN0IGNvbXBvbmVudF9v
cHMgcmdhX2NvcmVfb3BzID0geworCS5iaW5kID0gcmdhX2NvcmVfYmluZCwKK307CisKK3N0YXRp
YyBpbnQgcmdhX2NvcmVfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKK3sKIAlz
dHJ1Y3QgcmdhX2NvcmUgKmNvcmU7CisJY29uc3Qgc3RydWN0IHJnYV9odyAqaHc7CiAJaW50IHJl
dCA9IDA7CiAJaW50IGlycTsKIAogCWlmICghcGRldi0+ZGV2Lm9mX25vZGUpCiAJCXJldHVybiAt
RU5PREVWOwogCisJaHcgPSBvZl9kZXZpY2VfZ2V0X21hdGNoX2RhdGEoJnBkZXYtPmRldik7CisJ
aWYgKCFodykKKwkJcmV0dXJuIGRldl9lcnJfcHJvYmUoJnBkZXYtPmRldiwgLUVOT0RFViwgImZh
aWxlZCB0byBnZXQgbWF0Y2ggZGF0YVxuIik7CisKIAljb3JlID0gZGV2bV9remFsbG9jKCZwZGV2
LT5kZXYsIHNpemVvZigqY29yZSksIEdGUF9LRVJORUwpOwotCWNvcmUtPnJnYSA9IHJnYTsKIAlj
b3JlLT5kZXYgPSAmcGRldi0+ZGV2OwogCi0JcmdhLT5jb3Jlc1swXSA9IGNvcmU7Ci0KIAlyZXQg
PSByZ2FfcGFyc2VfZHQoY29yZSk7CiAJaWYgKHJldCkKIAkJcmV0dXJuIGRldl9lcnJfcHJvYmUo
JnBkZXYtPmRldiwgcmV0LCAiVW5hYmxlIHRvIHBhcnNlIE9GIGRhdGFcbiIpOwpAQCAtNzc1LDcg
KzgwMyw3IEBAIHN0YXRpYyBpbnQgcmdhX2NvcmVfYmluZChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0
cnVjdCBkZXZpY2UgKm1hc3Rlciwgdm9pZCAqZGF0YSkKIAl9CiAKIAlyZXQgPSBkZXZtX3JlcXVl
c3RfaXJxKGNvcmUtPmRldiwgaXJxLCByZ2FfaXNyLAotCQkJICAgICAgIHJnYV9oYXNfaW50ZXJu
YWxfaW9tbXUocmdhKSA/IDAgOiBJUlFGX1NIQVJFRCwKKwkJCSAgICAgICBody0+aGFzX2ludGVy
bmFsX2lvbW11ID8gMCA6IElSUUZfU0hBUkVELAogCQkJICAgICAgIGRldl9uYW1lKGNvcmUtPmRl
diksIGNvcmUpOwogCWlmIChyZXQgPCAwKSB7CiAJCWRldl9lcnIoY29yZS0+ZGV2LCAiZmFpbGVk
IHRvIHJlcXVlc3QgaXJxXG4iKTsKQEAgLTc5MCw0MiArODE4LDYgQEAgc3RhdGljIGludCByZ2Ff
Y29yZV9iaW5kKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGRldmljZSAqbWFzdGVyLCB2b2lk
ICpkYXRhKQogCiAJcGxhdGZvcm1fc2V0X2RydmRhdGEocGRldiwgY29yZSk7CiAKLQlyZXQgPSBw
bV9ydW50aW1lX3Jlc3VtZV9hbmRfZ2V0KGNvcmUtPmRldik7Ci0JaWYgKHJldCA8IDApCi0JCWdv
dG8gZXJyX3B1dF9jbGs7Ci0KLQlyZ2EtPnZlcnNpb24gPSByZ2EtPmh3LT5nZXRfdmVyc2lvbihj
b3JlKTsKLQotCXY0bDJfaW5mbygmcmdhLT52NGwyX2RldiwgIkhXIFZlcnNpb246IDB4JTAyeC4l
MDJ4XG4iLAotCQkgIHJnYS0+dmVyc2lvbi5tYWpvciwgcmdhLT52ZXJzaW9uLm1pbm9yKTsKLQot
CXBtX3J1bnRpbWVfcHV0KGNvcmUtPmRldik7Ci0KLQlyZXR1cm4gMDsKLQotZXJyX3B1dF9jbGs6
Ci0JcG1fcnVudGltZV9kaXNhYmxlKGNvcmUtPmRldik7Ci0KLQlyZXR1cm4gcmV0OwotfQotCi1z
dGF0aWMgdm9pZCByZ2FfY29yZV91bmJpbmQoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgZGV2
aWNlICptYXN0ZXIsCi0JCQkgICAgdm9pZCAqZGF0YSkKLXsKLQlzdHJ1Y3QgcmdhX2NvcmUgKmNv
cmUgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsKLQotCXBtX3J1bnRpbWVfZGlzYWJsZShjb3JlLT5k
ZXYpOwotfQotCi1zdGF0aWMgY29uc3Qgc3RydWN0IGNvbXBvbmVudF9vcHMgcmdhX2NvcmVfb3Bz
ID0gewotCS5iaW5kID0gcmdhX2NvcmVfYmluZCwKLQkudW5iaW5kID0gcmdhX2NvcmVfdW5iaW5k
LAotfTsKLQotc3RhdGljIGludCByZ2FfY29yZV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNl
ICpwZGV2KQotewotCWludCByZXQgPSAwOwotCiAJcmV0ID0gY29tcG9uZW50X2FkZCgmcGRldi0+
ZGV2LCAmcmdhX2NvcmVfb3BzKTsKIAlpZiAocmV0IDwgMCkgewogCQlkZXZfZXJyKCZwZGV2LT5k
ZXYsICJmYWlsZWQgdG8gcmVnaXN0ZXIgY29tcG9uZW50OiAlZCIsIHJldCk7CkBAIC04MzMsMTEg
KzgyNSwyMCBAQCBzdGF0aWMgaW50IHJnYV9jb3JlX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZp
Y2UgKnBkZXYpCiAJfQogCiAJcmV0dXJuIDA7CisKK2Vycl9wdXRfY2xrOgorCXBtX3J1bnRpbWVf
ZGlzYWJsZShjb3JlLT5kZXYpOworCisJcmV0dXJuIHJldDsKIH0KIAogc3RhdGljIHZvaWQgcmdh
X2NvcmVfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiB7CisJc3RydWN0IHJn
YV9jb3JlICpjb3JlID0gcGxhdGZvcm1fZ2V0X2RydmRhdGEocGRldik7CisKIAljb21wb25lbnRf
ZGVsKCZwZGV2LT5kZXYsICZyZ2FfY29yZV9vcHMpOworCisJcG1fcnVudGltZV9kaXNhYmxlKGNv
cmUtPmRldik7CiB9CiAKIHN0YXRpYyBpbnQgX19tYXliZV91bnVzZWQgcmdhX3J1bnRpbWVfc3Vz
cGVuZChzdHJ1Y3QgZGV2aWNlICpkZXYpCgotLSAKMi41NC4wCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
