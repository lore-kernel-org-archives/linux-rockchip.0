Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4036C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Feb 2022 23:19:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6RAhF27hZRqr/Wh8wvA4Xpc64LcXwOlKw2q7vDMdCiM=; b=o5ispcVR0OGMpy
	Y50hy33gMeStmwHuE1Vin7qWqMLsNgL+uE8Y3b9iV9KOBXwrflH6YqsAb+IM7N0BJKGJkHD+0DNtI
	pVt/6xyAOcGjRJj6GTX4ycov4N33C6UdXJVsmtNUbtYE+idB2tJ01FUyg4ZWRKCfnJ+IOJXKtB/XP
	THmJnXVVeECs4ngf8e5FJvVKQd9qtW9SCERmSDil1ZnRJJcxGVXkaLKz4cHdBNnO3Itj4Uuc55Yl9
	pG+GrrCoRMrnTp5vGmJTvVDBRdqqjizcsHgPkepEXFoF1u+sapa6JFQ5h9/D0sNwBkTEgC6DcNBpr
	Gcq0Fu5ex+oIKXqgb8QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNNOo-002gAI-AR; Thu, 24 Feb 2022 23:19:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNNOl-002g9G-QA; Thu, 24 Feb 2022 23:19:49 +0000
Received: from [185.156.123.69] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nNNOk-0004Fm-Oq; Fri, 25 Feb 2022 00:19:46 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts32 changes for 5.18 #1
Date: Fri, 25 Feb 2022 00:19:46 +0100
Message-ID: <19595245.eudUkVceaq@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220224_151947_878430_74E2DADF 
X-CRM114-Status: UNSURE (   7.46  )
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

The following changes since commit e783362eb54cd99b2cac8b3a9aeac942e6f6ac07:

  Linux 5.17-rc1 (2022-01-23 10:12:53 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.18-rockchip-dts32-1

for you to fetch changes up to 5a68ce0a7b89a7005a71d406435a45a24c7e86da:

  ARM: dts: rockchip: remove status from rk3288 crypto node (2022-02-15 08:59:53 +0100)

----------------------------------------------------------------
Remove an unneeded status property from the crypto-node
on rk3288.

----------------------------------------------------------------
Johan Jonker (1):
      ARM: dts: rockchip: remove status from rk3288 crypto node

 arch/arm/boot/dts/rk3288.dtsi | 1 -
 1 file changed, 1 deletion(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
