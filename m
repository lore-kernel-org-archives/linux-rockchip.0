Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D19B6CC6B2D
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2026 04:11:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xmDNHQmIDfbwnuiQ998LOdnfA/zXBp+5mZB+xHydbf8=; b=lNyt4hOdz2Ze9w
	+O45kogaE4QxSN+mCZ+DvXX+7l/8lyu9RaF1oUvhgUcYILYTRKGUmDhedHNT22bBjnca7O8e6csyx
	qT/W4AbH1ifAcHSEH/F4+5+iFoR4Ef0z1A0O/RqnMY9jDSlWmaal6rBGYAcJ1y0A5xLNGCcbRamcX
	UwcwzuxT/kHSgF16Jw1Qr1Lm4rfDBD3OkK340bXC2mCD18dUty/WzfSxSxLI1JWJRb3s4rOhnjLNf
	gP/VeFeutIXxn+jsNsWNC2nk+RQLaWvAd1bUoHi7lYmu6igkwim5+ThsmZ6oNdIAx8oSH4VYHN5zQ
	DFEDbDT8nw4I4h9aMsbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHZHj-00000001whV-0uW3;
	Fri, 16 Oct 2026 04:11:11 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHZHg-00000001wfk-13is
	for linux-rockchip@bombadil.infradead.org;
	Fri, 16 Oct 2026 04:11:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=4cGMzRNU9hZgiCZEwiJrPZgZXHYdPhSTuWZRtxpdn1k=; b=TuSiw3EuTFOiCNbeH8/ck9qrAT
	zWtkhnuQb8XgZvirdHW/mEeBipZHDRvu2rT7KtDTTEVi6/F2niPQmWbb9hc0jjrDKub1vy4jre6o0
	H6ib8QOghDhkLTIoXR2h1FwQsYrjt6nW1mWeeoUAJvOPhog9w9m6znl+bcPGY1Qkl07lLipSYDi2B
	8Upa0ue6oeH06zpz2UJs9OCM1DLIx3yxiiLKrq5U3jfPzUCvnrsLt6dYbdsysWUZb4Jqg0826KMgP
	+05LrnB3EIXjXhknUmKZJIkdpgujIzs9aLuHsZhduAC2c+dZbxaX5M5X9mEaJIqhFgZBySYA0kOaf
	WkvH+bLw==;
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xHZHb-000000015Rl-04LK
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Oct 2026 04:11:06 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-2e987a2ba0cso2031705ad.3
        for <linux-rockchip@lists.infradead.org>; Thu, 15 Oct 2026 21:11:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792123861; x=1792728661; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=4cGMzRNU9hZgiCZEwiJrPZgZXHYdPhSTuWZRtxpdn1k=;
        b=jfGmb+Jx7EcnH+FjFsMWQvnX8M0ISro2wYZDwVgKAFeO9LMwMdOWvmNyJun21gLvcZ
         QHF/aXH/aVZUM6hs/F/QcyZT0IxD/jTlJTjcy85PpyFnYzoyVMktkCksaEagoR/AusnP
         CDXwpV9tp9fWaOLkWqmCtRymgFC1kK/3Af+EJvg4Arm/M6qG0Br0rYe/1MnVdbQtj7CJ
         R+IqGmNlDiNalomJABaIH+eVcDrLYXNW50iAP1adkGkC++EH85v27xoYrpbMl1L7BAzd
         BtF1DneOCByiu4EZiUh+iPUF3RbMMDEQLXQPJxGmEl/C1NlSUlhsRD1uog2OxPQvycwY
         BQJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792123861; x=1792728661;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=4cGMzRNU9hZgiCZEwiJrPZgZXHYdPhSTuWZRtxpdn1k=;
        b=VC9+sbRLS/QxUmZenFwMT8WeW0C731KuJZlBdij088WExUhjy7xMIqG6qnnf3Ez8P1
         2sQURbWcrUyxlUBkXot2HpzgXWOnFtHW+n3YiCqCl6wnZvpN+O7Ittcd3QBQwqfvQ2hw
         vz13PwWUBj8/nrAu9b4ceBXzjZu9Y0v6luBxyvKi5RuTiRYVzHoRMjlqe/AGlCx13h6V
         YiLLihhUcp3aQYo5i0A7URB5k33W6sS3fgtGEpbXOXiXxXdT4xLEMVuuL7ELfj53NEA2
         UZeAwd12MxKp7Pl3PzINlx4fRcvDdR9p5ddX9iDdXgaw60PBB3l4jWXatSZCxGF1ALph
         5NoA==
X-Forwarded-Encrypted: i=1; AKwUvByt/GdzAqh6amlPFlOBFmtSJOCoiNDvzZKoxMcdWI7kR4KTbt97PGVPIgfAttpAZ09G9WG9wIIKeqpVbeqDbQ==@lists.infradead.org
X-Gm-Message-State: AFq9FYLiQMAHwzpW+fCroKGx2vB65kLgUP29T1j4910XZ7s+LZyhFvSe
	EGiyXiPy3JFOrOi3ZTAaOs08clDTMymO6ymYYUpnwaPLzpg7y87Q5h4H
X-Gm-Gg: AYBFou2wLxL+Xqy8W+wOonfpkXoA++b7j9aYDo8OgTgDO1VIxriFH/UMMPXvr7Dm13J
	NA+SIypausFFseo/4GWMuce+NgHxQJH1E7pgKS6OJKpSzKL2EdQP630qWfv9XVeR6BscrP7Rp35
	5hxegowQ1yeckGg1ADxnn4xffz4VSfserkVH2rKiIHeAtGrmIlSCmAv9zzSInm682jXPwYPAf5I
	wI8MrFKvqCg4SNq0qYUzFofBnLGpDhZDiPKqxP7fDcdf02A4OIsV1UlKbX4Qm414XZvvuqzCki9
	fvgEBlLI6JnTZHLo09B8VDGthuSXtLZHnX2/WAdkN3Hw5MXpL8d2HiFx6e2N5HbQ847/aiOYgze
	+XnD9X7T5ZZngcrAVLrCEgl+SPFhFRAa6PQSzyoMQXcoyMD0yQcJSiMesa6zs7VYq/xdy86K6/9
	PsroftO29Z+m4f9V/2vvJ9f/U7YXo0/0Y9aKVJUuWbcKoUlbkKsEQb/1su1IOO20kMGh9A+qCb4
	ww5Y2aMn8RGuBoPTjYok+/i1HLUC+mD8AueiwcuQKKeh7a2xY2E/M22tsOfYrsnrLi8XofuFAmV
	G4uOxeGMkC3rgbLtj+wGxqiwLw==
X-Received: by 2002:a17:902:d541:b0:2df:8f19:5db8 with SMTP id d9443c01a7336-2e842f136acmr187140595ad.59.1792123860729;
        Thu, 15 Oct 2026 21:11:00 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e97e8ab443sm3815785ad.65.2026.10.15.21.10.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Oct 2026 21:11:00 -0700 (PDT)
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
Subject: [PATCH 04/11] ASoC: codecs: Explain DAI startup return value handling
Date: Fri, 16 Oct 2026 11:09:39 +0700
Message-ID: <20261016040946.521195-5-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261016040946.521195-1-phucduc.bui@gmail.com>
References: <20261016040946.521195-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_051105_194576_1DC79BA9 
X-CRM114-Status: GOOD (  10.99  )
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
0 on success to ensure the DAI is correctly marked as started
and prevent future changes from reintroducing the issue.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/codecs/cs42l42.c | 5 +++++
 sound/soc/codecs/nau8325.c | 5 +++++
 sound/soc/codecs/nau8540.c | 5 +++++
 sound/soc/codecs/nau8821.c | 5 +++++
 sound/soc/codecs/nau8824.c | 5 +++++
 sound/soc/codecs/nau8825.c | 5 +++++
 sound/soc/codecs/wm8580.c  | 5 +++++
 sound/soc/codecs/wm8782.c  | 5 +++++
 8 files changed, 40 insertions(+)

diff --git a/sound/soc/codecs/cs42l42.c b/sound/soc/codecs/cs42l42.c
index f6e4bf6206b7..18d6cb9bfa2c 100644
--- a/sound/soc/codecs/cs42l42.c
+++ b/sound/soc/codecs/cs42l42.c
@@ -907,6 +907,11 @@ static int cs42l42_dai_startup(struct snd_pcm_substream *substream, struct snd_s
 	if (ret < 0)
 		return ret;
 
+	/*
+	 * ASoC only marks the DAI as started when .startup() returns 0.
+	 * Since snd_pcm_hw_constraint_minmax() may return 1, explicitly
+	 * return 0 to ensure the DAI is correctly marked as started.
+	 */
 	return 0;
 }
 
diff --git a/sound/soc/codecs/nau8325.c b/sound/soc/codecs/nau8325.c
index 0902a7d7730d..5ccf4c110567 100644
--- a/sound/soc/codecs/nau8325.c
+++ b/sound/soc/codecs/nau8325.c
@@ -501,6 +501,11 @@ static int nau8325_dai_startup(struct snd_pcm_substream *substream,
 	if (ret < 0)
 		return ret;
 
+	/*
+	 * ASoC only marks the DAI as started when .startup() returns 0.
+	 * Since snd_pcm_hw_constraint_minmax() may return 1, explicitly
+	 * return 0 to ensure the DAI is correctly marked as started.
+	 */
 	return 0;
 }
 
diff --git a/sound/soc/codecs/nau8540.c b/sound/soc/codecs/nau8540.c
index 9484388ab262..09e7f31a904d 100644
--- a/sound/soc/codecs/nau8540.c
+++ b/sound/soc/codecs/nau8540.c
@@ -431,6 +431,11 @@ static int nau8540_dai_startup(struct snd_pcm_substream *substream,
 	if (ret < 0)
 		return ret;
 
+	/*
+	 * ASoC only marks the DAI as started when .startup() returns 0.
+	 * Since snd_pcm_hw_constraint_minmax() may return 1, explicitly
+	 * return 0 to ensure the DAI is correctly marked as started.
+	 */
 	return 0;
 }
 
diff --git a/sound/soc/codecs/nau8821.c b/sound/soc/codecs/nau8821.c
index 935df063822c..7b88ee3159d1 100644
--- a/sound/soc/codecs/nau8821.c
+++ b/sound/soc/codecs/nau8821.c
@@ -841,6 +841,11 @@ static int nau8821_dai_startup(struct snd_pcm_substream *substream,
 	if (ret < 0)
 		return ret;
 
+	/*
+	 * ASoC only marks the DAI as started when .startup() returns 0.
+	 * Since snd_pcm_hw_constraint_minmax() may return 1, explicitly
+	 * return 0 to ensure the DAI is correctly marked as started.
+	 */
 	return 0;
 }
 
diff --git a/sound/soc/codecs/nau8824.c b/sound/soc/codecs/nau8824.c
index c89889aa420e..046cce9192b7 100644
--- a/sound/soc/codecs/nau8824.c
+++ b/sound/soc/codecs/nau8824.c
@@ -1073,6 +1073,11 @@ static int nau8824_dai_startup(struct snd_pcm_substream *substream,
 	if (ret < 0)
 		return ret;
 
+	/*
+	 * ASoC only marks the DAI as started when .startup() returns 0.
+	 * Since snd_pcm_hw_constraint_minmax() may return 1, explicitly
+	 * return 0 to ensure the DAI is correctly marked as started.
+	 */
 	return 0;
 }
 
diff --git a/sound/soc/codecs/nau8825.c b/sound/soc/codecs/nau8825.c
index 10bbfbb460b1..af2a49c893d3 100644
--- a/sound/soc/codecs/nau8825.c
+++ b/sound/soc/codecs/nau8825.c
@@ -1273,6 +1273,11 @@ static int nau8825_dai_startup(struct snd_pcm_substream *substream,
 	if (ret < 0)
 		return ret;
 
+	/*
+	 * ASoC only marks the DAI as started when .startup() returns 0.
+	 * Since snd_pcm_hw_constraint_minmax() may return 1, explicitly
+	 * return 0 to ensure the DAI is correctly marked as started.
+	 */
 	return 0;
 }
 
diff --git a/sound/soc/codecs/wm8580.c b/sound/soc/codecs/wm8580.c
index 5343d445c322..cee80da8f753 100644
--- a/sound/soc/codecs/wm8580.c
+++ b/sound/soc/codecs/wm8580.c
@@ -860,6 +860,11 @@ static int wm8580_playback_startup(struct snd_pcm_substream *substream,
 	if (ret < 0)
 		return ret;
 
+	/*
+	 * ASoC only marks the DAI as started when .startup() returns 0.
+	 * Since snd_pcm_hw_constraint_minmax() may return 1, explicitly
+	 * return 0 to ensure the DAI is correctly marked as started.
+	 */
 	return 0;
 }
 
diff --git a/sound/soc/codecs/wm8782.c b/sound/soc/codecs/wm8782.c
index 767251ac4f89..cbf0c823c022 100644
--- a/sound/soc/codecs/wm8782.c
+++ b/sound/soc/codecs/wm8782.c
@@ -46,6 +46,11 @@ static int wm8782_dai_startup(struct snd_pcm_substream *sub, struct snd_soc_dai
 	if (ret < 0)
 		return ret;
 
+	/*
+	 * ASoC only marks the DAI as started when .startup() returns 0.
+	 * Since snd_pcm_hw_constraint_minmax() may return 1, explicitly
+	 * return 0 to ensure the DAI is correctly marked as started.
+	 */
 	return 0;
 }
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
