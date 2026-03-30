Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B48D1061B26
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Mar 2026 20:01:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wz9WsEbqA0OG4Der63/pEzapIOqyCfm6XcWoDA+W8y8=; b=N1+XWjWtFPsqcd
	lWkCjLC3jRb1hlfd3wniD4Ds4a8WlWAbehJiVBsY8RhmsV/Yp+J6guA72QIBJ0BqbV3DM9kVlHchv
	b9CmdsmaUX08vI03S9KIFah07XBJQJTuOdjmKJwCHCMe+jUKaaDTj3sWKqKa5wAAPJlGyehbBp9tO
	4ZCBsXwIQ4rKGJc1Yd/c0ZR6CF5xYTwPQrKzY9TH9fFUGIjCc/nbPHL37pthNFuv6ULjN/346ySj3
	oI6oXa5Qh3I5T5w572OA5XnQnWEPrNHOszB4asKdopcNdpdkp49nzj6IBm+LhI+Yjc5qVlZyERj3m
	1dGsMTL326C8MDtzkKWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7InT-0000000BoSi-1rfP;
	Mon, 30 Mar 2026 20:01:15 +0000
Received: from mail-ot1-x335.google.com ([2607:f8b0:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7InP-0000000BoOp-0wpb
	for linux-rockchip@lists.infradead.org;
	Mon, 30 Mar 2026 20:01:12 +0000
Received: by mail-ot1-x335.google.com with SMTP id 46e09a7af769-7d7d50516e9so3176415a34.1
        for <linux-rockchip@lists.infradead.org>; Mon, 30 Mar 2026 13:01:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774900870; x=1775505670; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Lmj/IpYbpug3+Jmewmp2pYfCElRex/Cu53kFOv8ipzs=;
        b=mNpTtSWm0QPhzKfrXIC3MRVRPG3g8UrP4seIAJV9iDlFwzN4deLPdEJcYWOY5b6yu+
         NyXte1xmPdT17pEU9v4a/5RqZtZvXnXqBx19fv87PdxIk7aKicFpiE28qhF428Znmc9I
         NnhDGQRiLcCEd/XwbQH+AN187TlPLyl0RDkDkSy5ah23dDfTrXjMpvtCKuLXZrE0Rui2
         DBQELgYe1NYcc8I9WwnnDMcaT8D9e6LYRacJAgx2/YRfsU8ma2H2PuCq68EEb9mu8jjw
         r/U1cmf+FHyzuib1f5KtMvKys73Ewtl9MPI+xluybAV9Ln/r3haXJVPGv2eAFXNLBPeN
         SHMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774900870; x=1775505670;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Lmj/IpYbpug3+Jmewmp2pYfCElRex/Cu53kFOv8ipzs=;
        b=PAc1UkR/iHAiaPdzYeXsR56yUF47nCRYQnEm3UaFtGQx+c9o4ARzLNp6PWbKemPT55
         tokLZt9QBcxcIc3AEXp1GWGuU6MzIaZ36XEmYkpanc1gZids11iNq5YUAWpjnItMUg9z
         hQSTVAWDQBiiebU3tdYoCi5sY6SfYmjSYVtGIryrxqEBPZA1c/WqSb9mFHdSf126j1UA
         x+dZTIORlghYexurDf+otzNVZMlFxFKSkWmQFqTk6ixm0dM09+fjnOEUweGlDAgx7Keo
         t79rXJ7quVw9UgM5dxxBwKsZVjCQdXROqzRMvEiY4xZMV1UAkQf1kzfCcORe+LhHPHUn
         1DQw==
X-Forwarded-Encrypted: i=1; AJvYcCXN071cKbIhnqfdV3mO4oa+KYBa5lr9BDVsOSRBqSC0tIhzKMnACTaOnkLBX7EVTmXtRsUaaQ4bHyqoaSVW4Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YzGw6NHVSlm3VYSIDdQty+FyGnsR5iaITriQf/rAiKX8YbM1fMb
	CZIeQnKfNagSiym+d3z4mve0CoLgSZzuOt18y78FCSDyXr2Rcdp7eBWO
X-Gm-Gg: ATEYQzyfW93/VK4R0K7fIlZR6E6o29S3Swg+eO8Cq5ccNGGw/ZrG1zKDa6NAVbMhLR2
	Puhmh40EQPkPvDF043UVt3n0eadQw4U1lt9gyPBu601Rx28aJwak0VaLRUU9Z/VBlbw1fOV2euP
	sYNBShn1mx/nSsJACuP8LOY7uDSI6ijkXd6WoXoA5nnZIvH0Mno3mT8rdpb6EDlzRPgJnm6XEDs
	1FZAoYIkMsackbvpaCnSczXwxgb8IF9PLhcqTXMeQaNocDYLhcK9IRs07QpfXn49perhh7AnKI0
	av69iu9l2uKRwWDb7cLufL3KWYsrpN9SamNEtFd0qG0HsGVSLXMoGcg9wq0RkJzjVKcVvevqvTG
	X8ttkTNFFDfQYH3NidI8urRB1wvdty38BuCHNAM8dnrmwlzgMCNbsTPL6cYUsXyB3sC6oFxOy+k
	ku8urw97MoI7V+0UkCKw3s
X-Received: by 2002:a05:6830:3819:b0:7d7:e57a:bcd with SMTP id 46e09a7af769-7d9faee63b7mr7314213a34.20.1774900870107;
        Mon, 30 Mar 2026 13:01:10 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7da0a336353sm6601068a34.2.2026.03.30.13.01.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2026 13:01:09 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-iio@vger.kernel.org
Cc: andy@kernel.org,
	nuno.sa@analog.com,
	dlechner@baylibre.com,
	jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	andriy.shevchenko@intel.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V3 5/9] iio: imu: inv_icm42607: Add Temperature Support in icm42607
Date: Mon, 30 Mar 2026 14:58:49 -0500
Message-ID: <20260330195853.392877-6-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260330195853.392877-1-macroalpha82@gmail.com>
References: <20260330195853.392877-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260330_130111_275426_82813011 
X-CRM114-Status: GOOD (  17.50  )
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

RnJvbTogQ2hyaXMgTW9yZ2FuIDxtYWNyb21vcmdhbkBob3RtYWlsLmNvbT4KCkFkZCBmdW5jdGlv
bnMgZm9yIHJlYWRpbmcgdGVtcGVyYXR1cmUgc2Vuc29yIGRhdGEuCgpTaWduZWQtb2ZmLWJ5OiBD
aHJpcyBNb3JnYW4gPG1hY3JvbW9yZ2FuQGhvdG1haWwuY29tPgotLS0KIGRyaXZlcnMvaWlvL2lt
dS9pbnZfaWNtNDI2MDcvaW52X2ljbTQyNjA3LmggICB8ICAzICsKIC4uLi9paW8vaW11L2ludl9p
Y200MjYwNy9pbnZfaWNtNDI2MDdfY29yZS5jICB8IDE3ICsrKysKIC4uLi9paW8vaW11L2ludl9p
Y200MjYwNy9pbnZfaWNtNDI2MDdfdGVtcC5jICB8IDgxICsrKysrKysrKysrKysrKysrKysKIC4u
Li9paW8vaW11L2ludl9pY200MjYwNy9pbnZfaWNtNDI2MDdfdGVtcC5oICB8IDMwICsrKysrKysK
IDQgZmlsZXMgY2hhbmdlZCwgMTMxIGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0NCBk
cml2ZXJzL2lpby9pbXUvaW52X2ljbTQyNjA3L2ludl9pY200MjYwN190ZW1wLmMKIGNyZWF0ZSBt
b2RlIDEwMDY0NCBkcml2ZXJzL2lpby9pbXUvaW52X2ljbTQyNjA3L2ludl9pY200MjYwN190ZW1w
LmgKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2lpby9pbXUvaW52X2ljbTQyNjA3L2ludl9pY200MjYw
Ny5oIGIvZHJpdmVycy9paW8vaW11L2ludl9pY200MjYwNy9pbnZfaWNtNDI2MDcuaAppbmRleCA1
NTMwZmQzYmMwM2YuLjA4Njg0OGM4ZmQzYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9paW8vaW11L2lu
dl9pY200MjYwNy9pbnZfaWNtNDI2MDcuaAorKysgYi9kcml2ZXJzL2lpby9pbXUvaW52X2ljbTQy
NjA3L2ludl9pY200MjYwNy5oCkBAIC00MzMsNiArNDMzLDkgQEAgZXh0ZXJuIGNvbnN0IHN0cnVj
dCBkZXZfcG1fb3BzIGludl9pY200MjYwN19wbV9vcHM7CiAKIHUzMiBpbnZfaWNtNDI2MDdfb2Ry
X3RvX3BlcmlvZChlbnVtIGludl9pY200MjYwN19vZHIgb2RyKTsKIAoraW50IGludl9pY200MjYw
N19zZXRfdGVtcF9jb25mKHN0cnVjdCBpbnZfaWNtNDI2MDdfc3RhdGUgKnN0LCBib29sIGVuYWJs
ZSwKKwkJCSAgICAgICB1bnNpZ25lZCBpbnQgKnNsZWVwX21zKTsKKwogaW50IGludl9pY200MjYw
N19kZWJ1Z2ZzX3JlZyhzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2LCB1bnNpZ25lZCBpbnQgcmVn
LAogCQkJICAgICB1bnNpZ25lZCBpbnQgd3JpdGV2YWwsIHVuc2lnbmVkIGludCAqcmVhZHZhbCk7
CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvaWlvL2ltdS9pbnZfaWNtNDI2MDcvaW52X2ljbTQyNjA3
X2NvcmUuYyBiL2RyaXZlcnMvaWlvL2ltdS9pbnZfaWNtNDI2MDcvaW52X2ljbTQyNjA3X2NvcmUu
YwppbmRleCAzNDQwNzEwODkwNDIuLjczNWEyNjJkYzEwMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9p
aW8vaW11L2ludl9pY200MjYwNy9pbnZfaWNtNDI2MDdfY29yZS5jCisrKyBiL2RyaXZlcnMvaWlv
L2ltdS9pbnZfaWNtNDI2MDcvaW52X2ljbTQyNjA3X2NvcmUuYwpAQCAtMTY0LDYgKzE2NCwyMyBA
QCBzdGF0aWMgaW50IGludl9pY200MjYwN19zZXRfcHdyX21nbXQwKHN0cnVjdCBpbnZfaWNtNDI2
MDdfc3RhdGUgKnN0LAogCXJldHVybiAwOwogfQogCitpbnQgaW52X2ljbTQyNjA3X3NldF90ZW1w
X2NvbmYoc3RydWN0IGludl9pY200MjYwN19zdGF0ZSAqc3QsIGJvb2wgZW5hYmxlLAorCQkJICAg
ICAgIHVuc2lnbmVkIGludCAqc2xlZXBfbXMpCit7CisJdW5zaWduZWQgaW50IHZhbDsKKwlpbnQg
cmV0OworCisJdmFsID0gSU5WX0lDTTQyNjA3X1RFTVBfQ09ORklHMF9GSUxURVIoSU5WX0lDTTQy
NjA3X0ZJTFRFUl9CV18zNEhaKTsKKwlyZXQgPSByZWdtYXBfdXBkYXRlX2JpdHMoc3QtPm1hcCwg
SU5WX0lDTTQyNjA3X1JFR19URU1QX0NPTkZJRzAsCisJCQkJIElOVl9JQ000MjYwN19URU1QX0NP
TkZJRzBfRklMVEVSX01BU0ssIHZhbCk7CisJaWYgKHJldCkKKwkJcmV0dXJuIHJldDsKKworCXJl
dHVybiBpbnZfaWNtNDI2MDdfc2V0X3B3cl9tZ210MChzdCwgc3QtPmNvbmYuZ3lyby5tb2RlLAor
CQkJCQkgIHN0LT5jb25mLmFjY2VsLm1vZGUsIGVuYWJsZSwKKwkJCQkJICBzbGVlcF9tcyk7Cit9
CisKIGludCBpbnZfaWNtNDI2MDdfZGVidWdmc19yZWcoc3RydWN0IGlpb19kZXYgKmluZGlvX2Rl
diwgdW5zaWduZWQgaW50IHJlZywKIAkJCSAgICAgdW5zaWduZWQgaW50IHdyaXRldmFsLCB1bnNp
Z25lZCBpbnQgKnJlYWR2YWwpCiB7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2lpby9pbXUvaW52X2lj
bTQyNjA3L2ludl9pY200MjYwN190ZW1wLmMgYi9kcml2ZXJzL2lpby9pbXUvaW52X2ljbTQyNjA3
L2ludl9pY200MjYwN190ZW1wLmMKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAw
MDAwLi5iNDJlYjc4Y2Q5NjAKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL2lpby9pbXUvaW52
X2ljbTQyNjA3L2ludl9pY200MjYwN190ZW1wLmMKQEAgLTAsMCArMSw4MSBAQAorLy8gU1BEWC1M
aWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb3ItbGF0ZXIKKy8qCisgKiBDb3B5cmlnaHQgKEMp
IDIwMjYgSW52ZW5TZW5zZSwgSW5jLgorICovCisKKyNpbmNsdWRlIDxsaW51eC9rZXJuZWwuaD4K
KyNpbmNsdWRlIDxsaW51eC9kZXZpY2UuaD4KKyNpbmNsdWRlIDxsaW51eC9tdXRleC5oPgorI2lu
Y2x1ZGUgPGxpbnV4L3BtX3J1bnRpbWUuaD4KKyNpbmNsdWRlIDxsaW51eC9yZWdtYXAuaD4KKyNp
bmNsdWRlIDxsaW51eC9paW8vaWlvLmg+CisKKyNpbmNsdWRlICJpbnZfaWNtNDI2MDcuaCIKKyNp
bmNsdWRlICJpbnZfaWNtNDI2MDdfdGVtcC5oIgorCitzdGF0aWMgaW50IGludl9pY200MjYwN190
ZW1wX3JlYWQoc3RydWN0IGludl9pY200MjYwN19zdGF0ZSAqc3QsIHMxNiAqdGVtcCkKK3sKKwlz
dHJ1Y3QgZGV2aWNlICpkZXYgPSByZWdtYXBfZ2V0X2RldmljZShzdC0+bWFwKTsKKwlfX2JlMTYg
KnJhdzsKKwlpbnQgcmV0OworCisJUE1fUlVOVElNRV9BQ1FVSVJFX0FVVE9TVVNQRU5EKGRldiwg
cG0pOworCWlmIChQTV9SVU5USU1FX0FDUVVJUkVfRVJSKCZwbSkpCisJCXJldHVybiAtRU5YSU87
CisKKwlndWFyZChtdXRleCkoJnN0LT5sb2NrKTsKKworCXJldCA9IGludl9pY200MjYwN19zZXRf
dGVtcF9jb25mKHN0LCB0cnVlLCBOVUxMKTsKKwlpZiAocmV0KQorCQlyZXR1cm4gcmV0OworCisJ
cmF3ID0gKF9fYmUxNiAqKSZzdC0+YnVmZmVyWzBdOworCXJldCA9IHJlZ21hcF9idWxrX3JlYWQo
c3QtPm1hcCwgSU5WX0lDTTQyNjA3X1JFR19URU1QX0RBVEExLCByYXcsIHNpemVvZigqcmF3KSk7
CisJaWYgKHJldCkKKwkJcmV0dXJuIHJldDsKKworCSp0ZW1wID0gKHMxNiliZTE2X3RvX2NwdXAo
cmF3KTsKKwlpZiAoKnRlbXAgPT0gSU5WX0lDTTQyNjA3X0RBVEFfSU5WQUxJRCkKKwkJcmV0ID0g
LUVJTlZBTDsKKworCXJldHVybiByZXQ7Cit9CisKK2ludCBpbnZfaWNtNDI2MDdfdGVtcF9yZWFk
X3JhdyhzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2LAorCQkJCXN0cnVjdCBpaW9fY2hhbl9zcGVj
IGNvbnN0ICpjaGFuLAorCQkJCWludCAqdmFsLCBpbnQgKnZhbDIsIGxvbmcgbWFzaykKK3sKKwlz
dHJ1Y3QgaW52X2ljbTQyNjA3X3N0YXRlICpzdCA9IGlpb19kZXZpY2VfZ2V0X2RydmRhdGEoaW5k
aW9fZGV2KTsKKwlzMTYgdGVtcDsKKwlpbnQgcmV0OworCisJaWYgKGNoYW4tPnR5cGUgIT0gSUlP
X1RFTVApCisJCXJldHVybiAtRUlOVkFMOworCisJc3dpdGNoIChtYXNrKSB7CisJY2FzZSBJSU9f
Q0hBTl9JTkZPX1JBVzoKKwkJaWYgKCFpaW9fZGV2aWNlX2NsYWltX2RpcmVjdChpbmRpb19kZXYp
KQorCQkJcmV0dXJuIC1FQlVTWTsKKwkJcmV0ID0gaW52X2ljbTQyNjA3X3RlbXBfcmVhZChzdCwg
JnRlbXApOworCQlpaW9fZGV2aWNlX3JlbGVhc2VfZGlyZWN0KGluZGlvX2Rldik7CisJCWlmIChy
ZXQpCisJCQlyZXR1cm4gcmV0OworCQkqdmFsID0gdGVtcDsKKwkJcmV0dXJuIElJT19WQUxfSU5U
OworCS8qCisJICogVMKwQyA9ICh0ZW1wIC8gMTI4KSArIDI1CisJICogVG3CsEMgPSAxMDAwICog
KCh0ZW1wICogMTAwIC8gMTI4MDApICsgMjUpCisJICogc2NhbGU6IDEwMDAwMCAvIDEyODAwIH49
IDcuODEyNQorCSAqIG9mZnNldDogMjUwMDAKKwkgKi8KKwljYXNlIElJT19DSEFOX0lORk9fU0NB
TEU6CisJCSp2YWwgPSA3OworCQkqdmFsMiA9IDgxMjUwMDsKKwkJcmV0dXJuIElJT19WQUxfSU5U
X1BMVVNfTUlDUk87CisJY2FzZSBJSU9fQ0hBTl9JTkZPX09GRlNFVDoKKwkJKnZhbCA9IDI1MDAw
OworCQlyZXR1cm4gSUlPX1ZBTF9JTlQ7CisJZGVmYXVsdDoKKwkJcmV0dXJuIC1FSU5WQUw7CisJ
fQorfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9paW8vaW11L2ludl9pY200MjYwNy9pbnZfaWNtNDI2
MDdfdGVtcC5oIGIvZHJpdmVycy9paW8vaW11L2ludl9pY200MjYwNy9pbnZfaWNtNDI2MDdfdGVt
cC5oCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uZDBiZDZjNDYwZmYy
Ci0tLSAvZGV2L251bGwKKysrIGIvZHJpdmVycy9paW8vaW11L2ludl9pY200MjYwNy9pbnZfaWNt
NDI2MDdfdGVtcC5oCkBAIC0wLDAgKzEsMzAgQEAKKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVy
OiBHUEwtMi4wLW9yLWxhdGVyICovCisvKgorICogQ29weXJpZ2h0IChDKSAyMDI2IEludmVuU2Vu
c2UsIEluYy4KKyAqLworCisjaWZuZGVmIElOVl9JQ000MjYwN19URU1QX0hfCisjZGVmaW5lIElO
Vl9JQ000MjYwN19URU1QX0hfCisKKyNpbmNsdWRlIDxsaW51eC9paW8vaWlvLmg+CisKKyNkZWZp
bmUgSU5WX0lDTTQyNjA3X1RFTVBfQ0hBTihfaW5kZXgpCQkJCVwKK3sJCQkJCQkJCVwKKwkudHlw
ZSA9IElJT19URU1QLAkJCQkJXAorCS5pbmZvX21hc2tfc2VwYXJhdGUgPQkJCQkJXAorCQlCSVQo
SUlPX0NIQU5fSU5GT19SQVcpIHwJCQlcCisJCUJJVChJSU9fQ0hBTl9JTkZPX09GRlNFVCkgfAkJ
CVwKKwkJQklUKElJT19DSEFOX0lORk9fU0NBTEUpLAkJCVwKKwkuc2Nhbl9pbmRleCA9IF9pbmRl
eCwJCQkJCVwKKwkuc2Nhbl90eXBlID0gewkJCQkJCVwKKwkJLnNpZ24gPSAncycsCQkJCQlcCisJ
CS5yZWFsYml0cyA9IDE2LAkJCQkJXAorCQkuc3RvcmFnZWJpdHMgPSAxNiwJCQkJXAorCX0sCQkJ
CQkJCVwKK30KKworaW50IGludl9pY200MjYwN190ZW1wX3JlYWRfcmF3KHN0cnVjdCBpaW9fZGV2
ICppbmRpb19kZXYsCisJCQkgICAgICAgc3RydWN0IGlpb19jaGFuX3NwZWMgY29uc3QgKmNoYW4s
CisJCQkgICAgICAgaW50ICp2YWwsIGludCAqdmFsMiwgbG9uZyBtYXNrKTsKKworI2VuZGlmCi0t
IAoyLjQzLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
