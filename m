Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE685C7EE2E
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Feb 2023 22:55:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ucr7J1/mDZW4Ka7nhbrVn8FT0ozr+vRvQLaIZmxxx6c=; b=qXe4c5gVrC35PQ
	AxzJlQ9AQJZEZmG6k0Hla7U7HnX1Qsofb8LozFK+BH9DhDaAkISFOUCaEDrxnBEP+mTDAvMFVyUYq
	HB2iL680CY8v5Hv2M6Ga1X3d0NoCXOMX7oK0BJq25sEju36+YxKnLhJo/xkT0U1z5zQ6OqXKdkIUr
	TE0FBlh3jCyHwgS9DQfHHoAae9G7xPTBnSMtpMIA5+p49aAa86a+bsYXDxT4tS6xNHka0V2oTZ67N
	ZY9NPH4CUd6AWcHnPbtCJvc8g+Hz1fjEq0E34imNz2Go0NjzHne4PqEpO0CDFzKaw+gFmzHKbLb3j
	otZ+xJyjdem29Tyccdkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWPvE-007x4z-3O; Sun, 26 Feb 2023 22:55:12 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWPux-007wt3-Tf
	for linux-rockchip@lists.infradead.org; Sun, 26 Feb 2023 22:54:58 +0000
Received: by mail-wm1-x330.google.com with SMTP id d41-20020a05600c4c2900b003e9e066550fso2781778wmp.4
        for <linux-rockchip@lists.infradead.org>; Sun, 26 Feb 2023 14:54:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l/7e8N8b7gEax6Mp/tnE3jBK1MXlLnukXxRJZ25cEfk=;
        b=LV1q16a8ufrWjrmUJWYiSM4vEBzFe69sHVoWSyIy6D8gP9rVoeaZ8SGGg4yMAwhBuf
         sC3dmJ92HjERa9/xr/Npl0xlO/JnqfdENLQ6LoHuJxWUxuXf+vQEHug3HSgqaSrA1l/v
         tZ3yPw9HmNxE0Vjn3QCZ+tTAETRcV0qpdurISi9lJAMaBJ/JJC7bxTEeffYmaNI0sVvU
         MxQ5jxSuO4kgZbC0JhwKprVOU6jtjcopKJBF4OODGpcPO2ERLidTZnlyiWV1vDIZ9+Km
         IhrWVvwE0drF0YPzEg23GNQI8/y76u8qGdPeuTCht9kuLqmNdjo6vr8z7+5pcqawQ7zv
         rbOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l/7e8N8b7gEax6Mp/tnE3jBK1MXlLnukXxRJZ25cEfk=;
        b=m3GeZ93NfYoLINAmuwMO4v2AyFinzns5N3zVl9pHy0IfSl+yjWNMQExBiBPynptaL8
         x2deMK8GGQZgjbqSoJHQW3dKg8j+SI/QMvWHjtBmx/H48AaHiuGubSdYsEal2D4Grxn9
         oqH2wxHzvO52LOfooLo04goUszQccAmQwLGpe9B2JWCRONgWKWdXmGTXG0V0tuLhP0po
         L5xuT1h8VOf4QymXBA+suZRAlYj/YAjTKaPb1fHEjzG7a+dbZtWsmyy82kdANrEYGO4s
         LDvhSazBL6w506zeUr5aoB1wmnG3MSv57cuH/7iQfYxzM0UWrXbI7qiW7OXG5iNLLVBS
         sSmw==
X-Gm-Message-State: AO0yUKXNve2bj8Xc/9Hd/ukZwyankMr4S0+Xac+Ra8HmHHenqj9W1P4O
	ns0VlAeeldF7sGkmasdauvjRdA==
X-Google-Smtp-Source: AK7set80D2zPi6oQEBIGV6VRNx/VqWw+rceKH346DWpgXGWll/2GQxrFvQxdW7vR7vQ3ffM0+8JuJw==
X-Received: by 2002:a05:600c:a692:b0:3db:2858:db84 with SMTP id ip18-20020a05600ca69200b003db2858db84mr17311911wmb.34.1677452095318;
        Sun, 26 Feb 2023 14:54:55 -0800 (PST)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:8baa:6b32:391b:62de])
        by smtp.gmail.com with ESMTPSA id d10-20020a05600c3aca00b003eb369abd92sm6138074wms.2.2023.02.26.14.54.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Feb 2023 14:54:54 -0800 (PST)
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
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Stefan Wahren <stefan.wahren@i2se.com>,
	Balsam CHIHI <bchihi@baylibre.com>,
	Adam Ward <DLG-Adam.Ward.opensource@dm.renesas.com>,
	ye xingchen <ye.xingchen@zte.com.cn>,
	linux-rpi-kernel@lists.infradead.org (moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE),
	linux-arm-kernel@lists.infradead.org (moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE),
	linux-renesas-soc@vger.kernel.org (open list:RENESAS R-CAR THERMAL DRIVERS),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support)
Subject: [PATCH v3 07/20] thermal/hwmon: Do not set no_hwmon before calling thermal_add_hwmon_sysfs()
Date: Sun, 26 Feb 2023 23:53:53 +0100
Message-Id: <20230226225406.979703-8-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230226225406.979703-1-daniel.lezcano@linaro.org>
References: <20230226225406.979703-1-daniel.lezcano@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230226_145456_002168_AFB83995 
X-CRM114-Status: GOOD (  12.65  )
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
