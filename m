Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B9A1CC6B30
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2026 01:44:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1kxWcIKigoDDnAD4XGXVbxvrzP+wuRtEma9yiIUwS1k=; b=jCwS8ju0MC2l/Z
	/k4rxNjBWkPk+3REpo+Ff73z78DETje9cwbOtwQqvFSV0YIOzmiALT0gaT62SiojWdPUrVKlIbCt9
	+uZ1nn7sCWtu53XiK/8EONRJMqzqk4tzYUQV8C4SDKCCO95N4+b9XlKbYzU0dhoE175+ijYVaidZ3
	l7eHvqqDRCXKuGpIkhgufFlgtZgEXXUuPwceCsBvp4q9bbNIHQV4+zD7+LDypAISA8KVltKVlf9SU
	yeMkXZeyrYGBuTeFM29FS8gWwOrwnKuuLoPZCWkxgClN/cW3O26WMVzM5QNnQHUd3Vzpcrt49uQf9
	k17QiUv8//htDyvSjhUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHAWK-0000000Gb14-2XIL;
	Thu, 15 Oct 2026 01:44:36 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHAWG-0000000Gazr-3JBi
	for linux-rockchip@lists.infradead.org;
	Thu, 15 Oct 2026 01:44:35 +0000
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-2e946155442so9570815ad.3
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 18:44:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792028672; x=1792633472; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=0f9CDxT7c2yfniMxJX6Z2S0DK8dovzfteRrAqStY2sw=;
        b=p1Ym0fRnPqLNrXPeepi41Kyfo+e3tCqMAqQzMO2bhFBUxcw93XUbKRa7H2itL+nJ31
         MC4ILqqdFWHLV8bS5Igwmwv40HWcEZPWGl+SHLrETk+vHSWRzwNnbr0s/UOIZjqA0PH6
         gnpJmCqKJeGX2wF0WjlkbUQvpn6W05IyW373/ldKZv91b/p5C0q7cLA38vuSxbvSB73E
         y2oAl+oHEvO6hLhx+vFXVG7Uv23jZ/aQHk/YKO93WLcS4YaaXS83jYmhzap2JyzQff2I
         oCgFT20Q2S6NhmdML8j4G7nCMTeohPc9AJO+Tlmvm+PqytA9O9p0Hbl59tVwBcpAWaYP
         50lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792028672; x=1792633472;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=0f9CDxT7c2yfniMxJX6Z2S0DK8dovzfteRrAqStY2sw=;
        b=2qTbinjgnRSHH9eiG6CNySbtxQS/KfFVZKeOEmygt7WoBHSHgQ3G1IsyudWNLciuXA
         YUZ5PI5irt02IDyJKtjKhU+lo0awpykYuhkVHj+fZTb9hjV5iJNfldCFfQ+bEzGZRE5d
         1mNvdNhGrwqFlThmWdLwo7ruHa8IeM7KLUsJg6SzuslemEbnCLGEMQ8VOja0+eSu5kQk
         5hr5mEkI/T42K3HXZtEV1dxj+z8OJf19R2CirKNJYJAbQyAW4/fl6Pgg/Fc11ytVLSQp
         EYMNSEaS+MkBnAlTqOhGCSxVqfAbFy4qhQN7+BEWLlqTBsux1lOubp4cIGwFjPExw/ja
         /9QA==
X-Forwarded-Encrypted: i=1; AKwUvBymsCVKfaZgEieUzeNxBLjO42nx3zbOLUA7px0o57Um7ul/U/D/2mdmJX1jpB9tGgCb0ZgNTtrPFqa2BjAJuw==@lists.infradead.org
X-Gm-Message-State: AFq9FYLg8wWy7MK9HUhvnxqV9mYgX4jGdL4WQwOy5UquFSKeyJztH8ba
	h9/ftpWMcaVPHuKr7oPwEY28BWJPUarwBYsgkUKi9PsNF4ESrCSUZX0R
X-Gm-Gg: AYBFou3dsXfPqLo8f5TLBSeeLZQR8041UNw+QnmyGsy5DUjMbGCJUW803CTmeGLUZDh
	Qwbp7vUL9WMyZ3dHj+fIRju5ohZNKNPu7xAJnNP6PEc3q0AL81Nxr7gBt8D/EF0R82C9VdpAyeG
	Jiz+aqF/2mUZhkwR6Oow61iOQf8hzwZasIzeWJwHbrJFJGoGfAQQZINY92yvJKXhmhA0/wAWBhn
	t4v/38syIuCarQrclIqrRZzv4omLRVW7VLTzg6MhZgJY2BULYZJCWpmEddTLeGhOc3KcoppAZ1o
	16hLU0/5EuQpK74vUEIcEHrjOG/7dOse7BZH+VOQaSVrz08O8poa/nFMqngEPvfP3iDXgMRtWZ7
	428v98NT599JCxP0oly6Tpuwr9+3fwXGySE1F4DUu8v7JfS2DP6aBzKcmjMK7Hu2ooT62AOTS2b
	EmIFioZ4hWE4RB6cVPT6NozWLSbNZDlVBYa9jwjuyI8xggbdIwVhrqgt8RZ68xzIR+3y/4shNXy
	6EXU/5F8/F2uEMDDDFAL1IKhcdh7k2i9uCkf6qMaQ1xr9Fz2GE4T9QI0F7rFhmOg3hS0wIgvoHI
	KOzutJ3wxotraA==
X-Received: by 2002:a17:902:f541:b0:2dd:ad73:c938 with SMTP id d9443c01a7336-2e842abebd7mr158700385ad.25.1792028671728;
        Wed, 14 Oct 2026 18:44:31 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e8422b8cc1sm73202995ad.54.2026.10.14.18.44.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2026 18:44:31 -0700 (PDT)
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
Subject: [PATCH v2 01/25] ASoC: amd: acp: Fix .close() being skipped on rollback
Date: Thu, 15 Oct 2026 08:43:00 +0700
Message-ID: <20261015014324.5569-2-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261015014324.5569-1-phucduc.bui@gmail.com>
References: <20261015014324.5569-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_184432_857887_7876347E 
X-CRM114-Status: GOOD (  11.77  )
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

snd_pcm_hw_constraint_integer() may return 1, which is then returned
from acp_dma_open(). ASoC only marks the component as opened when
.open() returns 0, so .close() can be skipped on rollback.

Return 0 explicitly on success.

Fixes: 623621a9f9e1 ("ASoC: amd: Add common framework to support I2S on ACP SOC")
Reviewed-by: Vijendar Mukunda <Vijendar.Mukunda@amd.com>
Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/amd/acp/acp-platform.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/sound/soc/amd/acp/acp-platform.c b/sound/soc/amd/acp/acp-platform.c
index 6b1e18b31c1c..f2c8853775ad 100644
--- a/sound/soc/amd/acp/acp-platform.c
+++ b/sound/soc/amd/acp/acp-platform.c
@@ -248,7 +248,12 @@ static int acp_dma_open(struct snd_soc_component *component, struct snd_pcm_subs
 	list_add_tail(&stream->list, &chip->stream_list);
 	spin_unlock_irq(&chip->acp_lock);
 
-	return ret;
+	/*
+	 * ASoC only marks the component as opened when .open() returns 0.
+	 * Since snd_pcm_hw_constraint_integer() may return 1, explicitly
+	 * return 0 to ensure .close() is not skipped on rollback.
+	 */
+	return 0;
 }
 
 static int acp_dma_hw_params(struct snd_soc_component *component,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
