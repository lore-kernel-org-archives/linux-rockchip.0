Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46FE6CEACEF
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Nov 2025 22:22:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DFy5NEOkjkSyKWaXs62iwVlt1uscxWtMNTCQ3QWw8bk=; b=kqewPSrflLgYhV
	I1cBS2dR60ZNl26Ci+P6nR7b/0sB57z/x5ud3Uu0PU98CySNhl1NT/HQDKqayziGyMKfRBCxCuu/Y
	80pILoA0twNBvmYTUoU0tuN3nc9Ur2kYlmb1mc9DGqFOe/NAApIhkUhF7vLoDKGX4n6utIIGq+iUD
	DcvNgWZAey4lITq8qEf4+7IgVxW/Q0Hc9S7sGPe+xSH9gi5/S9rlfjnYt2AYqVsU75h8s7glmeaZS
	PDXtVQeFZSkdd+ZZHskAlFybbXwJcaUlFVx3fUwmdchjYFg7a45JINh5oW/UUQXNuXvlm7bRkpbXl
	M5i2c8KoiBNTMZPgA4mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL7cR-0000000Gwvu-2Z4r;
	Mon, 17 Nov 2025 22:22:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL7cO-0000000GwvE-0dq9;
	Mon, 17 Nov 2025 22:22:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:In-Reply-To:References;
	bh=o8tBdG1d0kXx0ruU+UfdbqfEhRqEOVLLuj+mA5TRVzc=; b=ee/2Qm1bFDdrGoY6saTjofHXiR
	9oJa9nYtYAoi9ZD0pOBj1RUb7l5KRTvi+cDsBX2qtZO3pjf4OxPBTz5kjL3Ul3+zgiYnDF2h3b0bE
	n6GQez0Mpny9goGYhCa106gZ5I/AbJsT9doUnwB7poavY9ApjD0xey9Qa8bIj4WO9pZew1veS3wcQ
	QHrwDJ27yEsCPnig4KfJwUpOHU5n0uAcfg6mDRn61NxaGJEGW3gMTQpNyLX82itu91X5CwxbLjGdW
	VlDeKVW9BUf3lAAwipvt78mtWc+795Zaz94VEZbHmZf4MWMoPuAkCwCNV4jmGKWZEmrTfqCB9t/AX
	i7FT+s5w==;
Received: from [31.12.4.86] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vL7cM-0001RA-FB; Mon, 17 Nov 2025 23:22:38 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts32 changes for 6.19 #1
Date: Mon, 17 Nov 2025 23:22:37 +0100
Message-ID: <2311720.Mh6RI2rZIc@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_142240_196097_DFD68849 
X-CRM114-Status: UNSURE (   8.11  )
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

The following changes since commit 3a8660878839faadb4f1a6dd72c3179c1df56787:

  Linux 6.18-rc1 (2025-10-12 13:42:36 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.19-rockchip-dts32-1

for you to fetch changes up to 10712ce694a67304a99dbba20f8cb146ca5f4fd6:

  ARM: dts: rockchip: move edp assigned-clocks to edp node on rk3288 (2025-11-13 23:52:04 +0100)

----------------------------------------------------------------
A number of cleanups for older socs.

----------------------------------------------------------------
Johan Jonker (4):
      ARM: dts: rockchip: Adapt tps65910 nodes on RK3066 boards
      ARM: dts: rockchip: Remove mshc aliases from RK3288
      ARM: dts: rockchip: Add spi_flash label to rk3288-veyron
      ARM: dts: rockchip: move edp assigned-clocks to edp node on rk3288

 arch/arm/boot/dts/rockchip/rk3066a-bqcurie2.dts  | 34 +++++++++++++----------
 arch/arm/boot/dts/rockchip/rk3066a-marsboard.dts | 34 +++++++++++++----------
 arch/arm/boot/dts/rockchip/rk3066a-rayeager.dts  | 35 ++++++++++++++----------
 arch/arm/boot/dts/rockchip/rk3288-veyron.dtsi    |  2 +-
 arch/arm/boot/dts/rockchip/rk3288.dtsi           |  9 ++----
 5 files changed, 62 insertions(+), 52 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
