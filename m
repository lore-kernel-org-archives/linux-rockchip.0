Return-Path: <SRS0=AwuO=E7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4989C56201
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2020 17:06:23 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 227DB2063A
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2020 17:06:23 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Ldxlmlbb";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="TzW8twxN"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 227DB2063A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YmEWZKJKwuxJiaU2x9xlB1tCRIz9jvrxzLBIOtjt4bw=; b=Ldxlmlbb4tPD8y14huATImq3+
	tikPQ+hnPDPA7F43UWyB2v12O1fMhA/5BR30Wc4aKzKJ6kvafg3iCWshGaiW4wtEw1VzCAxAHASut
	jNBvCPUSTBUtzjHfAkOYDw4iiK6X17Vu+ItwAYCz35eWt+MF4dKuTxLSzBB5wwM26LohM1Nxmbrno
	bFHYfeXkpgmsQKK/zJMQnUZvSRPS2PMe7l62VC7vfVKrk28U4b0wTMA927qAYXBDsTWXNLVkStVyi
	1RDGuifV40bBAcf6sqxWpNBiHsWST2gIGiTcUDFg/aFfsrtBINwPSAFxaR05Hxp+LOOmcv7Bz96RO
	DJBDiezAg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1khyFE-000822-E5; Wed, 25 Nov 2020 17:06:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khxxb-000763-5a; Wed, 25 Nov 2020 16:48:04 +0000
Received: from localhost.localdomain (adsl-84-226-167-205.adslplus.ch
 [84.226.167.205])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E76822145D;
 Wed, 25 Nov 2020 16:47:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1606322882;
 bh=rHhaaDvCI3oNFGE1+QHFB0i3vECs+/DgQ7hv/ctlhEo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=TzW8twxNCk4GeJkwWlA0WbI44EVFTsn9/JGdItKXKkSISPUy9hwSZkj7od1gd+tqn
 5nnfDAmhOPCpjp4ThF+MqZebT+Yf4AF+V3FVtA5rXo4RuDw1aIRUVYGbgCSva491+n
 +P7xU1JYWVt1eS99Ln1PmVJssVsW/RwxqDHLlUQ4=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Support Opensource <support.opensource@diasemi.com>,
 Oder Chiou <oder_chiou@realtek.com>,
 Kevin Cernekee <cernekee@chromium.org>,
 Jerome Brunet <jbrunet@baylibre.com>, Kevin Hilman <khilman@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Patrick Lai <plai@codeaurora.org>,
 Banajit Goswami <bgoswami@codeaurora.org>,
 Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v2 39/39] ASoC: samsung: smdk_wm8994: remove redundant
 of_match_ptr()
Date: Wed, 25 Nov 2020 17:44:52 +0100
Message-Id: <20201125164452.89239-40-krzk@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201125164452.89239-1-krzk@kernel.org>
References: <20201125164452.89239-1-krzk@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201125_114803_396269_997F165B 
X-CRM114-Status: GOOD (  14.90  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Sylwester Nawrocki <snawrocki@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

of_match_device() already handles properly !CONFIG_OF case, so passing
the argument via of_match_ptr() is not needed.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
Reviewed-by: Sylwester Nawrocki <snawrocki@kernel.org>
---
 sound/soc/samsung/smdk_wm8994.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/samsung/smdk_wm8994.c b/sound/soc/samsung/smdk_wm8994.c
index 28d6eb14d7db..681b244d5312 100644
--- a/sound/soc/samsung/smdk_wm8994.c
+++ b/sound/soc/samsung/smdk_wm8994.c
@@ -170,7 +170,7 @@ static int smdk_audio_probe(struct platform_device *pdev)
 		smdk_dai[0].platforms->of_node = smdk_dai[0].cpus->of_node;
 	}
 
-	id = of_match_device(of_match_ptr(samsung_wm8994_of_match), &pdev->dev);
+	id = of_match_device(samsung_wm8994_of_match, &pdev->dev);
 	if (id)
 		*board = *((struct smdk_wm8994_data *)id->data);
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
