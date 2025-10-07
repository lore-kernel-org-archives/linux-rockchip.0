Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 509DCCCD185
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Oct 2025 08:33:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5mnuV74zENx//LBrht/riu0jtMSFR7+dtdBJGQCANUw=; b=MuABD8JQaq44TL
	DGa95Gv8xyQHbTerMdI3kazOG7mc9FjnWgnfYXo3PJ0CSiv+KVnUXDV3KOdZwEVUdHxR2ynY2g82Z
	urN4f/iERo8FcfCT37jsYKhUJDKgLeGqPC+R7D45ULic3pODyqEX2+hDNsO4cPJdXB9zf0nZyv9v4
	DTO39viYAn5K8b/wYc32SHPf6jpfmoySTasF5vv+e2HRSqJdwCsloEYE4BPNR1eiC44vU6hsvVvuN
	Q4mv4s3s/tYMRTVzQUgWRruXraxmXtx8OyxGmDG/WfgomH4LmMX2IakDOLTf+RoG+xgAwaGkY5pgq
	E4HGLo1qi4dAz7I2kFkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v638b-00000001ZLb-1HJk;
	Tue, 07 Oct 2025 08:33:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6386-00000001YaQ-3AG3
	for linux-rockchip@lists.infradead.org;
	Tue, 07 Oct 2025 08:33:08 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1v637u-0002Hb-C4; Tue, 07 Oct 2025 10:32:54 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Tue, 07 Oct 2025 10:32:01 +0200
Subject: [PATCH 08/16] media: rockchip: rga: remove size from rga_frame
MIME-Version: 1.0
Message-Id: <20251007-spu-rga3-v1-8-36ad85570402@pengutronix.de>
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
X-CRM114-CacheID: sfid-20251007_013306_923212_1525BA47 
X-CRM114-Status: GOOD (  14.09  )
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

VGhlIHNpemUgbWVtYmVyIGlzIG9ubHkgdXNlZCBmb3IgdGhlIG1tdSBwYWdlIHRhYmxlIG1hcHBp
bmcuClRoZXJlZm9yZSBhdm9pZCBzdG9yaW5nIHRoZSB2YWx1ZSBhbmQgaW5zdGVhZCBvbmx5IGNh
bGN1bGF0ZSBpdAppbiBwbGFjZS4gVGhpcyBhbHNvIGF2b2lkcyB0aGUgY2FsY3VsYXRpb24gZW50
aXJlbHkgd2hlbiBhbiBleHRlcm5hbAppb21tdSBpcyB1c2VkLgoKU2lnbmVkLW9mZi1ieTogU3Zl
biBQw7xzY2hlbCA8cy5wdWVzY2hlbEBwZW5ndXRyb25peC5kZT4KLS0tCiBkcml2ZXJzL21lZGlh
L3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtYnVmLmMgfCA2ICsrKysrLQogZHJpdmVycy9tZWRp
YS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMgICAgIHwgOCArKy0tLS0tLQogZHJpdmVycy9t
ZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmggICAgIHwgMSAtCiAzIGZpbGVzIGNoYW5n
ZWQsIDcgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtYnVmLmMgYi9kcml2ZXJzL21lZGlhL3Bs
YXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtYnVmLmMKaW5kZXggMjZiNjZiMGM3ZTAwODMwOGMyNDQz
M2YwNjFhNzM4YTM5ODU0ODRiNi4uZTQ0ZmU4NzBmYjllMzRhYTkzNDA0YjdhNjAwMjJmZTQ0MWFk
ZjhmOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2Evcmdh
LWJ1Zi5jCisrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS1idWYu
YwpAQCAtNzksOSArNzksMTMgQEAgc3RhdGljIGludCByZ2FfYnVmX2luaXQoc3RydWN0IHZiMl9i
dWZmZXIgKnZiKQogCXN0cnVjdCByb2NrY2hpcF9yZ2EgKnJnYSA9IGN0eC0+cmdhOwogCXN0cnVj
dCByZ2FfZnJhbWUgKmYgPSByZ2FfZ2V0X2ZyYW1lKGN0eCwgdmItPnZiMl9xdWV1ZS0+dHlwZSk7
CiAJc2l6ZV90IG5fZGVzYyA9IDA7CisJdTMyIHNpemUgPSAwOworCXU4IGk7CiAKIAlpZiAocmdh
X2hhc19pbnRlcm5hbF9pb21tdShyZ2EpKSB7Ci0JCW5fZGVzYyA9IERJVl9ST1VORF9VUChmLT5z
aXplLCBQQUdFX1NJWkUpOworCQlmb3IgKGkgPSAwOyBpIDwgZi0+cGl4Lm51bV9wbGFuZXM7IGkr
KykKKwkJCXNpemUgKz0gZi0+cGl4LnBsYW5lX2ZtdFtpXS5zaXplaW1hZ2U7CisJCW5fZGVzYyA9
IERJVl9ST1VORF9VUChzaXplLCBQQUdFX1NJWkUpOwogCiAJCXJidWYtPm5fZGVzYyA9IG5fZGVz
YzsKIAkJcmJ1Zi0+ZG1hX2Rlc2MgPSBkbWFfYWxsb2NfY29oZXJlbnQocmdhLT5kZXYsCmRpZmYg
LS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYyBiL2RyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jCmluZGV4IGI4ZTRiZTNmOWFjZDhh
NzNhM2Q0ZTk0N2FlZWVmOTA5NTU0M2ZiNDkuLmM1ZjI1ODY5ZDBjZDA4YTc5NDMzMDk1NGVjNDE0
ZjA0MjhiNjQ3ZDggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAv
cmdhL3JnYS5jCisrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5j
CkBAIC0yMjIsNyArMjIyLDYgQEAgc3RhdGljIGludCByZ2Ffb3BlbihzdHJ1Y3QgZmlsZSAqZmls
ZSkKIAl9OwogCiAJZGVmX2ZyYW1lLnN0cmlkZSA9IChkZWZfZnJhbWUud2lkdGggKiBkZWZfZnJh
bWUuZm10LT5kZXB0aCkgPj4gMzsKLQlkZWZfZnJhbWUuc2l6ZSA9IGRlZl9mcmFtZS5zdHJpZGUg
KiBkZWZfZnJhbWUuaGVpZ2h0OwogCiAJY3R4ID0ga3phbGxvYyhzaXplb2YoKmN0eCksIEdGUF9L
RVJORUwpOwogCWlmICghY3R4KQpAQCAtNDA3LDkgKzQwNiw2IEBAIHN0YXRpYyBpbnQgdmlkaW9j
X3NfZm10KHN0cnVjdCBmaWxlICpmaWxlLCB2b2lkICpwcml2LCBzdHJ1Y3QgdjRsMl9mb3JtYXQg
KmYpCiAJCXJldHVybiBQVFJfRVJSKGZybSk7CiAJZnJtLT53aWR0aCA9IHBpeF9mbXQtPndpZHRo
OwogCWZybS0+aGVpZ2h0ID0gcGl4X2ZtdC0+aGVpZ2h0OwotCWZybS0+c2l6ZSA9IDA7Ci0JZm9y
IChpID0gMDsgaSA8IHBpeF9mbXQtPm51bV9wbGFuZXM7IGkrKykKLQkJZnJtLT5zaXplICs9IHBp
eF9mbXQtPnBsYW5lX2ZtdFtpXS5zaXplaW1hZ2U7CiAJZnJtLT5mbXQgPSByZ2FfZm10X2ZpbmQo
cmdhLCBwaXhfZm10LT5waXhlbGZvcm1hdCk7CiAJZnJtLT5zdHJpZGUgPSBwaXhfZm10LT5wbGFu
ZV9mbXRbMF0uYnl0ZXNwZXJsaW5lOwogCWZybS0+Y29sb3JzcGFjZSA9IHBpeF9mbXQtPmNvbG9y
c3BhY2U7CkBAIC00MjMsMTAgKzQxOSwxMCBAQCBzdGF0aWMgaW50IHZpZGlvY19zX2ZtdChzdHJ1
Y3QgZmlsZSAqZmlsZSwgdm9pZCAqcHJpdiwgc3RydWN0IHY0bDJfZm9ybWF0ICpmKQogCWZybS0+
cGl4ID0gKnBpeF9mbXQ7CiAKIAl2NGwyX2RiZyhkZWJ1ZywgMSwgJnJnYS0+djRsMl9kZXYsCi0J
CSAiWyVzXSBmbXQgLSAlcDRjYyAlZHglZCAoc3RyaWRlICVkLCBzaXplaW1hZ2UgJWQpXG4iLAor
CQkgIlslc10gZm10IC0gJXA0Y2MgJWR4JWQgKHN0cmlkZSAlZClcbiIsCiAJCSAgVjRMMl9UWVBF
X0lTX09VVFBVVChmLT50eXBlKSA/ICJPVVRQVVQiIDogIkNBUFRVUkUiLAogCQkgICZmcm0tPmZt
dC0+Zm91cmNjLCBmcm0tPndpZHRoLCBmcm0tPmhlaWdodCwKLQkJICBmcm0tPnN0cmlkZSwgZnJt
LT5zaXplKTsKKwkJICBmcm0tPnN0cmlkZSk7CiAKIAlmb3IgKGkgPSAwOyBpIDwgcGl4X2ZtdC0+
bnVtX3BsYW5lczsgaSsrKSB7CiAJCXY0bDJfZGJnKGRlYnVnLCAxLCAmcmdhLT52NGwyX2RldiwK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5oIGIv
ZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmgKaW5kZXggODJlYWQ1ODcx
OWYzYmFhZGI3NzU3NTg5NmNhMmQ0MzBhYThlM2RjNi4uNWFlZGRhMmYxODdlNGJmZWY0MmM4NzU1
YzRmYzRiMWVlNTQ1M2U4ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2Nr
Y2hpcC9yZ2EvcmdhLmgKKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2Ev
cmdhLmgKQEAgLTQyLDcgKzQyLDYgQEAgc3RydWN0IHJnYV9mcmFtZSB7CiAKIAkvKiBWYXJpYWJs
ZXMgdGhhdCBjYW4gY2FsY3VsYXRlZCBvbmNlIGFuZCByZXVzZWQgKi8KIAl1MzIgc3RyaWRlOwot
CXUzMiBzaXplOwogfTsKIAogc3RydWN0IHJnYV9kbWFfZGVzYyB7CgotLSAKMi41MS4wCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
