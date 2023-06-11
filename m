Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4B8FC7EE23
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Jun 2023 21:10:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qb9FxFWiyI/b0BeB7Oxp8jO66EtMXwtqWPorx6P7Qws=; b=xZChDGUCC7sW/e
	XO0Z/EsgsyXjAtThbnO4Qbc5eCfZ5wWeTouM0aSCQPM9tacn0lk741m352HTz90H1rMizulW8hv4D
	rKM/3rooZNF9fbIZ+IWVNNNw6P37xN2AtToeplyjRfhcqaFV8/DknuvSklgdoBG41PuYlVwz0fXnR
	NqfoonyqUqLoctDZ25pwyRs+93D35NBixUdn/CHyOkOR55b0M+ZlK4ebwJtyZJZuCflG93V7GqhvN
	EfTjggjCta0p1Nl/hrWdzFbgUClNRcl+L5i4tD0ATsv7vHWtaQVs7LukdWCWbmLXripdC9YHgLP2r
	9cfIwLdKwXxwfSXrRNTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8SJj-001lxU-1T;
	Sun, 11 Jun 2023 21:09:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8SJd-001lwt-13;
	Sun, 11 Jun 2023 21:09:38 +0000
Received: from i53875b22.versanet.de ([83.135.91.34] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1q8SJb-0005rv-OP; Sun, 11 Jun 2023 23:09:35 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts fixes for 6.4
Date: Sun, 11 Jun 2023 23:09:34 +0200
Message-ID: <2885657.e9J7NaK4W3@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230611_140937_369622_FCC541DD 
X-CRM114-Status: UNSURE (   9.31  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Arnd, Kevin, Olof,

please find a below a collection of fixes for the current release 6.4
cycle.

Please pull

Thanks
Heiko

The following changes since commit ac9a78681b921877518763ba0e89202254349d1b:

  Linux 6.4-rc1 (2023-05-07 13:34:35 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.4-rockchip-dtsfixes1

for you to fetch changes up to 568a67e742dfa90b19a23305317164c5c350b71e:

  arm64: dts: rockchip: Fix rk356x PCIe register and range mappings (2023-06-06 18:22:49 +0200)

----------------------------------------------------------------
Fixes for the reset pin on nanopi r5c, a reset line on SOQuartz, a duplicate
usb regulator on rock64 and PCIe register mappings on rk356x.
Also some missing cache properties.

----------------------------------------------------------------
Andrew Powers-Holmes (1):
      arm64: dts: rockchip: Fix rk356x PCIe register and range mappings

Krzysztof Kozlowski (1):
      arm64: dts: rockchip: add missing cache properties

Lorenz Brun (1):
      arm64: dts: rockchip: fix USB regulator on ROCK64

Nicolas Frattaroli (1):
      arm64: dts: rockchip: fix nEXTRST on SOQuartz

Tianling Shen (1):
      arm64: dts: rockchip: fix button reset pin for nanopi r5c

 arch/arm64/boot/dts/rockchip/rk3308.dtsi           |  1 +
 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts     | 14 ++---------
 arch/arm64/boot/dts/rockchip/rk3328.dtsi           |  1 +
 .../boot/dts/rockchip/rk3566-soquartz-cm4.dts      | 18 ++++++++------
 arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi  | 29 ++++++++++------------
 arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5c.dts |  2 +-
 arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts |  1 -
 arch/arm64/boot/dts/rockchip/rk3568.dtsi           | 14 ++++++-----
 arch/arm64/boot/dts/rockchip/rk356x.dtsi           |  7 +++---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi          |  9 +++++++
 10 files changed, 50 insertions(+), 46 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
