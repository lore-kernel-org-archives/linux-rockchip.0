Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A49B7FF8873
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Apr 2026 09:01:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=okip+vTBEfhFNnqcAVjIeo85py627k7iuGMVY8Ke6/g=; b=Yk62t+7nVBtdEQ
	n6NYEQ5by4+f6c/AkXCk0XnE6wleYOm+CpajSkLGyhHtmf2voy8hhTFuQD0DdIkSTKqCGlCxde5f+
	/0amcGRiditmcCSyOSJ78wial4uYQcbLk8A9/0iOGooblh3TUQE7PvVClv9+iYLM/SZYksAKh1mSu
	5GKiDRYRSfLbF+cBGLzonoR2BbU44IP5cojKX3huLCk+VjnZLZBavW6kGEfdf15ZUQsts/YEqgqZU
	B+lvQEpydIfM9uR4kCCYHNZd7SkBsa/cTeNL2goA6Gfoi+CrXWDuzQ2OVgcfKV+W4rjuiipfxqjsR
	b+dglwBm5ZedIosM6wkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHeJl-00000000xbH-2zny;
	Tue, 28 Apr 2026 09:01:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHeJc-00000000xSb-0YBI
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Apr 2026 09:01:20 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1wHeJB-0004Lz-Fw; Tue, 28 Apr 2026 11:00:45 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Tue, 28 Apr 2026 11:00:42 +0200
Subject: [PATCH v5 07/29] media: rockchip: rga: use clk_bulk api
MIME-Version: 1.0
Message-Id: <20260428-spu-rga3-v5-7-eb7f5d019d86@pengutronix.de>
References: <20260428-spu-rga3-v5-0-eb7f5d019d86@pengutronix.de>
In-Reply-To: <20260428-spu-rga3-v5-0-eb7f5d019d86@pengutronix.de>
To: Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Hans Verkuil <hverkuil@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, kernel@pengutronix.de, nicolas@ndufresne.ca, 
 sebastian.reichel@collabora.com, 
 =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>
X-Mailer: b4 0.15.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_020112_168798_0899D957 
X-CRM114-Status: GOOD (  14.10  )
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

VXNlIHRoZSBjbGtfYnVsayBBUEkgdG8gYXZvaWQgY29kZSBkdXBsaWNhdGlvbiBmb3IgZWFjaCBv
ZiB0aGUgdGhyZWUKY2xvY2tzLgoKUmV2aWV3ZWQtYnk6IE5pY29sYXMgRHVmcmVzbmUgPG5pY29s
YXMuZHVmcmVzbmVAY29sbGFib3JhLmNvbT4KU2lnbmVkLW9mZi1ieTogU3ZlbiBQw7xzY2hlbCA8
cy5wdWVzY2hlbEBwZW5ndXRyb25peC5kZT4KLS0tCiBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Jv
Y2tjaGlwL3JnYS9yZ2EuYyB8IDY1ICsrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIGRy
aXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5oIHwgIDYgKy0tCiAyIGZpbGVz
IGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDYwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jIGIvZHJpdmVycy9tZWRp
YS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMKaW5kZXggZmVhNjNiOTRjNWYzZC4uNGU3MTBh
MDUwY2I3YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2Ev
cmdhLmMKKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMKQEAg
LTY5OCw0OCArNjk4LDEwIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgdmlkZW9fZGV2aWNlIHJnYV92
aWRlb2RldiA9IHsKIAkuZGV2aWNlX2NhcHMgPSBWNEwyX0NBUF9WSURFT19NMk1fTVBMQU5FIHwg
VjRMMl9DQVBfU1RSRUFNSU5HLAogfTsKIAotc3RhdGljIGludCByZ2FfZW5hYmxlX2Nsb2Nrcyhz
dHJ1Y3Qgcm9ja2NoaXBfcmdhICpyZ2EpCi17Ci0JaW50IHJldDsKLQotCXJldCA9IGNsa19wcmVw
YXJlX2VuYWJsZShyZ2EtPnNjbGspOwotCWlmIChyZXQpIHsKLQkJZGV2X2VycihyZ2EtPmRldiwg
IkNhbm5vdCBlbmFibGUgcmdhIHNjbGs6ICVkXG4iLCByZXQpOwotCQlyZXR1cm4gcmV0OwotCX0K
LQotCXJldCA9IGNsa19wcmVwYXJlX2VuYWJsZShyZ2EtPmFjbGspOwotCWlmIChyZXQpIHsKLQkJ
ZGV2X2VycihyZ2EtPmRldiwgIkNhbm5vdCBlbmFibGUgcmdhIGFjbGs6ICVkXG4iLCByZXQpOwot
CQlnb3RvIGVycl9kaXNhYmxlX3NjbGs7Ci0JfQotCi0JcmV0ID0gY2xrX3ByZXBhcmVfZW5hYmxl
KHJnYS0+aGNsayk7Ci0JaWYgKHJldCkgewotCQlkZXZfZXJyKHJnYS0+ZGV2LCAiQ2Fubm90IGVu
YWJsZSByZ2EgaGNsazogJWRcbiIsIHJldCk7Ci0JCWdvdG8gZXJyX2Rpc2FibGVfYWNsazsKLQl9
Ci0KLQlyZXR1cm4gMDsKLQotZXJyX2Rpc2FibGVfYWNsazoKLQljbGtfZGlzYWJsZV91bnByZXBh
cmUocmdhLT5hY2xrKTsKLWVycl9kaXNhYmxlX3NjbGs6Ci0JY2xrX2Rpc2FibGVfdW5wcmVwYXJl
KHJnYS0+c2Nsayk7Ci0KLQlyZXR1cm4gcmV0OwotfQotCi1zdGF0aWMgdm9pZCByZ2FfZGlzYWJs
ZV9jbG9ja3Moc3RydWN0IHJvY2tjaGlwX3JnYSAqcmdhKQotewotCWNsa19kaXNhYmxlX3VucHJl
cGFyZShyZ2EtPnNjbGspOwotCWNsa19kaXNhYmxlX3VucHJlcGFyZShyZ2EtPmhjbGspOwotCWNs
a19kaXNhYmxlX3VucHJlcGFyZShyZ2EtPmFjbGspOwotfQotCiBzdGF0aWMgaW50IHJnYV9wYXJz
ZV9kdChzdHJ1Y3Qgcm9ja2NoaXBfcmdhICpyZ2EpCiB7CiAJc3RydWN0IHJlc2V0X2NvbnRyb2wg
KmNvcmVfcnN0LCAqYXhpX3JzdCwgKmFoYl9yc3Q7CisJaW50IHJldDsKIAogCWNvcmVfcnN0ID0g
ZGV2bV9yZXNldF9jb250cm9sX2dldChyZ2EtPmRldiwgImNvcmUiKTsKIAlpZiAoSVNfRVJSKGNv
cmVfcnN0KSkgewpAQCAtNzcxLDIzICs3MzMsMTIgQEAgc3RhdGljIGludCByZ2FfcGFyc2VfZHQo
c3RydWN0IHJvY2tjaGlwX3JnYSAqcmdhKQogCXVkZWxheSgxKTsKIAlyZXNldF9jb250cm9sX2Rl
YXNzZXJ0KGFoYl9yc3QpOwogCi0JcmdhLT5zY2xrID0gZGV2bV9jbGtfZ2V0KHJnYS0+ZGV2LCAi
c2NsayIpOwotCWlmIChJU19FUlIocmdhLT5zY2xrKSkgewotCQlkZXZfZXJyKHJnYS0+ZGV2LCAi
ZmFpbGVkIHRvIGdldCBzY2xrIGNsb2NrXG4iKTsKLQkJcmV0dXJuIFBUUl9FUlIocmdhLT5zY2xr
KTsKLQl9Ci0KLQlyZ2EtPmFjbGsgPSBkZXZtX2Nsa19nZXQocmdhLT5kZXYsICJhY2xrIik7Ci0J
aWYgKElTX0VSUihyZ2EtPmFjbGspKSB7Ci0JCWRldl9lcnIocmdhLT5kZXYsICJmYWlsZWQgdG8g
Z2V0IGFjbGsgY2xvY2tcbiIpOwotCQlyZXR1cm4gUFRSX0VSUihyZ2EtPmFjbGspOwotCX0KLQot
CXJnYS0+aGNsayA9IGRldm1fY2xrX2dldChyZ2EtPmRldiwgImhjbGsiKTsKLQlpZiAoSVNfRVJS
KHJnYS0+aGNsaykpIHsKLQkJZGV2X2VycihyZ2EtPmRldiwgImZhaWxlZCB0byBnZXQgaGNsayBj
bG9ja1xuIik7Ci0JCXJldHVybiBQVFJfRVJSKHJnYS0+aGNsayk7CisJcmV0ID0gZGV2bV9jbGtf
YnVsa19nZXRfYWxsKHJnYS0+ZGV2LCAmcmdhLT5jbGtzKTsKKwlpZiAocmV0IDwgMCkgeworCQlk
ZXZfZXJyKHJnYS0+ZGV2LCAiZmFpbGVkIHRvIGdldCBjbG9ja3NcbiIpOworCQlyZXR1cm4gcmV0
OwogCX0KKwlyZ2EtPm51bV9jbGtzID0gcmV0OwogCiAJcmV0dXJuIDA7CiB9CkBAIC05MzUsNyAr
ODg2LDcgQEAgc3RhdGljIGludCBfX21heWJlX3VudXNlZCByZ2FfcnVudGltZV9zdXNwZW5kKHN0
cnVjdCBkZXZpY2UgKmRldikKIHsKIAlzdHJ1Y3Qgcm9ja2NoaXBfcmdhICpyZ2EgPSBkZXZfZ2V0
X2RydmRhdGEoZGV2KTsKIAotCXJnYV9kaXNhYmxlX2Nsb2NrcyhyZ2EpOworCWNsa19idWxrX2Rp
c2FibGVfdW5wcmVwYXJlKHJnYS0+bnVtX2Nsa3MsIHJnYS0+Y2xrcyk7CiAKIAlyZXR1cm4gMDsK
IH0KQEAgLTk0NCw3ICs4OTUsNyBAQCBzdGF0aWMgaW50IF9fbWF5YmVfdW51c2VkIHJnYV9ydW50
aW1lX3Jlc3VtZShzdHJ1Y3QgZGV2aWNlICpkZXYpCiB7CiAJc3RydWN0IHJvY2tjaGlwX3JnYSAq
cmdhID0gZGV2X2dldF9kcnZkYXRhKGRldik7CiAKLQlyZXR1cm4gcmdhX2VuYWJsZV9jbG9ja3Mo
cmdhKTsKKwlyZXR1cm4gY2xrX2J1bGtfcHJlcGFyZV9lbmFibGUocmdhLT5udW1fY2xrcywgcmdh
LT5jbGtzKTsKIH0KIAogc3RhdGljIGNvbnN0IHN0cnVjdCBkZXZfcG1fb3BzIHJnYV9wbSA9IHsK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5oIGIv
ZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmgKaW5kZXggNzJhMjhiMTIw
ZmFiZi4uMmRiMTBhY2VjYjQwNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9y
b2NrY2hpcC9yZ2EvcmdhLmgKKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9y
Z2EvcmdhLmgKQEAgLTYsNiArNiw3IEBACiAjaWZuZGVmIF9fUkdBX0hfXwogI2RlZmluZSBfX1JH
QV9IX18KIAorI2luY2x1ZGUgPGxpbnV4L2Nsay5oPgogI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3Jt
X2RldmljZS5oPgogI2luY2x1ZGUgPG1lZGlhL3ZpZGVvYnVmMi12NGwyLmg+CiAjaW5jbHVkZSA8
bWVkaWEvdjRsMi1jdHJscy5oPgpAQCAtODEsOSArODIsOCBAQCBzdHJ1Y3Qgcm9ja2NoaXBfcmdh
IHsKIAlzdHJ1Y3QgZGV2aWNlICpkZXY7CiAJc3RydWN0IHJlZ21hcCAqZ3JmOwogCXZvaWQgX19p
b21lbSAqcmVnczsKLQlzdHJ1Y3QgY2xrICpzY2xrOwotCXN0cnVjdCBjbGsgKmFjbGs7Ci0Jc3Ry
dWN0IGNsayAqaGNsazsKKwlzdHJ1Y3QgY2xrX2J1bGtfZGF0YSAqY2xrczsKKwlpbnQgbnVtX2Ns
a3M7CiAJc3RydWN0IHJvY2tjaGlwX3JnYV92ZXJzaW9uIHZlcnNpb247CiAKIAkvKiB2ZmQgbG9j
ayAqLwoKLS0gCjIuNTQuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
