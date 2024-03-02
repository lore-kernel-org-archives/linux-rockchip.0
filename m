Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EE7CC54798
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Mar 2024 12:18:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EGEDxpKKsOGChIX06NDGv+3Njq4FrCxTfgslrNyGzM4=; b=Jx752R6AUHixvJ
	OQeaSDrLaFEf0Lp223b78O2vuKazdk/xC1j4QhXc/1C9vuYhifQsMfi0vPLaF/HX4opTStWn8kkQC
	pcBW9l/XLb8cYVuks6Tf3iQ+0a6VGcAN56rznJVR0NbMND3RdZgOlKGomo3zzCfPvHPbXB0i2ZMLL
	VObdM2Iv02/n8EMfPas894157T2hgBI9Gug27ibqgIg/TfXpTc7QADwacUincfrvv12rs0opy3XGb
	S3hebDcba1u4Ld5joIypDQtEyQf7Ia+KKClJopBZlcyiuTuI5YYH2Zk8nwoiTicA9PZFp4mFns4G5
	Srpy7V46AJG8j0kuLSyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rgOJU-00000003V7F-3GuG;
	Sat, 02 Mar 2024 12:18:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rgOJS-00000003V6h-16mn;
	Sat, 02 Mar 2024 12:17:59 +0000
Received: from [194.95.143.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rgOJR-0005JE-2M; Sat, 02 Mar 2024 13:17:57 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip arm64 defconfig changes for 6.9 #1
Date: Sat, 02 Mar 2024 13:17:56 +0100
Message-ID: <14841602.uLZWGnKmhe@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240302_041758_339429_24A84ACF 
X-CRM114-Status: UNSURE (   6.98  )
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

The following changes since commit 6613476e225e090cc9aad49be7fa504e290dd33d:

  Linux 6.8-rc1 (2024-01-21 14:11:32 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.9-rockchip-config64-1

for you to fetch changes up to 23ed255e74317b10b41b396d4af5b79b47b28c22:

  arm64: defconfig: Enable Rockchip HDMI/eDP Combo PHY (2024-02-27 23:35:45 +0100)

----------------------------------------------------------------
Enablement of the hdmi phy-driver used on rk3588.

----------------------------------------------------------------
Cristian Ciocaltea (1):
      arm64: defconfig: Enable Rockchip HDMI/eDP Combo PHY

 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
