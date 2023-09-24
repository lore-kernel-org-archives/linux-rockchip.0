Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35588CE7A8A
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Sep 2023 20:38:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:From:To
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gRLwZftP8tsbvRPo90OBQXCL/We+P0vtL78EprCf17E=; b=V4VT7TQZDCVpd/
	w5ahD8G+Yukcl+bo4zSLKcO1VioTSkfDzg6zgAh2xs9TYjsDOXvYGXfIIcvvHRQP6eWOvbrKjtaup
	Gj2w/5wi94xRkmED5LD+FFxOMlecuvkxmHKBG5vk4jl/3l7m4C+P0PjtbvmqShcmnw5TQcqaWmvzQ
	WE3HHJEIp3ZXevpS8d4C6a5KU88cDtfPJ+Thru8sFJ2lrVTPk6d87w8t4dUpJpbazfXfe0l+8IeU8
	0JGE/EXfLz/UmNlQH1rneM5yS06IPUjlffwhS4BQMJe5AND7xace3EyqjHgf99QRYYpR13Ly6lju7
	nygVVhAGp/3w89YYRBoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qkVrf-00Coob-1c;
	Sun, 24 Sep 2023 20:38:03 +0000
Received: from mail-4322.protonmail.ch ([185.70.43.22])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qkVra-00ConC-1P;
	Sun, 24 Sep 2023 20:38:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.ch;
	s=protonmail3; t=1695587873; x=1695847073;
	bh=uidef/P3KDtYZismR6gqXsHsKkj8yimkGdt20wsKK78=;
	h=Date:To:From:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=PyrH3GnXIUa2ge2X53+S+x5qTWT35QZv6XtRf1fvbvnLyh7mAjf47xKXB4Zj/T1qz
	 6sDqs6AHH1kGP3h3J3OwhqrUzQ9u3/qlvMV3vrgjojlIkNS1Mq/jiUrFJvWGTB3EqB
	 rymbE2676fWKdovQgaYUHdyMjMborv7WqLqQJKRMisyfxaFblFt7k/sVdjfKRREDtx
	 goxAREzQyem/od4jsEjSRgWEEgglhhwLb9cl9qjMzez38WAedjmJBqQAhqSp5R2iz9
	 5adj06hzbBDsgw90jCUQaWTGNfMMIKzKVgcbBBpdrLqVJBsurn1p2tpzsvXPDXkySm
	 0yut3M3ZjEZ8g==
Date: Sun, 24 Sep 2023 20:37:45 +0000
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, Christopher Obbard <chris.obbard@collabora.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, Shreeya Patel <shreeya.patel@collabora.com>, FUKAUMI Naoki <naoki@radxa.com>, =?utf-8?Q?Tam=C3=A1s_Sz=C5=B1cs?= <tszucs@protonmail.ch>, Jagan Teki <jagan@edgeble.ai>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
From: =?utf-8?Q?Tam=C3=A1s_Sz=C5=B1cs?= <tszucs@protonmail.ch>
Subject: [PATCH] arm64: dts: rockchip: Add sdio node to rock-5b
Message-ID: <20230924203740.65744-1-tszucs@protonmail.ch>
Feedback-ID: 53029:user:proton
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230924_133758_678106_D719F962 
X-CRM114-Status: UNSURE (   8.25  )
X-CRM114-Notice: Please train this message.
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

RW5hYmxlIFNESU8gb24gUmFkeGEgUk9DSyA1IE1vZGVsIEIgTS4yIEtleSBFLiBBZGQgc2RpbyBu
b2RlIGFuZCBhbGlhcyBhcyBtbWMyLgpBZGQgcmVndWxhdG9yIGZvciB0aGUgMy4zIFYgcmFpbCBi
cmluZ2luZyBpdCB1cCBkdXJpbmcgYm9vdC4gTWFrZSBzdXJlIEVLRVlfRU4KaXMgbXV4ZWQgYXMg
R1BJTy4KClNpZ25lZC1vZmYtYnk6IFRhbcOhcyBTesWxY3MgPHRzenVjc0Bwcm90b25tYWlsLmNo
PgotLS0KIC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMgICAgICB8IDQz
ICsrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA0MyBpbnNlcnRpb25zKCspCgpk
aWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5k
dHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLmR0cwppbmRl
eCA4YWI2MDk2OGYyNzUuLmQxYzNmOWUxMGIzZCAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMKKysrIGIvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMKQEAgLTEyLDYgKzEyLDcgQEAgLyB7CiAJYWxp
YXNlcyB7CiAJCW1tYzAgPSAmc2RoY2k7CiAJCW1tYzEgPSAmc2RtbWM7CisJCW1tYzIgPSAmc2Rp
bzsKIAkJc2VyaWFsMiA9ICZ1YXJ0MjsKIAl9OwogCkBAIC03Niw2ICs3NywyMSBAQCB2Y2NfMXYx
X25sZG9fczM6IHZjYy0xdjEtbmxkby1zMy1yZWd1bGF0b3IgewogCQlyZWd1bGF0b3ItbWF4LW1p
Y3Jvdm9sdCA9IDwxMTAwMDAwPjsKIAkJdmluLXN1cHBseSA9IDwmdmNjNXYwX3N5cz47CiAJfTsK
KworCXZjYzN2M193ZjogdmNjM3YzLXdmLXJlZ3VsYXRvciB7CisJCWNvbXBhdGlibGUgPSAicmVn
dWxhdG9yLWZpeGVkIjsKKwkJcmVndWxhdG9yLW5hbWUgPSAidmNjM3YzX3dmIjsKKwkJcmVndWxh
dG9yLWFsd2F5cy1vbjsKKwkJcmVndWxhdG9yLWJvb3Qtb247CisJCXJlZ3VsYXRvci1taW4tbWlj
cm92b2x0ID0gPDMzMDAwMDA+OworCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwzMzAwMDAw
PjsKKwkJZW5hYmxlLWFjdGl2ZS1oaWdoOworCQlncGlvcyA9IDwmZ3BpbzEgUktfUEQyIEdQSU9f
QUNUSVZFX0hJR0g+OworCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOworCQlwaW5jdHJsLTAg
PSA8JnZjYzN2M193Zl9lbj47CisJCXN0YXJ0dXAtZGVsYXktdXMgPSA8NTAwMDA+OworCQl2aW4t
c3VwcGx5ID0gPCZ2Y2M1djBfc3lzPjsKKwl9OwogfTsKIAogJmNwdV9iMCB7CkBAIC0yMjIsNiAr
MjM4LDEyIEBAIHZjYzV2MF9ob3N0X2VuOiB2Y2M1djAtaG9zdC1lbiB7CiAJCQlyb2NrY2hpcCxw
aW5zID0gPDQgUktfUEIwIFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX25vbmU+OwogCQl9OwogCX07
CisKKwltMmUgeworCQl2Y2MzdjNfd2ZfZW46IHZjYzN2My13Zi1lbiB7CisJCQlyb2NrY2hpcCxw
aW5zID0gPDEgUktfUEQyIFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX25vbmU+OworCQl9OworCX07
CiB9OwogCiAmcHdtMSB7CkBAIC0yNTgsNiArMjgwLDI3IEBAICZzZG1tYyB7CiAJc3RhdHVzID0g
Im9rYXkiOwogfTsKIAorJnNkaW8geworCW1heC1mcmVxdWVuY3kgPSA8MjAwMDAwMDAwPjsKKwlu
by1zZDsKKwluby1tbWM7CisJbm9uLXJlbW92YWJsZTsKKwlidXMtd2lkdGggPSA8ND47CisJY2Fw
LXNkaW8taXJxOworCWRpc2FibGUtd3A7CisJa2VlcC1wb3dlci1pbi1zdXNwZW5kOworCXdha2V1
cC1zb3VyY2U7CisJc2QtdWhzLXNkcjEyOworCXNkLXVocy1zZHIyNTsKKwlzZC11aHMtc2RyNTA7
CisJc2QtdWhzLXNkcjEwNDsKKwl2bW1jLXN1cHBseSA9IDwmdmNjM3YzX3dmPjsKKwl2cW1tYy1z
dXBwbHkgPSA8JnZjY18xdjhfczM+OworCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7CisJcGlu
Y3RybC0wID0gPCZzZGlvbTBfcGlucz47CisJc3RhdHVzID0gIm9rYXkiOworfTsKKwogJnNwaTIg
ewogCXN0YXR1cyA9ICJva2F5IjsKIAlhc3NpZ25lZC1jbG9ja3MgPSA8JmNydSBDTEtfU1BJMj47
Ci0tIAoyLjQwLjEKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
