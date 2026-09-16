Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6686C982C5
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Sep 2026 15:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SQIZY3uJq89Wpi1DSmH/IrMJNcPJrNNO4CblKXa3dl0=; b=qXXy3Z2dkxCL1T
	4iQ6z6n8YjG2F120VCrS5iyWFeB4GlrsEjCs2VsBaUhKtmUr31bLBNWXWjuvZvniTPMkKcS8eqI5y
	JeLmZA6jQmLBhsX/p21B6lDTl3aQfbzproiflMpTcTkNIs2ODkhtzklCilasSWcJ/witB88xmGd1M
	GZF85oBvW+rajLLu9hhHa18eZ9J7ex6VZogDceSiDbV5lg1zqNc9J7SwY8g58CMbDcWQa/H5DbKme
	FGtoossTgoik+WbJYJB25+BGXAkKoo8lzoGr18zhQBV1Z4mpvX2mPRajyyQ0Uuyymq+gI84tFe9gd
	LHxHvzeXlk5TCnjtiPJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6rHA-00000009W8b-02l6;
	Wed, 16 Sep 2026 15:10:20 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6rGk-00000009VqM-3JLM;
	Wed, 16 Sep 2026 15:09:56 +0000
X-PTX-Original-Recipient: ezequiel@vanguardiasur.com.ar
X-PTX-Original-Recipient: jacob-chen@iotwrt.com
X-PTX-Original-Recipient: mchehab@kernel.org
X-PTX-Original-Recipient: detlev.casanova@collabora.com
X-PTX-Original-Recipient: heiko@sntech.de
X-PTX-Original-Recipient: linux-kernel@vger.kernel.org
X-PTX-Original-Recipient: linux-media@vger.kernel.org
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-PTX-Original-Recipient: lgs201920130244@gmail.com
X-PTX-Original-Recipient: p.zabel@pengutronix.de
X-PTX-Original-Recipient: kernel@pengutronix.de
X-PTX-Original-Recipient: s.pueschel@pengutronix.de
X-PTX-Original-Recipient: m.tretter@pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id E87682059F3;
	Wed, 16 Sep 2026 17:09:49 +0200 (CEST)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1x6rGf-001Fsx-2g;
	Wed, 16 Sep 2026 17:09:49 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Wed, 16 Sep 2026 17:09:46 +0200
Subject: [PATCH v2 05/17] media: rockchip: rga: use devres version of
 pm_runtime_enable
MIME-Version: 1.0
Message-Id: <20260916-spu-rga3multicore-v2-5-23aa2cb74e61@pengutronix.de>
References: <20260916-spu-rga3multicore-v2-0-23aa2cb74e61@pengutronix.de>
In-Reply-To: <20260916-spu-rga3multicore-v2-0-23aa2cb74e61@pengutronix.de>
To: Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel@pengutronix.de, Detlev Casanova <detlev.casanova@collabora.com>, 
 Michael Tretter <m.tretter@pengutronix.de>, 
 Guangshuo Li <lgs201920130244@gmail.com>, 
 =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260916_080955_289179_F90B75BF 
X-CRM114-Status: GOOD (  13.58  )
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

VXNlIHRoZSBkZXZyZXMgdmVyc2lvbiBvZiBwbV9ydW50aW1lX2VuYWJsZSBuYW1lZApkZXZtX3Bt
X3J1bnRpbWVfZW5hYmxlIHRvIGVhc2UgdXAgdGhlIGNsZWFudXAgaGFuZGxpbmcuIEFsc28gaXQg
YXZvaWRzCmhhdmluZyBhIG1peGVkIGNsZWFudXAgb3JkZXIgZHVlIHRvIHRoZSBmb2xsb3dpbmcK
ZGV2bV9wbGF0Zm9ybV9pb3JlbWFwX3Jlc291cmNlIGJlaW5nIGNsZWFuZWQgdXAgYW55d2F5cyBh
ZnRlciB0aGUgcHJvYmUKZnVuY3Rpb24gaGFzIHJldHVybmVkLgoKVGhpcyBhbHNvIGNoYW5nZXMg
c29tZSBkZXZfZXJyIGNhbGxzIHRvIGRldl9lcnJfcHJvYmUgZm9yIGNvbnZlbmllbnQKcmV0dXJu
aW5nLiBUaGlzIG1heSBub3QgcHJpbnQgdGhlc2UgbWVzc2FnZXMgaW4gdGhlIGVycm9yIGNhc2Us
IGFzCmRldl9lcnJfcHJvYmUgbWF5IGhhbmRsZSB0aGVtIGRpZmZlcmVudGx5IGJhc2VkIG9uIHRo
ZSBlcnJvciAoZS5nLgpFTk9NRU0gd29uJ3QgYmUgcHJpbnRlZCkuCgpTaWduZWQtb2ZmLWJ5OiBT
dmVuIFDDvHNjaGVsIDxzLnB1ZXNjaGVsQHBlbmd1dHJvbml4LmRlPgoKLS0tCnYyCi0gYWRkZWQK
LS0tCiBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYyB8IDM0ICsrKysr
KysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25z
KCspLCAyMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3Jt
L3JvY2tjaGlwL3JnYS9yZ2EuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdh
L3JnYS5jCmluZGV4IDhjMDM0MjJkNjY5Y2YuLmQ3ZjA3MTIxNzdiNzAgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jCisrKyBiL2RyaXZlcnMvbWVk
aWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jCkBAIC03OTcsMzcgKzc5NywzMSBAQCBzdGF0
aWMgaW50IHJnYV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCWlmIChyZXQp
CiAJCXJldHVybiBkZXZfZXJyX3Byb2JlKCZwZGV2LT5kZXYsIHJldCwgIlVuYWJsZSB0byBwYXJz
ZSBPRiBkYXRhXG4iKTsKIAotCXBtX3J1bnRpbWVfZW5hYmxlKHJnYS0+ZGV2KTsKKwlyZXQgPSBk
ZXZtX3BtX3J1bnRpbWVfZW5hYmxlKHJnYS0+ZGV2KTsKKwlpZiAocmV0KQorCQlyZXR1cm4gcmV0
OwogCiAJcmdhLT5yZWdzID0gZGV2bV9wbGF0Zm9ybV9pb3JlbWFwX3Jlc291cmNlKHBkZXYsIDAp
OwotCWlmIChJU19FUlIocmdhLT5yZWdzKSkgewotCQlyZXQgPSBQVFJfRVJSKHJnYS0+cmVncyk7
Ci0JCWdvdG8gZXJyX3B1dF9jbGs7Ci0JfQorCWlmIChJU19FUlIocmdhLT5yZWdzKSkKKwkJcmV0
dXJuIFBUUl9FUlIocmdhLT5yZWdzKTsKIAogCWlycSA9IHBsYXRmb3JtX2dldF9pcnEocGRldiwg
MCk7Ci0JaWYgKGlycSA8IDApIHsKLQkJcmV0ID0gaXJxOwotCQlnb3RvIGVycl9wdXRfY2xrOwot
CX0KKwlpZiAoaXJxIDwgMCkKKwkJcmV0dXJuIGlycTsKIAogCXJldCA9IGRldm1fcmVxdWVzdF9p
cnEocmdhLT5kZXYsIGlycSwgcmdhX2lzciwKIAkJCSAgICAgICByZ2FfaGFzX2ludGVybmFsX2lv
bW11KHJnYSkgPyAwIDogSVJRRl9TSEFSRUQsCiAJCQkgICAgICAgZGV2X25hbWUocmdhLT5kZXYp
LCByZ2EpOwotCWlmIChyZXQgPCAwKSB7Ci0JCWRldl9lcnIocmdhLT5kZXYsICJmYWlsZWQgdG8g
cmVxdWVzdCBpcnFcbiIpOwotCQlnb3RvIGVycl9wdXRfY2xrOwotCX0KKwlpZiAocmV0IDwgMCkK
KwkJcmV0dXJuIGRldl9lcnJfcHJvYmUocmdhLT5kZXYsIHJldCwgImZhaWxlZCB0byByZXF1ZXN0
IGlycVxuIik7CiAKIAlyZXQgPSBkbWFfc2V0X21hc2tfYW5kX2NvaGVyZW50KHJnYS0+ZGV2LCBE
TUFfQklUX01BU0soMzIpKTsKLQlpZiAocmV0KSB7Ci0JCWRldl9lcnIocmdhLT5kZXYsICIzMi1i
aXQgRE1BIG5vdCBzdXBwb3J0ZWQiKTsKLQkJZ290byBlcnJfcHV0X2NsazsKLQl9CisJaWYgKHJl
dCkKKwkJZGV2X2Vycl9wcm9iZShyZ2EtPmRldiwgcmV0LCAiMzItYml0IERNQSBub3Qgc3VwcG9y
dGVkIik7CiAKIAlyZXQgPSB2NGwyX2RldmljZV9yZWdpc3RlcigmcGRldi0+ZGV2LCAmcmdhLT52
NGwyX2Rldik7CiAJaWYgKHJldCkKLQkJZ290byBlcnJfcHV0X2NsazsKKwkJcmV0dXJuIHJldDsK
IAl2ZmQgPSB2aWRlb19kZXZpY2VfYWxsb2MoKTsKIAlpZiAoIXZmZCkgewogCQl2NGwyX2Vycigm
cmdhLT52NGwyX2RldiwgIkZhaWxlZCB0byBhbGxvY2F0ZSB2aWRlbyBkZXZpY2VcbiIpOwpAQCAt
ODc3LDggKzg3MSw2IEBAIHN0YXRpYyBpbnQgcmdhX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZp
Y2UgKnBkZXYpCiAJdmlkZW9fZGV2aWNlX3JlbGVhc2UodmZkKTsKIHVucmVnX3Y0bDJfZGV2Ogog
CXY0bDJfZGV2aWNlX3VucmVnaXN0ZXIoJnJnYS0+djRsMl9kZXYpOwotZXJyX3B1dF9jbGs6Ci0J
cG1fcnVudGltZV9kaXNhYmxlKHJnYS0+ZGV2KTsKIAogCXJldHVybiByZXQ7CiB9CkBAIC04OTIs
OCArODg0LDYgQEAgc3RhdGljIHZvaWQgcmdhX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNl
ICpwZGV2KQogCXY0bDJfbTJtX3JlbGVhc2UocmdhLT5tMm1fZGV2KTsKIAl2aWRlb191bnJlZ2lz
dGVyX2RldmljZShyZ2EtPnZmZCk7CiAJdjRsMl9kZXZpY2VfdW5yZWdpc3RlcigmcmdhLT52NGwy
X2Rldik7Ci0KLQlwbV9ydW50aW1lX2Rpc2FibGUocmdhLT5kZXYpOwogfQogCiBzdGF0aWMgaW50
IF9fbWF5YmVfdW51c2VkIHJnYV9ydW50aW1lX3N1c3BlbmQoc3RydWN0IGRldmljZSAqZGV2KQoK
LS0gCjIuNTUuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
