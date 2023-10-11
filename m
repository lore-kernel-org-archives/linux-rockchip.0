Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACFBDCDB474
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Oct 2023 18:18:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:From:To
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9b7tmXxt67RevwhcOHSve0r0HmhtVXw14+26p43+EyA=; b=n+Cp5lm9z9COcn
	zeEpE7G+HWIkBwbjO4Y/00bk7a1V60nQW/MSFgGFWU4BIaMbIHXI7ypyV/ybuWjqIjj9NaC85VVAm
	2e9MCDpMb7Pk0CO02YL6LHKhdq2G+BRg+Ck4cB4hTf/KLy4VkU3ONKY7vTAYTcAIJdBYUY0YuYou3
	ISW8VVuKdELvfmm8IlJagfMWlCp2qMGf5GC52A+Rp5rwzvsIeuWBp4aFsW5bhnW18OuENk+nzm8Pd
	ABoSTzc0w94V/cD75PASAj3rEpXyCXFt3l3nxjBcewS0BjWuh7F8vw+qgFBbQoJet0Mjo3ld6mZrL
	OCvnQ16CCGwQieeUdPmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqdmp-00GR3p-1n;
	Wed, 11 Oct 2023 18:18:23 +0000
Received: from mail-40133.protonmail.ch ([185.70.40.133])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqdmn-00GR1s-0V
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Oct 2023 18:18:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.ch;
	s=protonmail3; t=1697048290; x=1697307490;
	bh=ynQ1glqOOY0YVbH7mWAv/jyhEaTBs+pK+QoCHGvfw0U=;
	h=Date:To:From:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=DkR2C1Omyrv0l6cXrVNpLQfKq6s6KpCFW1FRQpyN7/O8o9fm/bxkaVhK5b72BxQK7
	 aA5OJfPskfPEJs1K3b3nWxFIi0zHM56W17OzuUm6eTofIkKkRuWiVk0Hh6g3PKfgkm
	 cpFKf0M+mb3+DmT64JQY3Igzmg2snv37v6Q43/taIzxjfIYhpss0mEdlH3sXIJnnFD
	 AIYfVHeCk0P4jDoi1TcfSe9Lt3K3Oc8x9v9ur6WIUvHgAs2WSh6Slf6tfYaW+K7ugk
	 bQ3EdylYP00NNGblRO8Y3lejV5NC1KRGjHRkipo61qoxRv5udSfTsBzcgeHddZvJmI
	 EQbD+AxmwObbA==
Date: Wed, 11 Oct 2023 18:18:05 +0000
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, Christopher Obbard <chris.obbard@collabora.com>, Shreeya Patel <shreeya.patel@collabora.com>, =?utf-8?Q?Tam=C3=A1s_Sz=C5=B1cs?= <tszucs@protonmail.ch>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
From: =?utf-8?Q?Tam=C3=A1s_Sz=C5=B1cs?= <tszucs@protonmail.ch>
Subject: [PATCH] arm64: dts: rockchip: Remove duplicate regulator vcc3v3_wf from rock-5b
Message-ID: <20231011181757.58047-1-tszucs@protonmail.ch>
Feedback-ID: 53029:user:proton
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231011_111821_384216_557454F8 
X-CRM114-Status: UNSURE (   5.94  )
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

UmVndWxhdG9yIGZvciBWQ0MzVjNfV0YgaGFzIGJlZW4gYWRkZWQgYXMgdmNjM3YzX3BjaWUyeDFs
MCBmaXJzdC4gQ2xlYW4gdGhpcyB1cC4KClNpZ25lZC1vZmYtYnk6IFRhbcOhcyBTesWxY3MgPHRz
enVjc0Bwcm90b25tYWlsLmNoPgotLS0KIC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9j
ay01Yi5kdHMgICAgICB8IDIzICstLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAx
IGluc2VydGlvbigrKSwgMjIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLmR0cwppbmRleCA4NjE4ODg3ODk5ZDkuLjM5MmFjNzgz
YzNhZCAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9j
ay01Yi5kdHMKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01
Yi5kdHMKQEAgLTExNCwyMSArMTE0LDYgQEAgdmNjXzF2MV9ubGRvX3MzOiB2Y2MtMXYxLW5sZG8t
czMtcmVndWxhdG9yIHsKIAkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MTEwMDAwMD47CiAJ
CXZpbi1zdXBwbHkgPSA8JnZjYzV2MF9zeXM+OwogCX07Ci0KLQl2Y2MzdjNfd2Y6IHZjYzN2My13
Zi1yZWd1bGF0b3IgewotCQljb21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7Ci0JCXJlZ3Vs
YXRvci1uYW1lID0gInZjYzN2M193ZiI7Ci0JCXJlZ3VsYXRvci1hbHdheXMtb247Ci0JCXJlZ3Vs
YXRvci1ib290LW9uOwotCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwzMzAwMDAwPjsKLQkJ
cmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MzMwMDAwMD47Ci0JCWVuYWJsZS1hY3RpdmUtaGln
aDsKLQkJZ3Bpb3MgPSA8JmdwaW8xIFJLX1BEMiBHUElPX0FDVElWRV9ISUdIPjsKLQkJcGluY3Ry
bC1uYW1lcyA9ICJkZWZhdWx0IjsKLQkJcGluY3RybC0wID0gPCZ2Y2MzdjNfd2ZfZW4+OwotCQlz
dGFydHVwLWRlbGF5LXVzID0gPDUwMDAwPjsKLQkJdmluLXN1cHBseSA9IDwmdmNjNXYwX3N5cz47
Ci0JfTsKIH07CiAKICZjb21icGh5MF9wcyB7CkBAIC0zMzUsMTIgKzMyMCw2IEBAIHZjYzV2MF9o
b3N0X2VuOiB2Y2M1djAtaG9zdC1lbiB7CiAJCQlyb2NrY2hpcCxwaW5zID0gPDQgUktfUEIwIFJL
X0ZVTkNfR1BJTyAmcGNmZ19wdWxsX25vbmU+OwogCQl9OwogCX07Ci0KLQltMmUgewotCQl2Y2Mz
djNfd2ZfZW46IHZjYzN2My13Zi1lbiB7Ci0JCQlyb2NrY2hpcCxwaW5zID0gPDEgUktfUEQyIFJL
X0ZVTkNfR1BJTyAmcGNmZ19wdWxsX25vbmU+OwotCQl9OwotCX07CiB9OwogCiAmcHdtMSB7CkBA
IC0zOTEsNyArMzcwLDcgQEAgJnNkaW8gewogCXNkLXVocy1zZHIyNTsKIAlzZC11aHMtc2RyNTA7
CiAJc2QtdWhzLXNkcjEwNDsKLQl2bW1jLXN1cHBseSA9IDwmdmNjM3YzX3dmPjsKKwl2bW1jLXN1
cHBseSA9IDwmdmNjM3YzX3BjaWUyeDFsMD47CiAJdnFtbWMtc3VwcGx5ID0gPCZ2Y2NfMXY4X3Mz
PjsKIAlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwogCXBpbmN0cmwtMCA9IDwmc2Rpb20wX3Bp
bnM+OwotLSAKMi40Mi4wCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
