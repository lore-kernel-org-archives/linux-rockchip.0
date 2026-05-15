Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50B9CCD4F47
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 May 2026 15:33:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xg/dUGrVu+WjzoCfzb6Wv5dStOUc4GEh16Hi5dARwg4=; b=xngDyG5YaSIobw
	C0Btxz6l7VK5LrQMXFWj60/yxKRtEFP14AStadtnDaOnaISUW3MRAUBFQLlcEraX4XFWVNrfduUCL
	Mpcvco93CGbwC4lRJ0Q86r70iHGfaTiqPoW4DTXpjLHZFy7FemDFUiI3APxJRkJ86fZgRqfRbC4Aq
	TdkGR0kug4xjmiZEYA4NcbTkE8gByJBffZRocEoWdmrHlkDFvdy5CzKHe4IjpOTpzUjcsBzZEa2+J
	7GM2SOk++SpSSKkI5T2KfV+3XA42pEwCmqvMO/368IjozBSKsCWkm9ccLqTgaAb9+dOAXPaoD/ygs
	5iyD0uVFkmYjx2ZggOzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNuXI-00000008iGD-18aU;
	Fri, 15 May 2026 15:33:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNuXF-00000008i99-1Bnz
	for linux-rockchip@lists.infradead.org;
	Fri, 15 May 2026 15:33:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1wNuX2-0005OF-Ga; Fri, 15 May 2026 17:32:56 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Fri, 15 May 2026 17:32:38 +0200
Subject: [PATCH v6 12/28] media: rockchip: rga: avoid odd frame sizes for
 YUV formats
MIME-Version: 1.0
Message-Id: <20260515-spu-rga3-v6-12-e547152eb9c9@pengutronix.de>
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
 Nicolas Dufresne <nicolas.dufresne@collabora.com>
X-Mailer: b4 0.15.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_083309_329836_B02FE4BD 
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

QXZvaWQgb2RkIGZyYW1lIHNpemVzIGZvciBZVVYgZm9ybWF0cywgYXMgdGhleSBtYXkgY2F1c2Ug
dW5kZWZpbmVkCmJlaGF2aW9yLiBUaGlzIGlzIGRvbmUgaW4gcHJlcGFyYXRpb24gZm9yIHRoZSBS
R0EzLCB3aGljaCBoYW5ncyB3aGVuIHRoZQpvdXRwdXQgZm9ybWF0IGlzIHNldCB0byAxMjl4MTI5
IHBpeGVsIFlVVjQyMCBTUCAoTlYxMikuCgpUaGlzIHJlcXVpcmVtZW50IGlzIGRvY3VtZW50ZWQg
ZXhwbGljaXRseSBmb3IgdGhlIFJHQTMgaW4gIHNlY3Rpb24gNS42LjMKb2YgdGhlIFJLMzU4OCBU
Uk0gUGFydCAyLiBGb3IgdGhlIFJHQTIgdGhlIFJLMzU4OCBUUk0gUGFydCAyCihzZWN0aW9uIDYu
MS4yKSBhbmQgUkszNTY4IFRSTSBQYXJ0IDIgKHNlY3Rpb24gMTQuMikgb25seSBtZW50aW9ucyB0
aGUKeC95IG9mZnNldHMgYW5kIHN0cmlkZSBhbGlnbmluZyByZXF1aXJlbWVudHMuIEJ1dCB0aGUg
dmVuZG9yIGRyaXZlciBmb3IKdGhlIFJHQTIgYWxzbyBjb250YWlucyBjaGVja3MgZm9yIHRoZSB3
aWR0aCBhbmQgaGVpZ2h0IHRvIGJlIGFsaWduZWQgdG8KMiBieXRlcy4KClJldmlld2VkLWJ5OiBO
aWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzLmR1ZnJlc25lQGNvbGxhYm9yYS5jb20+ClNpZ25lZC1v
ZmYtYnk6IFN2ZW4gUMO8c2NoZWwgPHMucHVlc2NoZWxAcGVuZ3V0cm9uaXguZGU+Ci0tLQogZHJp
dmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMgfCAxOSArKysrKysrKysrKysr
Ky0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYyBi
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jCmluZGV4IGY1OTljOTky
ODI5ZGQuLjc3YjhjN2FiNzQyNzQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0v
cm9ja2NoaXAvcmdhL3JnYS5jCisrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAv
cmdhL3JnYS5jCkBAIC0zMzcsNiArMzM3LDE5IEBAIHN0YXRpYyBpbnQgdmlkaW9jX3RyeV9mbXQo
c3RydWN0IGZpbGUgKmZpbGUsIHZvaWQgKnByaXYsIHN0cnVjdCB2NGwyX2Zvcm1hdCAqZikKIAlz
dHJ1Y3QgcmdhX2N0eCAqY3R4ID0gZmlsZV90b19yZ2FfY3R4KGZpbGUpOwogCWNvbnN0IHN0cnVj
dCByZ2FfaHcgKmh3ID0gY3R4LT5yZ2EtPmh3OwogCXN0cnVjdCByZ2FfZm10ICpmbXQ7CisJc3Ry
dWN0IHY0bDJfZnJtc2l6ZV9zdGVwd2lzZSBmcm1zaXplID0geworCQkubWluX3dpZHRoID0gaHct
Pm1pbl93aWR0aCwKKwkJLm1heF93aWR0aCA9IGh3LT5tYXhfd2lkdGgsCisJCS5taW5faGVpZ2h0
ID0gaHctPm1pbl9oZWlnaHQsCisJCS5tYXhfaGVpZ2h0ID0gaHctPm1heF9oZWlnaHQsCisJCS5z
dGVwX3dpZHRoID0gMSwKKwkJLnN0ZXBfaGVpZ2h0ID0gMSwKKwl9OworCisJaWYgKHY0bDJfaXNf
Zm9ybWF0X3l1dih2NGwyX2Zvcm1hdF9pbmZvKHBpeF9mbXQtPnBpeGVsZm9ybWF0KSkpIHsKKwkJ
ZnJtc2l6ZS5zdGVwX3dpZHRoID0gMjsKKwkJZnJtc2l6ZS5zdGVwX2hlaWdodCA9IDI7CisJfQog
CiAJaWYgKFY0TDJfVFlQRV9JU19DQVBUVVJFKGYtPnR5cGUpKSB7CiAJCWNvbnN0IHN0cnVjdCBy
Z2FfZnJhbWUgKmZybTsKQEAgLTM1OCwxMSArMzcxLDcgQEAgc3RhdGljIGludCB2aWRpb2NfdHJ5
X2ZtdChzdHJ1Y3QgZmlsZSAqZmlsZSwgdm9pZCAqcHJpdiwgc3RydWN0IHY0bDJfZm9ybWF0ICpm
KQogCWlmICghZm10KQogCQlmbXQgPSAmaHctPmZvcm1hdHNbMF07CiAKLQlwaXhfZm10LT53aWR0
aCA9IGNsYW1wKHBpeF9mbXQtPndpZHRoLAotCQkJICAgICAgIGh3LT5taW5fd2lkdGgsIGh3LT5t
YXhfd2lkdGgpOwotCXBpeF9mbXQtPmhlaWdodCA9IGNsYW1wKHBpeF9mbXQtPmhlaWdodCwKLQkJ
CQlody0+bWluX2hlaWdodCwgaHctPm1heF9oZWlnaHQpOwotCisJdjRsMl9hcHBseV9mcm1zaXpl
X2NvbnN0cmFpbnRzKCZwaXhfZm10LT53aWR0aCwgJnBpeF9mbXQtPmhlaWdodCwgJmZybXNpemUp
OwogCXY0bDJfZmlsbF9waXhmbXRfbXAocGl4X2ZtdCwgZm10LT5mb3VyY2MsIHBpeF9mbXQtPndp
ZHRoLCBwaXhfZm10LT5oZWlnaHQpOwogCXBpeF9mbXQtPmZpZWxkID0gVjRMMl9GSUVMRF9OT05F
OwogCgotLSAKMi41NC4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
