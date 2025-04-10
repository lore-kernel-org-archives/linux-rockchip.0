Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76D47C369A9
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Apr 2025 16:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xWbUI0WxYCWigYvv6ckkRJHrbN5i9zHGStVJuKUMpSA=; b=DIa2H/424JXVY/
	RD/YZ0Zt1Af1a0aRFbXHUV5uLgoJpEkB9vnruNyXbvYLHax2BVl8t4lgrCqWoYQ237Syf8O5fNXgY
	LWojtLd+az++di2A2jM0bfs3GypyRSF3qdUZ0LtUobu5hbcjvZCDyy1s6HnE25lPn8YAUZmYyllWa
	7oS6SrABg5wj6JwoAXbsLc2d0g7//Df4dDyYJKozHkRSCzVVt/SfjqIb7s4eyAIctulMIFARGzYs1
	vJPLneICesQ3mhtK02wWRHmeCXTWO0SekitqfEHbVfcb4Efq2tE+TUkWXAq38GvAextrD2MRU+jQ1
	4wzHdskGTFe8yZZ1KIyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2v5k-0000000BGRC-3Cvy;
	Thu, 10 Apr 2025 16:49:28 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2u85-0000000B4y1-2iXr;
	Thu, 10 Apr 2025 15:47:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 25C2E44EA3;
	Thu, 10 Apr 2025 15:47:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 95E14C4CEEA;
	Thu, 10 Apr 2025 15:47:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744300068;
	bh=MJ4WoqvhgC/aZjAy/ZTQhYcG1cI4RNuRYa6MzsWqQtk=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=hKfnqZneC+abzLvYTV6plSnmp6les52XSC3Xz9C7Rcp6J4l9nCVNuTwwlTUqDwC2q
	 +72ANtmUuZvc/VC9/xocD3jWreOuzykzBrMs4XMQ+5mfaCArgkpCjWOGupDZjoz5Ow
	 8UosB8hJqyiNrk+9DA7VvUzhvQIATUk+C0zQVQFDi+LPw+XTwEqa/nzR/JLtX1szDN
	 PBgCNHvQouW1ck4kouSglDLfZtlrrW/w97heJkhLLQgWU5bkcf8/K4TkAhklO7XJAd
	 vNyAf87yOvTzcn67GZHe95oSdT4xtwNHwsePQSTvc2Glij/FQIgwfTDE2C7PXQwh/o
	 +h/3lbYv+BgBQ==
From: "Rob Herring (Arm)" <robh@kernel.org>
Date: Thu, 10 Apr 2025 10:47:23 -0500
Subject: [PATCH v2 02/17] arm64: dts: broadcom: bcm2712: Use "l2-cache" for
 L2 cache node names
MIME-Version: 1.0
Message-Id: <20250410-dt-cpu-schema-v2-2-63d7dc9ddd0a@kernel.org>
References: <20250410-dt-cpu-schema-v2-0-63d7dc9ddd0a@kernel.org>
In-Reply-To: <20250410-dt-cpu-schema-v2-0-63d7dc9ddd0a@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Conor Dooley <conor@kernel.org>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
 Steen Hegelund <Steen.Hegelund@microchip.com>, 
 Daniel Machon <daniel.machon@microchip.com>, UNGLinuxDriver@microchip.com, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Heiko Stuebner <heiko@sntech.de>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, Andy Gross <agross@kernel.org>, 
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
 Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>, 
 Stephen Boyd <sboyd@kernel.org>, zhouyanjie@wanyeetech.com, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, imx@lists.linux.dev, 
 linux-rockchip@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 linux-renesas-soc@vger.kernel.org, linux-mips@vger.kernel.org, 
 linux-pm@vger.kernel.org, linux-mediatek@lists.infradead.org, 
 =?utf-8?q?Philippe_Mathieu-Daud=C3=A9?= <philmd@linaro.org>
X-Mailer: b4 0.15-dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_084749_728676_CCC25C7D 
X-CRM114-Status: UNSURE (   9.18  )
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

VGhlcmUncyBubyBuZWVkIGluY2x1ZGUgdGhlIENQVSBudW1iZXIgaW4gdGhlIEwyIGNhY2hlIG5v
ZGUgbmFtZXMgYXMKdGhlIG5hbWVzIGFyZSBsb2NhbCB0byB0aGUgQ1BVIG5vZGVzLiBUaGUgZG9j
dW1lbnRlZCBub2RlIG5hbWUgaXMKYWxzbyBqdXN0ICJsMi1jYWNoZSIuCgpTaWduZWQtb2ZmLWJ5
OiBSb2IgSGVycmluZyAoQXJtKSA8cm9iaEBrZXJuZWwub3JnPgpSZXZpZXdlZC1ieTogUGhpbGlw
cGUgTWF0aGlldS1EYXVkw6kgPHBoaWxtZEBsaW5hcm8ub3JnPgotLS0KIGFyY2gvYXJtNjQvYm9v
dC9kdHMvYnJvYWRjb20vYmNtMjcxMi5kdHNpIHwgOCArKysrLS0tLQogMSBmaWxlIGNoYW5nZWQs
IDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0
L2Jvb3QvZHRzL2Jyb2FkY29tL2JjbTI3MTIuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYnJv
YWRjb20vYmNtMjcxMi5kdHNpCmluZGV4IDllNjEwYTg5YTMzNy4uYWQwY2FjOGU0NDQ0IDEwMDY0
NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2Jyb2FkY29tL2JjbTI3MTIuZHRzaQorKysgYi9h
cmNoL2FybTY0L2Jvb3QvZHRzL2Jyb2FkY29tL2JjbTI3MTIuZHRzaQpAQCAtNjQsNyArNjQsNyBA
QCBjcHUwOiBjcHVAMCB7CiAJCQlpLWNhY2hlLXNldHMgPSA8MjU2PjsgLy8gNjRLaUIoc2l6ZSkv
NjQobGluZS1zaXplKT0xMDI0d2F5cy80LXdheSBzZXQKIAkJCW5leHQtbGV2ZWwtY2FjaGUgPSA8
JmwyX2NhY2hlX2wwPjsKIAotCQkJbDJfY2FjaGVfbDA6IGwyLWNhY2hlLWwwIHsKKwkJCWwyX2Nh
Y2hlX2wwOiBsMi1jYWNoZSB7CiAJCQkJY29tcGF0aWJsZSA9ICJjYWNoZSI7CiAJCQkJY2FjaGUt
c2l6ZSA9IDwweDgwMDAwPjsKIAkJCQljYWNoZS1saW5lLXNpemUgPSA8NjQ+OwpAQCAtODgsNyAr
ODgsNyBAQCBjcHUxOiBjcHVAMSB7CiAJCQlpLWNhY2hlLXNldHMgPSA8MjU2PjsgLy8gNjRLaUIo
c2l6ZSkvNjQobGluZS1zaXplKT0xMDI0d2F5cy80LXdheSBzZXQKIAkJCW5leHQtbGV2ZWwtY2Fj
aGUgPSA8JmwyX2NhY2hlX2wxPjsKIAotCQkJbDJfY2FjaGVfbDE6IGwyLWNhY2hlLWwxIHsKKwkJ
CWwyX2NhY2hlX2wxOiBsMi1jYWNoZSB7CiAJCQkJY29tcGF0aWJsZSA9ICJjYWNoZSI7CiAJCQkJ
Y2FjaGUtc2l6ZSA9IDwweDgwMDAwPjsKIAkJCQljYWNoZS1saW5lLXNpemUgPSA8NjQ+OwpAQCAt
MTEyLDcgKzExMiw3IEBAIGNwdTI6IGNwdUAyIHsKIAkJCWktY2FjaGUtc2V0cyA9IDwyNTY+OyAv
LyA2NEtpQihzaXplKS82NChsaW5lLXNpemUpPTEwMjR3YXlzLzQtd2F5IHNldAogCQkJbmV4dC1s
ZXZlbC1jYWNoZSA9IDwmbDJfY2FjaGVfbDI+OwogCi0JCQlsMl9jYWNoZV9sMjogbDItY2FjaGUt
bDIgeworCQkJbDJfY2FjaGVfbDI6IGwyLWNhY2hlIHsKIAkJCQljb21wYXRpYmxlID0gImNhY2hl
IjsKIAkJCQljYWNoZS1zaXplID0gPDB4ODAwMDA+OwogCQkJCWNhY2hlLWxpbmUtc2l6ZSA9IDw2
ND47CkBAIC0xMzYsNyArMTM2LDcgQEAgY3B1MzogY3B1QDMgewogCQkJaS1jYWNoZS1zZXRzID0g
PDI1Nj47IC8vIDY0S2lCKHNpemUpLzY0KGxpbmUtc2l6ZSk9MTAyNHdheXMvNC13YXkgc2V0CiAJ
CQluZXh0LWxldmVsLWNhY2hlID0gPCZsMl9jYWNoZV9sMz47CiAKLQkJCWwyX2NhY2hlX2wzOiBs
Mi1jYWNoZS1sMyB7CisJCQlsMl9jYWNoZV9sMzogbDItY2FjaGUgewogCQkJCWNvbXBhdGlibGUg
PSAiY2FjaGUiOwogCQkJCWNhY2hlLXNpemUgPSA8MHg4MDAwMD47CiAJCQkJY2FjaGUtbGluZS1z
aXplID0gPDY0PjsKCi0tIAoyLjQ3LjIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
