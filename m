Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6986AC77B72
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Apr 2023 23:45:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5Lvh36QtDKUXo8T5vyaWQ7y/uw4EvaiuiZPXQYpsS9Q=; b=3xP2whBPocYru1
	UJUAcSpgan4RgaEUDxgv/oRoPw9Ago95QZ7AaXPS/DWdIiKzaPov3IOOECC9eMahAi4vd9G61pkO5
	9NI5rtNdfcCpXuwvuDyjvWAJqrhJ3CD4jz3Eiu/4Tc6blHCdju/OIUrli2R5+t8+ptw4W3sIPakxe
	6B/QLi/UszFQGr/21nuNQ7w64Kb8QdQ/nmteLbPS+70JN7+h1aa2UbCBlW80czGGXuPehIC1Jf02V
	vVxNrQO7MateuaJ3AU4I6imBUxHNqqnPdUmvXTCrw1CG5OCp/mKOapl9CEnT2TkZdQVOgOd34nmCq
	MKdaSErBHx4L1HMSaStQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poYWz-000QM8-2v;
	Mon, 17 Apr 2023 23:45:09 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poYWx-000QLZ-2Z;
	Mon, 17 Apr 2023 23:45:09 +0000
Received: from [77.22.52.211] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1poYWv-0007Z8-PY; Tue, 18 Apr 2023 01:45:05 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts64 changes for 6.4 #2
Date: Tue, 18 Apr 2023 01:45:05 +0200
Message-ID: <5144826.MHq7AAxBmi@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_164507_836853_339184C4 
X-CRM114-Status: GOOD (  13.72  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Arnd, Kevin, Olof,

some smallish things for 64bit Rockchip SoCs came up after the first
pull request. Nothing earth shattering, but if there is still time for
it, it would be cool if this could make it in for 6.4 .

Otherwise I'll rebase these changes for 6.5.

So if it's still possible, please pull.

Thanks
Heiko


The following changes since commit 07099a551803e05d3ee42fae152bf404f8dc21f9:

  arm64: dts: rockchip: correct panel supplies on Odroid Go Super (2023-04-05 19:39:39 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.4-rockchip-dts64-2

for you to fetch changes up to d3150ed535805403291b95fd84b00b0b5ef41096:

  arm64: dts: rockchip: Add support for volume keys to rk3399-pinephone-pro (2023-04-18 00:40:49 +0200)

----------------------------------------------------------------
On the Rock5b a fix the newly added rtc node and cpu-regulators for the big
cluster. Volume-keys (via adc) for the Pinephone Pro, display support for
the Anbernic RG353. As well as gpio-ranges for rk356x and fixes for the
audio-codec node-names on two boards.

----------------------------------------------------------------
Chris Morgan (1):
      arm64: dts: rockchip: add panel to Anbernic RG353 series

Cristian Ciocaltea (3):
      arm64: dts: rockchip: Drop RTC clock-frequency on rk3588-rock-5b
      arm64: dts: rockchip: Use generic name for es8316 on Pinebook Pro and Rock 5B
      arm64: dts: rockchip: Add vdd_cpu_big regulators to rk3588-rock-5b

John Clark (1):
      arm64: dts: rockchip: Add pinctrl gpio-ranges for rk356x

Ondrej Jirman (1):
      arm64: dts: rockchip: Add support for volume keys to rk3399-pinephone-pro

 .../boot/dts/rockchip/rk3399-pinebook-pro.dts      |  2 +-
 .../boot/dts/rockchip/rk3399-pinephone-pro.dts     | 26 ++++++++++
 .../boot/dts/rockchip/rk3566-anbernic-rg353x.dtsi  | 58 +++++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi           |  5 ++
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts    | 59 +++++++++++++++++++++-
 5 files changed, 147 insertions(+), 3 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
