Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A94C3D2D108
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jan 2026 14:04:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VjrFPwl2cyrRrp6xHOQN91MkZE/Se0FLWNGyrz6Xnnc=; b=txYbdvLw1joB1j
	kcN4vMT1M5FCwaO7e0q1tAJn+W5gp4OURDdNL00yVZsuBk7MoqQ+tJ+SmylF2pBcBAEHBej4C+Xx2
	99yvuYShPLUB+Z/lJdRe6l+NtX0kSUlosFhQJqH/xbgP4Tc/mA1nbvIgPWoNxGd66j7xLP9tIhSsd
	rE2I8h1OLWQ1ZYMeGB8hkZe2ZL/uYhD/FsmhgJhDN8LTvtFlHZdTnzYfcXTDfYHOl2fWT1zQAqaze
	63cMvk/0AmNW9PNkIIs6VM6mbTOaMJZ9DFQAoNvmR+7Ngtq/NaUH5cbb4lpQZsEKuNMNGdETyHEwS
	BB2FsfZhiZkc0b2WLCHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vff0X-00000007CGY-3a7H;
	Tue, 13 Jan 2026 14:04:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vff0U-00000007CEx-2yEg;
	Tue, 13 Jan 2026 14:04:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=wd6e5O0iU7JUgh7BLqurbGHD/MNBTN0LHMWqkHNi984=; b=WHp2vL0zrGIflsLJgiFDyokK5d
	auqTfGMEKpj9z2iU+AES00Fn/QTlHo6NCor2RQz1YD49/RMaUdB1+P0z2Ii7Ls7SmWk+rw6ZBYoYt
	xsJzrnlYhoL8vr97+5jGiQEHoGJe/wa4EM12OY/drKIATD7wM5hacTKmv96JMp9dU1pvxXArZctBs
	GZ5v4t0GpIxl28kpB6BDtd/6GoTVhBc5OWlntPAjs6fkLqNjtOUkdboLM45W3QlOextetbpclrKFI
	V87r3ODZ8nVCkAL/Ep3w5mA+GUPbHFQXqko1MA55x5Bay4hL+MkeAezdHzqN72/zFYWtM7OolWA8n
	z85j1JGA==;
Received: from i53875b63.versanet.de ([83.135.91.99] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vff0P-0027FZ-0B; Tue, 13 Jan 2026 15:04:21 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	uwe@kleine-koenig.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/5] Support for QNAP TS133 variant
Date: Tue, 13 Jan 2026 15:04:17 +0100
Message-ID: <176831295369.3955755.7083512245905184027.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260104191448.2693309-1-heiko@sntech.de>
References: <20260104191448.2693309-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_060427_006487_D10C7F11 
X-CRM114-Status: GOOD (  15.27  )
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


On Sun, 04 Jan 2026 20:14:43 +0100, Heiko Stuebner wrote:
> This adds support for the TS133 variant of the NAS series.
> 
> It turns out this variant is build around the RK3566 instead of RK3568
> as all the other are. This is "fixable" by not including the
> soc dtsi in the board files and not in the shared tsx33 dtsi.
> 
> While adding the devicetree I also realized that some things are
> wrong in the common dtsi:
> - the shared sata controller for all variants is sata2
> - the TS133 does not have a "copy-key"
> 
> [...]

Applied, thanks!

[1/5] arm64: dts: rockchip: Move SoC include to individual QNAP TSx33 boards
      commit: f0761f6be5ed62bc282349c46784d676571ace83
[2/5] arm64: dts: rockchip: Fix the common combophy + SATA on QNAP TSx33 devices
      commit: 5a16e131ddbacdd7acfb8cab6ff0ca1c57339600
[3/5] arm64: dts: rockchip: Move copy-key to TSx33 board files
      commit: a81a2d211344675de4d945eb2070e3ef1202060f
[4/5] dt-bindings: arm: rockchip: add TS133 to RK356x-based QNAP NAS devices
      commit: ae2208dfa2ac3872f2a0d4c72f1a29fcce7b56a8
[5/5] arm64: dts: rockchip: Add TS133 variant of the QNAP NAS series
      commit: 26cfaee2972c95a6d3ad85549df089a4ee93a551

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
