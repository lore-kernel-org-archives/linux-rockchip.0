Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4383C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Apr 2022 22:25:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u60aRnGuCYu6Ddf8a4g1ls6rK5fByvLZqDVNk6KXwxk=; b=mqPFyAlo90VnML
	71RRRMUI4FXKIiQMqcTEuObtUWKa/CDQNZXjkIendp213Mqxkqb1xt7iQ3qyUrtEdxCJ70V5/Eawk
	oXfAChmal0NV78t97i+UzdgDoijrX0eYTx/LBPyymA/DwnqEuq8xWrZvpGbczf6tP3NDgxlX+ElHI
	zURKEmK7Zp8Cb8gchSGJZgQxGEWyjrhWFdsO/+0WCbTI0G4+xcg3PVQLydSiZ81rcb5IQRxaipQti
	xjZW7d3QIavhrDHSr/tZtrCPGQOB9N/Tpb1hXCCcdTynLDuDRzkLiWkWCq5ziFp7tgIlssKrsg+ga
	lX/8gPWX0hQStx6ZlxWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nelQV-002skm-2l; Wed, 13 Apr 2022 22:25:27 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nelKy-002q2d-Ip; Wed, 13 Apr 2022 22:19:51 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id DA9EB5C0340;
 Wed, 13 Apr 2022 18:19:43 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Wed, 13 Apr 2022 18:19:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to; s=fm2; t=1649888383; x=1649974783; bh=Qt
 Ox4T0HCpftqJcX0VmKkuT5uvDIfTobCkM4Jig4EYE=; b=XDrAt+uvDf0VTBvnBx
 xV6fY/r43+56hVhxGIinMCoZBALz9K+MTpsGGOGYZcgk6X8fxFKUdcKfo7hvoAw3
 rlmpRXK+IAxkbSMnxfTd5+xXfl+VKP+V2S4O6kLq/ucyEQM3VfupIPIbBFd9hLcV
 ZPMPME1EXUQFiCr7H4thhG4/vKr/pnP9lQ5WurO3wV5w3bhhxKYZj0yAxN2DZzwT
 734mWh478oLDkTKIL4oh18DtNtf7b+LmWjZeUnJg5wzMJZCOJGrpn6KbsQ/Z545+
 xSsE2wb6d1r/o65h9a8LVKYox9AM16nKNg8n6vcf8teN9UjOhVNU2t+c/tlrhQxo
 /N0A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1649888383; x=1649974783; bh=QtOx4T0HCpftqJcX0VmKkuT5uvDIfTobCkM
 4Jig4EYE=; b=bZiOfd0iJLPlzQ2/ZVIL+ux8BJZtFvN7R7gXr9xO4tjFQReZG6S
 PgjGn2fxUzoxC4EUae30tFI2E3IIlAJjwYk204JoEi8fOaHmUYXaVarSrzf4o1Lk
 WuV6x7ne4j1UEmh/ke9qXMgHI1xMjhChma1ajoNjlDIXfx0oNu3ylhRnU/frmSXf
 +YyXpunm+zqpYIyFdAE7Ou1dKKfBWdWuJIxq81ihfgbEh3fvkehvdFA5X/LmuswJ
 wBIlg5Tjgs5+1kezxWtkNFRGBxwuo7fRQUeT2lDBmlJqXVWvjYkfgkNz/C0tbg6b
 YH1bkCZVzhPu3XJtnw2OAMA3UMV8iBJi0Jg==
X-ME-Sender: <xms:f0xXYozxT0hPaWizky0griKB_VlXctdoFZPmKXktbSTS00WIOESg7g>
 <xme:f0xXYsS8E_rmV4rffQTp9RbNdY0ZHtZypbvnQ0Klyp74pIpOHPhPR9UqUJQUEa8iO
 vGngG1dNdSJfIP81Q>
X-ME-Received: <xmr:f0xXYqXPDyooGXLL3izYL36jOXAy7VLm7Akyfe_kjvotrLlZRlijp2sp1XGpJoXvnP3w5xWGEDXigRSd8xsjEJXtiIlVdNUJ74-QTV_cHbLnPv6a_xHJDQo0ndzQdXa6S0ezAg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudelvddgtdelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucggtf
 frrghtthgvrhhnpeduhfejfedvhffgfeehtefghfeiiefgfeehgfdvvdevfeegjeehjedv
 gfejheeuieenucevlhhushhtvghrufhiiigvpeehnecurfgrrhgrmhepmhgrihhlfhhroh
 hmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:f0xXYmgTSeSENXT-8jeQwdynlTukA9CaUiSbDuXcg3mDG6V1SfSc8A>
 <xmx:f0xXYqB3sCrTT5SxqqwkuaKXNsuYe3JQ0cL4OegqjoT59wLVJhf4fw>
 <xmx:f0xXYnJLA0FO0fajsgT8KYErBD0uizJmtIbwoCxLwfieAUlzy_3bnw>
 <xmx:f0xXYrxe6vxM-fF8bKXvEmDdLmBnxZnWBe_yDcz6F2dbz3-toB1_ew>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 13 Apr 2022 18:19:42 -0400 (EDT)
From: Samuel Holland <samuel@sholland.org>
To: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org
Cc: linux-rockchip@lists.infradead.org,
 Alistair Francis <alistair@alistair23.me>,
 =?UTF-8?q?Ond=C5=99ej=20Jirman?= <x@xff.cz>,
 Andreas Kemnade <andreas@kemnade.info>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Samuel Holland <samuel@sholland.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Liang Chen <cl@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Peter Geis <pgwipeout@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Sam Ravnborg <sam@ravnborg.org>, Thierry Reding <thierry.reding@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [RFC PATCH 11/16] drm/rockchip: ebc: Enable diff mode for partial
 refreshes
Date: Wed, 13 Apr 2022 17:19:11 -0500
Message-Id: <20220413221916.50995-12-samuel@sholland.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220413221916.50995-1-samuel@sholland.org>
References: <20220413221916.50995-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_151944_782195_39B7C8B2 
X-CRM114-Status: GOOD (  10.29  )
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

Some waveforms, such as GC16, cause the display to flash even when the
previous and next pixel values are the same. This can be helpful,
because it produces more consistent brightness, but usually it is more
distracting. Add an option, enabled by default, for the hardware to
ignore the LUT and always send zeroes for pixels with unchanged values.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---

 drivers/gpu/drm/rockchip/rockchip_ebc.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_ebc.c b/drivers/gpu/drm/rockchip/rockchip_ebc.c
index c3e4b65bdee6..dcd8c8e8208e 100644
--- a/drivers/gpu/drm/rockchip/rockchip_ebc.c
+++ b/drivers/gpu/drm/rockchip/rockchip_ebc.c
@@ -158,6 +158,10 @@ static int default_waveform = DRM_EPD_WF_GC16;
 module_param(default_waveform, int, 0644);
 MODULE_PARM_DESC(default_waveform, "waveform to use for display updates");
 
+static bool diff_mode = true;
+module_param(diff_mode, bool, 0644);
+MODULE_PARM_DESC(diff_mode, "only compute waveforms for changed pixels");
+
 static bool skip_reset;
 module_param(skip_reset, bool, 0444);
 MODULE_PARM_DESC(skip_reset, "skip the initial display reset");
@@ -582,11 +586,14 @@ static void rockchip_ebc_refresh(struct rockchip_ebc *ebc,
 		dsp_ctrl |= EBC_DSP_CTRL_DSP_LUT_MODE;
 	} else {
 		epd_ctrl |= EBC_EPD_CTRL_DSP_THREE_WIN_MODE;
+		if (diff_mode)
+			dsp_ctrl |= EBC_DSP_CTRL_DSP_DIFF_MODE;
 	}
 	regmap_update_bits(ebc->regmap, EBC_EPD_CTRL,
 			   EBC_EPD_CTRL_DSP_THREE_WIN_MODE,
 			   epd_ctrl);
 	regmap_update_bits(ebc->regmap, EBC_DSP_CTRL,
+			   EBC_DSP_CTRL_DSP_DIFF_MODE |
 			   EBC_DSP_CTRL_DSP_LUT_MODE,
 			   dsp_ctrl);
 
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
