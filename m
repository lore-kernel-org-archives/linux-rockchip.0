Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0B9AC4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Oct 2023 14:25:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=68/qWAf8Hd9AE3umROTXH+4Jv3kcWSLoxi0JTaz7Vkg=; b=Fu/jUtNzVP8pTk
	4/xKBfF5HkLjYvzbqKOC4uJIpfhNCgYXJNv4duj9t42gDki67tG/ArlzJRbWa/gZaXt09kR1101jP
	deQlwEoChrD/CV1irDST/m7pKn8gtgVv5IZdHfXWKIEQijae7qGnk7hjWlXaY2WYXkKz8MJintNRZ
	n8Q1zfSa8ESdAtgISyyOMxliaNftO794oOPjpeyXSds9C9Uil9DzVMwRhuGfoMlWBqIVxB8hZhj9J
	b05gTt5sqDiqC2n7DcKw2nuT153F5X7dy9a+w4rwFJkbHnJ1U4bfFhfFvHY9Zi7PdV8qRyH7jqy/r
	fb9RkXm/JPMqY1v6iX4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qxTCE-003Tev-28;
	Mon, 30 Oct 2023 14:24:50 +0000
Received: from mail-oa1-f45.google.com ([209.85.160.45])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qxTCB-003TeZ-0e;
	Mon, 30 Oct 2023 14:24:48 +0000
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-1e9ac336589so3082694fac.1;
        Mon, 30 Oct 2023 07:24:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698675885; x=1699280685;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KURySP8CPvB4/y1EF5BKpqCgD6RX//UEPazzHu4/yag=;
        b=cuZHRCGAmvZs41wPLLkMyCGCBUIip0iBbuXUPAoqTftG9w59dsiwyJ9qriPCBiMLR0
         1LlHQbBOtDPMrvFPehL3YYPChizgMBRGCjlZFBVIG0fiGvm25kZYR85xPQbcsm8iEx9q
         fBBg+6L1c7Y4GWKuEu+qG1lD77DsCR3j12e1RMj6lFnBV2BtkmWeL4JXPTk0UlL160JN
         +Cg1+sjygucMjPi6Fhh0tO3M2/94yc8FoAIokU7fK3C1HfDYzSB9Mx4y98R2zUJno+GW
         /7vquzPtahmtJfbg9jv/3cMD1NIeWrJHodQzw3AOBPX4yGOQmV29dn+Ys2cz/OElssTb
         YQaA==
X-Gm-Message-State: AOJu0YwmizbSgUZDDb4/ftALX/mOKjCgrYOPE0lHpUfJIRH7fKLn7t6C
	ZrJfrsGX6ESHGCoTGB038w==
X-Google-Smtp-Source: AGHT+IG976VSsNVNGrcLtXF9kn5Tt4rIHb5nwu/RGtnSoO1PHC/WESbhx3GE6OQSIrDTedgOFiLmLA==
X-Received: by 2002:a05:6870:1382:b0:1e9:f09d:3736 with SMTP id 2-20020a056870138200b001e9f09d3736mr9855710oas.45.1698675884893;
        Mon, 30 Oct 2023 07:24:44 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id s16-20020a05683004d000b006b8af3a2599sm1413313otd.73.2023.10.30.07.24.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 07:24:44 -0700 (PDT)
Received: (nullmailer pid 816585 invoked by uid 1000);
	Mon, 30 Oct 2023 14:24:42 -0000
From: Rob Herring <robh@kernel.org>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Heiko Stuebner <heiko@sntech.de>
Cc: kernel test robot <lkp@intel.com>, linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [RESEND PATCH] ASoC: rockchip: Fix unused rockchip_i2s_tdm_match warning for !CONFIG_OF
Date: Mon, 30 Oct 2023 09:23:38 -0500
Message-ID: <20231030142337.814907-2-robh@kernel.org>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231030_072447_236326_1B56C6E9 
X-CRM114-Status: GOOD (  14.34  )
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
Mark, another one that probably didn't get sent to you...

 sound/soc/rockchip/rockchip_i2s_tdm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/rockchip/rockchip_i2s_tdm.c b/sound/soc/rockchip/rockchip_i2s_tdm.c
index 5c51dbef6e86..860e66ec85e8 100644
--- a/sound/soc/rockchip/rockchip_i2s_tdm.c
+++ b/sound/soc/rockchip/rockchip_i2s_tdm.c
@@ -1757,7 +1757,7 @@ static struct platform_driver rockchip_i2s_tdm_driver = {
 	.remove_new = rockchip_i2s_tdm_remove,
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
