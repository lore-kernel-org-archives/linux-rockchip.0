Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FE13FF886C
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Apr 2026 09:01:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H0metAryqjoeU7K56wquGbWtfurKTCJCtdAUFhmqf3w=; b=f95vdv/L3hLong
	C8KgE2bEgh2w9HEGSxJvahTA9qsqpUTIPQXEu1B+uBZikYXj673t0bIZNLyXaSCAGkOLVNhOCu9eN
	fNJT0QKkkAKhkpp6IoKLzZ85Jl95Rn2kajkwSj6bLhHzrVWsVPIHwGd0v+pPx5dtEOsqt4GOLgd4s
	pZMYKwCXIGFEb3eMgEoa1BgAwcLYxgjljqK3wfJomUk8KPVslIMGiVishj9A6LuJ3zsugFVYe5o0e
	876T2W3IzGihJBaOI3N+yjE5r9dy2LQx9iT+2pvcf2gVRZgt9Kw9Es2M8IFOH3sxiKqgQ0/N8NwQ5
	0s9IufrIdT9Vl4AzfFxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHeJm-00000000xdL-2MIk;
	Tue, 28 Apr 2026 09:01:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHeJc-00000000xSv-43uu
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Apr 2026 09:01:21 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1wHeJE-0004Lz-7d; Tue, 28 Apr 2026 11:00:48 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Tue, 28 Apr 2026 11:00:47 +0200
Subject: [PATCH v5 12/29] media: rockchip: rga: avoid odd frame sizes for
 YUV formats
MIME-Version: 1.0
Message-Id: <20260428-spu-rga3-v5-12-eb7f5d019d86@pengutronix.de>
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
X-CRM114-CacheID: sfid-20260428_020113_003055_E285FDEB 
X-CRM114-Status: GOOD (  12.48  )
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
aWR0aCBhbmQgaGVpZ2h0IHRvIGJlIGFsaWduZWQgdG8KMiBieXRlcy4KClNpZ25lZC1vZmYtYnk6
IFN2ZW4gUMO8c2NoZWwgPHMucHVlc2NoZWxAcGVuZ3V0cm9uaXguZGU+Ci0tLQogZHJpdmVycy9t
ZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMgfCAxOSArKysrKysrKysrKysrKy0tLS0t
CiAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYyBiL2RyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jCmluZGV4IGY1OTljOTkyODI5ZGQu
Ljc3YjhjN2FiNzQyNzQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2No
aXAvcmdhL3JnYS5jCisrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3Jn
YS5jCkBAIC0zMzcsNiArMzM3LDE5IEBAIHN0YXRpYyBpbnQgdmlkaW9jX3RyeV9mbXQoc3RydWN0
IGZpbGUgKmZpbGUsIHZvaWQgKnByaXYsIHN0cnVjdCB2NGwyX2Zvcm1hdCAqZikKIAlzdHJ1Y3Qg
cmdhX2N0eCAqY3R4ID0gZmlsZV90b19yZ2FfY3R4KGZpbGUpOwogCWNvbnN0IHN0cnVjdCByZ2Ff
aHcgKmh3ID0gY3R4LT5yZ2EtPmh3OwogCXN0cnVjdCByZ2FfZm10ICpmbXQ7CisJc3RydWN0IHY0
bDJfZnJtc2l6ZV9zdGVwd2lzZSBmcm1zaXplID0geworCQkubWluX3dpZHRoID0gaHctPm1pbl93
aWR0aCwKKwkJLm1heF93aWR0aCA9IGh3LT5tYXhfd2lkdGgsCisJCS5taW5faGVpZ2h0ID0gaHct
Pm1pbl9oZWlnaHQsCisJCS5tYXhfaGVpZ2h0ID0gaHctPm1heF9oZWlnaHQsCisJCS5zdGVwX3dp
ZHRoID0gMSwKKwkJLnN0ZXBfaGVpZ2h0ID0gMSwKKwl9OworCisJaWYgKHY0bDJfaXNfZm9ybWF0
X3l1dih2NGwyX2Zvcm1hdF9pbmZvKHBpeF9mbXQtPnBpeGVsZm9ybWF0KSkpIHsKKwkJZnJtc2l6
ZS5zdGVwX3dpZHRoID0gMjsKKwkJZnJtc2l6ZS5zdGVwX2hlaWdodCA9IDI7CisJfQogCiAJaWYg
KFY0TDJfVFlQRV9JU19DQVBUVVJFKGYtPnR5cGUpKSB7CiAJCWNvbnN0IHN0cnVjdCByZ2FfZnJh
bWUgKmZybTsKQEAgLTM1OCwxMSArMzcxLDcgQEAgc3RhdGljIGludCB2aWRpb2NfdHJ5X2ZtdChz
dHJ1Y3QgZmlsZSAqZmlsZSwgdm9pZCAqcHJpdiwgc3RydWN0IHY0bDJfZm9ybWF0ICpmKQogCWlm
ICghZm10KQogCQlmbXQgPSAmaHctPmZvcm1hdHNbMF07CiAKLQlwaXhfZm10LT53aWR0aCA9IGNs
YW1wKHBpeF9mbXQtPndpZHRoLAotCQkJICAgICAgIGh3LT5taW5fd2lkdGgsIGh3LT5tYXhfd2lk
dGgpOwotCXBpeF9mbXQtPmhlaWdodCA9IGNsYW1wKHBpeF9mbXQtPmhlaWdodCwKLQkJCQlody0+
bWluX2hlaWdodCwgaHctPm1heF9oZWlnaHQpOwotCisJdjRsMl9hcHBseV9mcm1zaXplX2NvbnN0
cmFpbnRzKCZwaXhfZm10LT53aWR0aCwgJnBpeF9mbXQtPmhlaWdodCwgJmZybXNpemUpOwogCXY0
bDJfZmlsbF9waXhmbXRfbXAocGl4X2ZtdCwgZm10LT5mb3VyY2MsIHBpeF9mbXQtPndpZHRoLCBw
aXhfZm10LT5oZWlnaHQpOwogCXBpeF9mbXQtPmZpZWxkID0gVjRMMl9GSUVMRF9OT05FOwogCgot
LSAKMi41NC4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
