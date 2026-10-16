Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7865FCC6B2D
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2026 04:12:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u3zjrDnJC+PnSA4y4+eJWl4AioMAR2LL7Cg0tAmE41w=; b=fRTHO3Ni6jti39
	B+9wV6f8Iy1ZnJqkT8q4QVr6fE9pCDhHpSoi5jj4KAFkIBY9pFf0/UMxaXx0IDlIxC9zzy3j6qyNO
	vCpSm14fSsYvEGvR3wzCDMoW0PYW7G/iNnoPHZLp5eq7dcJV+3Mi5n/AR8xd83jeIcMpoN6dSBFWk
	/it4isWV2VffGAcYMVdIU/BevsxaSvmQwx32IP7/+Z+YRhw6Bqpb0fg4s/gQyzbBwWN4Y0xxC/9d5
	NIp/M0ApNKKthD5X4hA3+/aUPkdPjxDAghDqBzUeSSUHvg0POGBWFK6qtfJU29UrbE6C0clg2NWOY
	eAHIr9SY1oKXZKXlPThw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHZJ1-00000001xC5-2IKl;
	Fri, 16 Oct 2026 04:12:31 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHZIy-00000001xBK-3jx2
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Oct 2026 04:12:29 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-2e987a2ba0cso2041445ad.3
        for <linux-rockchip@lists.infradead.org>; Thu, 15 Oct 2026 21:12:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792123948; x=1792728748; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=tCZ6GoTFAN+ex1Ct3jpbL93IWIQW5JGKx6t1S7CNuas=;
        b=qZclJIhgQNgNlLi+28gW251qdd5XWPeclT1TrTMrmoz+J+2+7h2lwpq/dImSzPqhBG
         j1z6VOxqZRwsI1HEMWFJP3epU0PFfZkUkWwrTW5hG6OA/TK3QncY8/iQi8KVfK2DkNN6
         Ma7r2HMnvnm8Z1gggPvktsrbQX8o6kLff279r7Kr6dkBKPkIj1Vm4e9wqDrwbzY2xFX7
         jOdJAvt/7Hqrv3cHJK8NSfzHuKYLfB83geUmEsaMxGRDIEoEtPT416lpRqGb1IcdEfGZ
         /V7K0qFNlVNNr17/Ko7FkceO9QUKa3YHBU38VtHItF8ik/6A2hf0rJ0lZO7gHa2gTZgL
         OmsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792123948; x=1792728748;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=tCZ6GoTFAN+ex1Ct3jpbL93IWIQW5JGKx6t1S7CNuas=;
        b=bDNh6hHmFdq0kWcRR3Z2NenByLh/vsATyjGVG8scJdH/kiMHgbEIFXmt+k7Xjorxj+
         a1biqpQzXMzHDrMTJbEvqJWsRJLNA5pMUwWPr4f74tpU+oOrG0VbCr6EHyNuV1qgULpM
         xdOHpqrzfh+xQkXr3QL7BTXAzr/UExJ52cLs0YRpdUymi3lov/5/S4W2+nwC0Zd/biRc
         ScRAyZGU90JvqVC5PQazHlA82TaJsNFunOYb3esmjh8YhjBtwNRBdYCZHR2heMAnFmPK
         UfZT2l8djDAPqU7/LKHFaB+qnqP7As2zEmXnv34IxZOHizM6pP+dqEX0+Wymo4xVK2zn
         nKLg==
X-Forwarded-Encrypted: i=1; AKwUvBzpM/6eezhAkIb9i95Utt10Ht6JSeejIoKKmzXNq4a6sx0eMKRdnC4qCBYMMysj28Ct1l+xXcyW1BRP/4yH1Q==@lists.infradead.org
X-Gm-Message-State: AFq9FYIQiruUMdOiD4jM/Us/fsfX9I196TjoGHxK4wKJo7OXC3hUlnOo
	pwEcYz3/4XDSW+AftpDzmX7agVjAD0omIS7EPqiW36JBem7hNHSFqX1Z
X-Gm-Gg: AYBFou0obygIUCS/Bx0MVM703JeHC9fxJuyjw83Y5FTcVE3U6VQNiM0T9W1lusCmjrO
	YP3nRW3T6B78F8znHWXgeFrpnNK2vX+oxzHOixPjy6PrHVF+G47re7TuYCTD7gMYIM16hCrhKDV
	A1ZQSiQrTG2+ieFIiI2uG3TVrYNx36E6NcobEDQqhqHrT4sOpPH1HSsPuDxZdQrYKNYjbIc23Ck
	Q3uNCd2+6n3VQnEeC2MiT5ylMELNQmDHTSA93PaTXWip8ee/FgdGryxnPnM5Do4mEuuITC1LFXa
	U7t0pThEGgsnXuZvW+F+tWoxdRoi2nVLiOtdDXdZvnpCxUby1H46kZOWtHXMYGDed4kWPnuKHA5
	BIiMR1PRDVnmXNrLax9wPnkc3rH8hvOfzKHBwnQwHqFmpD0puTo3MT9YhSFw1ceiDIQRGS0lgbd
	GEVMYyQxzTVjo6hrtf+1DbIXrH6YlyZtfh6u7eSlkhVjGAu2xohS4BRciST8BZmRNYko63CAUQ1
	tyW/FS2wScce9GpwLLi7lkQACtRivuaV+pNkI3masW1dMksTO/l7PZcasfqRlnW9cKIdBbKBmVB
	YnZGKOIcyj3Ohg==
X-Received: by 2002:a17:903:94e:b0:2e9:4243:431d with SMTP id d9443c01a7336-2e942434bd5mr63920435ad.30.1792123947778;
        Thu, 15 Oct 2026 21:12:27 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e97e8ab443sm3815785ad.65.2026.10.15.21.12.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Oct 2026 21:12:27 -0700 (PDT)
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
Subject: [PATCH 11/11] ASoC: rockchip: Explain DAI link startup return value handling
Date: Fri, 16 Oct 2026 11:09:46 +0700
Message-ID: <20261016040946.521195-12-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261016040946.521195-1-phucduc.bui@gmail.com>
References: <20261016040946.521195-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_211228_933904_B52915E8 
X-CRM114-Status: UNSURE (   9.92  )
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

Add comments explaining why the .startup() callbacks must return
0 on success to ensure the DAI link is correctly marked as started
and prevent future changes from reintroducing the issue.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/rockchip/rk3399_gru_sound.c  | 5 +++++
 sound/soc/rockchip/rockchip_max98090.c | 5 +++++
 2 files changed, 10 insertions(+)

diff --git a/sound/soc/rockchip/rk3399_gru_sound.c b/sound/soc/rockchip/rk3399_gru_sound.c
index 0ec80a4b8c59..d4a0daabfb42 100644
--- a/sound/soc/rockchip/rk3399_gru_sound.c
+++ b/sound/soc/rockchip/rk3399_gru_sound.c
@@ -266,6 +266,11 @@ static int rockchip_sound_startup(struct snd_pcm_substream *substream)
 	if (ret < 0)
 		return ret;
 
+	/*
+	 * ASoC only marks the DAI link as started when .startup() returns 0.
+	 * Since snd_pcm_hw_constraint_minmax() may return 1, explicitly
+	 * return 0 to ensure the DAI link is correctly marked as started.
+	 */
 	return 0;
 }
 
diff --git a/sound/soc/rockchip/rockchip_max98090.c b/sound/soc/rockchip/rockchip_max98090.c
index d54c36682415..de392b420ebd 100644
--- a/sound/soc/rockchip/rockchip_max98090.c
+++ b/sound/soc/rockchip/rockchip_max98090.c
@@ -202,6 +202,11 @@ static int rk_aif1_startup(struct snd_pcm_substream *substream)
 	if (ret < 0)
 		return ret;
 
+	/*
+	 * ASoC only marks the DAI link as started when .startup() returns 0.
+	 * Since snd_pcm_hw_constraint_minmax() may return 1, explicitly
+	 * return 0 to ensure the DAI link is correctly marked as started.
+	 */
 	return 0;
 }
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
