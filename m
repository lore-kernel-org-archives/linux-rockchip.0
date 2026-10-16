Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A57FCCCA46C
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2026 04:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8tVDtSvwG7Dyi94Tbchkw83oo+OCJ7vTVVpT+J8JBUY=; b=MAsimr1PtaRzNI
	24dSzs5//81Ap7lA6gVv7ph+1Hl2iY0BnNsGdN6O3Q8GztBMzqkvc6t24auIls3wgt54F++iwYIbn
	3cVMmwW6DQTD+7MMqmP7fmylXdtq3YzxZJxepeah1CBbT67gztGy6SajMEHbqVkV4XXHd0LG2g8KD
	diZS9Nu0gaDEGEKeMQlhVmdtDUlz16lnkzXupZXv0VPjxMJEpV31TK0huxifM5rCTFOAAgzHobN2b
	24cctzEBPWNqmktcQULP1qKEMWBjRIfXggsbbFCmfQcsaI2rI5vE1DuOGMohrZGA/zdvrMYs6ngn+
	oixaFG8WFPVmnvtFv4eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHZIb-00000001x2e-0cnu;
	Fri, 16 Oct 2026 04:12:05 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHZIZ-00000001x12-1Msm
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Oct 2026 04:12:04 +0000
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-2e5d0ee1951so38758015ad.0
        for <linux-rockchip@lists.infradead.org>; Thu, 15 Oct 2026 21:12:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792123922; x=1792728722; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=7rWy1nSOU2shSy9HWS2JIxQi3sc/L3puAcABYmBjXjQ=;
        b=WNTSvNAEUQiK0fCWIueh3mh7WZOyFJhSWJMH8lu269rAZOKfPK6Z/IWPcFnZ90y4y7
         HxTH+1U1gOM5YiTtWiDvbH3aTHezr0/f/FDXW26yiu7z1p9kGeDnpVxUoABCUB2ncGTj
         +Lpzf7QSyYuklCt5fXemUARbEkiUxjG/vjveiv9yU30ey01pa9bHuNwc/RsoZShggjrK
         LAfjGp9DoK27W5PG4HcwB57bysycDSZfT/CEGUBMbZE2xNRvPXKnbeYivWvBeedueD4g
         E2jxa9a4m+habuPnvB0M0ZEa2xB5nlcHAK9PAYrbG/T/V3QUKr/ft+lJLdj4+XwGGcxe
         q3Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792123922; x=1792728722;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=7rWy1nSOU2shSy9HWS2JIxQi3sc/L3puAcABYmBjXjQ=;
        b=ovKp4Tsgq62ia9/BYb/KN2khIxT94xIBx9sNl7X5Pp0wjlDZaNFOhHJNsgDEQJoR/V
         bgjgJ6AdE9nxfBqbysmCRi0h1BSS/QJ79LrIFrn3UbRll2hNVqXu0dKfX/WqQiIslgUB
         qewZ/SOuw48fsK7Sz8bV+6ik8Nhk88YLmXAMMpn4pgo+GtMwMagyHa7eJfyTpsoIjlFD
         Be4Rl05v1OkKhBOkH5Kr6mugR6/HgPgIxJjmjERp22J1AXoaL66ymOqOGZo94uvLsyxp
         SftBoH3rplEVnEwEvZiXlFz0hFUw83vbgMrs+xzf4+Za5YvMrw+Zs2CqhkCy2qmn+RTG
         0GRg==
X-Forwarded-Encrypted: i=1; AKwUvBwk9Ckgd8vmwyBzM7yOQFQ+uVA6CIVLsg0Ut7hzyJZajBc5UBMLFQlS8MX9PsuBCO+pimDbbTFj8dShG3BFCQ==@lists.infradead.org
X-Gm-Message-State: AFq9FYKQVkb2jkfXhirYpNPVksKbf1XGi7hbHXeYD+qCsCUZo8e2Nm6E
	LtgOzz8xB7qVzlTqXZbBSlDD4dx9frkh0fCGt2Qg6lkRyZZFhr2qP7Yw
X-Gm-Gg: AYBFou0ThRT1e1xNQNsAVM1IGQKsnBrwPhngHxlgOuY0VEqozIPlug3BAqFzqQpDWHE
	w660RB1dmuglKVs/ALkPBCH++8bUSeRw8IrD4W0V2g3+79kG675AFwb4rx+K2AkFX0QHdD99Wbk
	lyAL3mG21zYU86nr9H40KInPu5dglGPs8hDlncRqxdTDUw42sp3s8/T01xoVMUUQ5RZBXWzi4Uw
	cLDSICkyl7ByQN1tY7NfGUqXA6kIq9q/zdEcA3C5oQujiQbWbl2tj6YCN6xJu0QBOodvX1TEqZz
	LEC1wuj3GDv6db7DUUTB9LGcpDyU0aHYi3mJhEdZItSMxGw5OUvoS1DrHts6tdrEX4SrMrFzKYD
	BI9k+Qf2WOQ8mz9IoDwCp8/q78imjWIjd1zV7hcae4ML3RCtl4rlO2jtbOEU/nrb34MiWHNAKaB
	bKv6iLeGizZ84P6ovpYFUNpIseDC9Wqesb5+J3p4ANQ8fHPXbg5A5/i7KYNH3/3L6oHI+ZwjT1c
	WvtmlOaVtqxKvhqSRdHYFCX6SLhM3EFH/BlQBr4SEOeWGcTaIexWRQEL8/k2RZDps/PW6Dy8K2N
	jfRj1G4FgDovEg==
X-Received: by 2002:a17:903:4b4c:b0:2e9:66c4:1717 with SMTP id d9443c01a7336-2e966c41865mr35460075ad.61.1792123922489;
        Thu, 15 Oct 2026 21:12:02 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e97e8ab443sm3815785ad.65.2026.10.15.21.11.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Oct 2026 21:12:02 -0700 (PDT)
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
Subject: [PATCH 09/11] ASoC: renesas: rz-ssi: Explain component open return value handling
Date: Fri, 16 Oct 2026 11:09:44 +0700
Message-ID: <20261016040946.521195-10-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261016040946.521195-1-phucduc.bui@gmail.com>
References: <20261016040946.521195-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_211203_374026_0FAA10CE 
X-CRM114-Status: GOOD (  10.28  )
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

Add a comment explaining why .open() must return 0 on success
to ensure the component is correctly marked as opened and
prevent future changes from reintroducing the issue.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/renesas/rz-ssi.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/sound/soc/renesas/rz-ssi.c b/sound/soc/renesas/rz-ssi.c
index 2e297f721bb6..9f36fe2c16d2 100644
--- a/sound/soc/renesas/rz-ssi.c
+++ b/sound/soc/renesas/rz-ssi.c
@@ -946,6 +946,11 @@ static int rz_ssi_pcm_open_pio(struct snd_soc_component *component,
 	if (ret < 0)
 		return ret;
 
+	/*
+	 * ASoC only marks the component as opened when .open() returns 0.
+	 * Since snd_pcm_hw_constraint_integer() may return 1, explicitly
+	 * return 0 to ensure the component is correctly marked as opened.
+	 */
 	return 0;
 }
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
