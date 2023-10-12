Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15418CDB46E
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Oct 2023 19:22:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xxMiPcQEmV70Lynlz5ULEnG7EhvYnoY03ERgssDU4Ik=; b=gusCcm7iQGpzVg
	w9ev5mU0bXl9cx1zPyAZTpZmfTLRiFdFsOodj1fVBtqCqsAKZX2Z0nHtKKX5kV6TFBr11W20+Wkw1
	abmuUzThL0o+qLFDStbmclhvoW5c+ZANaztn78xRBPSJhMdgcEYali1zpl68B0MtbVwJlEXYx0AEX
	VxQmhuwZtsKlRxziEFBaX/2iujiqhq0/XvwBZ1kXWNCItCSEYHWUDIHev1l5FML+HS937VCkysZrX
	0IITmOWDunBfvQWMD9dj8Zyvhi1JyO68MsbKhePKQCfXIuJL0EMo7TF2ZT5AcdGCDZVbFqnqZsS8/
	KVNNACNzOKNrb8CGqF8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qr1GW-001gSP-1S;
	Thu, 12 Oct 2023 19:22:36 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qr1GQ-001gR4-08;
	Thu, 12 Oct 2023 19:22:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 97112B826AD;
	Thu, 12 Oct 2023 19:22:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E3C38C433C8;
	Thu, 12 Oct 2023 19:22:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697138547;
	bh=MF8UBOB+RPE0pevjlqdlPzoxbZCXJJU1HHFY/SxZI4k=;
	h=From:To:Cc:Subject:Date:From;
	b=t3WBVe0Kz1NyMj9SaVq+OxmMJKYeJHubR9/Ls9IDo/l4bjOajqO6UNd3Ajp3VfcKj
	 eub6+1W6z9XCCsI4c1sFekcl1FAVPhTOUtEdDEtWDp00WlTJqNO6v3f8NYnQEcekLP
	 PZmutOGGzl2NwdX0CueZQ5ARlcPbv13GySqtL5jSu3EdjI+u0RZR/dTFRyqsU0OWHy
	 spEQl65b7D5CNAkOS1fcaW/8bYvqooEZrh7Alt5z++rjvJ9XdtWfS5DeQAsCD2zJrb
	 pNq8cuBTEgL916C/DDIknT35QkbHgtRwiRTrp7P3Q7pHgiyHmJUtv+jFJXR5Do4Za5
	 ka23mTmfDo6tQ==
Received: (nullmailer pid 1547085 invoked by uid 1000);
	Thu, 12 Oct 2023 19:22:25 -0000
From: Rob Herring <robh@kernel.org>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Heiko Stuebner <heiko@sntech.de>
Cc: kernel test robot <lkp@intel.com>, linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] ASoC: rockchip: Fix unused rockchip_i2s_tdm_match warning for !CONFIG_OF
Date: Thu, 12 Oct 2023 14:22:00 -0500
Message-ID: <20231012192201.1546607-1-robh@kernel.org>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231012_122230_228029_FB6D2975 
X-CRM114-Status: GOOD (  13.66  )
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

Commit 9958d85968ed ("ASoC: Use device_get_match_data()") dropped the
unconditional use of rockchip_i2s_tdm_match resulting in this warning:

sound/soc/rockchip/rockchip_i2s_tdm.c:1315:34: warning: 'rockchip_i2s_tdm_match' defined but not used [-Wunused-const-variable=]

The fix is to drop of_match_ptr() which is not necessary because DT is
always used for this driver.

Fixes: 9958d85968ed ("ASoC: Use device_get_match_data()")
Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202310121802.CDAGVdF2-lkp@intel.com/
Signed-off-by: Rob Herring <robh@kernel.org>
---
 sound/soc/rockchip/rockchip_i2s_tdm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/rockchip/rockchip_i2s_tdm.c b/sound/soc/rockchip/rockchip_i2s_tdm.c
index 7e996550d1df..7e1625ad70c6 100644
--- a/sound/soc/rockchip/rockchip_i2s_tdm.c
+++ b/sound/soc/rockchip/rockchip_i2s_tdm.c
@@ -1759,7 +1759,7 @@ static struct platform_driver rockchip_i2s_tdm_driver = {
 	.remove = rockchip_i2s_tdm_remove,
 	.driver = {
 		.name = DRV_NAME,
-		.of_match_table = of_match_ptr(rockchip_i2s_tdm_match),
+		.of_match_table = rockchip_i2s_tdm_match,
 		.pm = &rockchip_i2s_tdm_pm_ops,
 	},
 };
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
