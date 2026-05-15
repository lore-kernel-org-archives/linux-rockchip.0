Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2C62CD4F47
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 May 2026 15:33:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w8AIhfqkMitN55Nex7Ee+B/rwAYJjaUek23lndvop0s=; b=upkD0if4DEhrFw
	LBqhBKP+qjsVlF/+NPiUCTAEGudIMPY08FZk5rKXMMRkAUpU8PIY5X6U2z2ixGKZd/9fsi/1Z7OU2
	+yidFUODpbwhL22OzIGNazEORmcQ1CJ1PYGITloh7zVAZpCeVIuZpGp1SdTh3TSB38ckuJ3S/Leak
	MmabdF0VsK/YhB2rSbhF7Rnb+znh0c9OzlWfvq6cpAH3Td/HYqxaeXw6j7ItsDC4g5oa4tGQCZw29
	Jazj25iwar01YTetyz06p/jKYPYJIqkHzjKEOB3afZjHnJfItxdzqLPGQcjPnsEeuu7WXRVzy3NcR
	sayByY0Pd+ottTfdLVmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNuXB-00000008i67-3YV9;
	Fri, 15 May 2026 15:33:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNuX7-00000008hwU-1vKO
	for linux-rockchip@lists.infradead.org;
	Fri, 15 May 2026 15:33:02 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1wNuWz-0005OF-99; Fri, 15 May 2026 17:32:53 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Fri, 15 May 2026 17:32:36 +0200
Subject: [PATCH v6 10/28] media: rockchip: rga: announce and sync
 colorimetry
MIME-Version: 1.0
Message-Id: <20260515-spu-rga3-v6-10-e547152eb9c9@pengutronix.de>
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
X-CRM114-CacheID: sfid-20260515_083301_518088_92022907 
X-CRM114-Status: GOOD (  13.93  )
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

QW5ub3VuY2UgdGhlIGNhcGFiaWxpdHkgdG8gYWRqdXN0IHRoZSBxdWFudGl6YXRpb24gYW5kIHlj
YmNyX2VuYyBvbiB0aGUKY2FwdHVyZSBzaWRlIGFuZCBjaGVjayBpZiB0aGUgU0VUX0NTQyBmbGFn
IGlzIHNldCB3aGVuIHRoZSBjb2xvcmltZXRyeQppcyBjaGFuZ2VkLiBGdXJ0aGVybW9yZSBjb3B5
IHRoZSBjb2xvcmltZXRyeSBmcm9tIHRoZSBvdXRwdXQgdG8gdGhlCmNhcHR1cmUgc2lkZSB0byBm
aXggdGhlIGN1cnJlbnRseSBmYWlsaW5nIHY0bDItY29tcGxpYW5jZSB0ZXN0cywgd2hpY2gKZXhw
ZWN0IGV4YWN0bHkgdGhpcyBiZWhhdmlvci4KClJldmlld2VkLWJ5OiBOaWNvbGFzIER1ZnJlc25l
IDxuaWNvbGFzLmR1ZnJlc25lQGNvbGxhYm9yYS5jb20+ClNpZ25lZC1vZmYtYnk6IFN2ZW4gUMO8
c2NoZWwgPHMucHVlc2NoZWxAcGVuZ3V0cm9uaXguZGU+Ci0tLQogZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMgfCAzNyArKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrCiAxIGZpbGUgY2hhbmdlZCwgMzcgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jIGIvZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMKaW5kZXggY2E4ZDhhNTNkYzI1MS4uOGMzNGY3M2Q2OTc2
NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMK
KysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMKQEAgLTQzNyw2
ICs0MzcsMTUgQEAgc3RhdGljIGludCB2aWRpb2NfZW51bV9mbXQoc3RydWN0IGZpbGUgKmZpbGUs
IHZvaWQgKnByaXYsIHN0cnVjdCB2NGwyX2ZtdGRlc2MgKmYKIAlmbXQgPSAmZm9ybWF0c1tmLT5p
bmRleF07CiAJZi0+cGl4ZWxmb3JtYXQgPSBmbXQtPmZvdXJjYzsKIAorCWlmIChmLT50eXBlICE9
IFY0TDJfQlVGX1RZUEVfVklERU9fQ0FQVFVSRSAmJgorCSAgICBmLT50eXBlICE9IFY0TDJfQlVG
X1RZUEVfVklERU9fQ0FQVFVSRV9NUExBTkUpCisJCXJldHVybiAwOworCisJLyogYWxsb3cgY2hh
bmdpbmcgdGhlIHF1YW50aXphdGlvbiBhbmQgeGZlciBmdW5jIGZvciBZVVYgZm9ybWF0cyAqLwor
CWlmICh2NGwyX2lzX2Zvcm1hdF95dXYodjRsMl9mb3JtYXRfaW5mbyhmLT5waXhlbGZvcm1hdCkp
KQorCQlmLT5mbGFncyB8PSBWNEwyX0ZNVF9GTEFHX0NTQ19RVUFOVElaQVRJT04gfAorCQkJICAg
IFY0TDJfRk1UX0ZMQUdfQ1NDX1lDQkNSX0VOQzsKKwogCXJldHVybiAwOwogfQogCkBAIC00NTks
OCArNDY4LDI1IEBAIHN0YXRpYyBpbnQgdmlkaW9jX2dfZm10KHN0cnVjdCBmaWxlICpmaWxlLCB2
b2lkICpwcml2LCBzdHJ1Y3QgdjRsMl9mb3JtYXQgKmYpCiBzdGF0aWMgaW50IHZpZGlvY190cnlf
Zm10KHN0cnVjdCBmaWxlICpmaWxlLCB2b2lkICpwcml2LCBzdHJ1Y3QgdjRsMl9mb3JtYXQgKmYp
CiB7CiAJc3RydWN0IHY0bDJfcGl4X2Zvcm1hdF9tcGxhbmUgKnBpeF9mbXQgPSAmZi0+Zm10LnBp
eF9tcDsKKwlzdHJ1Y3QgcmdhX2N0eCAqY3R4ID0gZmlsZV90b19yZ2FfY3R4KGZpbGUpOwogCXN0
cnVjdCByZ2FfZm10ICpmbXQ7CiAKKwlpZiAoVjRMMl9UWVBFX0lTX0NBUFRVUkUoZi0+dHlwZSkp
IHsKKwkJY29uc3Qgc3RydWN0IHJnYV9mcmFtZSAqZnJtOworCisJCWZybSA9IHJnYV9nZXRfZnJh
bWUoY3R4LCBmLT50eXBlKTsKKwkJaWYgKElTX0VSUihmcm0pKQorCQkJcmV0dXJuIFBUUl9FUlIo
ZnJtKTsKKworCQlpZiAoIShwaXhfZm10LT5mbGFncyAmIFY0TDJfUElYX0ZNVF9GTEFHX1NFVF9D
U0MpKSB7CisJCQlwaXhfZm10LT5xdWFudGl6YXRpb24gPSBmcm0tPnBpeC5xdWFudGl6YXRpb247
CisJCQlwaXhfZm10LT55Y2Jjcl9lbmMgPSBmcm0tPnBpeC55Y2Jjcl9lbmM7CisJCX0KKwkJLyog
ZGlzYWxsb3cgdmFsdWVzIG5vdCBhbm5vdW5jZWQgaW4gdmlkaW9jX2VudW1fZm10ICovCisJCXBp
eF9mbXQtPmNvbG9yc3BhY2UgPSBmcm0tPnBpeC5jb2xvcnNwYWNlOworCQlwaXhfZm10LT54ZmVy
X2Z1bmMgPSBmcm0tPnBpeC54ZmVyX2Z1bmM7CisJfQorCiAJZm10ID0gcmdhX2ZtdF9maW5kKHBp
eF9mbXQtPnBpeGVsZm9ybWF0KTsKIAlpZiAoIWZtdCkKIAkJZm10ID0gJmZvcm1hdHNbMF07CkBA
IC01MDYsNiArNTMyLDE3IEBAIHN0YXRpYyBpbnQgdmlkaW9jX3NfZm10KHN0cnVjdCBmaWxlICpm
aWxlLCB2b2lkICpwcml2LCBzdHJ1Y3QgdjRsMl9mb3JtYXQgKmYpCiAJZnJtLT5mbXQgPSByZ2Ff
Zm10X2ZpbmQocGl4X2ZtdC0+cGl4ZWxmb3JtYXQpOwogCWZybS0+c3RyaWRlID0gcGl4X2ZtdC0+
cGxhbmVfZm10WzBdLmJ5dGVzcGVybGluZTsKIAorCS8qCisJICogQ29weSBjb2xvcmltZXRyeSBm
cm9tIG91dHB1dCB0byBjYXB0dXJlIGFzIHJlcXVpcmVkIGJ5IHRoZQorCSAqIHY0bDItY29tcGxp
YW5jZSB0ZXN0cworCSAqLworCWlmIChWNEwyX1RZUEVfSVNfT1VUUFVUKGYtPnR5cGUpKSB7CisJ
CWN0eC0+b3V0LnBpeC5jb2xvcnNwYWNlID0gcGl4X2ZtdC0+Y29sb3JzcGFjZTsKKwkJY3R4LT5v
dXQucGl4LnljYmNyX2VuYyA9IHBpeF9mbXQtPnljYmNyX2VuYzsKKwkJY3R4LT5vdXQucGl4LnF1
YW50aXphdGlvbiA9IHBpeF9mbXQtPnF1YW50aXphdGlvbjsKKwkJY3R4LT5vdXQucGl4LnhmZXJf
ZnVuYyA9IHBpeF9mbXQtPnhmZXJfZnVuYzsKKwl9CisKIAkvKiBSZXNldCBjcm9wIHNldHRpbmdz
ICovCiAJZnJtLT5jcm9wLmxlZnQgPSAwOwogCWZybS0+Y3JvcC50b3AgPSAwOwoKLS0gCjIuNTQu
MAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
