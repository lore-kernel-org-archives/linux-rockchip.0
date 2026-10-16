Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37930CC6B38
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2026 04:11:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g0fwp7fbQnxwnoh1JEYG5U5cK0r1rEArgJQRaCGNhV4=; b=mxv8dYaWv1RWAg
	NSMSBoyKqRO8ksMt/3FzcYvN9R1f6SPxYYVojhrUUAAH2b3ZjMyNrvLIscHYl8eVlESt0ZsaD3wSg
	9VHGraGJ4pZVr68UTlYRC2OheM5ValOf758KlOS77/ZeISKQqVztGM/Hq1JMucHLKiV11m5JrFCG1
	aEmSLHMYMRH0aJX9/3KrPapG/tdDr8CtJMRnWanITBchvyivR2ZsYd4E8/fUBgIFpIRDcZfvktoDY
	lx4Xc/dLI7mFTu0rMOeZkPl5TfZWO+FM/vMuAI36w9PGJfSNwafVCue5YQf0yhRrpAvRP0rCYWpvI
	ADoWuR6jhhO18ofcQKSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHZHh-00000001wgK-0B9V;
	Fri, 16 Oct 2026 04:11:09 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHZHc-00000001wfA-47QI
	for linux-rockchip@bombadil.infradead.org;
	Fri, 16 Oct 2026 04:11:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=QFH69Gbmd4pLwYRTdAmCw0agJokE4nomqHT+KuDYM2c=; b=C77m6gC3Viku6SIS6Jo5E4kTGs
	lrFtFBkILuaPF+djAEfix0AI/eehd4kdpl/MXua36IjNzLAZUf7pjXtgbR+wu6fj0O2fA500XmOiL
	RYj3OQl3LxvBXoqZU437t2UBmp9+wLjyK1OHaJCAJeiPKW3F0Km6HZtmNWzdZOHcNhGlNsvrKKDbD
	lrS2jt6LwoNXE+j9AMAiE1MUBebEqYkH9HNYIuPqYp2ruYOUt85LLbX4sCvAynHgvF6sjNFto6Q5Q
	OB10RbGr6N0rSQgBbWbbYFTi9Wvb2wOhstlg9WfiO+lHlifoXLPL+tVxrPl3BJW0O5WT0Hbg7mL4E
	Qqvsfhqw==;
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xHZHC-000000015NQ-25Fe
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Oct 2026 04:11:03 +0000
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-2e5378b281aso34408955ad.2
        for <linux-rockchip@lists.infradead.org>; Thu, 15 Oct 2026 21:10:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792123836; x=1792728636; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=QFH69Gbmd4pLwYRTdAmCw0agJokE4nomqHT+KuDYM2c=;
        b=HcN9m6uMs4hG2OLT7YTq8vogcCPYcfbpX2lUMhOUQD/lEQovRpwF06322fzTxpM9PM
         E6aGk2Drka4HSw59iKGgLvF1cIOcp6oLVWg3hHOUUP4QeuTgGVKA+JzNFTsIxKgjEY4h
         ptjd/+Ax5L0GRiZeez0LeI8TI48m9wYWNC2R6EZtTD4/hsQPTYbKiUpDl4aiXl3+7t8B
         4VaOTpAWaq/AJgPW19k3K3WmptjO4dr+6jdlKehBTFXhrCY2zFH6zLmEh8hqInvnPGx8
         OJDC0QSvTgOycUtEll88k0mktup4K7uzZCca2lF2Z54XfXL8MLl941tUMx08zyo2yMFM
         92IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792123836; x=1792728636;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=QFH69Gbmd4pLwYRTdAmCw0agJokE4nomqHT+KuDYM2c=;
        b=zjtL1XW2RWS/J1af3kRhFLPzZIOcY6aZ6aY0yCShujseaJpr+0zzc4gqudT8+XKzb1
         HvFUwbDme8ZJtTuSYoRYVtapQuqaE0E5zHDUCETFrobRcgMV0FHbGJxVFwLbZYJ+IZKp
         pTzuIhZ1+v7XXk/mvksAkz9Vf+42jmV9ad3fwCeL+SgPkuE1ycfrTzjjTUuyJb1w9kyP
         yzulr9f2bA2DL5ez0Asc7byoNlebmyAu444LEDV1N3DakdL2TM6SuX8nKtYj1rWnFnG6
         6m7OunQCwzX0pI/r5Oeo+CCejFs82U7Bp9sbvSW+cdBMItCqiXyQ0qH/vx6JZ/Vba434
         0OOA==
X-Forwarded-Encrypted: i=1; AKwUvByD+LlgwitHU7G6zJc2ri5wcLzpsJcQHPlHSWAH8O/w68xM+nPIfpAO64HVAodTfpmcndFp5+639WslLMr24w==@lists.infradead.org
X-Gm-Message-State: AFq9FYJjvVivDLVXa/iSd9r4GkIOtCk8nwiyouMBrHcINa5HP1LB/2gs
	9wAUyUP8wxIv2Mx5ZvcWf8Mzjv50smk/IAI2XMa8N/d8fRXMPoIJpYAc
X-Gm-Gg: AYBFou1snw+o61IIi9aYS6LsOYf1d+6t3VaDrC3hVazL4sbxomRMizObjtsMmoX9s6N
	Ys/DrlbSG49xnOeBWFcqWUHLP6IUbzp/LDnX/iC8cFh0Qy7I8up6djGUQNr5MmZFXM3mI+IoLLe
	sDVLub3R7o9mJhDSUos9jDPRMMCdlfVvIcbgaD7batNI3YpNu1idXSgxXQJ1vrQcOG2B+93j6n+
	maeRMFpMfrx9+PwmLp1Trmz4SZLSca8wV2sRQoAxC8ZQCoKSDNNEbKLHblVUc2AydBZBUX6TY9y
	QjCgStTD5b7mbsVjCVg3BrniI4vBolyBzwGahTgxvJKFbj+TxRS28AHA3w5tq0NkCLsVGunYjfx
	TJpidKZuBSLFem7fRNmUbld7WW0VgsPUsuKIuQeC08FbuxyOZ/bd33DdPXdmTJ0vbTD3+RZL4yR
	jNkcpSEFI4Ku0P/6rDxrWKYsVe/2BG5FVN1Efe4YtyBiVRhLANVUzPPXZcqtQxgh4C+ousd4GEY
	3NdwttJbSjFrESiC+tyXdwtrmDLo5VSjNhF5mTxuoLUnZjiMkMrI5yNbPghyQt1VFyLLq21YBH+
	ar7jNzw5tcAQLUO5g33VhJcp
X-Received: by 2002:a17:902:db0b:b0:2db:3b35:1ac6 with SMTP id d9443c01a7336-2e8427efd9dmr210035865ad.5.1792123836136;
        Thu, 15 Oct 2026 21:10:36 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e97e8ab443sm3815785ad.65.2026.10.15.21.10.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Oct 2026 21:10:35 -0700 (PDT)
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
Subject: [PATCH 02/11] ASoC: apple: Explain DAI startup return value handling
Date: Fri, 16 Oct 2026 11:09:37 +0700
Message-ID: <20261016040946.521195-3-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261016040946.521195-1-phucduc.bui@gmail.com>
References: <20261016040946.521195-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_051102_047609_CECAABF7 
X-CRM114-Status: GOOD (  11.22  )
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
to ensure the DAI is correctly marked as started and prevent
future changes from reintroducing the issue.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/apple/mca.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/sound/soc/apple/mca.c b/sound/soc/apple/mca.c
index 3585432ad49b..26022a42a95e 100644
--- a/sound/soc/apple/mca.c
+++ b/sound/soc/apple/mca.c
@@ -535,6 +535,11 @@ static int mca_fe_startup(struct snd_pcm_substream *substream,
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
