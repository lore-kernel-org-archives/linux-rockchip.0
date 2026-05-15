Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46750CD4F47
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 May 2026 15:33:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q9bl+rJwGPZTlYRDNnDNM2/ZyK/dJ4SaYw6iXqQy8q0=; b=s3eHSmbapQVFvM
	OysszSbNQIs80CyK7JInW7EkTHCJzi9YWr1Mit6q7yEg6y1G7SMk3i8faQR2P6LR6M8+dK3ijwtLD
	JamXZA7Ae9S2bZYv5I/Sh/bgrzloGGJQ9zHqPb47SN62yW8AHTa5WpXO2DtjWotbVDchaiqAjUs1F
	aoJFoAm7ijOI1npwsJ7ucoDEprH2Ajo3YDdYgi+CO+CuOhjfPeh04UZtpp3Z0s3YavJ4+4/sYlLlH
	duY7Q5yQ1yeOODt01OiT/HZMN0byGUXnqkFND47hgOZWUgh/EInprjKhq4LI0C5efsBq7y+I5A7a4
	V19+5vlXqfEWTsoJfeFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNuXV-00000008ie8-1K2a;
	Fri, 15 May 2026 15:33:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNuXP-00000008iTK-40rj
	for linux-rockchip@lists.infradead.org;
	Fri, 15 May 2026 15:33:22 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1wNuXE-0005OF-Jm; Fri, 15 May 2026 17:33:08 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Fri, 15 May 2026 17:32:47 +0200
Subject: [PATCH v6 21/28] media: rockchip: rga: share the interrupt when an
 external iommu is used
MIME-Version: 1.0
Message-Id: <20260515-spu-rga3-v6-21-e547152eb9c9@pengutronix.de>
References: <20260515-spu-rga3-v6-0-e547152eb9c9@pengutronix.de>
In-Reply-To: <20260515-spu-rga3-v6-0-e547152eb9c9@pengutronix.de>
To: Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Hans Verkuil <hverkuil@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, kernel@pengutronix.de, nicolas@ndufresne.ca, 
 sebastian.reichel@collabora.com, m.tretter@pengutronix.de, 
 p.zabel@pengutronix.de, 
 =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>, 
 Michael Olbrich <m.olbrich@pengutronix.de>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>
X-Mailer: b4 0.15.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_083321_144633_FD013851 
X-CRM114-Status: GOOD (  11.31  )
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
aXAvcmdhL3JnYS5jCmluZGV4IGUzYzk5YzNmN2M1YmUuLmNkYTNjZWNiMWNlOGMgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jCisrKyBiL2RyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jCkBAIC03NjcsNyArNzY3LDggQEAg
c3RhdGljIGludCByZ2FfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAkJZ290
byBlcnJfcHV0X2NsazsKIAl9CiAKLQlyZXQgPSBkZXZtX3JlcXVlc3RfaXJxKHJnYS0+ZGV2LCBp
cnEsIHJnYV9pc3IsIDAsCisJcmV0ID0gZGV2bV9yZXF1ZXN0X2lycShyZ2EtPmRldiwgaXJxLCBy
Z2FfaXNyLAorCQkJICAgICAgIHJnYV9oYXNfaW50ZXJuYWxfaW9tbXUocmdhKSA/IDAgOiBJUlFG
X1NIQVJFRCwKIAkJCSAgICAgICBkZXZfbmFtZShyZ2EtPmRldiksIHJnYSk7CiAJaWYgKHJldCA8
IDApIHsKIAkJZGV2X2VycihyZ2EtPmRldiwgImZhaWxlZCB0byByZXF1ZXN0IGlycVxuIik7Cgot
LSAKMi41NC4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
