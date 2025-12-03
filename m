Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D902D12D7A
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Dec 2025 15:54:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lyIP8XHtDV2+77UVuU+t4gHriOKHrVqQfphplL8SLZQ=; b=3kSWkQHRm+rZqY
	sS8k7JY3qDTpt2FzYVgeZ3rd58GeoL3wugJV+l5aV4y8TSZwpDyZ33l7XDgXo9iUnlPv2wgGhnAbl
	FfOdlKLwbakM+3FtA0DJtSmBByQaXaTXTJ8b42D7X+cEFgovTrz+n/WRPKBBVgXkD9JbGxjFP995b
	FF0R/aewoV5cz4sXcWRiAQ3ULeTu/vqpoEr7/UGnjwQRBRx0rxMN3S+a2hTwuH9nQiShCWgHobZkT
	iVB985D0F9AHD5qOinZVgFo/79ZKSHJGIyyQsxodIYnvCFC6w0T6X18gtUqb6vOBIcOLFtYSpMS/6
	fBCSeWHfDFC4opEcWmcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQpBO-00000006k5H-0uIo;
	Wed, 03 Dec 2025 15:54:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQpBD-00000006jms-3pv3
	for linux-rockchip@lists.infradead.org;
	Wed, 03 Dec 2025 15:54:15 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1vQpAe-0007dW-5W; Wed, 03 Dec 2025 16:53:36 +0100
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Wed, 03 Dec 2025 16:52:37 +0100
Subject: [PATCH v2 15/22] media: rockchip: rga: share the interrupt when an
 external iommu is used
MIME-Version: 1.0
Message-Id: <20251203-spu-rga3-v2-15-989a67947f71@pengutronix.de>
References: <20251203-spu-rga3-v2-0-989a67947f71@pengutronix.de>
In-Reply-To: <20251203-spu-rga3-v2-0-989a67947f71@pengutronix.de>
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
 Michael Olbrich <m.olbrich@pengutronix.de>
X-Mailer: b4 0.14.3
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_075412_048200_300F5BED 
X-CRM114-Status: GOOD (  11.65  )
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
cmljaCA8bS5vbGJyaWNoQHBlbmd1dHJvbml4LmRlPgpTaWduZWQtb2ZmLWJ5OiBTdmVuIFDDvHNj
aGVsIDxzLnB1ZXNjaGVsQHBlbmd1dHJvbml4LmRlPgotLS0KIGRyaXZlcnMvbWVkaWEvcGxhdGZv
cm0vcm9ja2NoaXAvcmdhL3JnYS5jIHwgMyArKy0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlv
bnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3Jt
L3JvY2tjaGlwL3JnYS9yZ2EuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdh
L3JnYS5jCmluZGV4IGYyOGVjODhjMTg2ZmEuLjFiZmM0MDIxZjRhN2IgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jCisrKyBiL2RyaXZlcnMvbWVk
aWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jCkBAIC03MTgsNyArNzE4LDggQEAgc3RhdGlj
IGludCByZ2FfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAkJZ290byBlcnJf
cHV0X2NsazsKIAl9CiAKLQlyZXQgPSBkZXZtX3JlcXVlc3RfaXJxKHJnYS0+ZGV2LCBpcnEsIHJn
YV9pc3IsIDAsCisJcmV0ID0gZGV2bV9yZXF1ZXN0X2lycShyZ2EtPmRldiwgaXJxLCByZ2FfaXNy
LAorCQkJICAgICAgIHJnYV9oYXNfaW50ZXJuYWxfaW9tbXUocmdhKSA/IDAgOiBJUlFGX1NIQVJF
RCwKIAkJCSAgICAgICBkZXZfbmFtZShyZ2EtPmRldiksIHJnYSk7CiAJaWYgKHJldCA8IDApIHsK
IAkJZGV2X2VycihyZ2EtPmRldiwgImZhaWxlZCB0byByZXF1ZXN0IGlycVxuIik7CgotLSAKMi41
Mi4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
