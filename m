Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BAF5C64ED6
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Feb 2023 11:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ucr7J1/mDZW4Ka7nhbrVn8FT0ozr+vRvQLaIZmxxx6c=; b=Tqf5L7BJpPNCDI
	y86FeAtdy5veLFQjSOFo7nGXafiyuR5m8OvMAb3W9wUH1fP+NHIWAhLctComVyMVf6F5uQZxggblm
	JUFdxlOMd71Roh6bk6QKVzSQaI1xXtGSDEVycKsaOJ2+1jdLdzf5h9uyvQuEM4r/BW17CgMNDQmfs
	a10ABUyAT+E8qyqQz4e8hMjrurDZLYeX6+ShDoy/qgVe6LspoKixOki7/vtSBtNmD0UuvdBxQ1Jtg
	lB6h8yb4/Y04YGnsoOSJ1FvuujvhPdUxzhPgQnd3B3sMaOGdyUZ468STspaTLXXOW72haBUTNLDBr
	Y79PYOsjVLk2DTCPv77Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWy5H-00CxDx-5j; Tue, 28 Feb 2023 11:23:51 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWy4o-00Cwuz-79
	for linux-rockchip@lists.infradead.org; Tue, 28 Feb 2023 11:23:27 +0000
Received: by mail-wm1-x32a.google.com with SMTP id l7-20020a05600c4f0700b003e79fa98ce1so5633880wmq.2
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Feb 2023 03:23:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1677583398;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l/7e8N8b7gEax6Mp/tnE3jBK1MXlLnukXxRJZ25cEfk=;
        b=ugP/qb79XHWui7cXoByzxM7H5Ndd6EHD4As17TTDz/sL0vxrreM6S0Rd5mZjO36jhS
         bkOCyiQBq6LshL55L2+LTtMrsSbvyQL8VFoIy5+OV9OaJw8jw6HilSIlnp+Gn9I8AhP8
         PVpBfzKVNC2sDg+aBEiDVs7F277a5MBZff+hEOHwrdOLr6Q1yQJKU4DvzdNkeArp1ra5
         0OfptdKpeXlwk6HSTURpPqGYvwrHZIJOaShMYz2MTMQB2BhUcQM8/U/NAnsxFeb8TPaJ
         e3oAkyn41d2BMaRwTwUsPZUhU+mhjERUjjUTEgkKa/9Vh4xkCtDLkIDACp+pqwpYuch9
         nBmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677583398;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l/7e8N8b7gEax6Mp/tnE3jBK1MXlLnukXxRJZ25cEfk=;
        b=GT/UaT78tnRmYZcSdWwz1YjCeysJ4XbmkJMRFfW+RGyVPDSlsJq+UQDykOd2JHHCnd
         lsjhVE/UQQRhYhYEYrYDA1Nzb+cjGpa42tnYckB9XItaKIgiWW4oEcG636xYNri7c+ez
         x1TGw1n4nl/OmlF+Jn5LLMnu2eDqrsAFW8lR5FyEbIfaoj3UAkzHYJOh655MEDeWj/Ju
         6sZ5OxV2GJ769Uyn+wYT+yl3qvfYz2vVpPLKr4TCHvuj9rw3llmdgAmacjoK6Dp0N2tP
         zrsjVIUIVLRqsCAU1BR/LMXE/KYqTAqivlSTo0GiqCDi9ct3VHJRvvKb7ecVPygKSuoA
         4d7Q==
X-Gm-Message-State: AO0yUKUUlS9SmBCYR4lkdzxPjJNNrv+BNmrDmbirm2c9Xbt9lm9qNJFO
	ThLYC7SeYGMhGe6oLKZCoZlOzQ==
X-Google-Smtp-Source: AK7set9c3Ot0db0lPXGiqEvJ1x9YekQ9o8QVG2P5/jvd8AyEHv4NMlOKqer91eZV2Kw1LxNyKaYIDw==
X-Received: by 2002:a05:600c:19d4:b0:3e1:bfc:d16e with SMTP id u20-20020a05600c19d400b003e10bfcd16emr1866787wmq.39.1677583398360;
        Tue, 28 Feb 2023 03:23:18 -0800 (PST)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:6830:6390:2815:b6a5])
        by smtp.gmail.com with ESMTPSA id z5-20020a5d6545000000b002c5501a5803sm9598130wrv.65.2023.02.28.03.23.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Feb 2023 03:23:17 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: rafael@kernel.org,
	daniel.lezcano@linaro.org
Cc: linux-pm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Amit Kucheria <amitk@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	=?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
	Heiko Stuebner <heiko@sntech.de>,
	Mark Brown <broonie@kernel.org>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Stefan Wahren <stefan.wahren@i2se.com>,
	Baolin Wang <baolin.wang@linux.alibaba.com>,
	ye xingchen <ye.xingchen@zte.com.cn>,
	linux-rpi-kernel@lists.infradead.org (moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE),
	linux-arm-kernel@lists.infradead.org (moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE),
	linux-renesas-soc@vger.kernel.org (open list:RENESAS R-CAR THERMAL DRIVERS),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support)
Subject: [PATCH v4 07/19] thermal/hwmon: Do not set no_hwmon before calling thermal_add_hwmon_sysfs()
Date: Tue, 28 Feb 2023 12:22:26 +0100
Message-Id: <20230228112238.2312273-8-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230228112238.2312273-1-daniel.lezcano@linaro.org>
References: <20230228112238.2312273-1-daniel.lezcano@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230228_032322_288996_237B514D 
X-CRM114-Status: GOOD (  12.73  )
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

VGhlIHRoZXJtYWwtPnR6cC0+bm9faHdtb24gcGFyYW1ldGVyIGlzIG9ubHkgdXNlZCB3aGVuIGNh
bGxpbmcKdGhlcm1hbF96b25lX2RldmljZV9yZWdpc3RlcigpLgoKU2V0dGluZyBpdCB0byAnZmFs
c2UnIGJlZm9yZSBjYWxsaW5nIHRoZXJtYWxfYWRkX2h3bW9uX3N5c2ZzKCkgaGFzIG5vCmVmZmVj
dC4KClJlbW92ZSB0aGUgY2FsbCBhbmQgYWdhaW4gcHJldmVudCB0aGUgZHJpdmVycyB0byBhY2Nl
c3MgdGhlIHRoZXJtYWwKaW50ZXJuYWxzLgoKUmV2aWV3ZWQtYnk6IE5pa2xhcyBTw7ZkZXJsdW5k
IDxuaWtsYXMuc29kZXJsdW5kK3JlbmVzYXNAcmFnbmF0ZWNoLnNlPiAjUi1DYXIKU2lnbmVkLW9m
Zi1ieTogRGFuaWVsIExlemNhbm8gPGRhbmllbC5sZXpjYW5vQGxpbmFyby5vcmc+CkFja2VkLWJ5
OiBGbG9yaWFuIEZhaW5lbGxpIDxmLmZhaW5lbGxpQGdtYWlsLmNvbT4gI0Jyb2FkY29tCi0tLQog
ZHJpdmVycy90aGVybWFsL2Jyb2FkY29tL2JjbTI3MTFfdGhlcm1hbC5jIHwgMSAtCiBkcml2ZXJz
L3RoZXJtYWwvYnJvYWRjb20vYmNtMjgzNV90aGVybWFsLmMgfCAxIC0KIGRyaXZlcnMvdGhlcm1h
bC9yY2FyX2dlbjNfdGhlcm1hbC5jICAgICAgICB8IDEgLQogZHJpdmVycy90aGVybWFsL3JjYXJf
dGhlcm1hbC5jICAgICAgICAgICAgIHwgNSAtLS0tLQogZHJpdmVycy90aGVybWFsL3JvY2tjaGlw
X3RoZXJtYWwuYyAgICAgICAgIHwgMSAtCiBkcml2ZXJzL3RoZXJtYWwvcnpnMmxfdGhlcm1hbC5j
ICAgICAgICAgICAgfCAxIC0KIDYgZmlsZXMgY2hhbmdlZCwgMTAgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy90aGVybWFsL2Jyb2FkY29tL2JjbTI3MTFfdGhlcm1hbC5jIGIvZHJp
dmVycy90aGVybWFsL2Jyb2FkY29tL2JjbTI3MTFfdGhlcm1hbC5jCmluZGV4IGZjZmNiYmYwNDRh
NC4uYzI0M2E3NmEzNDcxIDEwMDY0NAotLS0gYS9kcml2ZXJzL3RoZXJtYWwvYnJvYWRjb20vYmNt
MjcxMV90aGVybWFsLmMKKysrIGIvZHJpdmVycy90aGVybWFsL2Jyb2FkY29tL2JjbTI3MTFfdGhl
cm1hbC5jCkBAIC05OCw3ICs5OCw2IEBAIHN0YXRpYyBpbnQgYmNtMjcxMV90aGVybWFsX3Byb2Jl
KHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAKIAlwcml2LT50aGVybWFsID0gdGhlcm1h
bDsKIAotCXRoZXJtYWwtPnR6cC0+bm9faHdtb24gPSBmYWxzZTsKIAlyZXR1cm4gdGhlcm1hbF9h
ZGRfaHdtb25fc3lzZnModGhlcm1hbCk7CiB9CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvdGhlcm1h
bC9icm9hZGNvbS9iY20yODM1X3RoZXJtYWwuYyBiL2RyaXZlcnMvdGhlcm1hbC9icm9hZGNvbS9i
Y20yODM1X3RoZXJtYWwuYwppbmRleCA4NmFhZjQ1OWRlMzcuLmEyMTdkODMyZjI0ZSAxMDA2NDQK
LS0tIGEvZHJpdmVycy90aGVybWFsL2Jyb2FkY29tL2JjbTI4MzVfdGhlcm1hbC5jCisrKyBiL2Ry
aXZlcnMvdGhlcm1hbC9icm9hZGNvbS9iY20yODM1X3RoZXJtYWwuYwpAQCAtMjY3LDcgKzI2Nyw2
IEBAIHN0YXRpYyBpbnQgYmNtMjgzNV90aGVybWFsX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZp
Y2UgKnBkZXYpCiAJICogVGhlcm1hbF96b25lIGRvZXNuJ3QgZW5hYmxlIGh3bW9uIGFzIGRlZmF1
bHQsCiAJICogZW5hYmxlIGl0IGhlcmUKIAkgKi8KLQl0ei0+dHpwLT5ub19od21vbiA9IGZhbHNl
OwogCWVyciA9IHRoZXJtYWxfYWRkX2h3bW9uX3N5c2ZzKHR6KTsKIAlpZiAoZXJyKQogCQlnb3Rv
IGVycl90ejsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvdGhlcm1hbC9yY2FyX2dlbjNfdGhlcm1hbC5j
IGIvZHJpdmVycy90aGVybWFsL3JjYXJfZ2VuM190aGVybWFsLmMKaW5kZXggMmI3NTM3ZWYxNDFk
Li4zZGYwMGM5ZDU1YWIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvdGhlcm1hbC9yY2FyX2dlbjNfdGhl
cm1hbC5jCisrKyBiL2RyaXZlcnMvdGhlcm1hbC9yY2FyX2dlbjNfdGhlcm1hbC5jCkBAIC01Mjcs
NyArNTI3LDYgQEAgc3RhdGljIGludCByY2FyX2dlbjNfdGhlcm1hbF9wcm9iZShzdHJ1Y3QgcGxh
dGZvcm1fZGV2aWNlICpwZGV2KQogCQl9CiAJCXRzYy0+em9uZSA9IHpvbmU7CiAKLQkJdHNjLT56
b25lLT50enAtPm5vX2h3bW9uID0gZmFsc2U7CiAJCXJldCA9IHRoZXJtYWxfYWRkX2h3bW9uX3N5
c2ZzKHRzYy0+em9uZSk7CiAJCWlmIChyZXQpCiAJCQlnb3RvIGVycm9yX3VucmVnaXN0ZXI7CmRp
ZmYgLS1naXQgYS9kcml2ZXJzL3RoZXJtYWwvcmNhcl90aGVybWFsLmMgYi9kcml2ZXJzL3RoZXJt
YWwvcmNhcl90aGVybWFsLmMKaW5kZXggZTA0NDBmNjNhZTc3Li5iODU3MWY3MDkwYWEgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvdGhlcm1hbC9yY2FyX3RoZXJtYWwuYworKysgYi9kcml2ZXJzL3RoZXJt
YWwvcmNhcl90aGVybWFsLmMKQEAgLTUwOSwxMSArNTA5LDYgQEAgc3RhdGljIGludCByY2FyX3Ro
ZXJtYWxfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAkJfQogCiAJCWlmIChj
aGlwLT51c2Vfb2ZfdGhlcm1hbCkgewotCQkJLyoKLQkJCSAqIHRoZXJtYWxfem9uZSBkb2Vzbid0
IGVuYWJsZSBod21vbiBhcyBkZWZhdWx0LAotCQkJICogYnV0LCBlbmFibGUgaXQgaGVyZSB0byBr
ZWVwIGNvbXBhdGlibGUKLQkJCSAqLwotCQkJcHJpdi0+em9uZS0+dHpwLT5ub19od21vbiA9IGZh
bHNlOwogCQkJcmV0ID0gdGhlcm1hbF9hZGRfaHdtb25fc3lzZnMocHJpdi0+em9uZSk7CiAJCQlp
ZiAocmV0KQogCQkJCWdvdG8gZXJyb3JfdW5yZWdpc3RlcjsKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
dGhlcm1hbC9yb2NrY2hpcF90aGVybWFsLmMgYi9kcml2ZXJzL3RoZXJtYWwvcm9ja2NoaXBfdGhl
cm1hbC5jCmluZGV4IDcxZTUzM2RmNTYzYS4uYmIyNTRiZGZmMDQzIDEwMDY0NAotLS0gYS9kcml2
ZXJzL3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1hbC5jCisrKyBiL2RyaXZlcnMvdGhlcm1hbC9yb2Nr
Y2hpcF90aGVybWFsLmMKQEAgLTE0NTEsNyArMTQ1MSw2IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBf
dGhlcm1hbF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCiAJZm9yIChpID0g
MDsgaSA8IHRoZXJtYWwtPmNoaXAtPmNobl9udW07IGkrKykgewogCQlyb2NrY2hpcF90aGVybWFs
X3RvZ2dsZV9zZW5zb3IoJnRoZXJtYWwtPnNlbnNvcnNbaV0sIHRydWUpOwotCQl0aGVybWFsLT5z
ZW5zb3JzW2ldLnR6ZC0+dHpwLT5ub19od21vbiA9IGZhbHNlOwogCQllcnJvciA9IHRoZXJtYWxf
YWRkX2h3bW9uX3N5c2ZzKHRoZXJtYWwtPnNlbnNvcnNbaV0udHpkKTsKIAkJaWYgKGVycm9yKQog
CQkJZGV2X3dhcm4oJnBkZXYtPmRldiwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvdGhlcm1hbC9yemcy
bF90aGVybWFsLmMgYi9kcml2ZXJzL3RoZXJtYWwvcnpnMmxfdGhlcm1hbC5jCmluZGV4IDc2MzE0
MzBjZThhOS4uYjU2OTgxZjg1MzA2IDEwMDY0NAotLS0gYS9kcml2ZXJzL3RoZXJtYWwvcnpnMmxf
dGhlcm1hbC5jCisrKyBiL2RyaXZlcnMvdGhlcm1hbC9yemcybF90aGVybWFsLmMKQEAgLTIxNiw3
ICsyMTYsNiBAQCBzdGF0aWMgaW50IHJ6ZzJsX3RoZXJtYWxfcHJvYmUoc3RydWN0IHBsYXRmb3Jt
X2RldmljZSAqcGRldikKIAl9CiAKIAlwcml2LT56b25lID0gem9uZTsKLQlwcml2LT56b25lLT50
enAtPm5vX2h3bW9uID0gZmFsc2U7CiAJcmV0ID0gdGhlcm1hbF9hZGRfaHdtb25fc3lzZnMocHJp
di0+em9uZSk7CiAJaWYgKHJldCkKIAkJZ290byBlcnI7Ci0tIAoyLjM0LjEKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
