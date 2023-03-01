Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20D6CC7EE23
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Mar 2023 20:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ucr7J1/mDZW4Ka7nhbrVn8FT0ozr+vRvQLaIZmxxx6c=; b=h2KEEIC+oHHpf0
	7emy+ifA4o6ipSE8lcrmsiCIZ2Ha/bgaol7YiWL6JnrNDIq0WhTuwlbH7AiMtWjw2Ut+7vtiyZUSw
	nw0C0YbvdU04iGsS40/+o0vS3hU8Gt1J8+m5MXfYQSufKcFuEcbdZVhR/8ZNfeaKDt9QdXjZ1CPSw
	DXXfFVFVYTmY84D/W4Yz4s7//b0RQkWSzHI0SLbC44xFSg7fkTUcvBk4Gj3Epz1k65nD7bnw327Ol
	CWPP1LJnrEgLlLff4x692xPlzYIzR2fNAMXuQIpE43u43bR4SvFua3STfNmTbZNPmctwkNzV6CS6Y
	1E6JGJvjFeMUS4pIoWSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXSre-00HTHW-Px; Wed, 01 Mar 2023 20:15:50 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXSrL-00HT30-55
	for linux-rockchip@lists.infradead.org; Wed, 01 Mar 2023 20:15:33 +0000
Received: by mail-wr1-x436.google.com with SMTP id l25so14517732wrb.3
        for <linux-rockchip@lists.infradead.org>; Wed, 01 Mar 2023 12:15:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1677701727;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l/7e8N8b7gEax6Mp/tnE3jBK1MXlLnukXxRJZ25cEfk=;
        b=MDUIOAJCbxOoRoUdpykbKUJ/DLqedw98V6ULDsqSCrVv2DyQoKsOfFo1yWSFUMyGAH
         61NLVJ3VtYPMta1yqM/+iLb07kdsrakUTAyOLkEEU/a5vc5/jnXoTNRP6EHQks2G1cYK
         O7H4ybns27pUTUFLhFFuX98xGnbRConr+RkP0qe2eKL5lKoqM6X29VmtxVtQ0JH8IcLG
         eHvacZ50yVh2fLHdZZBuivopsteFdk48clomNw6d1E8G6lW5O5HK+zqhoPZOzgRgjlxq
         SqVEnpRGIULjdyG+opdX3sBaoqH/nj9vxXHhbWgoHSUUEHEUxp5aw0lD2j2HfRFxWdGJ
         lupw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677701727;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l/7e8N8b7gEax6Mp/tnE3jBK1MXlLnukXxRJZ25cEfk=;
        b=QzJcUHG+z3142tGwXJCINLMUVp8RXvzEWQLqgX7ta3P2uMt/9sRgdim5hZlXpHucGe
         qXU5d+DXGXRqQf1T3i9ICpaRm5wfEFFrtTkHjRDGjexE6J+QjGHAZHMUpVUB9VtWEmRI
         MKeVD5KACL0mYbe+zYvD1ofQXGYfFfnySM2xvaQcYrw0vdJlZD4SHiyUHo2y8GkM0TLp
         ZMhsxGOyT1/+uC0ZvzI7Bq8Gsr1UyhsqC+dGYugqWRsoF1P/QARP78Gz2mOm4d973II6
         KGeTZZC1ATx1eT1AHUD4R2W4Fbv4EmLkgX0MxCzMp1CT0LbRTNXWsGYqml/SmTqk24bS
         TbIA==
X-Gm-Message-State: AO0yUKXrtyO98qkOHb+REWdxW/pQtJVNy/GICLs5KzTcI8uUKjBWk3RR
	hcEF73rccb2sEt1yDRMa3VUs1g==
X-Google-Smtp-Source: AK7set9TfCp/BeD5OZI1vQMbiQ8UL9u+JNMs3gnfhvFgF02HRwETSmUApdZ7SbXWMRKNCbHrm/8nBg==
X-Received: by 2002:a05:6000:1362:b0:2c7:a9ec:3 with SMTP id q2-20020a056000136200b002c7a9ec0003mr5544569wrz.65.1677701727394;
        Wed, 01 Mar 2023 12:15:27 -0800 (PST)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:6ffe:ce4f:bd31:1e6d])
        by smtp.gmail.com with ESMTPSA id x16-20020a1c7c10000000b003e70a7c1b73sm576546wmc.16.2023.03.01.12.15.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Mar 2023 12:15:27 -0800 (PST)
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
	Dhruva Gole <d-gole@ti.com>,
	Stefan Wahren <stefan.wahren@i2se.com>,
	Mark Brown <broonie@kernel.org>,
	Baolin Wang <baolin.wang@linux.alibaba.com>,
	ye xingchen <ye.xingchen@zte.com.cn>,
	linux-rpi-kernel@lists.infradead.org (moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE),
	linux-arm-kernel@lists.infradead.org (moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE),
	linux-renesas-soc@vger.kernel.org (open list:RENESAS R-CAR THERMAL DRIVERS),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support)
Subject: [PATCH v5 07/18] thermal/hwmon: Do not set no_hwmon before calling thermal_add_hwmon_sysfs()
Date: Wed,  1 Mar 2023 21:14:35 +0100
Message-Id: <20230301201446.3713334-8-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230301201446.3713334-1-daniel.lezcano@linaro.org>
References: <20230301201446.3713334-1-daniel.lezcano@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230301_121531_244047_B0A38D09 
X-CRM114-Status: GOOD (  13.13  )
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
