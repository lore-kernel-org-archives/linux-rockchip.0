Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79F21C54798
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Feb 2024 11:53:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=idEtk/Njq/uvL8/VLD5lTM55WBLFdPaPuNU2ERsqTzc=; b=bUcPImXQcOWorM
	86NzftL38lzxgM93Wa1uN9BqA8B55YjFmkRFcMQCfeWgtw4TdRju0QvtTbwgxmJcTaqT+q39gOD7W
	w7xzkhp47gdzRdZ8a783HlYApMRzy/U1dOljtXPKjbFpcOkeOLwI58hbJi2t68I8hD//q1GSqqAsP
	NdD0MP/GdWcgN0/+KSoSm8+szQNE1smY3eCuYggbKbxWs4ziIL1ODRBmg9nX5gWqM8GRSBpJiXdOa
	ObyzZddPALRGKPXkIEZdnrFCMc9P9EgzFI0QxrUdqbIqS0g7hGZ23Csh4YoHVUjDZmO8gjH6bqOkw
	lg7dfCVZk2ERQi0Yb+pQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rew1W-0000000511H-278Y;
	Tue, 27 Feb 2024 11:53:26 +0000
Received: from master.debian.org ([2001:41b8:202:deb:216:36ff:fe40:4001])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rew15-000000050pe-36R1;
	Tue, 27 Feb 2024 11:53:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.master; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID
	:Content-Description; bh=MNjM4sKWc6EVyuSoSJar6AQqTqLQhUbvZgc3em3wuAk=; b=sx3V
	4GXFVfSDsPrqpp1cMUxvQEqyJmCfSPM3H3d+7Vu0trwbjwT2gpPnJocodS19/iNLQRWIN5gpATn8a
	Sy2lC9hc8ki4zG820+LUNDBUEJG74eJCdIUimxbtPSN2eOrbglBkDAfUxJ4W0cY5rce7JqiqyuVzP
	+cNlKQzPMnFN/+RdZ3oxI9Gs2ToNkg/0gt93d4k+/oDv3S5964TypveQpbaOt4RQjOrsLL+S3b9aV
	s0KlXtgNM5wvacoWTsv2iLoA41b4Yh0FmfCFFV2ZLTnx4swSARLzqbL0jO8MrRFT0udKYMJ+woq58
	dA5WF3hYigGw9gAQ0ie+uMZQ0hBPng==;
Received: from ukleinek by master.debian.org with local (Exim 4.94.2)
	(envelope-from <ukleinek@master.debian.org>)
	id 1rew11-005f8x-1h; Tue, 27 Feb 2024 11:52:55 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@debian.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 2/2] arm64: dts: rockchip: Add basic support for QNAP TS-433
Date: Tue, 27 Feb 2024 12:52:37 +0100
Message-ID: <0d9fa5d730ac1cb91261b25b6809fcef3a12f03a.1709034476.git.ukleinek@debian.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1709034476.git.ukleinek@debian.org>
References: <cover.1709034476.git.ukleinek@debian.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3188; i=ukleinek@debian.org; h=from:subject:message-id; bh=0/KQgzCRTqQpKGH2iEZhXMAV6et+cwrsmr3lJKOcLps=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBl3c0I48qcXyDJrhVKlUfCsiHDANQobD3jG2JM9 6njmEYh13CJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZd3NCAAKCRCPgPtYfRL+ ThOiB/9OX3oap/SoHCeoVjXQd7gVtPEYmvQ6Qrktl2EOK7xsiGoLeoTKXl/iB275jwE3PEQl2+N lGoVA8TK0XacViyMyPH8HadpEWT7OzdzRFCG1nWxWXeHzzkVwNL+W/LuEmuBNP8vHBYSaSUXby2 Ws6WM/4hItx02hvtq6M1HbulxokPACaOU4w6dI4e+WN9jfcqFW9kd0OVAOD4DwT7VJcDK2K/88k xLxLEH4HYYYAKE//sr3QkAgWTl54y/QgLnQMbk1o4DkChKR7qKnW8lLY39ESeMiOIs8StYRtboE lVxAk7fCa12jcfM/Ml7JkqxGLKxs/AejVbJY4uO+I6Q9FeNr
X-Developer-Key: i=ukleinek@debian.org; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_035259_952861_2493AC50 
X-CRM114-Status: GOOD (  14.90  )
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

VGhpcyBpcyBlbm91Z2ggdG8gbWFrZSBlTU1DLCBuZXR3b3JraW5nLCBVQVJUIChjb25zb2xlKSwg
UlRDIGFuZCBhIGhhcmQKZGlzayBhY2Nlc3NpYmxlLiBTdGlsbCBtaXNzaW5nIGFyZSAoYXQgbGVh
c3QpOiBVU0IsIExFRHMsIHJlZ3VsYXRvcnMsCmZhbi4KClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVp
bmUtS8O2bmlnIDx1a2xlaW5la0BkZWJpYW4ub3JnPgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvTWFrZWZpbGUgICAgICAgICB8ICAxICsKIC4uLi9ib290L2R0cy9yb2NrY2hpcC9y
azM1NjgtcW5hcC10czQzMy5kdHMgICB8IDg2ICsrKysrKysrKysrKysrKysrKysKIDIgZmlsZXMg
Y2hhbmdlZCwgODcgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXFuYXAtdHM0MzMuZHRzCgpkaWZmIC0tZ2l0IGEvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvTWFrZWZpbGUKaW5kZXggYTdiMzBlMTFiZWFmLi5hMjhhNmQ0NDU5MjkgMTAwNjQ0
Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUKKysrIGIvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZQpAQCAtOTgsNiArOTgsNyBAQCBkdGItJChD
T05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTY4LWx1YmFuY2F0LTIuZHRiCiBkdGItJChDT05G
SUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTY4LW5hbm9waS1yNWMuZHRiCiBkdGItJChDT05GSUdf
QVJDSF9ST0NLQ0hJUCkgKz0gcmszNTY4LW5hbm9waS1yNXMuZHRiCiBkdGItJChDT05GSUdfQVJD
SF9ST0NLQ0hJUCkgKz0gcmszNTY4LW9kcm9pZC1tMS5kdGIKK2R0Yi0kKENPTkZJR19BUkNIX1JP
Q0tDSElQKSArPSByazM1NjgtcW5hcC10czQzMy5kdGIKIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tD
SElQKSArPSByazM1NjgtcmFkeGEtZTI1LmR0YgogZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVAp
ICs9IHJrMzU2OC1yb2MtcGMuZHRiCiBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmsz
NTY4LXJvY2stM2EuZHRiCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzU2OC1xbmFwLXRzNDMzLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTY4LXFuYXAtdHM0MzMuZHRzCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAw
MC4uYmE3MTM3ZjgwMDc1Ci0tLSAvZGV2L251bGwKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazM1NjgtcW5hcC10czQzMy5kdHMKQEAgLTAsMCArMSw4NiBAQAorLy8gU1BEWC1M
aWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wKyBPUiBNSVQpCisvKgorICogQ29weXJpZ2h0IChj
KSAyMDIxIFJvY2tjaGlwIEVsZWN0cm9uaWNzIENvLiwgTHRkLgorICogQ29weXJpZ2h0IChjKSAy
MDI0IFV3ZSBLbGVpbmUtS8O2bmlnCisgKi8KKworL2R0cy12MS87CisKKyNpbmNsdWRlIDxkdC1i
aW5kaW5ncy9ncGlvL2dwaW8uaD4KKyNpbmNsdWRlICJyazM1NjguZHRzaSIKKworLyB7CisJbW9k
ZWwgPSAiUW5hcCBUUy00MzMtNEcgTkFTIFN5c3RlbSA0LUJheSI7CisJY29tcGF0aWJsZSA9ICJx
bmFwLHRzNDMzIiwgInJvY2tjaGlwLHJrMzU2OCI7Cit9OworCismaTJjMCB7CisJcG1pY0AyMCB7
CisJCWNvbXBhdGlibGUgPSAicm9ja2NoaXAscms4MDkiOworCQlyZWcgPSA8MHgyMD47CisJCWlu
dGVycnVwdC1wYXJlbnQgPSA8JmdwaW8wPjsKKwkJaW50ZXJydXB0cyA9IDwzIElSUV9UWVBFX0xF
VkVMX0xPVz47CisJfTsKK307CisKKyZpMmMxIHsKKwlzdGF0dXMgPSAib2theSI7CisKKwlydGNA
NTEgeworCQljb21wYXRpYmxlID0gIm1pY3JvY3J5c3RhbCxydjgyNjMiOworCQlyZWcgPSA8MHg1
MT47CisJCXdha2V1cC1zb3VyY2U7CisJfTsKK307CisKKyZnbWFjMCB7CisJYXNzaWduZWQtY2xv
Y2tzID0gPCZjcnUgU0NMS19HTUFDMF9SWF9UWD4sIDwmY3J1IFNDTEtfR01BQzA+OworCWFzc2ln
bmVkLWNsb2NrLXBhcmVudHMgPSA8JmNydSBTQ0xLX0dNQUMwX1JHTUlJX1NQRUVEPiwgPCZjcnUg
Q0xLX01BQzBfMlRPUD47CisJYXNzaWduZWQtY2xvY2stcmF0ZXMgPSA8MD4sIDwxMjUwMDAwMDA+
OworCWNsb2NrX2luX291dCA9ICJvdXRwdXQiOworCXBoeS1oYW5kbGUgPSA8JnJnbWlpX3BoeTA+
OworCXBoeS1tb2RlID0gInJnbWlpIjsKKwlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOworCXBp
bmN0cmwtMCA9IDwmZ21hYzBfbWlpbQorCQkgICAgICZnbWFjMF90eF9idXMyCisJCSAgICAgJmdt
YWMwX3J4X2J1czIKKwkJICAgICAmZ21hYzBfcmdtaWlfY2xrCisJCSAgICAgJmdtYWMwX3JnbWlp
X2J1cz47CisJcnhfZGVsYXkgPSA8MHgyZj47CisJdHhfZGVsYXkgPSA8MHgzYz47CisJc3RhdHVz
ID0gIm9rYXkiOworfTsKKworJm1kaW8wIHsKKwlyZ21paV9waHkwOiBldGhlcm5ldC1waHlAMCB7
CisJCWNvbXBhdGlibGUgPSAiZXRoZXJuZXQtcGh5LWllZWU4MDIuMy1jMjIiOworCQlyZWcgPSA8
MHgwPjsKKwl9OworfTsKKworJnBjaWUzMHBoeSB7CisJc3RhdHVzID0gIm9rYXkiOworfTsKKwor
JnBjaWUzeDEgeworCS8qIFRoZSBkb3duc3RyZWFtIGR0cyBoYXM6IHJvY2tjaGlwLGJpZnVyY2F0
aW9uLCBYWFg6IGZpbmQgb3V0IHdoYXQgdGhpcyBpcyBhYm91dCAqLworCXJlc2V0LWdwaW9zID0g
PCZncGlvMCBSS19QQzcgR1BJT19BQ1RJVkVfSElHSD47CisJc3RhdHVzID0gIm9rYXkiOworfTsK
KworJnNkaGNpIHsKKwlidXMtd2lkdGggPSA8OD47CisJbWF4LWZyZXF1ZW5jeSA9IDwyMDAwMDAw
MDA+OworCW5vbi1yZW1vdmFibGU7CisJc3RhdHVzID0gIm9rYXkiOworfTsKKworLyoKKyAqIFBp
bnMgYXZhaWxhYmxlIG9uIENOMiBjb25uZWN0b3IgYXQgVFRMIHZvbHRhZ2UgbGV2ZWwgKDNWMyku
CisgKiAsXyAgXy4KKyAqIHwxMjM0fCAgMT1UWCAyPVZDQworICogYC0tLS0nICAzPVJYIDQ9R05E
CisgKi8KKyZ1YXJ0MiB7CisJc3RhdHVzID0gIm9rYXkiOworfTsKLS0gCjIuNDMuMAoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
