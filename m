Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6C49C982CB
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Sep 2026 15:15:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qRISO+HXJySkuhfWCkgCUrx1k1b1LrqQFFEEg6WN740=; b=fkz6AEWHmx32lJ
	8yOq1ptD0fc2wpJ+zVgbJhkh0SBXjU2WFfJrzI4o6YMwPlcFDVgXrOoHk4+z0E6zw90J1UO6zkKn/
	Q+HveImnCyEq0EG+uZZUBkM2xKvAwQLhKRp/NXCLCC6Vk3YkeQRgwdkBi5pJyl99M67CUYQ4N9xMb
	EilUnSaDNXMPJkNoKKJYKOiPrcbZUB3ajdd8E+P9PUDOKjkz42AbfW645iK2JL8i0kzAZwbPkWAMH
	54Dcdz3Gq/S9DPcN/UUBCuhhyHce1MY6D7bcNvIPr9A8USERtaj3zBTE9gAvFb4ImSG5iqzYM8ED/
	xNCsJzvJIRicHw7SXTkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6rLx-00000009Xsn-36vt;
	Wed, 16 Sep 2026 15:15:17 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6rLq-00000009Xgk-2d7G;
	Wed, 16 Sep 2026 15:15:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=jOrO+lzOsedSdgTaJ6SomY+EHWnWkwszxQMkizdHQMw=; b=Fx16KIUVX2HJnopCml98K/eVec
	7DBa8tb11RWm29p5bSWH4wtBcNdJ+39b2XM1PCPAWFYVvu3nmadsplMkkYVqL2qBUlThB6w4Tiqof
	L7ipSgN4YmpsB0afGhuR0/LIIfKCrWF0TYKMKNqJ16D2YB0dpVGXfE0qlyWQWMRJLsQ0/IgLZBTdI
	zy8PJK3gWROYqiMgSCfrt9ap3cD/ZN4GuB7fk4Yun0NVz+XhTs7vnc+hJQEFI78dK1TpgPISTDAw6
	9Et0WsDHxOb2RoVXM/E/iVZJaEA+aSf2KnORnd88VvcSxlcH3nScudiH4luFuOvM0iygyC1nJUDXM
	9yWJfBVA==;
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x6rLg-000000081lx-1cL3;
	Wed, 16 Sep 2026 15:15:07 +0000
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
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id A5AD3205A03;
	Wed, 16 Sep 2026 17:14:58 +0200 (CEST)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1x6rGn-001Fsx-2l;
	Wed, 16 Sep 2026 17:09:57 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Wed, 16 Sep 2026 17:09:57 +0200
Subject: [PATCH v2 16/17] media: rockchip: rga: put all cores into first
 core iommu domain
MIME-Version: 1.0
Message-Id: <20260916-spu-rga3multicore-v2-16-23aa2cb74e61@pengutronix.de>
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
X-CRM114-CacheID: sfid-20260916_161505_254867_E9562647 
X-CRM114-Status: GOOD (  14.82  )
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

UHV0IGFsbCBjb3JlcyBpbnRvIHRoZSBpb21tdSBkb21haW4gb2YgdGhlIGZpcnN0IGNvcmUgdG8g
YWxsb3cgdGhlbSB0bwpiZSB1c2VkIGJ5IGFueSBjb3JlLiBBbGwgYnVmZmVycyBhY2Nlc3NlZCBi
eSB0aGUgaGFyZHdhcmUgYXJlIGFsbG9jYXRlZApvbiB0aGUgZmlyc3QgY29yZSwgYXMgdGhlIHNj
aGVkdWxpbmcgdG8gYSBzcGVjaWZpYyBjb3JlIGlzIGRvbmUgYWZ0ZXIKdGhlIGFsbG9jYXRpb24u
IFRoZXJlZm9yZSBwdXQgYWxsIGNvcmVzIGludG8gdGhlIHNhbWUgZG9tYWluIHRvIGhhdmUgdGhl
CnNhbWUgaW9tbXUgbWFwcGluZyBvbiBhbGwgY29yZXMuCgpTaWduZWQtb2ZmLWJ5OiBTdmVuIFDD
vHNjaGVsIDxzLnB1ZXNjaGVsQHBlbmd1dHJvbml4LmRlPgoKLS0tCnYyCi0gRml4ZWQgZG9tYWlu
IG5vdCBiZWluZyBhbiBlcnIgcHRyCiAgKGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8y
MDI2MDYwNi1zcHUtcmdhM211bHRpY29yZS12MS0wLTNlYzJiMTU2NzVmNyU0MHBlbmd1dHJvbml4
LmRlP3BhcnQ9MTQpCi0gRGV0YWNoIGRvbWFpbiBvbiB1bmJpbmQgY2FsbGJhY2sKICAoaHR0cHM6
Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNjA2LXNwdS1yZ2EzbXVsdGljb3JlLXYxLTAt
M2VjMmIxNTY3NWY3JTQwcGVuZ3V0cm9uaXguZGU/cGFydD0xNCkKLS0tCiBkcml2ZXJzL21lZGlh
L3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYyB8IDIyICsrKysrKysrKysrKysrKysrKysrKysK
IDEgZmlsZSBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9t
ZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3Jt
L3JvY2tjaGlwL3JnYS9yZ2EuYwppbmRleCA1MzQ4ZmNjMDNjNTI1Li5iMmVlYWUwYTYxNzcxIDEw
MDY0NAotLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYworKysg
Yi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYwpAQCAtMTAsNiArMTAs
NyBAQAogI2luY2x1ZGUgPGxpbnV4L2RlbGF5Lmg+CiAjaW5jbHVkZSA8bGludXgvZnMuaD4KICNp
bmNsdWRlIDxsaW51eC9pbnRlcnJ1cHQuaD4KKyNpbmNsdWRlIDxsaW51eC9pb21tdS5oPgogI2lu
Y2x1ZGUgPGxpbnV4L21vZHVsZS5oPgogI2luY2x1ZGUgPGxpbnV4L29mLmg+CiAjaW5jbHVkZSA8
bGludXgvb2ZfcGxhdGZvcm0uaD4KQEAgLTc2MSw2ICs3NjIsMTkgQEAgc3RhdGljIGludCByZ2Ff
Y29yZV9iaW5kKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGRldmljZSAqbWFzdGVyLCB2b2lk
ICpkYXRhKQogCQkgIHJnYS0+dmVyc2lvbi5tYWpvciwgcmdhLT52ZXJzaW9uLm1pbm9yKTsKIAog
CWlmIChyZ2EtPm51bV9jb3JlcykgeworCQkvKiBBdHRhY2ggdG8gdGhlIGZpcnN0IGNvcmVzIGlv
bW11ICovCisJCXN0cnVjdCBpb21tdV9kb21haW4gKmRvbWFpbiA9IGlvbW11X2dldF9kb21haW5f
Zm9yX2RldihyZ2EtPmNvcmVzWzBdLT5kZXYpOworCisJCWlmICghZG9tYWluKSB7CisJCQlkZXZf
ZXJyKGNvcmUtPmRldiwgIkNvdWxkbid0IGdldCBkb21haW4gb2YgdGhlIGZpcnN0IGNvcmVcbiIp
OworCQkJcmV0dXJuIC1FTk9ERVY7CisJCX0KKwkJcmV0ID0gaW9tbXVfYXR0YWNoX2RldmljZShk
b21haW4sIGNvcmUtPmRldik7CisJCWlmIChyZXQpIHsKKwkJCWRldl9lcnIoY29yZS0+ZGV2LCAi
Q291bGRuJ3QgYXR0YWNoIHRvIHRoZSBkb21haW4gb2YgdGhlIGZpcnN0IGNvcmVcbiIpOworCQkJ
cmV0dXJuIHJldDsKKwkJfQorCiAJCS8qIHdlIGFyZSBub3QgdGhlIGZpcnN0IGNvcmUsIGV4cGVj
dCB0aGF0IHdlIGhhdmUgdGhlIHNhbWUgdmVyc2lvbiAqLwogCQlpZiAocmdhLT52ZXJzaW9uLm1h
am9yICE9IHZlcnNpb24ubWFqb3IgfHwgcmdhLT52ZXJzaW9uLm1pbm9yICE9IHZlcnNpb24ubWlu
b3IpIHsKIAkJCXY0bDJfZXJyKCZyZ2EtPnY0bDJfZGV2LCAiRGV0ZWN0ZWQgbXVsdGktY29yZSBz
ZXR1cCB3aXRoIGRpZmZlcmVudCBjb3JlIHZlcnNpb25zIVxuIik7CkBAIC03ODgsNiArODAyLDE0
IEBAIHN0YXRpYyB2b2lkIHJnYV9jb3JlX3VuYmluZChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVj
dCBkZXZpY2UgKm1hc3RlciwKIAkJaWYgKHJnYS0+Y29yZXNbaV0gIT0gY29yZSkKIAkJCWNvbnRp
bnVlOwogCisJCWlmIChpKSB7CisJCQkvKiBEZXRhY2ggZnJvbSB0aGUgZmlyc3QgY29yZSBpb21t
dSAqLworCQkJc3RydWN0IGlvbW11X2RvbWFpbiAqZG9tYWluID0gaW9tbXVfZ2V0X2RvbWFpbl9m
b3JfZGV2KHJnYS0+Y29yZXNbMF0tPmRldik7CisKKwkJCWlmIChkb21haW4pCisJCQkJaW9tbXVf
ZGV0YWNoX2RldmljZShkb21haW4sIGNvcmUtPmRldik7CisJCX0KKwogCQlyZ2EtPmNvcmVzW2ld
ID0gcmdhLT5jb3Jlc1tyZ2EtPm51bV9jb3JlcyAtIDFdOwogCQlyZ2EtPm51bV9jb3Jlcy0tOwog
CQlicmVhazsKCi0tIAoyLjU1LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
