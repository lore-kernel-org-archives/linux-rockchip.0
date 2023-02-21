Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89CFCC636D7
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Feb 2023 18:08:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZxktOHsFOeUdWE5+jmOm55tFCfs/Z1k6sRw1modXQlM=; b=O8jxNVFi5UtssQ
	foicOlp19QSgHByD7r8h2knpedjxIIIRiu9kkI7i2MT5Bagb9hxO+zueDxlvfG+/0D1jKGRtcPnEh
	5fBDwMNs10XND6B2iHHlzT/672i9WGZmjiilRZy+4G094Sa68k3X4/x+/cFipRQzZ87fh8ejDzMvl
	b8th7RMT4sT4uVHbuVd8NQGSZF0mYDzclVAYU7AlKWLg7U192eb8tAfJzdSB5TKn0KufwgBvvFpIm
	PxsaaBic1H7oRKpHQQYBtuVtPAhro01+rg9dor2VdgS4UzhIsA0E1WfZITAN23UeL/Fbg3eJRjSnL
	SSNdgtxpvx1wuoenOkJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUX3S-009IMS-4C; Tue, 21 Feb 2023 18:07:54 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUX3J-009IHm-LX
	for linux-rockchip@lists.infradead.org; Tue, 21 Feb 2023 18:07:52 +0000
Received: by mail-wm1-x32b.google.com with SMTP id l6so3877005wms.3
        for <linux-rockchip@lists.infradead.org>; Tue, 21 Feb 2023 10:07:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d1kZW3/M8hlSrhTNIbSXakvC4ON0rMLSasQAq1vDfbY=;
        b=W14kchqFYP+9MoZWrMYBBI/Pe33uOzlP/bI03g4oRDwEHVp8pFHzsu3a9bpMgPrco5
         nCXO70dTQWToQGbR79D+X+4DK+0y97eBhpOHkUHR7J1gSlGc/AIoS/RXoqruZOuEXj81
         zOdZyXxnNKa4qyZLrCXFDJp8t8/8CY79/W6QPjeFhNXlXz+KfGAIyh2A7qiCvcB9p0Zz
         nJNs7l+h/L2BSGjRZYyNkZVgP3XwO3X3F2q/ocy7faJ72l2FBX2c9tWt7h5Tq/AxtgNd
         BQAJKHCI/kCeGzGXW6629DGui2oABbfDbvO36KHmvB1vtsEUHnpIIgdQpV82rNiglPW5
         1H8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d1kZW3/M8hlSrhTNIbSXakvC4ON0rMLSasQAq1vDfbY=;
        b=2RgQC72zdT3xk6EYpCXw5dkWcO+wTh2JFW38IvqUkuyN1qyrbCs8D5usAR0TRTNTtd
         2oSkgksazGNctG0mFlEuW8fNv+a/uyOrOf4rbPW4xhMyWqpAaOp2iar73vwDF1Enaks9
         M66s7Gfiu6jz9xFSKp6ykO5abceWPqJwTg6O/PwtharfzUP8AZdpihNvLhRMUu+IneJz
         idDaYVh4iXPM/nwIwPmDvJfUSjnIWUOQHtHivPtMcvtXALFnvSmSB05LYIhCu8X7dvve
         akZxBy2196n9Jsco2DwlUGK+lWjnhHTj/gBHbgNRWi3wfl77JWzFRb4u390E7a+Kmdiz
         u+LA==
X-Gm-Message-State: AO0yUKUTK+uM/qqlWzMXLGHesNXc3m0awxpeyLbGQje4y0bsoLK7PZjd
	5ixZVbfA17LQwizUkwO/bP6y5g==
X-Google-Smtp-Source: AK7set9I7QAEBq3KVMS9IUSAWCfudZtuhtkP5HXBO7Fhk5i7l2n1Od8rPRrU3Yej5CI9SbV0Bs6DNQ==
X-Received: by 2002:a05:600c:2ed3:b0:3e2:1fa6:f418 with SMTP id q19-20020a05600c2ed300b003e21fa6f418mr3989284wmn.23.1677002864409;
        Tue, 21 Feb 2023 10:07:44 -0800 (PST)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:1e9:315c:bb40:e382])
        by smtp.gmail.com with ESMTPSA id c128-20020a1c3586000000b003e21558ee9dsm5107815wma.2.2023.02.21.10.07.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Feb 2023 10:07:44 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: rafael@kernel.org,
	daniel.lezcano@linaro.org
Cc: linux-pm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
	Amit Kucheria <amitk@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	=?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
	Heiko Stuebner <heiko@sntech.de>,
	Baolin Wang <baolin.wang@linux.alibaba.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Stefan Wahren <stefan.wahren@i2se.com>,
	Mark Brown <broonie@kernel.org>,
	Balsam CHIHI <bchihi@baylibre.com>,
	ye xingchen <ye.xingchen@zte.com.cn>,
	linux-rpi-kernel@lists.infradead.org (moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE),
	linux-arm-kernel@lists.infradead.org (moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE),
	linux-renesas-soc@vger.kernel.org (open list:RENESAS R-CAR THERMAL DRIVERS),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support)
Subject: [PATCH v2 04/16] thermal/hwmon: Do not set no_hwmon before calling thermal_add_hwmon_sysfs()
Date: Tue, 21 Feb 2023 19:06:58 +0100
Message-Id: <20230221180710.2781027-5-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230221180710.2781027-1-daniel.lezcano@linaro.org>
References: <20230221180710.2781027-1-daniel.lezcano@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230221_100745_765860_AA6ADD17 
X-CRM114-Status: GOOD (  12.79  )
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
Zi1ieTogRGFuaWVsIExlemNhbm8gPGRhbmllbC5sZXpjYW5vQGxpbmFyby5vcmc+Ci0tLQogZHJp
dmVycy90aGVybWFsL2Jyb2FkY29tL2JjbTI3MTFfdGhlcm1hbC5jIHwgMSAtCiBkcml2ZXJzL3Ro
ZXJtYWwvYnJvYWRjb20vYmNtMjgzNV90aGVybWFsLmMgfCAxIC0KIGRyaXZlcnMvdGhlcm1hbC9y
Y2FyX2dlbjNfdGhlcm1hbC5jICAgICAgICB8IDEgLQogZHJpdmVycy90aGVybWFsL3JjYXJfdGhl
cm1hbC5jICAgICAgICAgICAgIHwgNSAtLS0tLQogZHJpdmVycy90aGVybWFsL3JvY2tjaGlwX3Ro
ZXJtYWwuYyAgICAgICAgIHwgMSAtCiBkcml2ZXJzL3RoZXJtYWwvcnpnMmxfdGhlcm1hbC5jICAg
ICAgICAgICAgfCAxIC0KIDYgZmlsZXMgY2hhbmdlZCwgMTAgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy90aGVybWFsL2Jyb2FkY29tL2JjbTI3MTFfdGhlcm1hbC5jIGIvZHJpdmVy
cy90aGVybWFsL2Jyb2FkY29tL2JjbTI3MTFfdGhlcm1hbC5jCmluZGV4IGZjZmNiYmYwNDRhNC4u
YzI0M2E3NmEzNDcxIDEwMDY0NAotLS0gYS9kcml2ZXJzL3RoZXJtYWwvYnJvYWRjb20vYmNtMjcx
MV90aGVybWFsLmMKKysrIGIvZHJpdmVycy90aGVybWFsL2Jyb2FkY29tL2JjbTI3MTFfdGhlcm1h
bC5jCkBAIC05OCw3ICs5OCw2IEBAIHN0YXRpYyBpbnQgYmNtMjcxMV90aGVybWFsX3Byb2JlKHN0
cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAKIAlwcml2LT50aGVybWFsID0gdGhlcm1hbDsK
IAotCXRoZXJtYWwtPnR6cC0+bm9faHdtb24gPSBmYWxzZTsKIAlyZXR1cm4gdGhlcm1hbF9hZGRf
aHdtb25fc3lzZnModGhlcm1hbCk7CiB9CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvdGhlcm1hbC9i
cm9hZGNvbS9iY20yODM1X3RoZXJtYWwuYyBiL2RyaXZlcnMvdGhlcm1hbC9icm9hZGNvbS9iY20y
ODM1X3RoZXJtYWwuYwppbmRleCA4NmFhZjQ1OWRlMzcuLmEyMTdkODMyZjI0ZSAxMDA2NDQKLS0t
IGEvZHJpdmVycy90aGVybWFsL2Jyb2FkY29tL2JjbTI4MzVfdGhlcm1hbC5jCisrKyBiL2RyaXZl
cnMvdGhlcm1hbC9icm9hZGNvbS9iY20yODM1X3RoZXJtYWwuYwpAQCAtMjY3LDcgKzI2Nyw2IEBA
IHN0YXRpYyBpbnQgYmNtMjgzNV90aGVybWFsX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2Ug
KnBkZXYpCiAJICogVGhlcm1hbF96b25lIGRvZXNuJ3QgZW5hYmxlIGh3bW9uIGFzIGRlZmF1bHQs
CiAJICogZW5hYmxlIGl0IGhlcmUKIAkgKi8KLQl0ei0+dHpwLT5ub19od21vbiA9IGZhbHNlOwog
CWVyciA9IHRoZXJtYWxfYWRkX2h3bW9uX3N5c2ZzKHR6KTsKIAlpZiAoZXJyKQogCQlnb3RvIGVy
cl90ejsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvdGhlcm1hbC9yY2FyX2dlbjNfdGhlcm1hbC5jIGIv
ZHJpdmVycy90aGVybWFsL3JjYXJfZ2VuM190aGVybWFsLmMKaW5kZXggMmI3NTM3ZWYxNDFkLi4z
ZGYwMGM5ZDU1YWIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvdGhlcm1hbC9yY2FyX2dlbjNfdGhlcm1h
bC5jCisrKyBiL2RyaXZlcnMvdGhlcm1hbC9yY2FyX2dlbjNfdGhlcm1hbC5jCkBAIC01MjcsNyAr
NTI3LDYgQEAgc3RhdGljIGludCByY2FyX2dlbjNfdGhlcm1hbF9wcm9iZShzdHJ1Y3QgcGxhdGZv
cm1fZGV2aWNlICpwZGV2KQogCQl9CiAJCXRzYy0+em9uZSA9IHpvbmU7CiAKLQkJdHNjLT56b25l
LT50enAtPm5vX2h3bW9uID0gZmFsc2U7CiAJCXJldCA9IHRoZXJtYWxfYWRkX2h3bW9uX3N5c2Zz
KHRzYy0+em9uZSk7CiAJCWlmIChyZXQpCiAJCQlnb3RvIGVycm9yX3VucmVnaXN0ZXI7CmRpZmYg
LS1naXQgYS9kcml2ZXJzL3RoZXJtYWwvcmNhcl90aGVybWFsLmMgYi9kcml2ZXJzL3RoZXJtYWwv
cmNhcl90aGVybWFsLmMKaW5kZXggZTA0NDBmNjNhZTc3Li5iODU3MWY3MDkwYWEgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvdGhlcm1hbC9yY2FyX3RoZXJtYWwuYworKysgYi9kcml2ZXJzL3RoZXJtYWwv
cmNhcl90aGVybWFsLmMKQEAgLTUwOSwxMSArNTA5LDYgQEAgc3RhdGljIGludCByY2FyX3RoZXJt
YWxfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAkJfQogCiAJCWlmIChjaGlw
LT51c2Vfb2ZfdGhlcm1hbCkgewotCQkJLyoKLQkJCSAqIHRoZXJtYWxfem9uZSBkb2Vzbid0IGVu
YWJsZSBod21vbiBhcyBkZWZhdWx0LAotCQkJICogYnV0LCBlbmFibGUgaXQgaGVyZSB0byBrZWVw
IGNvbXBhdGlibGUKLQkJCSAqLwotCQkJcHJpdi0+em9uZS0+dHpwLT5ub19od21vbiA9IGZhbHNl
OwogCQkJcmV0ID0gdGhlcm1hbF9hZGRfaHdtb25fc3lzZnMocHJpdi0+em9uZSk7CiAJCQlpZiAo
cmV0KQogCQkJCWdvdG8gZXJyb3JfdW5yZWdpc3RlcjsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvdGhl
cm1hbC9yb2NrY2hpcF90aGVybWFsLmMgYi9kcml2ZXJzL3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1h
bC5jCmluZGV4IDcxZTUzM2RmNTYzYS4uYmIyNTRiZGZmMDQzIDEwMDY0NAotLS0gYS9kcml2ZXJz
L3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1hbC5jCisrKyBiL2RyaXZlcnMvdGhlcm1hbC9yb2NrY2hp
cF90aGVybWFsLmMKQEAgLTE0NTEsNyArMTQ1MSw2IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfdGhl
cm1hbF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCiAJZm9yIChpID0gMDsg
aSA8IHRoZXJtYWwtPmNoaXAtPmNobl9udW07IGkrKykgewogCQlyb2NrY2hpcF90aGVybWFsX3Rv
Z2dsZV9zZW5zb3IoJnRoZXJtYWwtPnNlbnNvcnNbaV0sIHRydWUpOwotCQl0aGVybWFsLT5zZW5z
b3JzW2ldLnR6ZC0+dHpwLT5ub19od21vbiA9IGZhbHNlOwogCQllcnJvciA9IHRoZXJtYWxfYWRk
X2h3bW9uX3N5c2ZzKHRoZXJtYWwtPnNlbnNvcnNbaV0udHpkKTsKIAkJaWYgKGVycm9yKQogCQkJ
ZGV2X3dhcm4oJnBkZXYtPmRldiwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvdGhlcm1hbC9yemcybF90
aGVybWFsLmMgYi9kcml2ZXJzL3RoZXJtYWwvcnpnMmxfdGhlcm1hbC5jCmluZGV4IDc2MzE0MzBj
ZThhOS4uYjU2OTgxZjg1MzA2IDEwMDY0NAotLS0gYS9kcml2ZXJzL3RoZXJtYWwvcnpnMmxfdGhl
cm1hbC5jCisrKyBiL2RyaXZlcnMvdGhlcm1hbC9yemcybF90aGVybWFsLmMKQEAgLTIxNiw3ICsy
MTYsNiBAQCBzdGF0aWMgaW50IHJ6ZzJsX3RoZXJtYWxfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rl
dmljZSAqcGRldikKIAl9CiAKIAlwcml2LT56b25lID0gem9uZTsKLQlwcml2LT56b25lLT50enAt
Pm5vX2h3bW9uID0gZmFsc2U7CiAJcmV0ID0gdGhlcm1hbF9hZGRfaHdtb25fc3lzZnMocHJpdi0+
em9uZSk7CiAJaWYgKHJldCkKIAkJZ290byBlcnI7Ci0tIAoyLjM0LjEKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
