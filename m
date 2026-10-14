Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80D9DC3DA7A
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2026 20:14:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8D1Bxhp3Hwzg2hsODhqsx18L7CbmH7xzaDBJtnmNS8M=; b=0oBSZMYn2aqHKa
	7DqCiwn8aSL4WaX1QusX6wfMa3EPQBZDDJT+d1IloX7U9v3AaAokyIqG4yL6VUSCwIuqylFq7HBsv
	M6PnfBAYkJAGSVs5jjWCfvSOYmpUWIrkmtvI27LQpfo6DiGMtQbWIMAB/jAGooIR4F9ku//m4E3rA
	3Ug4ioCxvQDLI78X2AgIvK836x+BfhNweToEdGX3huxuA73KjoosIG7cm7iq+uCBy7/vrJG2ENXYJ
	ANz0cGSI1DIw35HAIvEyczw9wEMg58Ef8TpyG14N2DJtUzR/zEvwDqcTy9c33kmzpEfrJvSlZw4VD
	D6c5egDkZfyjwqZpddQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xH5N6-0000000GFi8-45Dr;
	Wed, 14 Oct 2026 20:14:44 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xH5N6-0000000GFhe-1jhB;
	Wed, 14 Oct 2026 20:14:44 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7F5646020C;
	Wed, 14 Oct 2026 20:14:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0AB491F000C4;
	Wed, 14 Oct 2026 20:14:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792008883;
	bh=i3kPv2EnHCuSJTkONfOoKlbv7OJfV/DzN4cTtsaG+7s=;
	h=Date:From:To:Cc:Subject;
	b=QX2FLAgyAwNAACG4J/atDWNVOgM1duxzU+cwgZ/o4t+utd/n1VJ99q6OYk+BLOeHG
	 6KOQfkVx2UiQeInHTw5ePbQNEQcnNO6xQfqGIUhh6J9SNEZz5OKO3UwHLJ9+UHuZYx
	 Gnbah9qgTEUwliytxHKs1jwjU8F6DoIXBlADu0dZ/ToJgGmM2fMZxOpqKSkIw7hIvP
	 m37Q6AMK73LIXKip7brd5H6Llw0XNcTV2TTDWg0+78IXW8UZeQvZFgMzQD1AmE2TQ+
	 eqsi0bOrYkZK0MVT4EiycQwRG4Zo9d9ECk4/KL7Wtqj0ZO2u5Jv7Q6xQOgIfD/2dsu
	 iCH27PqF3ftXw==
Date: Wed, 14 Oct 2026 15:14:41 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Lukas Wunner <lukas@wunner.de>,
	Alex Deucher <alexander.deucher@amd.com>,
	Mahesh J Salgaonkar <mahesh@linux.ibm.com>,
	Oliver OHalloran <oohall@gmail.com>,
	Christian Koenig <christian.koenig@amd.com>,
	Vitaly Prosyak <vitaly.prosyak@amd.com>,
	amd-gfx@lists.freedesktop.org, Aditya Garg <aditya.garg@linux.dev>,
	Jason Perlow <jperlow@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Niklas Cassel <cassel@kernel.org>,
	Diederik de Haas <diederik@cknow-tech.com>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] PCI fixes for v7.3
Message-ID: <20261014201441.GA1661922@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
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

The following changes since commit cee9395acd8043be0644b25c34bfa86623f2b935:

  Linux 7.3-rc1 (2026-08-30 13:34:40 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/pci/pci.git tags/pci-v7.3-fixes-5

for you to fetch changes up to 4e9f69d08253471d92bcc46b363fbada06bd59c4:

  PCI: dw-rockchip: Move INTx IRQ setup to probe (2026-10-12 17:01:54 -0500)

----------------------------------------------------------------

  - Leave ANFE masked on Apple T2 Secure Enclave, which fixes spontaneous
    poweroff regressions on MacBookPro16,1 and likely other models with the
    T2 caused by new Advisory Non-Fatal Error support (Jason Perlow)

  - Move dw-rockchip INTx IRQ setup from rockchip_pcie_host_init(), where
    it runs after every reset, to the rockchip_pcie_probe() path to avoid
    installing new IRQ handler (which causes INTx IRQs to be lost) and
    leaking an IRQ domain on every reset; fixes a regression added this
    cycle (Shawn Lin)

----------------------------------------------------------------
Jason Perlow (1):
      PCI/AER: Keep ANFE masked on Apple T2 Secure Enclave

Shawn Lin (1):
      PCI: dw-rockchip: Move INTx IRQ setup to probe

 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 27 +++++++++++++--------------
 drivers/pci/pcie/aer.c                        |  3 ++-
 drivers/pci/quirks.c                          | 11 +++++++++++
 include/linux/pci.h                           |  1 +
 4 files changed, 27 insertions(+), 15 deletions(-)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
