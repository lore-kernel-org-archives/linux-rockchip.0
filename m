Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36777C4828A
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Jan 2024 14:09:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l2Lv0WS8nV2g0DkjQ1mU+29pH9z/g4bM1OzjioIYdvg=; b=GBtySQFaEBNfrO
	Pp6Cc5/cfN37RLQBJ5BvwGUkc4RGggZouToviGOwR8kAIeHncpcCfy38p8LQFqjSFsOtTx1sSqrea
	dAQ5bfwvLMHSgJ4LMMVsZzuS++n2K+CkOnW/SrfIvf9xh2n69U8q/bWzXIfrJ98Sb0O4/UpfRJVXC
	Zkp7OLf4Q7gIIcwBcgp4nCyxxrcDJO/clyvkfb+LlxxqQus8wyP0gQ0jagkuv1pReqXM3K+/G0ewD
	TsnBeFX840khQI4wmb3SDMsEhWy6jvuPrjgdti80WuOyakhdaTBUeC516GKXWb09EYaqHZuqC3AA7
	vZeD+KIiQpsuRf9vz+yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT0PV-00000000FPr-11Jz;
	Thu, 25 Jan 2024 14:08:53 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT0Ou-00000000F5v-28YV
	for linux-rockchip@bombadil.infradead.org;
	Thu, 25 Jan 2024 14:08:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=EF3eYK6XmS3ZD3U/bmbaOtrol+AEJdn5GjkXO/CimKY=; b=UfzJEWvo+dYg9pgoUbeQv/ZzXg
	GFYFLJqT8bv5hauOOenBYlzq0v02hnr50Z+khtzzdaxhh5nQsX8NRoyDKaAUjsunARh/TVz0Krl3z
	+1bglEs/ENAshytaimc3Eb1vgkoMsm+oaVdajRSKNEu2h4zt+FSjGweusYcbNssOD1HF1YOBNUHOu
	uE8Ji+O4WQ1eFg59N9uRQ1MCT5gc0GPNC6yA9lm8AdYS0ktRuL0Q1Pn16IQEJIs2KicTf+luQtXjL
	j1iy6E8Lr4gGxAV3U5CnRyPRg45FjTQX2ncdx+0E8sQMdZNpH1/xo6YcefRPoQ5h/bickJOZjYbq6
	yZ6raXPg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rSybi-00000009sDd-2BVH
	for linux-rockchip@lists.infradead.org;
	Thu, 25 Jan 2024 12:13:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rSyZN-0004Vs-IK; Thu, 25 Jan 2024 13:10:57 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rSyZM-002HU4-9G; Thu, 25 Jan 2024 13:10:56 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rSyZM-007n3g-0e;
	Thu, 25 Jan 2024 13:10:56 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-pwm@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH v5 083/111] pwm: rockchip: Make use of devm_pwmchip_alloc() function
Date: Thu, 25 Jan 2024 13:09:45 +0100
Message-ID: <3fa1cd248c423c95ab1290634cbfeb3276ba28fd.1706182805.git.u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1706182805.git.u.kleine-koenig@pengutronix.de>
References: <cover.1706182805.git.u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2829; i=u.kleine-koenig@pengutronix.de; h=from:subject:message-id; bh=rtkcltZMOo6Md1RGPzlmRgv8CpR5PZFpQu75wMewXGw=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBlsk+b7O3Tj9e5mLiJRD+ipanh5rqcqMw8SSFr/ hT7jkyLY7CJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZbJPmwAKCRCPgPtYfRL+ TuX4CAC4FUxEkLR++lna/0x4V3p4ucf0bvhZZV0k6mJtnGEetrbF3GlcUj72tO9zyWvSwqlKlpa Sb2q6kLIzDQ5ibxn4iivv2/bu9OP5KAElzL1SNw+Zz8g+60tyRtXVuF5Fkz7Jm8ZQYAe0IzbCK7 /8hEjfWL1mq67VfXAdd8yUSDLgt5iO2lUVc2OW0kyLSXDqsLyci3EuaKXD+Dn5xur7WNvikj+iv JPBuh0SVgJmHo/euTq7tj1bvqvCBhjqbK8L76bhzidQlLJmAb+KufRtPjEMG/wdJPovR+3wjbv7 pro6sGXR9szKEmMyP9kEdsFle+mOmG+n34s717EcTv0kDpjR
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240125_121323_963245_C9B4E6FD 
X-CRM114-Status: GOOD (  12.16  )
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

VGhpcyBwcmVwYXJlcyB0aGUgcHdtLXJvY2tjaGlwIGRyaXZlciB0byBmdXJ0aGVyIGNoYW5nZXMg
b2YgdGhlIHB3bSBjb3JlCm91dGxpbmVkIGluIHRoZSBjb21taXQgaW50cm9kdWNpbmcgZGV2bV9w
d21jaGlwX2FsbG9jKCkuIFRoZXJlIGlzIG5vCmludGVuZGVkIHNlbWFudGljYWwgY2hhbmdlIGFu
ZCB0aGUgZHJpdmVyIHNob3VsZCBiZWhhdmUgYXMgYmVmb3JlLgoKUmV2aWV3ZWQtYnk6IEhlaWtv
IFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+ClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2
bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQogZHJpdmVycy9wd20vcHdt
LXJvY2tjaGlwLmMgfCAyNCArKysrKysrKysrKystLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2Vk
LCAxMiBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L3B3bS9wd20tcm9ja2NoaXAuYyBiL2RyaXZlcnMvcHdtL3B3bS1yb2NrY2hpcC5jCmluZGV4IGE3
YzY0N2UzNzgzNy4uMGZhNzU3NWRiYjU0IDEwMDY0NAotLS0gYS9kcml2ZXJzL3B3bS9wd20tcm9j
a2NoaXAuYworKysgYi9kcml2ZXJzL3B3bS9wd20tcm9ja2NoaXAuYwpAQCAtMzAsNyArMzAsNiBA
QAogI2RlZmluZSBQV01fTFBfRElTQUJMRQkJKDAgPDwgOCkKIAogc3RydWN0IHJvY2tjaGlwX3B3
bV9jaGlwIHsKLQlzdHJ1Y3QgcHdtX2NoaXAgY2hpcDsKIAlzdHJ1Y3QgY2xrICpjbGs7CiAJc3Ry
dWN0IGNsayAqcGNsazsKIAljb25zdCBzdHJ1Y3Qgcm9ja2NoaXBfcHdtX2RhdGEgKmRhdGE7CkBA
IC01NCw3ICs1Myw3IEBAIHN0cnVjdCByb2NrY2hpcF9wd21fZGF0YSB7CiAKIHN0YXRpYyBpbmxp
bmUgc3RydWN0IHJvY2tjaGlwX3B3bV9jaGlwICp0b19yb2NrY2hpcF9wd21fY2hpcChzdHJ1Y3Qg
cHdtX2NoaXAgKmNoaXApCiB7Ci0JcmV0dXJuIGNvbnRhaW5lcl9vZihjaGlwLCBzdHJ1Y3Qgcm9j
a2NoaXBfcHdtX2NoaXAsIGNoaXApOworCXJldHVybiBwd21jaGlwX2dldF9kcnZkYXRhKGNoaXAp
OwogfQogCiBzdGF0aWMgaW50IHJvY2tjaGlwX3B3bV9nZXRfc3RhdGUoc3RydWN0IHB3bV9jaGlw
ICpjaGlwLApAQCAtMjk2LDE0ICsyOTUsMTYgQEAgTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgcm9j
a2NoaXBfcHdtX2R0X2lkcyk7CiAKIHN0YXRpYyBpbnQgcm9ja2NoaXBfcHdtX3Byb2JlKHN0cnVj
dCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiB7CisJc3RydWN0IHB3bV9jaGlwICpjaGlwOwogCXN0
cnVjdCByb2NrY2hpcF9wd21fY2hpcCAqcGM7CiAJdTMyIGVuYWJsZV9jb25mLCBjdHJsOwogCWJv
b2wgZW5hYmxlZDsKIAlpbnQgcmV0LCBjb3VudDsKIAotCXBjID0gZGV2bV9remFsbG9jKCZwZGV2
LT5kZXYsIHNpemVvZigqcGMpLCBHRlBfS0VSTkVMKTsKLQlpZiAoIXBjKQotCQlyZXR1cm4gLUVO
T01FTTsKKwljaGlwID0gZGV2bV9wd21jaGlwX2FsbG9jKCZwZGV2LT5kZXYsIDEsIHNpemVvZigq
cGMpKTsKKwlpZiAoSVNfRVJSKGNoaXApKQorCQlyZXR1cm4gUFRSX0VSUihjaGlwKTsKKwlwYyA9
IHRvX3JvY2tjaGlwX3B3bV9jaGlwKGNoaXApOwogCiAJcGMtPmJhc2UgPSBkZXZtX3BsYXRmb3Jt
X2lvcmVtYXBfcmVzb3VyY2UocGRldiwgMCk7CiAJaWYgKElTX0VSUihwYy0+YmFzZSkpCkBAIC0z
MzcsMTggKzMzOCwxNiBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3B3bV9wcm9iZShzdHJ1Y3QgcGxh
dGZvcm1fZGV2aWNlICpwZGV2KQogCQlnb3RvIGVycl9jbGs7CiAJfQogCi0JcGxhdGZvcm1fc2V0
X2RydmRhdGEocGRldiwgcGMpOworCXBsYXRmb3JtX3NldF9kcnZkYXRhKHBkZXYsIGNoaXApOwog
CiAJcGMtPmRhdGEgPSBkZXZpY2VfZ2V0X21hdGNoX2RhdGEoJnBkZXYtPmRldik7Ci0JcGMtPmNo
aXAuZGV2ID0gJnBkZXYtPmRldjsKLQlwYy0+Y2hpcC5vcHMgPSAmcm9ja2NoaXBfcHdtX29wczsK
LQlwYy0+Y2hpcC5ucHdtID0gMTsKKwljaGlwLT5vcHMgPSAmcm9ja2NoaXBfcHdtX29wczsKIAog
CWVuYWJsZV9jb25mID0gcGMtPmRhdGEtPmVuYWJsZV9jb25mOwogCWN0cmwgPSByZWFkbF9yZWxh
eGVkKHBjLT5iYXNlICsgcGMtPmRhdGEtPnJlZ3MuY3RybCk7CiAJZW5hYmxlZCA9IChjdHJsICYg
ZW5hYmxlX2NvbmYpID09IGVuYWJsZV9jb25mOwogCi0JcmV0ID0gcHdtY2hpcF9hZGQoJnBjLT5j
aGlwKTsKKwlyZXQgPSBwd21jaGlwX2FkZChjaGlwKTsKIAlpZiAocmV0IDwgMCkgewogCQlkZXZf
ZXJyX3Byb2JlKCZwZGV2LT5kZXYsIHJldCwgInB3bWNoaXBfYWRkKCkgZmFpbGVkXG4iKTsKIAkJ
Z290byBlcnJfcGNsazsKQEAgLTM3Miw5ICszNzEsMTAgQEAgc3RhdGljIGludCByb2NrY2hpcF9w
d21fcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAogc3RhdGljIHZvaWQgcm9j
a2NoaXBfcHdtX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogewotCXN0cnVj
dCByb2NrY2hpcF9wd21fY2hpcCAqcGMgPSBwbGF0Zm9ybV9nZXRfZHJ2ZGF0YShwZGV2KTsKKwlz
dHJ1Y3QgcHdtX2NoaXAgKmNoaXAgPSBwbGF0Zm9ybV9nZXRfZHJ2ZGF0YShwZGV2KTsKKwlzdHJ1
Y3Qgcm9ja2NoaXBfcHdtX2NoaXAgKnBjID0gdG9fcm9ja2NoaXBfcHdtX2NoaXAoY2hpcCk7CiAK
LQlwd21jaGlwX3JlbW92ZSgmcGMtPmNoaXApOworCXB3bWNoaXBfcmVtb3ZlKGNoaXApOwogCiAJ
Y2xrX3VucHJlcGFyZShwYy0+cGNsayk7CiAJY2xrX3VucHJlcGFyZShwYy0+Y2xrKTsKLS0gCjIu
NDMuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
