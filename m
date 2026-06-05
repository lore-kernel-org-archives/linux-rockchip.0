Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34D8CCD6E7E
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Jun 2026 22:08:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kIpfVpJwKVT52iQWcI4trlki3myTQM7m7LZF8udIlKQ=; b=nX9p2rXtgH2rFD
	/lAQd7NTN8P2les1avNZv/coiyC+Ul4Ab4pHK/R0nznrA6uxn/dNDFx8Yqm3G9LbkdXY/NSI21Mc+
	s642u77P4aDhIwHYtSUeugbuUZsLrmjwCLB2bAFq5NORPULPLh4OOUUphDQXqKqfeTElC62NnOf6x
	iZpqgMt97lAUUyG22H5mPVUbuTKOfZODOM79HxRFgV5+nCdHyIykk2O86fDN0OXus1D+k8AeA+jMk
	t/fgHc0Cq57q7fzMIjJtAiH3apG8L50Wqh0aqvX5JwZz75rYfFByDfhozMGHVdsV8kf4L2TAe0MBq
	My/v6D0nqsgR0/5rv8kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVcia-00000001F2b-3zq7;
	Fri, 05 Jun 2026 22:08:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVciU-00000001EhR-2H3X
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Jun 2026 22:08:39 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1wVci6-0000LW-2z; Sat, 06 Jun 2026 00:08:14 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Sat, 06 Jun 2026 00:06:53 +0200
Subject: [PATCH 07/17] media: rockchip: rga: adjust get_version to return
 the version
MIME-Version: 1.0
Message-Id: <20260606-spu-rga3multicore-v1-7-3ec2b15675f7@pengutronix.de>
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
X-CRM114-CacheID: sfid-20260605_150838_592944_8D553221 
X-CRM114-Status: GOOD (  12.99  )
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

QWRqdXN0IGdldF92ZXJzaW9uIHRvIHJldHVybiB0aGUgdmVyc2lvbiBpbnN0ZWFkIG9mIGRpcmVj
dGx5IHVwZGF0aW5nIGl0CmluIHRoZSByb2NrY2hpcF9yZ2Egc3RydWN0dXJlLiBUaGlzIGlzIGRv
bmUgaW4gcHJlcGFyYXRpb24gZm9yIGEKbXVsdGktY29yZSBzdXBwb3J0IHRvIGNoZWNrIHRoYXQg
Y29yZXMgd2l0aCB0aGUgc2FtZSBjb21wYXRpYmxlIHNoYXJlIHRoZQpzYW1lIHZlcnNpb24uCgpT
aWduZWQtb2ZmLWJ5OiBTdmVuIFDDvHNjaGVsIDxzLnB1ZXNjaGVsQHBlbmd1dHJvbml4LmRlPgot
LS0KIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS1ody5jICB8IDEwICsr
KysrKystLS0KIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jICAgICB8
ICAyICstCiBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuaCAgICAgfCAg
MiArLQogZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhMy1ody5jIHwgIDgg
KysrKystLS0KIDQgZmlsZXMgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2Et
aHcuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS1ody5jCmluZGV4
IDRkN2IwYTAzODIwYTEuLjE5MDEwNGYzYjI5NTQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEv
cGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS1ody5jCisrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZv
cm0vcm9ja2NoaXAvcmdhL3JnYS1ody5jCkBAIC00NzQsMTAgKzQ3NCwxNCBAQCBzdGF0aWMgYm9v
bCByZ2FfaGFuZGxlX2lycShzdHJ1Y3Qgcm9ja2NoaXBfcmdhICpyZ2EpCiAJcmV0dXJuIGludHIg
JiBSR0FfSU5UX0NPTU1BTkRfRklOSVNIRUQ7CiB9CiAKLXN0YXRpYyB2b2lkIHJnYV9nZXRfdmVy
c2lvbihzdHJ1Y3Qgcm9ja2NoaXBfcmdhICpyZ2EpCitzdGF0aWMgc3RydWN0IHJvY2tjaGlwX3Jn
YV92ZXJzaW9uIHJnYV9nZXRfdmVyc2lvbihzdHJ1Y3Qgcm9ja2NoaXBfcmdhICpyZ2EpCiB7Ci0J
cmdhLT52ZXJzaW9uLm1ham9yID0gKHJnYV9yZWFkKHJnYSwgUkdBX1ZFUlNJT05fSU5GTykgPj4g
MjQpICYgMHhGRjsKLQlyZ2EtPnZlcnNpb24ubWlub3IgPSAocmdhX3JlYWQocmdhLCBSR0FfVkVS
U0lPTl9JTkZPKSA+PiAyMCkgJiAweDBGOworCXUzMiB2ZXJzaW9uID0gcmdhX3JlYWQocmdhLCBS
R0FfVkVSU0lPTl9JTkZPKTsKKworCXJldHVybiAoc3RydWN0IHJvY2tjaGlwX3JnYV92ZXJzaW9u
KSB7CisJCS5tYWpvciA9ICh2ZXJzaW9uID4+IDI0KSAmIDB4RkYsCisJCS5taW5vciA9ICh2ZXJz
aW9uID4+IDIwKSAmIDB4MEYsCisJfTsKIH0KIAogc3RhdGljIHN0cnVjdCByZ2FfZm10IGZvcm1h
dHNbXSA9IHsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdh
L3JnYS5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMKaW5kZXgg
MGVmZjU1OGQ3ZjEzMy4uYjhlZGQzNTk2YzkxOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9tZWRpYS9w
bGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMKKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9y
b2NrY2hpcC9yZ2EvcmdhLmMKQEAgLTg2NCw3ICs4NjQsNyBAQCBzdGF0aWMgaW50IHJnYV9wcm9i
ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCWlmIChyZXQgPCAwKQogCQlnb3RvIHJl
bF9tMm07CiAKLQlyZ2EtPmh3LT5nZXRfdmVyc2lvbihyZ2EpOworCXJnYS0+dmVyc2lvbiA9IHJn
YS0+aHctPmdldF92ZXJzaW9uKHJnYSk7CiAKIAl2NGwyX2luZm8oJnJnYS0+djRsMl9kZXYsICJI
VyBWZXJzaW9uOiAweCUwMnguJTAyeFxuIiwKIAkJICByZ2EtPnZlcnNpb24ubWFqb3IsIHJnYS0+
dmVyc2lvbi5taW5vcik7CmRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tj
aGlwL3JnYS9yZ2EuaCBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5o
CmluZGV4IDBlNjIzMzdmOGRkMzguLjBlODU0Y2RmNzM5ZjQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5oCisrKyBiL2RyaXZlcnMvbWVkaWEvcGxh
dGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5oCkBAIC0xNTgsNyArMTU4LDcgQEAgc3RydWN0IHJnYV9o
dyB7CiAJdm9pZCAoKnN0YXJ0KShzdHJ1Y3Qgcm9ja2NoaXBfcmdhICpyZ2EsCiAJCSAgICAgIHN0
cnVjdCByZ2FfdmJfYnVmZmVyICpzcmMsIHN0cnVjdCByZ2FfdmJfYnVmZmVyICpkc3QpOwogCWJv
b2wgKCpoYW5kbGVfaXJxKShzdHJ1Y3Qgcm9ja2NoaXBfcmdhICpyZ2EpOwotCXZvaWQgKCpnZXRf
dmVyc2lvbikoc3RydWN0IHJvY2tjaGlwX3JnYSAqcmdhKTsKKwlzdHJ1Y3Qgcm9ja2NoaXBfcmdh
X3ZlcnNpb24gKCpnZXRfdmVyc2lvbikoc3RydWN0IHJvY2tjaGlwX3JnYSAqcmdhKTsKIAl2b2lk
ICooKmFkanVzdF9hbmRfbWFwX2Zvcm1hdCkoc3RydWN0IHJnYV9jdHggKmN0eCwKIAkJCQkgICAg
ICAgc3RydWN0IHY0bDJfcGl4X2Zvcm1hdF9tcGxhbmUgKmZvcm1hdCwKIAkJCQkgICAgICAgYm9v
bCBpc19vdXRwdXQpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hp
cC9yZ2EvcmdhMy1ody5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2Evcmdh
My1ody5jCmluZGV4IDcyNzQxZTFmYWNjZmYuLjM0Njk1MjNhNWVjYWQgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYTMtaHcuYworKysgYi9kcml2ZXJz
L21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EzLWh3LmMKQEAgLTI5OSwxMiArMjk5LDE0
IEBAIHN0YXRpYyBib29sIHJnYTNfaGFuZGxlX2lycShzdHJ1Y3Qgcm9ja2NoaXBfcmdhICpyZ2Ep
CiAJcmV0dXJuIEZJRUxEX0dFVChSR0EzX0lOVF9GUk1fRE9ORSwgaW50cik7CiB9CiAKLXN0YXRp
YyB2b2lkIHJnYTNfZ2V0X3ZlcnNpb24oc3RydWN0IHJvY2tjaGlwX3JnYSAqcmdhKQorc3RhdGlj
IHN0cnVjdCByb2NrY2hpcF9yZ2FfdmVyc2lvbiByZ2EzX2dldF92ZXJzaW9uKHN0cnVjdCByb2Nr
Y2hpcF9yZ2EgKnJnYSkKIHsKIAl1MzIgdmVyc2lvbiA9IHJnYV9yZWFkKHJnYSwgUkdBM19WRVJT
SU9OX05VTSk7CiAKLQlyZ2EtPnZlcnNpb24ubWFqb3IgPSBGSUVMRF9HRVQoUkdBM19WRVJTSU9O
X05VTV9NQUpPUiwgdmVyc2lvbik7Ci0JcmdhLT52ZXJzaW9uLm1pbm9yID0gRklFTERfR0VUKFJH
QTNfVkVSU0lPTl9OVU1fTUlOT1IsIHZlcnNpb24pOworCXJldHVybiAoc3RydWN0IHJvY2tjaGlw
X3JnYV92ZXJzaW9uKSB7CisJCS5tYWpvciA9IEZJRUxEX0dFVChSR0EzX1ZFUlNJT05fTlVNX01B
Sk9SLCB2ZXJzaW9uKSwKKwkJLm1pbm9yID0gRklFTERfR0VUKFJHQTNfVkVSU0lPTl9OVU1fTUlO
T1IsIHZlcnNpb24pLAorCX07CiB9CiAKIHN0YXRpYyBzdHJ1Y3QgcmdhM19mbXQgcmdhM19mb3Jt
YXRzW10gPSB7CgotLSAKMi41NC4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
