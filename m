Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30FB3C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Mar 2022 11:00:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nAUPIT9gl7RGKxzlezsSwAqLfOc1JoqTrixTVIVi1ww=; b=FlJqQR2sopp9L0
	GKRokdGcVpCjcKlqGghdHFxKNdfcWFq1SqdBwyvenLTRt1Kb7EbCUbPfMOe8Qf1GnkM3qt6QkjTtt
	Wvu68Or0Ak5wVGWGmqg/P2/YNXswAT6Ux2H1OHuVQnC8MlwNiaaTfxErCHhD7tsBa7b21P4GGyrFM
	zjw2DFBCrdBqBGjfL0Ddv6vApotQpsCct2tqwUSvMIRpmK9o3rHEQvTPDij6A02PTZzlwgAXBJVXV
	NMbf/BepA5her3l/XdwgoHURBOVztKrovFE1P9ZyG6KJXcoEMA2BK0/2/VoNJaA79tvQ0i2KTIrrK
	r3bI6F/sGqfH239QWy3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nU4ul-008pMt-SE; Tue, 15 Mar 2022 11:00:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nU4ui-008pKV-HN
 for linux-rockchip@lists.infradead.org; Tue, 15 Mar 2022 11:00:29 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nU4ue-0002hT-HQ; Tue, 15 Mar 2022 12:00:24 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 Christoph Muellner <christoph.muellner@theobroma-systems.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Move drive-impedance-ohm to emmc phy
Date: Tue, 15 Mar 2022 12:00:22 +0100
Message-Id: <164734201499.2137788.5297330226462235655.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <1647336426-154797-1-git-send-email-shawn.lin@rock-chips.com>
References: <1647336426-154797-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220315_040028_590395_7ECE16D0 
X-CRM114-Status: UNSURE (   7.87  )
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

On Tue, 15 Mar 2022 17:27:06 +0800, Shawn Lin wrote:
> drive-impedance-ohm is introduced for emmc phy instead of pcie phy.

Applied, thanks!

[1/1] arm64: dts: rockchip: Move drive-impedance-ohm to emmc phy
      commit: 15cd17dae4ae77cc53c2ae585693658884730080

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
