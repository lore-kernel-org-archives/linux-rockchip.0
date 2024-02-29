Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74CE6C54E49
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Feb 2024 20:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iNrO8FV7RE/92mc3InGDYX32BkZqJbbWC3B5lRISju8=; b=Heh1zZh2oLmFk5
	tFeEAN35LBiBnjfWeM2nqA1J/J4B7qS4f0+ltS0FSDkglI/cgpPSGQ1P+kytQh+B+2+4gbKObHRYI
	9QefLgzAAUpYejzwrR5JpHJK3lAKKDCEyxem+bf874+8dOczct5tPUQfjJzeBNBTIvm01JP43ysM2
	0zI+6sL7ZAl06TKzr4JwWW2pjEGEY1mKK7uqTgGJ0Gkwi84JsWcq6iJacucAhH0KIeMHtKp51xanC
	F/Lt6HhD62QrFXO2vG31hqSLv1qFi4vcfgxhu5OtxX1i0FWe6mgAW7SLrXeMI/nZKWQG84S9Bbkbu
	6BoOYmIWsUI5zX09HIBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfnA8-0000000F6EY-3C30;
	Thu, 29 Feb 2024 20:37:52 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfn9x-0000000F68e-05tD;
	Thu, 29 Feb 2024 20:37:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 5911DCE2122;
	Thu, 29 Feb 2024 20:37:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8EAAAC433F1;
	Thu, 29 Feb 2024 20:37:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709239059;
	bh=ayO7XyN49cXFaYIdOLLp2HPoo0b7cB0hWQMIZqiT/UM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=mDEjjkAXEhROgveSOcKjXv8GDp4TPf2GjXUPDM/aONIIEIWx9osn/lu6BDdCt4/ge
	 XtNMekaEN2ugeWC34ArgB16/A0vcpQcaKmgqVP0WDWZkd4KYdhMLu6dPCXoDg78aA5
	 nBxAqUNdp81j9k4hAMqxpL7q13u6hvfhVpsUpX4ZXx+JdN3gTUbdO+4SqMeqD8Z6wT
	 /h5aXAYji+BnltxXJ8o8gidDZgiFC0+GpkKrVmDJ0KK/yO0XW+v7gmH/T/duT1U6wU
	 RJKw21UjcM40XPDCpzpB2oxoq+B6Vcn2UtAWfnKGmHvtCqtsgS3JO++fIweVoWegQr
	 +DACWuLgvcGag==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Heiko Stuebner <heiko@sntech.de>,
	Sasha Levin <sashal@kernel.org>,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 6.7 05/24] ARM: dts: rockchip: Drop interrupts property from pwm-rockchip nodes
Date: Thu, 29 Feb 2024 15:36:45 -0500
Message-ID: <20240229203729.2860356-5-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240229203729.2860356-1-sashal@kernel.org>
References: <20240229203729.2860356-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.7.6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_123741_457384_4B897778 
X-CRM114-Status: GOOD (  10.50  )
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

RnJvbTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4K
ClsgVXBzdHJlYW0gY29tbWl0IGY5ODY0M2Q4ZGFmMzQ0M2UzYjQxNGE4MmQwY2IzZDc0NWY4Yzhi
YmMgXQoKVGhlIGJpbmRpbmcgZG9lc24ndCBkZWZpbmUgaW50ZXJydXB0cyBhbmQgYWRkaW5nIHN1
Y2ggYSBkZWZpbml0aW9uIHdhcwpyZWZ1c2VkIGJlY2F1c2UgaXQncyB1bmNsZWFyIGhvdyB0aGV5
IHNob3VsZCBldmVyIGJlIHVzZWQgYW5kIHRoZQpyZWxldmFudCByZWdpc3RlcnMgYXJlIG91dHNp
ZGUgdGhlIFBXTSByYW5nZS4gU28gZHJvcCB0aGVtIGZpeGluZwpzZXZlcmFsIGR0YnNfY2hlY2sg
d2FybmluZ3MgbGlrZToKCglhcmNoL2FybS9ib290L2R0cy9yb2NrY2hpcC9ydjExMDgtZWxnaW4t
cjEuZHRiOiBwd21AMTAyODAwMzA6ICdpbnRlcnJ1cHRzJyBkb2VzIG5vdCBtYXRjaCBhbnkgb2Yg
dGhlIHJlZ2V4ZXM6ICdwaW5jdHJsLVswLTldKycKCWZyb20gc2NoZW1hICRpZDogaHR0cDovL2Rl
dmljZXRyZWUub3JnL3NjaGVtYXMvcHdtL3B3bS1yb2NrY2hpcC55YW1sIwoKU2lnbmVkLW9mZi1i
eTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KTGlu
azogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDI0MDEyOTExMzIwNS4yNDUzMDI5LTItdS5r
bGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlClNpZ25lZC1vZmYtYnk6IEhlaWtvIFN0dWVibmVy
IDxoZWlrb0BzbnRlY2guZGU+ClNpZ25lZC1vZmYtYnk6IFNhc2hhIExldmluIDxzYXNoYWxAa2Vy
bmVsLm9yZz4KLS0tCiBhcmNoL2FybS9ib290L2R0cy9yb2NrY2hpcC9ydjExMDguZHRzaSB8IDgg
LS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA4IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtL2Jvb3QvZHRzL3JvY2tjaGlwL3J2MTEwOC5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMv
cm9ja2NoaXAvcnYxMTA4LmR0c2kKaW5kZXggYWJmMzAwNmYwYTg0Mi4uZjMyOTFmM2JiYzZmZCAx
MDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvcm9ja2NoaXAvcnYxMTA4LmR0c2kKKysrIGIv
YXJjaC9hcm0vYm9vdC9kdHMvcm9ja2NoaXAvcnYxMTA4LmR0c2kKQEAgLTE5Niw3ICsxOTYsNiBA
QCBzcGk6IHNwaUAxMDI3MDAwMCB7CiAJcHdtNDogcHdtQDEwMjgwMDAwIHsKIAkJY29tcGF0aWJs
ZSA9ICJyb2NrY2hpcCxydjExMDgtcHdtIiwgInJvY2tjaGlwLHJrMzI4OC1wd20iOwogCQlyZWcg
PSA8MHgxMDI4MDAwMCAweDEwPjsKLQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDM4IElSUV9UWVBF
X0xFVkVMX0hJR0g+OwogCQljbG9ja3MgPSA8JmNydSBTQ0xLX1BXTT4sIDwmY3J1IFBDTEtfUFdN
PjsKIAkJY2xvY2stbmFtZXMgPSAicHdtIiwgInBjbGsiOwogCQlwaW5jdHJsLW5hbWVzID0gImRl
ZmF1bHQiOwpAQCAtMjA4LDcgKzIwNyw2IEBAIHB3bTQ6IHB3bUAxMDI4MDAwMCB7CiAJcHdtNTog
cHdtQDEwMjgwMDEwIHsKIAkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxydjExMDgtcHdtIiwgInJv
Y2tjaGlwLHJrMzI4OC1wd20iOwogCQlyZWcgPSA8MHgxMDI4MDAxMCAweDEwPjsKLQkJaW50ZXJy
dXB0cyA9IDxHSUNfU1BJIDM4IElSUV9UWVBFX0xFVkVMX0hJR0g+OwogCQljbG9ja3MgPSA8JmNy
dSBTQ0xLX1BXTT4sIDwmY3J1IFBDTEtfUFdNPjsKIAkJY2xvY2stbmFtZXMgPSAicHdtIiwgInBj
bGsiOwogCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwpAQCAtMjIwLDcgKzIxOCw2IEBAIHB3
bTU6IHB3bUAxMDI4MDAxMCB7CiAJcHdtNjogcHdtQDEwMjgwMDIwIHsKIAkJY29tcGF0aWJsZSA9
ICJyb2NrY2hpcCxydjExMDgtcHdtIiwgInJvY2tjaGlwLHJrMzI4OC1wd20iOwogCQlyZWcgPSA8
MHgxMDI4MDAyMCAweDEwPjsKLQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDM4IElSUV9UWVBFX0xF
VkVMX0hJR0g+OwogCQljbG9ja3MgPSA8JmNydSBTQ0xLX1BXTT4sIDwmY3J1IFBDTEtfUFdNPjsK
IAkJY2xvY2stbmFtZXMgPSAicHdtIiwgInBjbGsiOwogCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1
bHQiOwpAQCAtMjMyLDcgKzIyOSw2IEBAIHB3bTY6IHB3bUAxMDI4MDAyMCB7CiAJcHdtNzogcHdt
QDEwMjgwMDMwIHsKIAkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxydjExMDgtcHdtIiwgInJvY2tj
aGlwLHJrMzI4OC1wd20iOwogCQlyZWcgPSA8MHgxMDI4MDAzMCAweDEwPjsKLQkJaW50ZXJydXB0
cyA9IDxHSUNfU1BJIDM4IElSUV9UWVBFX0xFVkVMX0hJR0g+OwogCQljbG9ja3MgPSA8JmNydSBT
Q0xLX1BXTT4sIDwmY3J1IFBDTEtfUFdNPjsKIAkJY2xvY2stbmFtZXMgPSAicHdtIiwgInBjbGsi
OwogCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwpAQCAtMzg2LDcgKzM4Miw2IEBAIGkyYzA6
IGkyY0AyMDAwMDAwMCB7CiAJcHdtMDogcHdtQDIwMDQwMDAwIHsKIAkJY29tcGF0aWJsZSA9ICJy
b2NrY2hpcCxydjExMDgtcHdtIiwgInJvY2tjaGlwLHJrMzI4OC1wd20iOwogCQlyZWcgPSA8MHgy
MDA0MDAwMCAweDEwPjsKLQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDM5IElSUV9UWVBFX0xFVkVM
X0hJR0g+OwogCQljbG9ja3MgPSA8JmNydSBTQ0xLX1BXTTBfUE1VPiwgPCZjcnUgUENMS19QV00w
X1BNVT47CiAJCWNsb2NrLW5hbWVzID0gInB3bSIsICJwY2xrIjsKIAkJcGluY3RybC1uYW1lcyA9
ICJkZWZhdWx0IjsKQEAgLTM5OCw3ICszOTMsNiBAQCBwd20wOiBwd21AMjAwNDAwMDAgewogCXB3
bTE6IHB3bUAyMDA0MDAxMCB7CiAJCWNvbXBhdGlibGUgPSAicm9ja2NoaXAscnYxMTA4LXB3bSIs
ICJyb2NrY2hpcCxyazMyODgtcHdtIjsKIAkJcmVnID0gPDB4MjAwNDAwMTAgMHgxMD47Ci0JCWlu
dGVycnVwdHMgPSA8R0lDX1NQSSAzOSBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKIAkJY2xvY2tzID0g
PCZjcnUgU0NMS19QV00wX1BNVT4sIDwmY3J1IFBDTEtfUFdNMF9QTVU+OwogCQljbG9jay1uYW1l
cyA9ICJwd20iLCAicGNsayI7CiAJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7CkBAIC00MTAs
NyArNDA0LDYgQEAgcHdtMTogcHdtQDIwMDQwMDEwIHsKIAlwd20yOiBwd21AMjAwNDAwMjAgewog
CQljb21wYXRpYmxlID0gInJvY2tjaGlwLHJ2MTEwOC1wd20iLCAicm9ja2NoaXAscmszMjg4LXB3
bSI7CiAJCXJlZyA9IDwweDIwMDQwMDIwIDB4MTA+OwotCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkg
MzkgSVJRX1RZUEVfTEVWRUxfSElHSD47CiAJCWNsb2NrcyA9IDwmY3J1IFNDTEtfUFdNMF9QTVU+
LCA8JmNydSBQQ0xLX1BXTTBfUE1VPjsKIAkJY2xvY2stbmFtZXMgPSAicHdtIiwgInBjbGsiOwog
CQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwpAQCAtNDIyLDcgKzQxNSw2IEBAIHB3bTI6IHB3
bUAyMDA0MDAyMCB7CiAJcHdtMzogcHdtQDIwMDQwMDMwIHsKIAkJY29tcGF0aWJsZSA9ICJyb2Nr
Y2hpcCxydjExMDgtcHdtIiwgInJvY2tjaGlwLHJrMzI4OC1wd20iOwogCQlyZWcgPSA8MHgyMDA0
MDAzMCAweDEwPjsKLQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDM5IElSUV9UWVBFX0xFVkVMX0hJ
R0g+OwogCQljbG9ja3MgPSA8JmNydSBTQ0xLX1BXTTBfUE1VPiwgPCZjcnUgUENMS19QV00wX1BN
VT47CiAJCWNsb2NrLW5hbWVzID0gInB3bSIsICJwY2xrIjsKIAkJcGluY3RybC1uYW1lcyA9ICJk
ZWZhdWx0IjsKLS0gCjIuNDMuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
