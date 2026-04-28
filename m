Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3AE8FF886C
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Apr 2026 09:01:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y/JushfFmT2VuMYW25BOghJCrsp0jDwv2u07sjkGrKc=; b=zhW4wjEeFyWKiX
	LEc9S5A9Tmv/zhv8l8fFqTZQ4tluhEue1lrBGOQozC54455F86mR/gPf8Ocv3O77P22gytiJZbuLY
	fctumXXjKVaV/IIpL0VyoVJMXS1YD1bFWEBc0GSgC+FA/BQWCzCg/1j/bPuAV+9wVsz3ahaGEFpA3
	XrPKRc0hsplszSM9Qee7SEUQDjScKxzC94Jn1xtWOvzWdlZxPMA7NjUd7p/ieACQ0qjttxVPAEYRC
	eB71kP7q9ogJ0FKgBcp4Fo6nGvKS208xlrO2UANjxEspAmlIn4PSWSN6YWl3bE1jTxxrkM1mCnUnp
	44zsaBdLlXs0aAhEX8uQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHeJx-00000000xrp-3SoL;
	Tue, 28 Apr 2026 09:01:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHeJi-00000000xWp-364B
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Apr 2026 09:01:29 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1wHeJA-0004Lz-NE; Tue, 28 Apr 2026 11:00:44 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Tue, 28 Apr 2026 11:00:41 +0200
Subject: [PATCH v5 06/29] media: rockchip: rga: fix too small buffer size
MIME-Version: 1.0
Message-Id: <20260428-spu-rga3-v5-6-eb7f5d019d86@pengutronix.de>
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
 =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
X-Mailer: b4 0.15.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_020118_801467_2E7A52E1 
X-CRM114-Status: GOOD (  13.51  )
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

Rml4IHRoZSBjb21tYW5kIGJ1ZmZlciBzaXplIGJlaW5nIG9ubHkgYSBxdWFydGVyIG9mIHRoZSBh
Y3R1YWwgc2l6ZS4KVGhlIFJHQV9DTURCVUZfU0laRSBtYWNybyB3YXMgcG90ZW50aWFsbHkgaW50
ZW5kZWQgdG8gc3BlY2lmeSB0aGUgbGVuZ3RoCm9mIHRoZSBjbWRidWYgdTMyIGFycmF5IHBvaW50
ZXIuIEJ1dCBhcyBpdCdzIHVzZWQgdG8gc3BlY2lmeSB0aGUgc2l6ZSBvZgp0aGUgYWxsb2NhdGlv
biwgd2hpY2ggaXMgY291bnRlZCBpbiBieXRlcy4gVGhlcmVmb3JlIGFkanVzdCB0aGUgbWFjcm8K
c2l6ZSB0byBieXRlcyBhcyBpdCBiZXR0ZXIgbWF0Y2hlcyB0aGUgdmFyaWFibGUgbmFtZSBhbmQg
YWRqdXN0IGl0J3MKdXNlcnMgYWNjb3JkaW5nbHkuCgpBcyB0aGUgY29tbWFuZCBidWZmZXIgaXMg
cmVsYXRpdmVseSBzbWFsbCwgaXQgcHJvYmFibHkgZGlkbid0IGNhdXNlZAphbiBpc3N1ZSBkdWUg
dG8gYmVpbmcgc21hbGxlciB0aGFuIGEgc2luZ2xlIHBhZ2UuCgpGaXhlczogZjdlN2I0OGU2ZDc5
ICgiW21lZGlhXSByb2NrY2hpcC9yZ2E6IHY0bDIgbTJtIHN1cHBvcnQiKQpTaWduZWQtb2ZmLWJ5
OiBTdmVuIFDDvHNjaGVsIDxzLnB1ZXNjaGVsQHBlbmd1dHJvbml4LmRlPgotLS0KIGRyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS1ody5jIHwgMiArLQogZHJpdmVycy9tZWRp
YS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLWh3LmggfCAyICstCiAyIGZpbGVzIGNoYW5nZWQs
IDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtaHcuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZv
cm0vcm9ja2NoaXAvcmdhL3JnYS1ody5jCmluZGV4IDQzZWQ3NDJhMTY0OTIuLmQxNjE4YmIyNDc1
MDEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS1o
dy5jCisrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS1ody5jCkBA
IC00MTQsNyArNDE0LDcgQEAgc3RhdGljIHZvaWQgcmdhX2NtZF9zZXQoc3RydWN0IHJnYV9jdHgg
KmN0eCwKIHsKIAlzdHJ1Y3Qgcm9ja2NoaXBfcmdhICpyZ2EgPSBjdHgtPnJnYTsKIAotCW1lbXNl
dChyZ2EtPmNtZGJ1Zl92aXJ0LCAwLCBSR0FfQ01EQlVGX1NJWkUgKiA0KTsKKwltZW1zZXQocmdh
LT5jbWRidWZfdmlydCwgMCwgUkdBX0NNREJVRl9TSVpFKTsKIAogCXJnYV9jbWRfc2V0X3NyY19h
ZGRyKGN0eCwgc3JjLT5kbWFfZGVzY19wYSk7CiAJLyoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVk
aWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS1ody5oIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9y
bS9yb2NrY2hpcC9yZ2EvcmdhLWh3LmgKaW5kZXggY2M2YmQ3ZjViMDMwMC4uMmI4NTM3YTVmZDBk
NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLWh3
LmgKKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLWh3LmgKQEAg
LTYsNyArNiw3IEBACiAjaWZuZGVmIF9fUkdBX0hXX0hfXwogI2RlZmluZSBfX1JHQV9IV19IX18K
IAotI2RlZmluZSBSR0FfQ01EQlVGX1NJWkUgMHgyMAorI2RlZmluZSBSR0FfQ01EQlVGX1NJWkUg
MHg4MAogCiAvKiBIYXJkd2FyZSBsaW1pdHMgKi8KICNkZWZpbmUgTUFYX1dJRFRIIDgxOTIKCi0t
IAoyLjU0LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
