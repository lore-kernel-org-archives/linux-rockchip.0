Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC3BFCCD188
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Oct 2025 08:33:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YJX6KtTvH1WvnF98ZNNYhl2eAzFeLTMgPEjuUFm5OBE=; b=K5eMAaExbZh9+u
	oKfaAis2yLct8iskfD7OAjQ87LUwBZ1zOp7NZtbeFZQbDFFEuI9+I7+YqJe9G+QlByBODfvmy0Wk0
	/iQqlVmMEBFvRPO2pUrYelsbuHKpE9S5+x6smdsuweu6296wfXpVsp1Nc8P6hP0YiNwRe5gk9SmgG
	wte/oyTw6cIR3Gxwb6nVoI/DIG8SLmdx9QDSI5B4791FjQN5rB+D5j4lLECtDx0b7IghDEE9AAlFm
	TtYvSFSw3d6MRCmIWztRmtHiKeB8lRlXrtxnzDEz3rzBWH3msGq4mrAKJyLlRuMaYu+l49aQliy45
	GXc6M2BiFHAcdcqqT16g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v638K-00000001YvS-3Hfl;
	Tue, 07 Oct 2025 08:33:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v637z-00000001YSC-1YHV
	for linux-rockchip@lists.infradead.org;
	Tue, 07 Oct 2025 08:33:01 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1v637p-0002Hb-J6; Tue, 07 Oct 2025 10:32:49 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Tue, 07 Oct 2025 10:31:55 +0200
Subject: [PATCH 02/16] media: rockchip: rga: use stride for offset
 calculation
MIME-Version: 1.0
Message-Id: <20251007-spu-rga3-v1-2-36ad85570402@pengutronix.de>
References: <20251007-spu-rga3-v1-0-36ad85570402@pengutronix.de>
In-Reply-To: <20251007-spu-rga3-v1-0-36ad85570402@pengutronix.de>
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
X-Mailer: b4 0.14.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_013259_613111_C13B6CFF 
X-CRM114-Status: GOOD (  13.50  )
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

VXNlIHRoZSBzdHJpZGUgaW5zdGVhZCBvZiB0aGUgd2lkdGggZm9yIHRoZSBvZmZzZXQgY2FsY3Vs
YXRpb24uIFRoaXMKZW5zdXJlcyB0aGF0IHRoZSBieXRlc3BlcmxpbmUgdmFsdWUgZG9lc24ndCBu
ZWVkIHRvIG1hdGNoIHRoZSB3aWR0aAp2YWx1ZSBvZiB0aGUgaW1hZ2UuCgpGdXJ0aGVybW9yZSB0
aGlzIHBhdGNoIHJlbW92ZXMgdGhlIGRlcGVuZGVuY3kgb24gdGhlIHV2X2ZhY3RvciBwcm9wZXJ0
eQphbmQgaW5zdGVhZCByZXVzZXMgdGhlIHY0bDJfZm9ybWF0X2luZm8gdG8gZGV0ZXJtaW5lIHRo
ZSBjb3JyZWN0CmRpdmlzaW9uIGZhY3Rvci4KClNpZ25lZC1vZmYtYnk6IFN2ZW4gUMO8c2NoZWwg
PHMucHVlc2NoZWxAcGVuZ3V0cm9uaXguZGU+Ci0tLQogZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9y
b2NrY2hpcC9yZ2EvcmdhLWJ1Zi5jIHwgMTQgKysrKysrKysrLS0tLS0KIDEgZmlsZSBjaGFuZ2Vk
LCA5IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9t
ZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLWJ1Zi5jIGIvZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLWJ1Zi5jCmluZGV4IDczMGJkZjk4NTY1YTU1NzA0Y2VmOTIz
NDVjY2Y5ZjQ4NmI5OWIwNmUuLmI1ZTZiMWI1MjdjYTgxNzIxYzY0ZDk2ZDk4NGQ1ZTk4MTQ0OWMy
MzcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS1i
dWYuYworKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtYnVmLmMK
QEAgLTE0LDcgKzE0LDYgQEAKICNpbmNsdWRlIDxtZWRpYS92aWRlb2J1ZjItZG1hLXNnLmg+CiAj
aW5jbHVkZSA8bWVkaWEvdmlkZW9idWYyLXY0bDIuaD4KIAotI2luY2x1ZGUgInJnYS1ody5oIgog
I2luY2x1ZGUgInJnYS5oIgogCiBzdGF0aWMgc3NpemVfdCBmaWxsX2Rlc2NyaXB0b3JzKHN0cnVj
dCByZ2FfZG1hX2Rlc2MgKmRlc2MsIHNpemVfdCBtYXhfZGVzYywKQEAgLTkyLDE0ICs5MSwxOSBA
QCBzdGF0aWMgaW50IHJnYV9idWZfaW5pdChzdHJ1Y3QgdmIyX2J1ZmZlciAqdmIpCiAJcmV0dXJu
IDA7CiB9CiAKLXN0YXRpYyBpbnQgZ2V0X3BsYW5lX29mZnNldChzdHJ1Y3QgcmdhX2ZyYW1lICpm
LCBpbnQgcGxhbmUpCitzdGF0aWMgaW50IGdldF9wbGFuZV9vZmZzZXQoc3RydWN0IHJnYV9mcmFt
ZSAqZiwKKwkJCSAgICBjb25zdCBzdHJ1Y3QgdjRsMl9mb3JtYXRfaW5mbyAqaW5mbywKKwkJCSAg
ICBpbnQgcGxhbmUpCiB7CisJdTMyIHN0cmlkZSA9IGYtPnBpeC5wbGFuZV9mbXRbMF0uYnl0ZXNw
ZXJsaW5lOworCiAJaWYgKHBsYW5lID09IDApCiAJCXJldHVybiAwOwogCWlmIChwbGFuZSA9PSAx
KQotCQlyZXR1cm4gZi0+d2lkdGggKiBmLT5oZWlnaHQ7CisJCXJldHVybiBzdHJpZGUgKiBmLT5o
ZWlnaHQ7CiAJaWYgKHBsYW5lID09IDIpCi0JCXJldHVybiBmLT53aWR0aCAqIGYtPmhlaWdodCAr
IChmLT53aWR0aCAqIGYtPmhlaWdodCAvIGYtPmZtdC0+dXZfZmFjdG9yKTsKKwkJcmV0dXJuIHN0
cmlkZSAqIGYtPmhlaWdodCArCisJCSAgICAgICAoc3RyaWRlICogZi0+aGVpZ2h0IC8gaW5mby0+
aGRpdiAvIGluZm8tPnZkaXYpOwogCiAJcmV0dXJuIC1FSU5WQUw7CiB9CkBAIC0xNDUsNyArMTQ5
LDcgQEAgc3RhdGljIGludCByZ2FfYnVmX3ByZXBhcmUoc3RydWN0IHZiMl9idWZmZXIgKnZiKQog
CS8qIEZpbGwgdGhlIHJlbWFpbmluZyBwbGFuZXMgKi8KIAlpbmZvID0gdjRsMl9mb3JtYXRfaW5m
byhmLT5mbXQtPmZvdXJjYyk7CiAJZm9yIChpID0gaW5mby0+bWVtX3BsYW5lczsgaSA8IGluZm8t
PmNvbXBfcGxhbmVzOyBpKyspCi0JCW9mZnNldHNbaV0gPSBnZXRfcGxhbmVfb2Zmc2V0KGYsIGkp
OworCQlvZmZzZXRzW2ldID0gZ2V0X3BsYW5lX29mZnNldChmLCBpbmZvLCBpKTsKIAogCXJidWYt
Pm9mZnNldC55X29mZiA9IG9mZnNldHNbMF07CiAJcmJ1Zi0+b2Zmc2V0LnVfb2ZmID0gb2Zmc2V0
c1sxXTsKCi0tIAoyLjUxLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
