Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18349CA600E
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Oct 2026 10:39:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CDTAp2vphW8h4PATN71Ic+tnEPW9nQFiSU48Oe6DO0w=; b=C9QT6OtZk4eO6N
	bWufGm5QN1ThmLgT4oVw218sCEmtoUeYGQ4kYuntsylEyz3VtTMpMt3lm3KmnbCAK5/Zslh8GeNue
	DQyHXmU8nFpmRN1ftxpriyhluToY+ZsUbt9nz4zOENTdbQeDlqPorp0EnhWZ85I1k4QG8+7lcRwOY
	k9atuHXVnzX3Xw+5UhxdfEeUQuYQBvIR3V3/0F/BO3AeZdWU6eGbDkGSXfAU4tK9oRz/igALDUJhT
	C0wYIeumB2VbfYw4Y0nu4MJqqoxHjbQu8xUvr6PKwyu+J9BRCrwG3hPQ1M8FXfaXLw0XoroMVjCi1
	jNDW9YPgvJXS9U+zu5KQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElX4-000000049KS-0WNd;
	Thu, 08 Oct 2026 10:39:26 +0000
Received: from mail-dy1-x1334.google.com ([2607:f8b0:4864:20::1334])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElX0-000000049J2-2hsv
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Oct 2026 10:39:24 +0000
Received: by mail-dy1-x1334.google.com with SMTP id 5a478bee46e88-3514e7cbbbaso5818876eec.1
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Oct 2026 03:39:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791455962; x=1792060762; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=eUBcm/HidbDHRMMNHvpjEcX/Cn/b4904BqGN3eWGjuM=;
        b=MQ7Knh4JOpXXWEo3Dj6bXGVr3IzvUNwK65KIwvIYW1VdVVBbBDE4hdfo1nZ3omCNdv
         jQZCGu1VvsS7MQrnBzOMYyrXcpnsqJZUqFLa25tSflsiYGa8l12y9rLEoMeAZF+VR9NL
         6zQRsxE86I1wzj3wScDvkS/0eHixUQC36dRcrguJk2b35uyRiaNKvI5W9OeeLRYM7ljq
         JmxU/aWFJcIALdq5FV8XqFXW2nl5+nQpfIwFpuyBjjeZVjeFlmq3j13NzBuVRvmbAYr+
         oROj5RFlLDLJb/Pj2LizkVVjQeqrC3oeZxYOEBLNNrVZwZwwtBKlJ1esrOA+a1QnIMH6
         I6Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791455962; x=1792060762;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=eUBcm/HidbDHRMMNHvpjEcX/Cn/b4904BqGN3eWGjuM=;
        b=Yji0w0H/DuiyEi7YgaZi4YnOcJIv9vhhh3trpfrZJVtKXUkiDLnLbyRiwMyDxhtQKb
         B7CUfsZOaR3+xgppiQjufO5bMR8AKIkSoSQrO9TNnDkxJEXRtz0CoPhVsr6sPazlUmNO
         K2DW3bdHrkKQUTbOgqrwJfZwhwKjwssjfqzOgl4fo3bscNVCmMb5VzynSErJlasNKqYj
         3tNkG6wSspeY72Of0VxblPtVQeLM2g1gTNvsnYak4dw7bagM/x2uKNW/kh3zPoJoI/iQ
         na/gaYmYXXcxl6D0A4ZQzbWkC8fO2KJ0u5Qo2ulXUtCEtVgepPZuKiEScE2MguPzGKaN
         mvUA==
X-Forwarded-Encrypted: i=1; AKwUvBy7o7SfMd7LeElvPKXRwvFxQut+SzqD5q8u0yaZgi7TIeo4UryYgLqiMzG2WLAM0kJj8StvMJTf7lUN43b49A==@lists.infradead.org
X-Gm-Message-State: AFuF++m058dbjdeXnrhtAqzSkO2axWD1+BzqtujSKLEOXLbzdbdZOBd7
	X/s2A52Gr5l1QLVbZ9tsTXRPmviibbKDKGr21KFAUzAvW3Sz1IAgRP/b
X-Gm-Gg: AYBFou0PnAQB1RwVi/ixNbhJ1QGHT1TOEMiHpqRypGJBU2OGMF3Vbeq2BVXWpnQ2qtM
	fgCAcHSimpeZ1TKl1i1nsZUE8oTSVRQd4ntTezp7jkt+psDcAywtUEm2I+o2GWIOQp53lWbCSLb
	+p/tms6NEyesL22cWuyxJ39aeHGelfsktmz/dOwQ34xzVWXjT21ILleTd2OWylxP2gIp1AwhwG7
	xj6+hTTy+KXzEMTBRP9HrsNY9yBi75Gl1Lak7BlpakCVBph55PPeeBWxmj5K9GSSCdVowdt5Ug5
	MEbwmvl4eTGZIYkqtF79KFqg9dIdArRx/rba+K/iiSx2+iHrpH/+9d3ZdwqRXWPPLT/kqYWV+SY
	l1CiwZ8SvTlojpC6j7H8Yde87mF09sSJHfqYsoSWY3DmtEOcOaQHgPOPDUg/EHfbW+FXrSPkhNK
	Hiv2NpiaY/utaQaEX0mEBkjNDl5hG25j9qsCkbqW//9rxRHrmXmIElQh3yA1d6Tk8WJwFPqQ3pb
	dKrf3cHDzr/3qwKddVu/3FJD6Nlm4BK/n/0wXT3GeXyN6jTVRvpee5bVouk1I/1aLoCTHSxtTtu
	IKVXT9gmp26LRQ==
X-Received: by 2002:a05:693c:41d1:20b0:351:b65:63e5 with SMTP id 5a478bee46e88-3515de8cbe2mr5796544eec.41.1791455961706;
        Thu, 08 Oct 2026 03:39:21 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3517810b895sm7496369eec.17.2026.10.08.03.39.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2026 03:39:21 -0700 (PDT)
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
Subject: [PATCH 01/24] ASoC: amd: acp: Fix .close() being skipped on rollback
Date: Thu,  8 Oct 2026 17:38:08 +0700
Message-ID: <20261008103831.542533-2-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261008103831.542533-1-phucduc.bui@gmail.com>
References: <20261008103831.542533-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_033922_693079_CA88E0EF 
X-CRM114-Status: GOOD (  11.94  )
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
Cc: imx@lists.linux.dev, wangdicheng <wangdicheng@kylinos.cn>, Kees Cook <kees@kernel.org>, Sang-Heon Jeon <ekffu200098@gmail.com>, Pengpeng Hou <pengpeng@iscas.ac.cn>, Bo Shen <voice.shen@atmel.com>, Neo Chang <YLCHANG2@nuvoton.com>, linux-rockchip@lists.infradead.org, bui duc phuc <phucduc.bui@gmail.com>, Chris Bainbridge <chris.bainbridge@gmail.com>, Charles Keepax <ckeepax@opensource.cirrus.com>, linux-sound@vger.kernel.org, Ravulapati Vishnu vardhan rao <Vishnuvardhanrao.Ravulapati@amd.com>, u.kleine-koenig@baylibre.com, Zain Aboobacker <zainaboobacker33@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>, Md Shofiqul Islam <shofiqtest@gmail.com>, linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, Ajit Kumar Pandey <AjitKumar.Pandey@amd.com>, patches@opensource.cirrus.com, Linus Walleij <linusw@kernel.org>, linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, Vinod Koul <vkoul@kernel.org>, asahi@lists.linux.dev, Hemanth Selam <hemanth.selam@gmail.com>, linuxppc-dev@lists.ozlabs.org, Syed Saba Kareem <syed.sabakareem@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: bui duc phuc <phucduc.bui@gmail.com>

snd_pcm_hw_constraint_integer() may return 1, which is then returned
from acp_dma_open(). ASoC only marks the component as opened when
.open() returns 0, so .close() can be skipped on rollback.

Return 0 explicitly on success.

Fixes: 623621a9f9e1 ("ASoC: amd: Add common framework to support I2S on ACP SOC")
Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/amd/acp/acp-platform.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/amd/acp/acp-platform.c b/sound/soc/amd/acp/acp-platform.c
index 6b1e18b31c1c..ba6dfe8fb6b7 100644
--- a/sound/soc/amd/acp/acp-platform.c
+++ b/sound/soc/amd/acp/acp-platform.c
@@ -248,7 +248,7 @@ static int acp_dma_open(struct snd_soc_component *component, struct snd_pcm_subs
 	list_add_tail(&stream->list, &chip->stream_list);
 	spin_unlock_irq(&chip->acp_lock);
 
-	return ret;
+	return 0;
 }
 
 static int acp_dma_hw_params(struct snd_soc_component *component,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
