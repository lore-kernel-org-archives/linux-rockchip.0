Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8763BC77B7A
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Jun 2023 17:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ETzWovLwHIYdTlg5JYBH5hG7M2dsqYUd4J2yIlPpmIU=; b=KyMde/2eKdUGUC
	Qsyav90vd/7gLspoKqjk+E/gUuxOciqxOCuY8RK51zHMwpJebyahHABcAFyJN9LGMIR5V0ciFEgyl
	15til0iEUaGWEULy3A1u5GuoePLa950gJuvK2hIU7dCMAW7sQiOu78UWrgDh4iusX/P47u7Uw7Sr0
	fhwYVIq0GDhdPJqf+4lMl0E0zukGgEm6Mz1u7xz0UGDMuXkrjlT0RMakn6yStKwekY4MTlb0J0Vor
	t/7eSBf/wwBVfT2w6f7klQfrS3iiQi6r+SRRtEkBfi/F6P5fq2kqKy5K/ALsbF4KMoXJWaSpvGESF
	fh0B8sEddJrCaxyy/Zag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6a9j-002XPZ-05;
	Tue, 06 Jun 2023 17:07:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6a9f-002XN9-1y;
	Tue, 06 Jun 2023 17:07:36 +0000
Received: from [91.65.34.120] (helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1q6a9N-0001ED-9t; Tue, 06 Jun 2023 19:07:17 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Conor Dooley <conor+dt@kernel.org>,
	Zhu Ning <zhuning0077@gmail.com>,
	Charles Keepax <ckeepax@opensource.cirrus.com>,
	Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
	Takashi Iwai <tiwai@suse.com>,
	David Yang <yangxiaohua@everest-semi.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Jaroslav Kysela <perex@perex.cz>,
	Daniel Drake <drake@endlessm.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	alsa-devel@alsa-project.org,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v2 0/3] ES8316 audio codec fixes on Rock5B
Date: Tue,  6 Jun 2023 19:07:09 +0200
Message-Id: <168607097312.1436521.13454183292358558195.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230530181140.483936-1-cristian.ciocaltea@collabora.com>
References: <20230530181140.483936-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_100735_651566_086DABC4 
X-CRM114-Status: GOOD (  12.47  )
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

On Tue, 30 May 2023 21:11:37 +0300, Cristian Ciocaltea wrote:
> This patch series handles a few issues related to the ES8316 audio
> codec, discovered while doing some testing on the Rock 5B board.
> 
> Changes in v2:
>  - Preserved original dB gain range in PATCH 1
>  - Rewrote PATCH 2 conditional statement, per Mark's review
>  - Rebased series onto next-20230530
>  - v1: https://lore.kernel.org/all/20230524074156.147387-1-cristian.ciocaltea@collabora.com/
> 
> [...]

Applied, thanks!

[3/3] arm64: dts: rockchip: Assign ES8316 MCLK rate on rk3588-rock-5b
      commit: 28ee08cef4f838c343013330a3cd12674c4dd113

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
