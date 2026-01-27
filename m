Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40B0FC88E41
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jan 2026 14:40:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NIkt4+7/g9pAZLha5+nlCVejjYBXvuwPpxt4g9abS+s=; b=oML+h0EUBi0/kk
	vTR2kNM88oL0M6RNNsrbS1nawcaaPs5lUx+xUxfTHA5nHSGwkK42/JmNcQNActm4GN0wZl7jX5YLw
	vzapnOd2ABHBDHrWLXEYMtz4bWiyX9kdt8xZYfPUb2cb0HSwIVk6Qbrdcri24Ex1Q/cNbeCKD1WeZ
	ib0Nv6ANlearFIqGfbk6Vnex2BhKD3c4+jJvExi7wTutUtdCoJU5lg1fStZWvmaxpXz5y/rXXYCKv
	a1WgWk54pXxASbOVcu9Tz3+bfXix21shxrq1OvaUTvmeBi5nwtDqk7hKPCng1K2dokTQC0iBZDem8
	NiPPJDtJk5ov8pwLYcYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkkF1-0000000EQ4h-2Lh3;
	Tue, 27 Jan 2026 14:40:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkkEw-0000000EPvd-1Fpx
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Jan 2026 14:40:23 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1vkkEn-0007YT-1K; Tue, 27 Jan 2026 15:40:13 +0100
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Tue, 27 Jan 2026 15:39:18 +0100
Subject: [PATCH v3 09/27] media: rockchip: rga: announce and sync
 colorimetry
MIME-Version: 1.0
Message-Id: <20260127-spu-rga3-v3-9-77b273067beb@pengutronix.de>
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
 =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
X-Mailer: b4 0.14.3
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_064022_340664_FE9E4082 
X-CRM114-Status: GOOD (  14.65  )
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
ZWN0IGV4YWN0bHkgdGhpcyBiZWhhdmlvci4KClNpZ25lZC1vZmYtYnk6IFN2ZW4gUMO8c2NoZWwg
PHMucHVlc2NoZWxAcGVuZ3V0cm9uaXguZGU+Ci0tLQogZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9y
b2NrY2hpcC9yZ2EvcmdhLmMgfCAzNyArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCiAx
IGZpbGUgY2hhbmdlZCwgMzcgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVk
aWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9y
b2NrY2hpcC9yZ2EvcmdhLmMKaW5kZXggMjBkMWQ5Y2I3NjI1ZC4uY2Y5ZDU3MDI1OThmYSAxMDA2
NDQKLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMKKysrIGIv
ZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMKQEAgLTQzNyw2ICs0Mzcs
MTUgQEAgc3RhdGljIGludCB2aWRpb2NfZW51bV9mbXQoc3RydWN0IGZpbGUgKmZpbGUsIHZvaWQg
KnByaXYsIHN0cnVjdCB2NGwyX2ZtdGRlc2MgKmYKIAlmbXQgPSAmZm9ybWF0c1tmLT5pbmRleF07
CiAJZi0+cGl4ZWxmb3JtYXQgPSBmbXQtPmZvdXJjYzsKIAorCWlmIChmLT50eXBlICE9IFY0TDJf
QlVGX1RZUEVfVklERU9fQ0FQVFVSRSAmJgorCSAgICBmLT50eXBlICE9IFY0TDJfQlVGX1RZUEVf
VklERU9fQ0FQVFVSRV9NUExBTkUpCisJCXJldHVybiAwOworCisJLyogYWxsb3cgY2hhbmdpbmcg
dGhlIHF1YW50aXphdGlvbiBhbmQgeGZlciBmdW5jIGZvciBZVVYgZm9ybWF0cyAqLworCWlmICh2
NGwyX2lzX2Zvcm1hdF95dXYodjRsMl9mb3JtYXRfaW5mbyhmLT5waXhlbGZvcm1hdCkpKQorCQlm
LT5mbGFncyB8PSBWNEwyX0ZNVF9GTEFHX0NTQ19RVUFOVElaQVRJT04gfAorCQkJICAgIFY0TDJf
Rk1UX0ZMQUdfQ1NDX1lDQkNSX0VOQzsKKwogCXJldHVybiAwOwogfQogCkBAIC00NTksOCArNDY4
LDI1IEBAIHN0YXRpYyBpbnQgdmlkaW9jX2dfZm10KHN0cnVjdCBmaWxlICpmaWxlLCB2b2lkICpw
cml2LCBzdHJ1Y3QgdjRsMl9mb3JtYXQgKmYpCiBzdGF0aWMgaW50IHZpZGlvY190cnlfZm10KHN0
cnVjdCBmaWxlICpmaWxlLCB2b2lkICpwcml2LCBzdHJ1Y3QgdjRsMl9mb3JtYXQgKmYpCiB7CiAJ
c3RydWN0IHY0bDJfcGl4X2Zvcm1hdF9tcGxhbmUgKnBpeF9mbXQgPSAmZi0+Zm10LnBpeF9tcDsK
KwlzdHJ1Y3QgcmdhX2N0eCAqY3R4ID0gZmlsZV90b19yZ2FfY3R4KGZpbGUpOwogCXN0cnVjdCBy
Z2FfZm10ICpmbXQ7CiAKKwlpZiAoVjRMMl9UWVBFX0lTX0NBUFRVUkUoZi0+dHlwZSkpIHsKKwkJ
Y29uc3Qgc3RydWN0IHJnYV9mcmFtZSAqZnJtOworCisJCWZybSA9IHJnYV9nZXRfZnJhbWUoY3R4
LCBmLT50eXBlKTsKKwkJaWYgKElTX0VSUihmcm0pKQorCQkJcmV0dXJuIFBUUl9FUlIoZnJtKTsK
KworCQlpZiAoIShwaXhfZm10LT5mbGFncyAmIFY0TDJfUElYX0ZNVF9GTEFHX1NFVF9DU0MpKSB7
CisJCQlwaXhfZm10LT5xdWFudGl6YXRpb24gPSBmcm0tPnBpeC5xdWFudGl6YXRpb247CisJCQlw
aXhfZm10LT55Y2Jjcl9lbmMgPSBmcm0tPnBpeC55Y2Jjcl9lbmM7CisJCX0KKwkJLyogZGlzYWxs
b3cgdmFsdWVzIG5vdCBhbm5vdW5jZWQgaW4gdmlkaW9jX2VudW1fZm10ICovCisJCXBpeF9mbXQt
PmNvbG9yc3BhY2UgPSBmcm0tPnBpeC5jb2xvcnNwYWNlOworCQlwaXhfZm10LT54ZmVyX2Z1bmMg
PSBmcm0tPnBpeC54ZmVyX2Z1bmM7CisJfQorCiAJZm10ID0gcmdhX2ZtdF9maW5kKHBpeF9mbXQt
PnBpeGVsZm9ybWF0KTsKIAlpZiAoIWZtdCkKIAkJZm10ID0gJmZvcm1hdHNbMF07CkBAIC01MDYs
NiArNTMyLDE3IEBAIHN0YXRpYyBpbnQgdmlkaW9jX3NfZm10KHN0cnVjdCBmaWxlICpmaWxlLCB2
b2lkICpwcml2LCBzdHJ1Y3QgdjRsMl9mb3JtYXQgKmYpCiAJZnJtLT5mbXQgPSByZ2FfZm10X2Zp
bmQocGl4X2ZtdC0+cGl4ZWxmb3JtYXQpOwogCWZybS0+c3RyaWRlID0gcGl4X2ZtdC0+cGxhbmVf
Zm10WzBdLmJ5dGVzcGVybGluZTsKIAorCS8qCisJICogQ29weSBjb2xvcmltZXRyeSBmcm9tIG91
dHB1dCB0byBjYXB0dXJlIGFzIHJlcXVpcmVkIGJ5IHRoZQorCSAqIHY0bDItY29tcGxpYW5jZSB0
ZXN0cworCSAqLworCWlmIChWNEwyX1RZUEVfSVNfT1VUUFVUKGYtPnR5cGUpKSB7CisJCWN0eC0+
b3V0LnBpeC5jb2xvcnNwYWNlID0gcGl4X2ZtdC0+Y29sb3JzcGFjZTsKKwkJY3R4LT5vdXQucGl4
LnljYmNyX2VuYyA9IHBpeF9mbXQtPnljYmNyX2VuYzsKKwkJY3R4LT5vdXQucGl4LnF1YW50aXph
dGlvbiA9IHBpeF9mbXQtPnF1YW50aXphdGlvbjsKKwkJY3R4LT5vdXQucGl4LnhmZXJfZnVuYyA9
IHBpeF9mbXQtPnhmZXJfZnVuYzsKKwl9CisKIAkvKiBSZXNldCBjcm9wIHNldHRpbmdzICovCiAJ
ZnJtLT5jcm9wLmxlZnQgPSAwOwogCWZybS0+Y3JvcC50b3AgPSAwOwoKLS0gCjIuNTIuMAoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
