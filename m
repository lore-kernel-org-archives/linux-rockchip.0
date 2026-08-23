Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0EF5C5DF97
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Aug 2026 12:47:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=++3FB5SioQIO5DFpcOFbw5ElTkxWueNJqH22HTrpLjE=; b=SUJL76gxOzOhTL
	LDKNyHZBVfioHerf+YZ3Nmdiw7uvxWz/WNDmOjW6LmbbU66+muHZd0dy/7Ll7mog18+DDXgxYgO4K
	WN+fZhaBfnMVJW/LPfpTg9urMU7y67ktdrFQSBt63Y1rljQ4dUgYXFPR40xEIu4AxTbbrM4lXwPUI
	xk3YOfF5BBD+ZjpO2VoD0MQUx3YzwOo0k9/bYAYcBguexJQtmRVMWWdETGnVoPMe0jhZX+Zi4DDX6
	AKuM8FucKYiLpTXV168ELmvFgyQVvebd4p7eE0djPikTIqnGCp+36/OzyXH1r5NVAvpt1r/2061UW
	K2pBCdyrpwFNxkzNZUGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wy7bn-0000000FMnG-4AsV;
	Sun, 23 Aug 2026 12:47:31 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wy7bl-0000000FMmB-1kKc
	for linux-rockchip@lists.infradead.org;
	Sun, 23 Aug 2026 12:47:31 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-c15fc4707f5so17989466b.3
        for <linux-rockchip@lists.infradead.org>; Sun, 23 Aug 2026 05:47:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787489247; x=1788094047; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:content-language:cc:to
         :subject:from:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=btJKmFZ71PTN81h6iDK1kwNhJfje5OxrPXb/BOZ4f+Y=;
        b=qixX29uDHMpw6/mj2l9xlBgW9iTu6xOvoIGhBm5FwwYStI19gz+r2D4QjmU5XMFeu8
         ypUtHgEDm3hssIFaiJpqJgPMn4Y9HhhFUGDd9CPVleuX+iZRd0H15h9SFRmduaKVkbvB
         ba9Pp50gE20b1XRGcTlrEX8HzOxuJGtjm0+GTRFNFa3TTdL0u4lUVRXHStm4D7dcbuxo
         4KKKup/SB1+2pz/bOq7WI28z0x4Ci7ZDIs0YG0UCFDing1+bJJZDbFZ5kRvr15VbJ6FT
         VMSoz9MiQhkRcxgPSALq5LYH92/bfMMgE70slU4UQi1s5UKHday2hoKc+IZC5H9NY1BQ
         nO8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787489247; x=1788094047;
        h=content-transfer-encoding:content-type:content-language:cc:to
         :subject:from:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=btJKmFZ71PTN81h6iDK1kwNhJfje5OxrPXb/BOZ4f+Y=;
        b=jPuUSDrG/P0yn0YmkhYPG39rgDxP2Vzv7G0If1CnYmK3vXqt5Cj0c65OyIEKb4jUrB
         +yCoTFmmHpjL+LH/jq/4TNkv3XbARW0BRKOO4BJpiq9r/dpgFE88ZahgegVHh71EZKgu
         QOf7SWpnvb9RStSD/WlStJDXu4+BEaJwXLIDhebbwQhsI4x9Gipea9oPvzKb43roTQ8V
         Ujp+6DpN/U0OP3NRqQDpghJGG7tzHnECvPmz+AK5dxgblIZUkA4kNPGsjNZws+EocQD6
         6lQ8tmlAyKx9i5z0bcRqjKt46VZoePrCZMyRd6YW1NfSuiXQKP9VDc465TJ9q0a6eBVr
         sl+A==
X-Forwarded-Encrypted: i=1; AHgh+RqVsA27sXjj6O33SQrBI63ha5sEhHuY1PLdIkBaWybr6+IfruYFA39bIDGlTvQFrYu1r3TX0VEtPBLvRXhd0g==@lists.infradead.org
X-Gm-Message-State: AFuF++mj0VRRLUBjjyE5kTq3Y9yKTHClIAkcSmgnKTXJBOU61C93WG71
	gef/xeaK6c+tg/E4CBIhXheYBDj7mI7timpu+0LRKBf8WkgGG6ozMCWXEv9PXg==
X-Gm-Gg: AR+sD10canwkvXSsu2lmxDL0z26rDbtKoVWO68YBBngADe6UJk/reciY2tj9DZYHloy
	ZJE7GRFmEuB/WXiq3D/tOiXjg8OxqIiSq9haaJeRo2+0LVeKdDVbpbhn8PrwTFN6Pq2T2pW1PqN
	JgthlOGuEEZN35XsTg8Lv09B+q7m881VhgRBNgdX14A6iAV8yzcLQTTR3QnhQmACwdsW5BCbzwN
	mk2E9vJqMVfy7BrBONlE+qRhvtlFJoJ5cXlgEkl6q2kwc2OfCJLsCREgA8d2UIkkmBjrBbMBkGx
	Spr3/1fvN1J0oMqOTx+7ycQDuaM64TiW7YWnt+5JIUe4JLmZM8A/DAknwYfy+u/sWwNPdJmHZIf
	YLtOL6NPFktISOrWxeFunpQ+xJWoBnqA33ez250M64oUqTHQfCpbyaVlFdRHEfK0lvSVGOZpMBR
	pgHDzqVoxgp01UaeZBF3JG9rS7jF/AZ+4MHADk1EwHPhE4NVFv2F3JikO3oZff/Yar2ZDnZbUkp
	yEb39jh+eH82lgptdJPziGYxG0=
X-Received: by 2002:a17:907:d0e:b0:c20:c5f4:e19f with SMTP id a640c23a62f3a-c246a65fe29mr1194669566b.4.1787489247274;
        Sun, 23 Aug 2026 05:47:27 -0700 (PDT)
Received: from ?IPV6:2a02:a449:4071:0:32d0:42ff:fe10:6983? ([2a02:a449:4071:0:32d0:42ff:fe10:6983])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c24966f809bsm881373866b.41.2026.08.23.05.47.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Aug 2026 05:47:26 -0700 (PDT)
Message-ID: <dea8a038-577b-45da-bff3-703e9099b7e1@gmail.com>
Date: Sun, 23 Aug 2026 14:47:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1] drm/rockchip: rk3066_hdmi: convert to
 devm_drm_bridge_alloc() API
To: heiko@sntech.de
Cc: hjc@rock-chips.com, andy.yan@rock-chips.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 airlied@gmail.com, simona@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Language: en-US, ar-EG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260823_054729_482190_4A9A5626 
X-CRM114-Status: GOOD (  10.01  )
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

VGhlIGZ1bmN0aW9uIGRldm1fZHJtX2JyaWRnZV9hbGxvYygpIGlzIHRoZSBuZXcgQVBJIGZvciBh
bGxvY2F0aW5nIERSTSBicmlkZ2VzLgpUaGlzIGNvbnZlcnNpb24gd2FzIG1pc3NlZCBkdXJpbmcg
dGhlIGluaXRpYWwgY29udmVyc2lvbiBvZiBhbGwgYnJpZGdlcyB0bwp0aGUgbmV3IEFQSS4KClNp
Z25lZC1vZmYtYnk6IEjDvHNleWluIEJJWUlLIDxib29naWVwb3BAZ214LmNvbT4KU2lnbmVkLW9m
Zi1ieTogSm9oYW4gSm9ua2VyIDxqYng2MjQ0QGdtYWlsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vcm9ja2NoaXAvcmszMDY2X2hkbWkuYyB8IDggKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0
IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL3JvY2tjaGlwL3JrMzA2Nl9oZG1pLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcmsz
MDY2X2hkbWkuYwppbmRleCBmMjhkNmE4ODNlMDkuLjM5YzY1ZWUwN2NhYSAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JrMzA2Nl9oZG1pLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL3JvY2tjaGlwL3JrMzA2Nl9oZG1pLmMKQEAgLTcwMyw3ICs3MDMsNiBAQCByazMwNjZfaGRt
aV9yZWdpc3RlcihzdHJ1Y3QgZHJtX2RldmljZSAqZHJtLCBzdHJ1Y3QgcmszMDY2X2hkbWkgKmhk
bWkpCiAJCQkgRFJNX01PREVfRU5DT0RFUl9UTURTLCBOVUxMKTsKIAogCWhkbWktPmJyaWRnZS5k
cml2ZXJfcHJpdmF0ZSA9IGhkbWk7Ci0JaGRtaS0+YnJpZGdlLmZ1bmNzID0gJnJrMzA2Nl9oZG1p
X2JyaWRnZV9mdW5jczsKIAloZG1pLT5icmlkZ2Uub3BzID0gRFJNX0JSSURHRV9PUF9ERVRFQ1Qg
fAogCQkJICAgRFJNX0JSSURHRV9PUF9FRElEIHwKIAkJCSAgIERSTV9CUklER0VfT1BfSERNSSB8
CkBAIC03NDcsOSArNzQ2LDEwIEBAIHN0YXRpYyBpbnQgcmszMDY2X2hkbWlfYmluZChzdHJ1Y3Qg
ZGV2aWNlICpkZXYsIHN0cnVjdCBkZXZpY2UgKm1hc3RlciwKIAlpbnQgaXJxOwogCWludCByZXQ7
CiAKLQloZG1pID0gZGV2bV9remFsbG9jKGRldiwgc2l6ZW9mKCpoZG1pKSwgR0ZQX0tFUk5FTCk7
Ci0JaWYgKCFoZG1pKQotCQlyZXR1cm4gLUVOT01FTTsKKwloZG1pID0gZGV2bV9kcm1fYnJpZGdl
X2FsbG9jKGRldiwgc3RydWN0IHJrMzA2Nl9oZG1pLCBicmlkZ2UsCisJCQkJICAgICAmcmszMDY2
X2hkbWlfYnJpZGdlX2Z1bmNzKTsKKwlpZiAoSVNfRVJSKGhkbWkpKQorCQlyZXR1cm4gUFRSX0VS
UihoZG1pKTsKIAogCWhkbWktPmRldiA9IGRldjsKIAloZG1pLT5kcm1fZGV2ID0gZHJtOwotLSAK
Mi4zOS41CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
