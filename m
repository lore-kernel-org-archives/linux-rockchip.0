Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99D4BC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 May 2022 19:35:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mW2dzyOjklCJIuGBcY1jsQWIZrUr8J9TLpZatXdrSEc=; b=vTNbOcnUDMdEiB
	pb3dcvwY6s+Y7Kgapje3YZ7HfNq6ovcm5GNZsaFEPbkEGNdkKEKr8dO+fRlGb69j6/R7LAFU3/+Uq
	ttlugefVOLNwlqErSMqPmmRj5WE4Q9rCLpCPsOm59/NNRYJcteHgrz/41G5ma/mGPw2uxEAPe7ltK
	pi6iv4GCfdHEK8/LK4pLeJAfnDtbKuQM4x95rq4wnCgbm5xvdOqFG/vOJweFsaFLz3aGQcl6T6Fqh
	NqMwupaFyHKTXIqs0kv+YwKcJpw7Re7/CaAsVQ5ibjKcSu6QzkVa/3VMGmYqQA7Yyk1xgKGChvPHI
	U6GRD6yxRAC2TcwKYQ/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nr2yu-00Fch9-B1; Tue, 17 May 2022 19:35:44 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nr2ys-00FcgA-4P; Tue, 17 May 2022 19:35:43 +0000
Received: from wf0416.dip.tu-dresden.de ([141.76.181.160] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <heiko@sntech.de>)
 id 1nr2yr-0004DI-1C; Tue, 17 May 2022 21:35:41 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts32 changes for 5.19 #2
Date: Tue, 17 May 2022 21:35:39 +0200
Message-ID: <5916377.R56niFO833@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220517_123542_215489_F6FF8384 
X-CRM114-Status: UNSURE (   7.29  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

The following changes since commit 53070cfa8228bdc64148d1e8c76c9f97ed0dfd62:

  ARM: dts: rockchip: rename pcfg_pull_default node name on rk3036 (2022-04-11 02:16:33 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.19-rockchip-dts32-2

for you to fetch changes up to 36b1b58523b531f60721d42910e4d6fe447c90d5:

  ARM: dts: rockchip: add clocks property to cru node rk3228 (2022-05-17 21:08:20 +0200)

----------------------------------------------------------------
Amba and clock fixes to conform better to actual dt-bindings.

----------------------------------------------------------------
Johan Jonker (6):
      ARM: dts: rockchip: add clocks property to cru node rv1108
      ARM: dts: rockchip: Remove "amba" bus nodes from rv1108
      ARM: dts: rockchip: add clocks property to cru node rk3288
      ARM: dts: rockchip: add clocks property to cru node rk3066a/rk3188
      ARM: dts: rockchip: add clocks property to cru node rk3036
      ARM: dts: rockchip: add clocks property to cru node rk3228

 arch/arm/boot/dts/rk3036.dtsi  |  2 ++
 arch/arm/boot/dts/rk3066a.dtsi |  3 ++-
 arch/arm/boot/dts/rk3188.dtsi  |  3 ++-
 arch/arm/boot/dts/rk322x.dtsi  |  2 ++
 arch/arm/boot/dts/rk3288.dtsi  |  2 ++
 arch/arm/boot/dts/rv1108.dtsi  | 31 +++++++++++++------------------
 6 files changed, 23 insertions(+), 20 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
