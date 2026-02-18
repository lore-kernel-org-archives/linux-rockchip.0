Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB6BFE9A02C
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Feb 2026 16:52:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Subject:From:To:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oT0X1a9ujM3DfrDir/wKLKTLwBItqkGQUc7km8PwWhU=; b=TkVljLC55iy/7u
	/IZF5lxA0qofp6F0t+FxWdubGwnmGV37paLK5SdKUfdRdgBkP9014He3jMtUMJZlXwlngN5Yxauz2
	cSnYfqChnptCZxAEl77BetYiYJOs/h+QDoPuEbfRqQtwXkWS1duLu2Z1a52IwRZtCftNvLmlZV1hF
	YzZkikLc00mXqFR11YTlV7wdKHcObjdl9jkM+ItiyaqluSPffckvoKxFNCehUjLjbbL51k/qJzaea
	LTCXESyWqtR6/4PvCFrDU+yWpSlBoRnAVyyPgun+PhYov97IfHoqGoildIAixsRu/D/I2XkeajYz0
	FcRmrSOypPq6alm6HC2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vskmS-0000000A7Ox-1EQ3;
	Wed, 18 Feb 2026 16:52:04 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vskmP-0000000A7O2-0UUt
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Feb 2026 16:52:03 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 97F261A0434;
	Wed, 18 Feb 2026 16:51:57 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 5A7155FA23;
	Wed, 18 Feb 2026 16:51:57 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 9052110368B3F;
	Wed, 18 Feb 2026 17:51:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1771433516; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=q3kKvAtMKyYPFeQYbrwGbLVSY2eZXFval087qSi5JsQ=;
	b=DzZ+cb7swCI8SLIPEuwHkNsoozJZU54YAOTo3h5yFmhWMepNkAu/9bs48NBM727ltQSzbm
	SxrVMRCPFZ0ZHymllEQ+w+ffCTtXXzQrML3jbEtYr5bRqBbNvTbakAq0Uc3lF3tVlII5Bx
	MdUStzhv5BSRnw7KVrQ8kJk0Ptf93J4mHf3nhTwMOioZYtKrMVZS9ByooyIvdYhtMevJHo
	aal+svhAcY9ADm7jhKroJVxm8wTbSr691w6n6PfS8+OuFGuM6yfiaL33Sv4w28ZRgzu1L9
	sce7auUd+y2hX83PzR8gC9NSWUOnoAkN1yd+qKkn1CDymjnSROfn0n4EwdCasQ==
Mime-Version: 1.0
Date: Wed, 18 Feb 2026 17:51:51 +0100
Message-Id: <DGI8RSUWQ7W8.MDY7YGXPA5LX@bootlin.com>
Cc: "Nicolas Frattaroli" <frattaroli.nicolas@gmail.com>, "Liam Girdwood"
 <lgirdwood@gmail.com>, "Mark Brown" <broonie@kernel.org>, "Jaroslav Kysela"
 <perex@perex.cz>, "Takashi Iwai" <tiwai@suse.com>, "Heiko Stuebner"
 <heiko@sntech.de>, <linux-rockchip@lists.infradead.org>,
 <linux-sound@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <kernel@collabora.com>, <alexandre.belloni@bootlin.com>,
 <thomas.petazzoni@bootlin.com>
To: "Detlev Casanova" <detlev.casanova@collabora.com>,
 <linux-kernel@vger.kernel.org>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
Subject: Re: [REGRESSION] Re: [PATCH v1] ASoC: rockchip: i2s_tdm: Re-add the
 set_sysclk callback
X-Mailer: aerc 0.20.1
References: <20250117163102.65807-1-detlev.casanova@collabora.com>
 <DGB6VK7LC8N7.322SYGWZXPL5W@bootlin.com>
 <DGI2YVYBECUM.3O0UN9VMKF7FJ@bootlin.com>
 <34f61d25-607c-4967-bc67-3c7517c7fe14@collabora.com>
In-Reply-To: <34f61d25-607c-4967-bc67-3c7517c7fe14@collabora.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260218_085201_395739_8F6CB354 
X-CRM114-Status: GOOD (  11.38  )
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

Hello Detlev,

On Wed Feb 18, 2026 at 5:01 PM CET, Detlev Casanova wrote:
> Hi Lucas, sorry for breaking support on your board.
> I'm also surprised that you were not added in CC of the original patch.
>
> Can you try to keep the patch and apply the attached one instead ?

Thanks for the quick feedback.

About your patch:

--- a/sound/soc/rockchip/rockchip_i2s_tdm.c
+++ b/sound/soc/rockchip/rockchip_i2s_tdm.c
@@ -665,6 +665,12 @@ static int rockchip_i2s_tdm_hw_params(struct snd_pcm_substream *substream,
 			mclk_rate = i2s_tdm->mclk_rx_freq;
 		}

+		/* If the dai/component driver didn't call set_sysclk(), simply
+		 * use the freq from the params.
+		 */

The comment is slightly incorrect: set_sysclk() was called in my case, but
only for playback, not for capture. You can reword accordingly.

+		if (!mclk_rate)
+			mclk_rate = DEFAULT_MCLK_FS * params_rate(params);

With this, and DEFAULT_MCLK_FS defined to 256, arecord is working again.

Luca

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
