Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99D27CCD186
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Oct 2025 08:33:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FIcVbLHrSNVdTKrChmPEckxsPhf9WmEjVoxUQJPdSF0=; b=eTZcUYXEBPlA7a
	eMeF5zmPfeG7LFoJWJEDo5bLbOp9nf+IJTztVctrsJlfDMZEqRhEluzffhoU4udmyRHKdiA1vrMpO
	Zr9MLLklS5ZSBw59CovXQEA8zmgHAT+JpIc0/VWB8ewNshRnpdV7pkh0Wi1T6Flhrj3D3sm8QPHPx
	eNQMXA8knnU663Yq0ay72iLVzYz4Yc/DUbbsg0aajNUO8VjOvNGdLFLWpxcRg5Cpl7QZu++NAjLt9
	5+3RU/6+qsiL87n8v88VqJ3E2FsinZUvIlDNfPHig2gcrhQJ1/iDuUx5Rt3oLOuLyeuPxEFVdcQMN
	e/wAMPWpQ7hlr+9/59Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v638f-00000001ZT0-2lwb;
	Tue, 07 Oct 2025 08:33:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v638A-00000001Ygw-28HE
	for linux-rockchip@lists.infradead.org;
	Tue, 07 Oct 2025 08:33:12 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1v637w-0002Hb-U9; Tue, 07 Oct 2025 10:32:57 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Tue, 07 Oct 2025 10:32:04 +0200
Subject: [PATCH 11/16] media: rockchip: rga: add iommu restore function
MIME-Version: 1.0
Message-Id: <20251007-spu-rga3-v1-11-36ad85570402@pengutronix.de>
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
X-CRM114-CacheID: sfid-20251007_013311_376756_E8B6DA78 
X-CRM114-Status: GOOD (  14.98  )
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

QWRkIGFuIGlvbW11IHJlc3RvcmUgZnVuY3Rpb24gaW4gcHJlcGFyYXRpb24gZm9yIHRoZSByZ2Ez
IGFkZGl0aW9uLgpUaGlzIGlzIG5lY2Vzc2FyeSBmb3IgYSBzb2Z0IHJlc2V0LCBhcyB0aGUgcmdh
MyB3aWxsIGFsc28gcmVzZXQKaXQncyBpb21tdSBwYWdpbmcgdGFibGUgdG8gMCBhbmQgZGlzYWJs
ZSBwYWdpbmcuCgpUaGUgZW1wdHkgZG9tYWluIGF0dGFjaC9kZXRhY2ggdG8gcmVzdG9yZSB0aGUg
aW9tbXUgaXMgY29waWVkCmZyb20gdGhlIHJrdmRlYyBkcml2ZXIuCgpTaWduZWQtb2ZmLWJ5OiBT
dmVuIFDDvHNjaGVsIDxzLnB1ZXNjaGVsQHBlbmd1dHJvbml4LmRlPgotLS0KIGRyaXZlcnMvbWVk
aWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jIHwgMjQgKysrKysrKysrKysrKysrKysrKysr
KysrCiBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuaCB8ICA3ICsrKysr
KysKIDIgZmlsZXMgY2hhbmdlZCwgMzEgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jIGIvZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMKaW5kZXggY2Q0ZGEwMTY0NTYxMWU1ZmI1MWVkOTRlMDli
NWYxNDYzZGFkNzJjNS4uMGE3MjU4NDFiMGNmYTQxYmJjNWI4NjFiOGY1Y2VhYzI0NTJmYzJiNSAx
MDA2NDQKLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMKKysr
IGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMKQEAgLTksNiArOSw3
IEBACiAjaW5jbHVkZSA8bGludXgvZGVsYXkuaD4KICNpbmNsdWRlIDxsaW51eC9mcy5oPgogI2lu
Y2x1ZGUgPGxpbnV4L2ludGVycnVwdC5oPgorI2luY2x1ZGUgPGxpbnV4L2lvbW11Lmg+CiAjaW5j
bHVkZSA8bGludXgvbW9kdWxlLmg+CiAjaW5jbHVkZSA8bGludXgvb2YuaD4KICNpbmNsdWRlIDxs
aW51eC9wbV9ydW50aW1lLmg+CkBAIC01NjAsNiArNTYxLDE5IEBAIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgdmlkZW9fZGV2aWNlIHJnYV92aWRlb2RldiA9IHsKIAkuZGV2aWNlX2NhcHMgPSBWNEwyX0NB
UF9WSURFT19NMk1fTVBMQU5FIHwgVjRMMl9DQVBfU1RSRUFNSU5HLAogfTsKIAordm9pZCByZ2Ff
aW9tbXVfcmVzdG9yZShzdHJ1Y3Qgcm9ja2NoaXBfcmdhICpyZ2EpCit7CisJaWYgKHJnYS0+ZW1w
dHlfZG9tYWluKSB7CisJCS8qCisJCSAqIFRvIHJld3JpdGUgbWFwcGluZyBpbnRvIHRoZSBhdHRh
Y2hlZCBJT01NVSBjb3JlLCBhdHRhY2ggYSBuZXcgZW1wdHkgZG9tYWluIHRoYXQKKwkJICogd2ls
bCBwcm9ncmFtIGFuIGVtcHR5IHRhYmxlLCB0aGVuIGRldGFjaCBpdCB0byByZXN0b3JlIHRoZSBk
ZWZhdWx0IGRvbWFpbiBhbmQKKwkJICogYWxsIGNhY2hlZCBtYXBwaW5ncy4KKwkJICovCisJCWlv
bW11X2F0dGFjaF9kZXZpY2UocmdhLT5lbXB0eV9kb21haW4sIHJnYS0+ZGV2KTsKKwkJaW9tbXVf
ZGV0YWNoX2RldmljZShyZ2EtPmVtcHR5X2RvbWFpbiwgcmdhLT5kZXYpOworCX0KK30KKwogc3Rh
dGljIGludCByZ2FfcGFyc2VfZHQoc3RydWN0IHJvY2tjaGlwX3JnYSAqcmdhKQogewogCXN0cnVj
dCByZXNldF9jb250cm9sICpjb3JlX3JzdCwgKmF4aV9yc3QsICphaGJfcnN0OwpAQCAtNjU3LDYg
KzY3MSwxMyBAQCBzdGF0aWMgaW50IHJnYV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpw
ZGV2KQogCQlnb3RvIGVycl9wdXRfY2xrOwogCX0KIAorCWlmIChpb21tdV9nZXRfZG9tYWluX2Zv
cl9kZXYocmdhLT5kZXYpKSB7CisJCXJnYS0+ZW1wdHlfZG9tYWluID0gaW9tbXVfcGFnaW5nX2Rv
bWFpbl9hbGxvYyhyZ2EtPmRldik7CisKKwkJaWYgKCFyZ2EtPmVtcHR5X2RvbWFpbikKKwkJCWRl
dl93YXJuKHJnYS0+ZGV2LCAiY2Fubm90IGFsbG9jIG5ldyBlbXB0eSBkb21haW5cbiIpOworCX0K
KwogCXJldCA9IHY0bDJfZGV2aWNlX3JlZ2lzdGVyKCZwZGV2LT5kZXYsICZyZ2EtPnY0bDJfZGV2
KTsKIAlpZiAocmV0KQogCQlnb3RvIGVycl9wdXRfY2xrOwpAQCAtNzQxLDYgKzc2Miw5IEBAIHN0
YXRpYyB2b2lkIHJnYV9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAl2NGwy
X2RldmljZV91bnJlZ2lzdGVyKCZyZ2EtPnY0bDJfZGV2KTsKIAogCXBtX3J1bnRpbWVfZGlzYWJs
ZShyZ2EtPmRldik7CisKKwlpZiAocmdhLT5lbXB0eV9kb21haW4pCisJCWlvbW11X2RvbWFpbl9m
cmVlKHJnYS0+ZW1wdHlfZG9tYWluKTsKIH0KIAogc3RhdGljIGludCBfX21heWJlX3VudXNlZCBy
Z2FfcnVudGltZV9zdXNwZW5kKHN0cnVjdCBkZXZpY2UgKmRldikKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5oIGIvZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmgKaW5kZXggZmM0ODA1YmE0ZThlZjdmYjMxMWY3ODBhMTk4
YmE2YmE0ZDNhZmYxNy4uZTE5YzRjODJhY2E1YWUyMDU2ZjUyZDUyNTEzODA5M2ZiYmI4MWFmOCAx
MDA2NDQKLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmgKKysr
IGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmgKQEAgLTc1LDYgKzc1
LDcgQEAgc3RydWN0IHJvY2tjaGlwX3JnYSB7CiAJdm9pZCBfX2lvbWVtICpyZWdzOwogCXN0cnVj
dCBjbGtfYnVsa19kYXRhIGNsa3NbM107CiAJc3RydWN0IHJvY2tjaGlwX3JnYV92ZXJzaW9uIHZl
cnNpb247CisJc3RydWN0IGlvbW11X2RvbWFpbiAqZW1wdHlfZG9tYWluOwogCiAJLyogdmZkIGxv
Y2sgKi8KIAlzdHJ1Y3QgbXV0ZXggbXV0ZXg7CkBAIC0xMTQsNiArMTE1LDEyIEBAIHN0YXRpYyBp
bmxpbmUgc3RydWN0IHJnYV92Yl9idWZmZXIgKnZiX3RvX3JnYShzdHJ1Y3QgdmIyX3Y0bDJfYnVm
ZmVyICp2YikKIAogc3RydWN0IHJnYV9mcmFtZSAqcmdhX2dldF9mcmFtZShzdHJ1Y3QgcmdhX2N0
eCAqY3R4LCBlbnVtIHY0bDJfYnVmX3R5cGUgdHlwZSk7CiAKKy8qCisgKiBUaGlzIHNob3VsZCBi
ZSBjYWxsZWQgaW4gYW4gaW50ZXJydXB0IGhhbmRsZXIgdG8gbWFrZSBzdXJlIG5vIG1lbW9yeQor
ICogaXMgbWFwcGVkIHRocm91Z2ggdGhlIElPTU1VIHdoaWxlIHRoZSBlbXB0eSBkb21haW4gaXMg
YXR0YWNoZWQuCisgKi8KK3ZvaWQgcmdhX2lvbW11X3Jlc3RvcmUoc3RydWN0IHJvY2tjaGlwX3Jn
YSAqcmdhKTsKKwogLyogUkdBIEJ1ZmZlcnMgTWFuYWdlICovCiBleHRlcm4gY29uc3Qgc3RydWN0
IHZiMl9vcHMgcmdhX3FvcHM7CiAKCi0tIAoyLjUxLjAKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
