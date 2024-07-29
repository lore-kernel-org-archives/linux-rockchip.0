Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53966C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jul 2024 12:39:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xH51/0zFpYnYawYe08dggmCgCADS+m3S0APYKOSzWkM=; b=Op7RLfDbnt+aox
	eUBKmQOlkulqf2mbf9welf0bmF6baeykjMXHPGaaxgKb28z8QzVQYXi2wqkbQAend5fGCOB6/oF39
	/c82nhDNe3bqffpynXw/OinpFlGOPR6/QgIU6k6N9eJvhrebBbt5gNuXotyNOswpUxaTuIblMJrPe
	Lm/Dj+U1CkzMC8KfQ/QFd/qH125ntQgRMlNEzBf8vUn8eJ2fp2KuBLevWSr79MBx8HuYAMRekmoIy
	2ioEdeWGlg4NbXHdBnFF8k36AnbU27uINn1Rucn23bnPqJCWE5qmeOkmlVhtll/dWWpduTaq7zjM3
	WsgOaoNFMPDGtOjyXI3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYPfC-0000000BGjm-1eXP;
	Mon, 29 Jul 2024 12:39:42 +0000
Received: from mail-pg1-x52a.google.com ([2607:f8b0:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYPd5-0000000BG9S-1mhW;
	Mon, 29 Jul 2024 12:37:32 +0000
Received: by mail-pg1-x52a.google.com with SMTP id 41be03b00d2f7-75a6c290528so1977286a12.1;
        Mon, 29 Jul 2024 05:37:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722256650; x=1722861450; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+NZITpfAHD8JXe97iGR8siEXB5NDSsMSDkZ3Z4QQ/T4=;
        b=ZCuNFYPaDOCGKvpsJm9GmdK4+UElaoPtEITw+hCT8KHRlUGlyBZaNYqYPIr3UBAUFG
         ar4bh66oYgbbMKSeiVdrIwdzmblE9MznQBGQNIli3cDN1kVzN4Od+XDbB/Yi/Wg1ErYz
         tV4B/8cdNw2enB3kpgFCrtmREPyv3Qmc/aX5H0K4f7yngKTmEGRasBs1yfXvQZ/WCQtd
         dSQTvrku5ZmyKIIDugqapRWtZ9kGCEws68ag0f25bN3pyuuOP1R7fEn5ovCCuX2sTRbr
         kpQHPFONoaBbesXBkm0IaukBKvvdkCuwsPFnMrMr8GIPD2d7I67Mq72dooAggRKe/SxJ
         XSoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722256650; x=1722861450;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+NZITpfAHD8JXe97iGR8siEXB5NDSsMSDkZ3Z4QQ/T4=;
        b=oBN5nTppWk9A+Z0Ch2Vq/t8Jk3nHLpKuu7jw7ZdzQ9Xdr2kNhsQ/5H+kSuReyOHLwl
         uLma5TlhYelw3CJGLuK0585C/H03D6l2ypwsT6hIp066vazjny/u8NHB+uPXYqf8dHM4
         1unwbZAyTx7sfqQQZAZwZEbycizHY9LF2qyXJp8s98ZKqYDfhtL9k9zjGsusNVplSOOy
         5lJF45oFW69UHKrJpzZOVDP/vwZQFJ4YZXop5DzhUysQjs2hBYP3zMmjgMLDXxBE7pBP
         UQE8pdljr3vIwV0s3V2RKyNdfZbieiUAlGPYsOpGjOWKHuOBuAvcoZU/LrITq3Uv4ULO
         klWQ==
X-Forwarded-Encrypted: i=1; AJvYcCU46u3abOAkEVbB9N0VF16TPserWcKEJzk3HTV5hl+R7oI3HYbXbvb9mtuDkWMCYbahbxoSUN4k/dDu21O5vYh+MROQFEMDXErhhJTipt8IdTjv0yC2gUZT1TuIxSBKW15tlScIoRVkV74jchpw/BFQStaGu7NlscI=
X-Gm-Message-State: AOJu0YxYTkoL3sNa+SObvrvNjDQDKESlJmojwgJuZkuBZQYFCzkHmhot
	onQwEZvDjkFJ3nEXizqI8wxO6VPwG5eWqrBfIMPlDERp58tV+W+u
X-Google-Smtp-Source: AGHT+IFyQ9DhUPSpERL815jrQzcyMO8O7mgJl28wdppTnye7TQwm3hhu4PhWWh7+rQJKr3HKhOfIqw==
X-Received: by 2002:a17:90b:1282:b0:2c9:7e9d:8424 with SMTP id 98e67ed59e1d1-2cf7e5f50f8mr5046382a91.30.1722256649932;
        Mon, 29 Jul 2024 05:37:29 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.222])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2cdb738842bsm10569248a91.6.2024.07.29.05.37.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jul 2024 05:37:29 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Anand Moon <linux.amoon@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Dragan Simic <dsimic@manjaro.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5] arm64: dts: rockchip: Add missing pinctrl wake and clkreq for PCIe node
Date: Mon, 29 Jul 2024 18:07:07 +0530
Message-ID: <20240729123709.2981-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240729_053731_493366_921D8C7C 
X-CRM114-Status: GOOD (  17.81  )
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

QWRkIG1pc3NpbmcgcGluY3RybCBzZXR0aW5ncyBXQUtFIGFuZCBDTEtSRVEgZm9yIFBDSWUgMy4w
IHg0LCBQQ0llIDMuMCB4MQphbmQgUENJZSAyLjEgeDEgbm9kZXMuIEVhY2ggY29tcG9uZW50IG9m
IFBDSWUgY29tbXVuaWNhdGlvbiBoYXZlIHRoZQpmb2xsb3dpbmcgY29udHJvbCBzaWduYWxzOiBQ
RVJTVCwgV0FLRSwgQ0xLUkVRLCBhbmQgUkVGQ0xLLgpUaGVzZSBzaWduYWxzIHdvcmsgdG8gZ2Vu
ZXJhdGUgaGlnaC1zcGVlZCBzaWduYWxzIGFuZCBjb21tdW5pY2F0ZSB3aXRoCm90aGVyIFBDSWUg
ZGV2aWNlcy4gVXNlZCBieSByb290IGNvbXBsZXggdG8gZW5kcG9pbnQgZGVwZW5kaW5nIG9uCnRo
ZSBwb3dlciBzdGF0ZS4KClBFUlNUIyBpcyByZWZlcnJlZCB0byBhcyBhIGZ1bmRhbWVudGFsIHJl
c2V0LiBQRVJTVCBzaG91bGQgYmUgaGVsZApsb3cgdW50aWwgYWxsIHRoZSBwb3dlciByYWlscyBp
biB0aGUgc3lzdGVtIGFuZCB0aGUgcmVmZXJlbmNlIGNsb2NrCmFyZSBzdGFibGUuIEEgdHJhbnNp
dGlvbiBmcm9tIGxvdyB0byBoaWdoIGluIHRoaXMgc2lnbmFsIHVzdWFsbHkKaW5kaWNhdGVzIHRo
ZSBiZWdpbm5pbmcgb2YgbGluayBpbml0aWFsaXphdGlvbi4KCldBS0UjIHNpZ25hbCBpcyBhbiBh
Y3RpdmUtbG93IHNpZ25hbCB0aGF0IGlzIHVzZWQgdG8gcmV0dXJuIHRoZSBQQ0llCmludGVyZmFj
ZSB0byBhbiBhY3RpdmUgc3RhdGUgd2hlbiBpbiBhIGxvdy1wb3dlciBzdGF0ZS4KCkNMS1JFUSMg
c2lnbmFsIGlzIGFsc28gYW4gYWN0aXZlLWxvdyBzaWduYWwgYW5kIGlzIHVzZWQgdG8gcmVxdWVz
dCB0aGUKcmVmZXJlbmNlIGNsb2NrLiAgTDEgc3ViLXN0YXRlcyBpcyBwcm92aWRpbmcgYSBkaWdp
dGFsIHNpZ25hbAooQ0xLUkVRIykgZm9yIFBIWXMgdG8gdXNlIHRvIHdha2UgdXAgYW5kIHJlc3Vt
ZSBub3JtYWwgb3BlcmF0aW9uLgoKU2lnbmVkLW9mZi1ieTogQW5hbmQgTW9vbiA8bGludXguYW1v
b25AZ21haWwuY29tPgotLS0KdjU6IE1lcmdlZCBhbGwgMyBwYXRjaCBpbnRvIHNpbmdsZSBwYXRj
aCwgcmVhYnNlIG9uIG1hc3RlcgogICAgRml4IHRoZSAkc3ViamVjdCBhbmQgY29tbWl0IG1lc3Nh
Z2UuCiAgICBEcm9wIHRoZSBSS19GVU5DX0dQSU8gZm9yIFdBS0UgYW5kIENMS1JFUSBhcyB0aGVz
ZSBzZWlnbmFsIGFyZQogICAgbWVudCBmb3Igd2FzIGludHJvZHVjZWQgdG8gYWxsb3cgUENJIEV4
cHJlc3MgZGV2aWNlcyB0byBlbnRlcgogICAgZXZlbiBkZWVwZXIgcG93ZXIgc2F2aW5ncyBzdGF0
ZXMgKOKAnEwxLjHigJ0gYW5kIOKAnEwxLjLigJ0pIHdoaWxlIHN0aWxsCiAgICAgYXBwZWFyaW5n
IHRvIGxlZ2FjeSBzb2Z0d2FyZSB0byBiZSBpbiB0aGUg4oCcTDHigJ0gc3RhdGUKLS0tCiAuLi4v
Ym9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWIuZHRzICAgICAgfCA0NiArKysrKysrKysr
KysrLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMzMgaW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9j
ay01Yi5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLmR0
cwppbmRleCA5NjZiYmM1ODJkODkuLmExZTgzNTQ2ZjFiZSAxMDA2NDQKLS0tIGEvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMKKysrIGIvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMKQEAgLTMxOCw3ICszMTgsNyBAQCBt
YXAyIHsKIAogJnBjaWUyeDFsMCB7CiAJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKLQlwaW5j
dHJsLTAgPSA8JnBjaWUyXzBfcnN0PjsKKwlwaW5jdHJsLTAgPSA8JnBjaWUzMHgxX3BpbnM+Owog
CXJlc2V0LWdwaW9zID0gPCZncGlvNCBSS19QQTUgR1BJT19BQ1RJVkVfSElHSD47CiAJdnBjaWUz
djMtc3VwcGx5ID0gPCZ2Y2MzdjNfcGNpZTJ4MWwwPjsKIAlzdGF0dXMgPSAib2theSI7CkBAIC0z
MjYsNyArMzI2LDcgQEAgJnBjaWUyeDFsMCB7CiAKICZwY2llMngxbDIgewogCXBpbmN0cmwtbmFt
ZXMgPSAiZGVmYXVsdCI7Ci0JcGluY3RybC0wID0gPCZwY2llMl8yX3JzdD47CisJcGluY3RybC0w
ID0gPCZwY2llMjB4MTJfcGlucz47CiAJcmVzZXQtZ3Bpb3MgPSA8JmdwaW8zIFJLX1BCMCBHUElP
X0FDVElWRV9ISUdIPjsKIAl2cGNpZTN2My1zdXBwbHkgPSA8JnZjYzN2M19wY2llMngxbDI+Owog
CXN0YXR1cyA9ICJva2F5IjsKQEAgLTMzOCw3ICszMzgsNyBAQCAmcGNpZTMwcGh5IHsKIAogJnBj
aWUzeDQgewogCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Ci0JcGluY3RybC0wID0gPCZwY2ll
M19yc3Q+OworCXBpbmN0cmwtMCA9IDwmcGNpZTMweDRfcGlucz47CiAJcmVzZXQtZ3Bpb3MgPSA8
JmdwaW80IFJLX1BCNiBHUElPX0FDVElWRV9ISUdIPjsKIAl2cGNpZTN2My1zdXBwbHkgPSA8JnZj
YzN2M19wY2llMzA+OwogCXN0YXR1cyA9ICJva2F5IjsKQEAgLTM2MywyOCArMzYzLDQ4IEBAIGhw
X2RldGVjdDogaHAtZGV0ZWN0IHsKIAkJfTsKIAl9OwogCi0JcGNpZTIgewotCQlwY2llMl8wX3Jz
dDogcGNpZTItMC1yc3QgewotCQkJcm9ja2NoaXAscGlucyA9IDw0IFJLX1BBNSBSS19GVU5DX0dQ
SU8gJnBjZmdfcHVsbF9ub25lPjsKKwlwY2llMjB4MSB7CisJCXBjaWUyMHgxMl9waW5zOiBwY2ll
MjB4MTItcGlucyB7CisJCQlyb2NrY2hpcCxwaW5zID0KKwkJCQkvKiBQQ0lFMjBfMV8yX0NMS1JF
UW5fTTFfTCAqLworCQkJCTwzIFJLX1BDNyA0ICZwY2ZnX3B1bGxfdXA+LAorCQkJCS8qIFBDSUVf
UEVSU1RfTCAqLworCQkJCTwzIFJLX1BCMCBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF91cD4sCisJ
CQkJLyogUENJRTIwXzFfMl9XQUtFbl9NMV9MICovCisJCQkJPDMgUktfUEQwIDQgJnBjZmdfcHVs
bF91cD47CiAJCX07CisJfTsKIAorCXBjaWUzMHgxIHsKIAkJcGNpZTJfMF92Y2MzdjNfZW46IHBj
aWUyLTAtdmNjLWVuIHsKIAkJCXJvY2tjaGlwLHBpbnMgPSA8MSBSS19QRDIgUktfRlVOQ19HUElP
ICZwY2ZnX3B1bGxfbm9uZT47CiAJCX07CiAKLQkJcGNpZTJfMl9yc3Q6IHBjaWUyLTItcnN0IHsK
LQkJCXJvY2tjaGlwLHBpbnMgPSA8MyBSS19QQjAgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxfbm9u
ZT47CisJCXBjaWUzMHgxX3BpbnM6IHBjaWUzMHgxLXBpbnMgeworCQkJcm9ja2NoaXAscGlucyA9
CisJCQkJLyogUENJRTMweDFfMF9DTEtSRVFuX00xX0wgKi8KKwkJCQk8NCBSS19QQTMgNCAmcGNm
Z19wdWxsX2Rvd24+LAorCQkJCS8qIFBDSUUzMHgxXzBfUEVSU1RuX00xX0wgKi8KKwkJCQk8NCBS
S19QQTUgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxfZG93bj4sCisJCQkJLyogUENJRTMweDFfMF9X
QUtFbl9NMV9MICovCisJCQkJPDQgUktfUEE0IDQgJnBjZmdfcHVsbF9kb3duPjsKIAkJfTsKIAl9
OwogCi0JcGNpZTMgewotCQlwY2llM19yc3Q6IHBjaWUzLXJzdCB7Ci0JCQlyb2NrY2hpcCxwaW5z
ID0gPDQgUktfUEI2IFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX25vbmU+OwotCQl9OwotCisJcGNp
ZTMweDQgewogCQlwY2llM192Y2MzdjNfZW46IHBjaWUzLXZjYzN2My1lbiB7CiAJCQlyb2NrY2hp
cCxwaW5zID0gPDEgUktfUEE0IFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX25vbmU+OwogCQl9Owor
CisJCXBjaWUzMHg0X3BpbnM6IHBjaWUzMHg0LXBpbnMgeworCQkJcm9ja2NoaXAscGlucyA9CisJ
CQkJLyogUENJRTMwWDRfQ0xLUkVRbl9NMV9MICovCisJCQkJPDQgUktfUEI0IDQgJnBjZmdfcHVs
bF91cD4sCisJCQkJLyogUENJRTMwWDRfUEVSU1RuX00xX0wgKi8KKwkJCQk8NCBSS19QQjYgUktf
RlVOQ19HUElPICZwY2ZnX3B1bGxfZG93bj4sCisJCQkJLyogUENJRTMwWDRfV0FLRW5fTTFfTCAq
LworCQkJCTw0IFJLX1BCNSA0ICZwY2ZnX3B1bGxfZG93bj47CisJCX07CiAJfTsKIAogCXVzYiB7
CgpiYXNlLWNvbW1pdDogZGMxYzgwMzRlMzFiMTRhMmU1ZTIxMjEwNGVjNTA4YWVjNDRjZTFiOQot
LSAKMi40NC4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
