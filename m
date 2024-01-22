Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BA25C47E49
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Jan 2024 21:20:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yj4Ql2uvSfLsh2PvgVLV9D7hY+BMA3VO/9LiuE41ZEg=; b=lL4ojciTbQXln2
	I6aEG5+IbP/V3vb7xwN2H6DomdGwh2i/WeaBGHWw+ou0a3zjhI5Yx6OSr9q7i+hXEkwKpLES9vqHO
	2qfufcQXwM9UP3n7yZqJO1OIuxW2QYpt6lyfyIExPRqoFadF5NjJnx6isFcjop7lfs8TmgWhLRBXe
	mXyNJwqSF6UoW7/HixPjO32+SVwrl/Ijr9PpbRjQd6Lp7dUoMCL4ZgjJJwMhd3cndMdH117fFSiMo
	ERu9r8UlbNJAFlo8dzQ7AbI4TRaFJIhyr7jaMIoWQnp8tEmMc7ts3qPXxeilXquxy//AyGOzKNjSh
	eY7Q11yuzPg6VSVkYqoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rS1iZ-00E9wF-1J;
	Mon, 22 Jan 2024 21:20:31 +0000
Received: from luna.linkmauve.fr ([82.65.109.163])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rS1iR-00E9sr-1K;
	Mon, 22 Jan 2024 21:20:25 +0000
Received: by luna.linkmauve.fr (Postfix, from userid 1000)
	id E22CEDDADC6; Mon, 22 Jan 2024 21:35:15 +0100 (CET)
From: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	=?UTF-8?q?Tam=C3=A1s=20Sz=C5=B1cs?= <szucst@iit.uni-miskolc.hu>,
	Christopher Obbard <chris.obbard@collabora.com>,
	Shreeya Patel <shreeya.patel@collabora.com>,
	John Clark <inindev@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>,
	Andy Yan <andy.yan@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: Enable the tsadc on Rock-5B
Date: Mon, 22 Jan 2024 21:34:58 +0100
Message-ID: <20240122203502.3311520-3-linkmauve@linkmauve.fr>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240122203502.3311520-1-linkmauve@linkmauve.fr>
References: <20240122203502.3311520-1-linkmauve@linkmauve.fr>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240122_132023_586416_8E03F042 
X-CRM114-Status: UNSURE (   9.54  )
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

VGhpcyBpcyB0aGUgYm9hcmQgSeKAmXZlIHRlc3RlZCB0aGUgcHJldmlvdXMgY29tbWl0IG9uLgoK
U2lnbmVkLW9mZi1ieTogRW1tYW51ZWwgR2lsIFBleXJvdCA8bGlua21hdXZlQGxpbmttYXV2ZS5m
cj4KLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLmR0cyB8
IDQgKysrKwogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWIuZHRzIGIvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMKaW5kZXggYTBlMzAzYzNhMWRj
Li4yYzZlNTVmMGE1ZmEgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszNTg4LXJvY2stNWIuZHRzCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTg4LXJvY2stNWIuZHRzCkBAIC03MzEsNiArNzMxLDEwIEBAIHJlZ3VsYXRvci1zdGF0ZS1tZW0g
ewogCX07CiB9OwogCismdHNhZGMgeworCXN0YXR1cyA9ICJva2F5IjsKK307CisKICZ1YXJ0MiB7
CiAJcGluY3RybC0wID0gPCZ1YXJ0Mm0wX3hmZXI+OwogCXN0YXR1cyA9ICJva2F5IjsKLS0gCjIu
NDMuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
