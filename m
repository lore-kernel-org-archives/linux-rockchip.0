Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BB19CCD187
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Oct 2025 08:33:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kfDv9p5O/vgNDoz/KJzcefuuFvD/SrwNhJfFsuM+Wco=; b=Q9jftVCPB15dIu
	ionNbzC4YSdpYyccYrw2anp7R9wmJPSaT9vE0fPg17GLMlvpv0b/KIXHaNceZ5Bi079wCzF7UtXmw
	aGZ1dAwxbALopFjZ/GU0LVxEZL1Z76rlynZiGs+k5Qwkcco5p8hhGGI2KejyGtOskElKZKigr61l6
	mNnPNlHSszjugop/sDXM1l9cM1/cUIpA2mJKAIhoCvHqp5Sbz/tYSQkAec6bQ/zI6AI26gctW4M2s
	fwBnDVQy4cMUboMyHqdpek7jX4Xvwywp4Azgj8ZqD7XjTtvSBxNi0gj3WCFbuFpXfpWqfbXDfcmFu
	Nrjje9OHujA9dsmqJmBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v638H-00000001Yoc-1oee;
	Tue, 07 Oct 2025 08:33:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v637y-00000001YRE-3CJG
	for linux-rockchip@lists.infradead.org;
	Tue, 07 Oct 2025 08:33:00 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1v637q-0002Hb-C9; Tue, 07 Oct 2025 10:32:50 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Tue, 07 Oct 2025 10:31:56 +0200
Subject: [PATCH 03/16] media: rockchip: rga: align stride to 16 bytes
MIME-Version: 1.0
Message-Id: <20251007-spu-rga3-v1-3-36ad85570402@pengutronix.de>
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
X-CRM114-CacheID: sfid-20251007_013258_839858_43366884 
X-CRM114-Status: GOOD (  13.85  )
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

QWxpZ24gdGhlIHN0cmlkZSB0byBhIG11bHRpcGxlIG9mIDE2IGFjY29yZGluZyB0byB0aGUgUkdB
MyByZXF1aXJlbWVudHMKbWVudGlvbmVkIGluIHRoZSBkYXRhc2hlZXQuIFRoaXMgYWxzbyBlbnN1
cmVzIHRoYXQgdGhlIHN0cmlkZSBvZiB0aGUgUkdBMgppcyBhbGlnbmVkIHRvIDQgYnl0ZXMsIGFz
IGl0IG5lZWRzIHRvIGRpdmlkZSB0aGUgdmFsdWUgYnkgNCAob25lIHdvcmQpCmJlZm9yZSBzdG9y
aW5nIGl0IGluIHRoZSByZWdpc3Rlci4KCkluY3JlYXNpbmcgdGhlIHN0cmlkZSBmb3IgdGhlIGFs
aWdubWVudCBhbHNvIHJlcXVpcmVzIHRvIGluY3JlYXNlIHRoZQpzaXplaW1hZ2UgdmFsdWUuIFRo
aXMgaXMgdXN1YWxseSBoYW5kbGVkIGJ5IHY0bDJfZmlsbF9waXhmbXRfbXAsIGJ1dAppdCBkb2Vz
bid0IGFsbG93IHRvIHNldCBhIHN0cmlkZSBhbGlnbm1lbnQuIFRoZXJlZm9yZSB1c2UgdGhlIGdl
bmVyYXRlZAp2YWx1ZXMgdG8gY2FsY3VsYXRlIHRoZSB0b3RhbCBudW1iZXIgb2YgbGluZXMgdG8g
cHJvcGVybHkgdXBkYXRlIHRoZQpzaXplaW1hZ2UgdmFsdWUgYWZ0ZXIgdGhlIGJ5dGVzcGVybGlu
ZSBoYXMgYmVlbiBhbGlnbmVkLgoKU2lnbmVkLW9mZi1ieTogU3ZlbiBQw7xzY2hlbCA8cy5wdWVz
Y2hlbEBwZW5ndXRyb25peC5kZT4KLS0tCiBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlw
L3JnYS9yZ2EuYyB8IDIxICsrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDIx
IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tj
aGlwL3JnYS9yZ2EuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5j
CmluZGV4IDY0MzgxMTlhNmM3YWVmZjFlODllN2FhOTVkY2Q1ZDI5MjFmZWZhMDguLjNjYjdjZTQ3
MGM0N2UzOWQ2OTRlODE3Njg3NWE3NWZhZDI3MTdmOTYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVk
aWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jCisrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZv
cm0vcm9ja2NoaXAvcmdhL3JnYS5jCkBAIC00NTksNiArNDU5LDI1IEBAIHN0YXRpYyBpbnQgdmlk
aW9jX2VudW1fZm10KHN0cnVjdCBmaWxlICpmaWxlLCB2b2lkICpwcml2LCBzdHJ1Y3QgdjRsMl9m
bXRkZXNjICpmCiAJcmV0dXJuIDA7CiB9CiAKK3N0YXRpYyB2b2lkIGFsaWduX3BpeGZtdChzdHJ1
Y3QgdjRsMl9waXhfZm9ybWF0X21wbGFuZSAqcGl4X2ZtdCkKK3sKKwlpbnQgbGluZXM7CisJc3Ry
dWN0IHY0bDJfcGxhbmVfcGl4X2Zvcm1hdCAqZm10OworCisJLyoKKwkgKiBBbGlnbiBzdHJpZGUg
dG8gMTYgZm9yIHRoZSBSR0EzIChiYXNlZCBvbiB0aGUgZGF0YXNoZWV0KQorCSAqIFRvIG5vdCBk
aXNtaXNzIHRoZSB2NGwyX2ZpbGxfcGl4Zm10X21wIGhlbHBlcgorCSAqIChhbmQgbWFudWFsbHkg
d3JpdGUgaXQgYWdhaW4pLCB3ZSdyZSBhcHByb3hpbWF0aW5nIHRoZSBuZXcgc2l6ZWltYWdlCisJ
ICovCisJZm9yIChmbXQgPSBwaXhfZm10LT5wbGFuZV9mbXQ7CisJICAgICBmbXQgPCBwaXhfZm10
LT5wbGFuZV9mbXQgKyBwaXhfZm10LT5udW1fcGxhbmVzOworCSAgICAgZm10KyspIHsKKwkJbGlu
ZXMgPSBESVZfUk9VTkRfVVAoZm10LT5zaXplaW1hZ2UsIGZtdC0+Ynl0ZXNwZXJsaW5lKTsKKwkJ
Zm10LT5ieXRlc3BlcmxpbmUgPSAoZm10LT5ieXRlc3BlcmxpbmUgKyAweGYpICYgfjB4ZjsKKwkJ
Zm10LT5zaXplaW1hZ2UgPSBmbXQtPmJ5dGVzcGVybGluZSAqIGxpbmVzOworCX0KK30KKwogc3Rh
dGljIGludCB2aWRpb2NfZ19mbXQoc3RydWN0IGZpbGUgKmZpbGUsIHZvaWQgKnByaXYsIHN0cnVj
dCB2NGwyX2Zvcm1hdCAqZikKIHsKIAlzdHJ1Y3QgdjRsMl9waXhfZm9ybWF0X21wbGFuZSAqcGl4
X2ZtdCA9ICZmLT5mbXQucGl4X21wOwpAQCAtNDc0LDYgKzQ5Myw3IEBAIHN0YXRpYyBpbnQgdmlk
aW9jX2dfZm10KHN0cnVjdCBmaWxlICpmaWxlLCB2b2lkICpwcml2LCBzdHJ1Y3QgdjRsMl9mb3Jt
YXQgKmYpCiAJCXJldHVybiBQVFJfRVJSKGZybSk7CiAKIAl2NGwyX2ZpbGxfcGl4Zm10X21wKHBp
eF9mbXQsIGZybS0+Zm10LT5mb3VyY2MsIGZybS0+d2lkdGgsIGZybS0+aGVpZ2h0KTsKKwlhbGln
bl9waXhmbXQocGl4X2ZtdCk7CiAKIAlwaXhfZm10LT5maWVsZCA9IFY0TDJfRklFTERfTk9ORTsK
IAlwaXhfZm10LT5jb2xvcnNwYWNlID0gZnJtLT5jb2xvcnNwYWNlOwpAQCAtNDk2LDYgKzUxNiw3
IEBAIHN0YXRpYyBpbnQgdmlkaW9jX3RyeV9mbXQoc3RydWN0IGZpbGUgKmZpbGUsIHZvaWQgKnBy
aXYsIHN0cnVjdCB2NGwyX2Zvcm1hdCAqZikKIAkJCQkodTMyKU1JTl9IRUlHSFQsICh1MzIpTUFY
X0hFSUdIVCk7CiAKIAl2NGwyX2ZpbGxfcGl4Zm10X21wKHBpeF9mbXQsIGZtdC0+Zm91cmNjLCBw
aXhfZm10LT53aWR0aCwgcGl4X2ZtdC0+aGVpZ2h0KTsKKwlhbGlnbl9waXhmbXQocGl4X2ZtdCk7
CiAJcGl4X2ZtdC0+ZmllbGQgPSBWNEwyX0ZJRUxEX05PTkU7CiAKIAlyZXR1cm4gMDsKCi0tIAoy
LjUxLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
