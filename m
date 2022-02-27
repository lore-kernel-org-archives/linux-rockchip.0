Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE848C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Feb 2022 14:50:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jgrinE49JP3IyObA0GdJiiBmiS/WMxz3JIFmLGu+9iw=; b=UNQOKhdRosHeyd
	yvbre5O9kvOuaM94KyAkmZ4rbn3YAh/Rjz+d1Bnc6WtnLqJDO7/jsIP81WeYMNJXBK4X1DRSBUYx9
	r7bgTtg3guS0CRCGLTtHnpq4ZHOIsl263QKqvDs/kVnY0Gz/d0wUfjnI5ikzv7/Ixu5wIaG2AHzNo
	hALsCD676kiOG9Nfw4U+GH1q+OxfBZwE8tYkn26QykMpLdeRLqOk+T4P4tzepftuCmCy5zNhif2aJ
	2tf59mPOmGkft8kLWcAs8cBujmYV+0mtxvYtwRELg1TnBUCrdk5ZzU/UhKdeLDkf4TV9JOftXa9mo
	XHomdMs9j/6+TGMB3gaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOKsq-009URI-O5; Sun, 27 Feb 2022 14:50:48 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOKsZ-009UF9-7b; Sun, 27 Feb 2022 14:50:33 +0000
Received: by mail-ed1-x531.google.com with SMTP id g20so14064906edw.6;
 Sun, 27 Feb 2022 06:50:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CrbuTWBGQGF1wKlq0XiQG6lHRZW77tNfdMa5Cg7nAoQ=;
 b=UnUTFbikRlKsnmxTJl1qYMTnJhUdXo2Mw6/A2h8+Dd22/WCwk7gDYe4mX3ebjCslBf
 n81T74uLYvpybl/0eQD8efsoQhMREqDZd7dXlJ6hovOgqBEk1WRc+GnACSxZxreZ26Ul
 BQALOopIr+d1bVjGIdzRBfKZyxmvG3vmDvkDeABERmoo0ejF+J7xP7X0XtvQyF8bmf8R
 eEv8a2wbdvnOLCZ2xd6xTwn07uPX1Me1uS5aFz8Mq/KIjdvDzhDvzhw7DOXTMbRL3Vft
 UEhAiRAZPjFH36OMoEZ7eS8QJTyEX+OBdfxuAFC002Hjmq4U+QmbXMW+txvUqAE8hleD
 SnbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CrbuTWBGQGF1wKlq0XiQG6lHRZW77tNfdMa5Cg7nAoQ=;
 b=if4nXGKOg1Ppw8J9e+00MPrXevjTndmuOvrGzKUmBkVGq7s8nbCVynfREbFeF2Qdbl
 dQ1kci3oW0mlj2jBauXcKtAuP+svB0BVRIWWU7dfOcOsSyRfdd/Vs4cTWpfjSjN6Pigi
 QCmIMEkgIdykY5VXwTpmnlaUNWZ8KpC2KLuvdSDOluO18qXkeGHWmYRkWOq/7XqnmEUo
 3NTU8VvfxsXeuHML05NlOlqn/dPVFvG4C2i7A2CxouPEAfWjWtQ9H+iU0VEFpYJbL1D0
 VakFqcYmk7btgE0ZWb8JL+mHzX1PII+NdghFwuikFSDIHTpE/qdWSj9gZCIAzw1OrFH8
 pcsA==
X-Gm-Message-State: AOAM532jPtWACXSvmiXjhLP1Oo+fJMAl05SaWvA6W3jdST7SaSN9rHxh
 Tc5W/CwSPxOLZ1pebCCtALw=
X-Google-Smtp-Source: ABdhPJx9vkMDAjlbJa6ZoafcNpXzzrgRLL6r//RkTA9DQ26x/9ZskSxSIwV77psWiiCzvNT1ZYH34g==
X-Received: by 2002:a05:6402:50d2:b0:413:1cd8:e08e with SMTP id
 h18-20020a05640250d200b004131cd8e08emr15521864edb.276.1645973429011; 
 Sun, 27 Feb 2022 06:50:29 -0800 (PST)
Received: from kista.localdomain (cpe-86-58-32-107.static.triera.net.
 [86.58.32.107]) by smtp.gmail.com with ESMTPSA id
 a1-20020a1709063e8100b006ce06ed8aa7sm3501887ejj.142.2022.02.27.06.50.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Feb 2022 06:50:28 -0800 (PST)
From: Jernej Skrabec <jernej.skrabec@gmail.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de
Cc: mchehab@kernel.org, nicolas@ndufresne.ca, hverkuil-cisco@xs4all.nl,
 gregkh@linuxfoundation.org, wens@csie.org, samuel@sholland.org,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 Jernej Skrabec <jernej.skrabec@gmail.com>
Subject: [RFC PATCH 0/8] media: hantro: Add 10-bit support
Date: Sun, 27 Feb 2022 15:49:18 +0100
Message-Id: <20220227144926.3006585-1-jernej.skrabec@gmail.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220227_065031_304913_AFE24A8D 
X-CRM114-Status: UNSURE (   8.55  )
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

First two patches add 10-bit formats to UAPI, third extends filtering
mechanism, fourth fixes incorrect assumption, fifth moves register
configuration code to proper place, sixth and seventh enable 10-bit
VP9 decoding on Allwinner H6 and last increases core frequency on
Allwinner H6.

I'm sending this as RFC to get some comments:
1. format definitions - are fourcc's ok? are comments/descriptions ok?
2. is extended filtering mechanism ok?

I would also like if these patches are tested on some more HW.
Additionally, can someone test tiled P010?

Please take a look.

Best regards,
Jernej

Ezequiel Garcia (1):
  media: Add P010 tiled format

Jernej Skrabec (7):
  media: Add P010 format
  media: hantro: Support format filtering by depth
  media: hantro: postproc: Fix buffer size calculation
  media: hantro: postproc: Fix legacy regs configuration
  media: hantro: Store VP9 bit depth in context
  media: hantro: sunxi: Enable 10-bit decoding
  media: hantro: sunxi: Increase frequency

 drivers/media/v4l2-core/v4l2-common.c         |  3 ++
 drivers/media/v4l2-core/v4l2-ioctl.c          |  2 +
 drivers/staging/media/hantro/hantro.h         |  4 ++
 drivers/staging/media/hantro/hantro_drv.c     | 23 +++++++++
 .../staging/media/hantro/hantro_g2_vp9_dec.c  |  8 ---
 .../staging/media/hantro/hantro_postproc.c    | 34 ++++++++++---
 drivers/staging/media/hantro/hantro_v4l2.c    | 50 +++++++++++++++++--
 drivers/staging/media/hantro/hantro_v4l2.h    |  3 ++
 drivers/staging/media/hantro/sunxi_vpu_hw.c   | 13 ++++-
 include/uapi/linux/videodev2.h                |  2 +
 10 files changed, 122 insertions(+), 20 deletions(-)

-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
