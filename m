Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2188FD2F03F
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jan 2026 14:42:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K1L8qjpkwcZh2WoQPx1QFIVqAj7I02w6FV1uX2dR4sA=; b=13GSMtuNCVwAVE
	3U5c0AehtitT4nDG65Kej3lx73pmj7hlh9S6cheL2QdsyQ+1zVzuz/vzjJIy2G2xS6O8GFjNK5Pbh
	5ms0SnAawc9RKqGlx6BokYtu+7YPRjC59wEe9k70/DafkMZHv4PK1nVC4OYiU2QNUlMu4siidYlPC
	etfFtkmfSFT7r3GptA/9wneNv0atz/33oz++xeOLNnzgmUASobWaKbRqVr61Oa1el2PRVBhxpyD8Q
	TXOHGr/3Ipoj6wNWK56jXUXtgZhcqe3PDWU4dg46nzaJSdFzr04mOWoHiuVuhgRM1lxOEIEj3j57/
	28vq/3Bjq0nDR7IcGElg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkkGw-0000000ERfF-1CKf;
	Tue, 27 Jan 2026 14:42:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkkFP-0000000EQNh-3lcU
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Jan 2026 14:40:55 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1vkkFG-0007YT-D4; Tue, 27 Jan 2026 15:40:42 +0100
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Tue, 27 Jan 2026 15:39:29 +0100
Subject: [PATCH v3 20/27] media: rockchip: rga: share the interrupt when an
 external iommu is used
MIME-Version: 1.0
Message-Id: <20260127-spu-rga3-v3-20-77b273067beb@pengutronix.de>
References: <20260127-spu-rga3-v3-0-77b273067beb@pengutronix.de>
In-Reply-To: <20260127-spu-rga3-v3-0-77b273067beb@pengutronix.de>
To: Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, kernel@pengutronix.de, 
 =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>, 
 Michael Olbrich <m.olbrich@pengutronix.de>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>
X-Mailer: b4 0.14.3
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_064052_018551_CEFE8925 
X-CRM114-Status: GOOD (  11.81  )
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

RnJvbTogTWljaGFlbCBPbGJyaWNoIDxtLm9sYnJpY2hAcGVuZ3V0cm9uaXguZGU+CgpUaGUgUkdB
MyBhbmQgdGhlIGNvcnJlc3BvbmRpbmcgaW9tbXUgc2hhcmUgdGhlIGludGVycnVwdC4gU28gaW4g
dGhhdApjYXNlLCByZXF1ZXN0IGEgc2hhcmVkIGludGVycnVwdCBzbyB0aGF0IHRoZSBpb21tdSBk
cml2ZXIgY2FuIHJlcXVlc3QKaXQgYXMgd2VsbC4KClNpZ25lZC1vZmYtYnk6IE1pY2hhZWwgT2xi
cmljaCA8bS5vbGJyaWNoQHBlbmd1dHJvbml4LmRlPgpSZXZpZXdlZC1ieTogTmljb2xhcyBEdWZy
ZXNuZSA8bmljb2xhcy5kdWZyZXNuZUBjb2xsYWJvcmEuY29tPgpTaWduZWQtb2ZmLWJ5OiBTdmVu
IFDDvHNjaGVsIDxzLnB1ZXNjaGVsQHBlbmd1dHJvbml4LmRlPgotLS0KIGRyaXZlcnMvbWVkaWEv
cGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jIHwgMyArKy0KIDEgZmlsZSBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3Bs
YXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2No
aXAvcmdhL3JnYS5jCmluZGV4IGIxM2ZmOGQ3YzU3MmMuLmIyZWU1OTIzNWQxZTMgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jCisrKyBiL2RyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jCkBAIC03NjEsNyArNzYxLDggQEAg
c3RhdGljIGludCByZ2FfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAkJZ290
byBlcnJfcHV0X2NsazsKIAl9CiAKLQlyZXQgPSBkZXZtX3JlcXVlc3RfaXJxKHJnYS0+ZGV2LCBp
cnEsIHJnYV9pc3IsIDAsCisJcmV0ID0gZGV2bV9yZXF1ZXN0X2lycShyZ2EtPmRldiwgaXJxLCBy
Z2FfaXNyLAorCQkJICAgICAgIHJnYV9oYXNfaW50ZXJuYWxfaW9tbXUocmdhKSA/IDAgOiBJUlFG
X1NIQVJFRCwKIAkJCSAgICAgICBkZXZfbmFtZShyZ2EtPmRldiksIHJnYSk7CiAJaWYgKHJldCA8
IDApIHsKIAkJZGV2X2VycihyZ2EtPmRldiwgImZhaWxlZCB0byByZXF1ZXN0IGlycVxuIik7Cgot
LSAKMi41Mi4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
