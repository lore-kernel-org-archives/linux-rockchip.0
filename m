Return-Path: <SRS0=p+QF=O4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA6E5C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Oct 2021 09:54:53 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7818960F93
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Oct 2021 09:54:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7818960F93
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=canonical.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9/8JI0/PV5Pey3EOhAj78B4tQdOrIM6mopRarO+Fm5k=; b=lKf/HtHe1mnV7H
	ThNihQfL5XZbd6nADCOBztuXL0HJ0OZsNcN3bOO24ShVudqbJLhzfdDHfNhAujduXs2G0VxhwXTfO
	+rkizTVwrIg7r3saGvRanVhJT4mQ31JWoz5O2pMIZwhhU43Q2awcpwiIs/efFENgaR3KqX/eB4jWY
	aDwwnCjAEasjQBPYAXB8KZeZ1Fxo/NLJI7Vi3vuVFj+6+rwcpl/uuog8MR75YMfGBk6robn7ZumkS
	rg4kFyxMRO3p8+LfyyOzTesvGpI2B9XzDTNBvShtWSo5n5V613REoBW2N5N2w2URMDGz0OOqBtP5i
	funKBuiojo3mbzpkvyNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mYmaX-002HhA-Rk; Fri, 08 Oct 2021 09:54:49 +0000
Received: from smtp-relay-canonical-1.canonical.com ([185.125.188.121])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mYmaK-002HbV-Ae; Fri, 08 Oct 2021 09:54:38 +0000
Received: from localhost (1.general.cking.uk.vpn [10.172.193.212])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPSA id DC8C940007; 
 Fri,  8 Oct 2021 09:54:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1633686870;
 bh=tqDPxyLPKVPs4yYbJQLMZF/t1CIh6U8zbhA/lGXkiCY=;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type;
 b=kgsLUxAqCevBQM563UQkgq9iuUw3Cw40WCLce7KhIz3s2zgWPuTXia2G0HKjchrWM
 42Mjy9/1QZPAzQWzzqs+Qgv/UGEbyDxhD1IaqWZbg+SKsE3WLWQU2CxE1mOxbiqu90
 SRUC3vFiOR8uY+bQAJbKoIyqJOLy5m8bn/hTXBOHYTITfVVqiBt430xWFvQHuDZCGG
 o9pqGu/X4cVHU1XqHNb9WouSEeAXLntit7xd2vIWlIjA8Dgr6E62KPf1757EmdEW8Z
 5dFpVpSPxVpOlvXvoC65mRjAj00MgHQ4cQY53ZiQ+Waf7QxiWIkzQAsa8r+su63cPC
 hoWf58UOE1IOQ==
From: Colin King <colin.king@canonical.com>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, linux-rockchip@lists.infradead.org,
 alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org
Cc: kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2][next] ASoC: rockchip: i2s-tdm: Remove call to
 rockchip_i2s_ch_to_io
Date: Fri,  8 Oct 2021 10:54:29 +0100
Message-Id: <20211008095430.62680-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211008_025436_674522_4E3354E0 
X-CRM114-Status: GOOD (  11.10  )
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

From: Colin Ian King <colin.king@canonical.com>

The call to rockchip_i2s_ch_to_io is only useful for its return
value which is not being used. The function call also has no
side effects, the call is effectively useless and can be removed.

Addresses-Coverity: ("Useless call")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 sound/soc/rockchip/rockchip_i2s_tdm.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_i2s_tdm.c b/sound/soc/rockchip/rockchip_i2s_tdm.c
index b08b15071993..cc5a2f9d3948 100644
--- a/sound/soc/rockchip/rockchip_i2s_tdm.c
+++ b/sound/soc/rockchip/rockchip_i2s_tdm.c
@@ -848,8 +848,6 @@ static int rockchip_i2s_io_multiplex(struct snd_pcm_substream *substream,
 				to_ch_num(val), usable_chs);
 			return -EINVAL;
 		}
-
-		rockchip_i2s_ch_to_io(val, false);
 	}
 
 	val <<= i2s_tdm->soc_data->grf_shift;
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
