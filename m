Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A56DCC6B38
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2026 04:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WuhyK7C/Dq0UySnW6b4AyVhe5/Q/Z6W0oNpZvsuXu1A=; b=vxPm/5C429R8iU
	M3LRQwxqm2s8HJA9TcwI0z/cIpN6xXDiULDTR6EQ/RBs3lU82gzrxLabcXMXMXwJDjpHyDdEs+j50
	EKsdPeKvpQhU2MNkaTXz9YNcoDl+aIOx39Ykm/NFATDkmI52nVWqOWEZCBcnxEqzLxUFrhG1E82IM
	07ui1zAlgVSaDWnprOk3SqVPfLh2CXxB0azmlBe759ctauna/EOJ/77NWHzC0SqDmg0XasYi07XKd
	si94Yid7k17bPvFzKQgkA+fk3BlunuY0EMzCyfKHvL2Y5nB8xx9w+oNTMVoRcq47fo5+eVG3eCueF
	e6MaoTnkVuH9AfU4LIEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHZI1-00000001wr7-1xwR;
	Fri, 16 Oct 2026 04:11:29 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHZHy-00000001wq3-1odc
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Oct 2026 04:11:27 +0000
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-2db80fcdf8bso35128635ad.2
        for <linux-rockchip@lists.infradead.org>; Thu, 15 Oct 2026 21:11:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792123886; x=1792728686; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=dFZz4n9YWSVULVEw1Vk7UW4bxuXJ2XFPuy179wpDhwk=;
        b=SGCRHjLQaOE0zBt8JmRKKiQF5GliHmatOfJ7Idk/79HjNJIWCQcKw1oQt7RjnDyRCJ
         nk/J8jgtIRReTdNP7uRtZ6b/0eowT2n+V8QCfpYT3AIrivPvObbLzFzaRZbNa2VD1NA4
         LBeuLiWO3GP3oA3T9L1kK9Jh7aPpaljI3/d3quD9T+Dl9pVgtTU6egtHATuSrg/Q0bys
         w8BwDqGXB46WgWMRgDILozYnKoLZKkEXX01CroYNlGhccrNBKZ6kL5KtzFCP+saMeTpx
         CmUuHWIVW+WHazuBO6Wr4t73sHJoZ5neTJ07YQ8jXVazh+AE/KwT6pIA14ttZC2tXArI
         9qyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792123886; x=1792728686;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=dFZz4n9YWSVULVEw1Vk7UW4bxuXJ2XFPuy179wpDhwk=;
        b=EOAkBj88H8ysTHfUNr2M8LP4a1K0MFMTlRIcXmgolkfF85YL0I1BiJFjL3uT9gYCfW
         p8qsZvMF6CrzKvU9CewLO3bcx8XJ88aTuVbpNNXphsVEga0HH1ZsYnMx5ZvslH8Lm3l7
         TD20QYKgQ3D1IG9/gzXiFUumV1U+D0vYDEoDRFFOqIdMRSchH7w7LcghiblCm3fiT5gY
         od7o6goVV9GHqZ7bGy6rfTnLFlIfomVwlZaSqpd4Hrm2HBl+nhX0Wqa2RN3rFGVZrsUf
         dML9eF4TslvOrETvTjd5jafCWfF5LPbMaS/w8T6PMt8hwdHFJ09hSwtJzknURciVDnAl
         lRmw==
X-Forwarded-Encrypted: i=1; AKwUvBwbEy4Ut3hXXOg+xCTaCCEBQTESIHEX8Zd71SlJZN1CzqZ/PIHZPSYmQ6LPL4c37PGNDhnTo7m8TY4vZgouEg==@lists.infradead.org
X-Gm-Message-State: AFq9FYJGOkROmYB2Kt2s6xZNN+AwCsK+03hZwJaHsUjJbALm0QLdOIJ9
	/mSJdS5PA/D4b6e1TKWuMqPOXcbTrQw+FTK7IhaszKYyw618sceJRbiZ
X-Gm-Gg: AYBFou0iFwWclFEHf5dc7OreC4vGo5GqoFrykinLiF86m7FyO3wHOmLCuKcsz+p48oD
	Sy+6RwUT8HMAD6so+KLW+o33NbUCdm67JdBbZb/VbOI/wxlAPrmMhoi6Qy+ZNvbTL1wcQf0HNJx
	B8HZ5p6tsv5tTS9SxzVj2HKNACCrOW0buUnWt6hcIZxpWMZHIa7LwBtNoikYlKdtZYXnYiWBAe8
	pUGAhN3KUdKbzDsPBQVzHdwZR0Bt6R5HtXhtFmAw6ISaLhMuoH2smSpoT7GxZKmPPqADLX9iIRW
	PNmN6bTsqJT7InV1Jx1FdaRjykybZhu7Y6wE5Y3/zud1A/fKCaCjxxxOcIF/qMafKT42biCEL4G
	rtEoPC/1P1cIcFBiH0x8KPxnQUE8xboW8vEnlajl3pgU7NEBa0u4kCYJSS97/h86E2fmkEm59vu
	YtA3oAssm086Bi4WgZeQrlbqt5La/+SxFo4WO79iVt7jb0rNejlzlxMJ44J0gCTFvTw5DuDVPse
	x+zxAlBnTcqHpe09mxjCo40ybgiAGq1kPL33ENaD0GxiS85ZlZ/tsCyO1a7oZovTJn5hOCEpdbO
	rN4d7/X24ST7qw==
X-Received: by 2002:a17:902:ebca:b0:2e9:401f:f0f4 with SMTP id d9443c01a7336-2e9401ffb38mr56691775ad.16.1792123885664;
        Thu, 15 Oct 2026 21:11:25 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e97e8ab443sm3815785ad.65.2026.10.15.21.11.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Oct 2026 21:11:25 -0700 (PDT)
From: phucduc.bui@gmail.com
To: Vijendar Mukunda <Vijendar.Mukunda@amd.com>,
	Venkata Prasad Potturu <venkataprasad.potturu@amd.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	povik+lin@cutebit.org,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Andrei Simion <andrei.simion@microchip.com>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	David Rhodes <david.rhodes@cirrus.com>,
	Richard Fitzgerald <rf@opensource.cirrus.com>,
	Shengjiu Wang <shengjiu.wang@gmail.com>,
	Xiubo Li <Xiubo.Lee@gmail.com>,
	Fabio Estevam <festevam@gmail.com>,
	Nicolin Chen <nicoleotsuka@gmail.com>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Cezary Rojewski <cezary.rojewski@intel.com>,
	Peter Ujfalusi <peter.ujfalusi@linux.intel.com>,
	Bard Liao <yung-chuan.liao@linux.intel.com>,
	Kai Vehmanen <kai.vehmanen@linux.intel.com>,
	Pierre-Louis Bossart <pierre-louis.bossart@linux.dev>,
	Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 06/11] ASoC: intel: atom: Explain DAI startup return value handling
Date: Fri, 16 Oct 2026 11:09:41 +0700
Message-ID: <20261016040946.521195-7-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261016040946.521195-1-phucduc.bui@gmail.com>
References: <20261016040946.521195-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_211126_476892_2CA0E55C 
X-CRM114-Status: UNSURE (   9.15  )
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
Cc: imx@lists.linux.dev, wangdicheng <wangdicheng@kylinos.cn>, Kees Cook <kees@kernel.org>, Sang-Heon Jeon <ekffu200098@gmail.com>, Pengpeng Hou <pengpeng@iscas.ac.cn>, Bo Shen <voice.shen@atmel.com>, Neo Chang <YLCHANG2@nuvoton.com>, linux-rockchip@lists.infradead.org, bui duc phuc <phucduc.bui@gmail.com>, Chris Bainbridge <chris.bainbridge@gmail.com>, Charles Keepax <ckeepax@opensource.cirrus.com>, linux-sound@vger.kernel.org, u.kleine-koenig@baylibre.com, Zain Aboobacker <zainaboobacker33@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>, Md Shofiqul Islam <shofiqtest@gmail.com>, linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, patches@opensource.cirrus.com, Linus Walleij <linusw@kernel.org>, linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, Vinod Koul <vkoul@kernel.org>, asahi@lists.linux.dev, Hemanth Selam <hemanth.selam@gmail.com>, linuxppc-dev@lists.ozlabs.org, Syed Saba Kareem <syed.sabakareem@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: bui duc phuc <phucduc.bui@gmail.com>

Add a comment explaining why .startup() must return 0 on success
to ensure proper rollback handling and prevent future changes
from reintroducing the issue.

Acked-by: Cezary Rojewski <cezary.rojewski@intel.com>
Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/intel/atom/sst-mfld-platform-pcm.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/sound/soc/intel/atom/sst-mfld-platform-pcm.c b/sound/soc/intel/atom/sst-mfld-platform-pcm.c
index db1fb3b26909..58681e007abf 100644
--- a/sound/soc/intel/atom/sst-mfld-platform-pcm.c
+++ b/sound/soc/intel/atom/sst-mfld-platform-pcm.c
@@ -341,6 +341,11 @@ static int sst_media_open(struct snd_pcm_substream *substream,
 
 	stream = NULL;
 
+	/*
+	 * ASoC only marks the DAI as started when .startup() returns 0.
+	 * Since snd_pcm_hw_constraint_integer() may return 1, explicitly
+	 * return 0 to ensure .shutdown() is not skipped on rollback.
+	 */
 	return 0;
 }
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
