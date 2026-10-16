Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A22DFCC6B2D
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2026 04:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1583uzVOxqp8GOS0LrwSq00e46l0Cf4DvMc9+3n7nX0=; b=m2bkpCtxg1ltM9
	nE3LwdsSFzRUP8nLBfUui+B/YNA/0oSM/wJ7SbdsVKTlBYd1TEGh4BazgUv2mHe68J+jrQSbV6AyM
	lu9nci4a5v4SRTH7VzYlEBVkrGc8O3akSIpwULsH7oPZ9U5Iyt8Wn31vJreYFqPvhib25fyGXjwUu
	vNxL0DAQeLAGIijagAjUoKix1YqN11ujM05fLCdOQN9ugLmqj6Wk28RXJ9+V7geLPw7Myc0A4OofS
	ANwRndj7E3+mT2sBOADip1DPHHPQ/YTVZD3Ea7KFQHjPwjcVoMvrFnFjVHDQwDa5xJa6c5FKKQ/iB
	kPUTQ7XW951HWxIfgOgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHZID-00000001wwK-3JqM;
	Fri, 16 Oct 2026 04:11:41 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHZIB-00000001wum-06gv
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Oct 2026 04:11:41 +0000
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-2e7e742a2c7so5032105ad.0
        for <linux-rockchip@lists.infradead.org>; Thu, 15 Oct 2026 21:11:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792123898; x=1792728698; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6AfJhOKZbdns69Qk3jxc+qI7b+rXXsiPaDqc4PQO3Hk=;
        b=KYRBM8xsVSuUZgvd5fucr8ixy4nh1q4mIlWBfrL3clCstf7Ya6nuD6Kivm0lbqiYEp
         c34GIe9XiU6Oe6koDtqtAKgBjWjWMSIEfeHQMOdCa6udG2fzSASpezorff5V54DpKzfu
         44Yrgm49SRsk6tlzS2blwBnL9YFtIW5RZq8FUuIvaRihb7WndmR3LLxkTE4ygfb+4iek
         5TjXbfygLxsqLf7hwN6EORStbzij9M0fM+m6tSXmr6aOmiqs4wZsAtokRez0YEfrf76z
         JZ1LafEEWaQlXQLC8O270aY3NEGLXobzrDYpIlgA+M6Cn+/uLx4b6oTQOgDJR7UDVwhn
         h+pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792123898; x=1792728698;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=6AfJhOKZbdns69Qk3jxc+qI7b+rXXsiPaDqc4PQO3Hk=;
        b=wXQtBUu/NXYJVhR478/iWWve8yuQYk13varoFiYAtXqkE0V5lHvOATJdathqJQFU3a
         KHKpGFp6NbR98CmA/jGkprWwzJbFWQBeOpHzvAxJtHSo1qhNP6jbHp8u0ZcELdncRK+4
         DyZeCc+jBri5HdOhfUphde0UesDBR7B4LLWyFj5B3mzYE30VjFy7M7JnpIshw2xF6hFo
         vy1xUCzIO6tdB5HxP0VC8byUxzv2H4GJg4O5b0xY4HNdWpvrhwBMImLny6WRacd/C86L
         tS7fkp44JczgtiyMCLwrB7KbENZ4MtZoVjVpnzAQk8gGVqBUwKmUH8R0KQ+wnP1Jm6Dd
         XOpg==
X-Forwarded-Encrypted: i=1; AKwUvBxSAts0h37dYbBM7nB2O8yOJfA6ciD4Sxy61SHQKNmTT+L7vhdoTlHB9vB+0nPOCQ5YyhpsSAudmzwhL4oS6g==@lists.infradead.org
X-Gm-Message-State: AFq9FYJICpVKUdYe00MJpoAg/lk2PTGtNiwoE9a5mH8Q0eAHCXHpvGAI
	74YXhrknX0uvb7Krx7HkXfva7rIhFOSBvKql1pC2zwmpsRP9Fw4FnUON
X-Gm-Gg: AYBFou0250oQN0ggAyTJ76UWL/s2/jCutRlWKablVDP1ktG5/GCyEB68MbAtK0rd/s7
	2f4zRuULMIn066YnA57h3H+Cjz9gLF9LX5x23+WobrrJHagwRil9fq3YOmToz1AKKgQuYwttCX/
	BoUQn+EXdSFAHfxzgVkAkUYI+VM3IcsJ9waTDE8K8J6pytjT52zbMy3znflIp5QVvgTT4zGBEQ1
	W6ZevSl40bRx0zom2arsAYfYm7Wm+GcxpZEbSOSdeFlvYfx/EDqCTBL90/C0Sfo3J0P8xxBe7Uh
	4z+JJYK74MX0Yo0z8ppHBZR8GhhwqHTVh3BGpaaDSoT7G45Kg9DaSaSpsBi4iwj5MhHOVxFnhFP
	x/6JMBfrIvH7Xr4SxGM1A/zZeRPjNm+ol/i/+6QDnaHoMzbDrB4h9ccxxuYXIxtnnR34wdPQhwP
	pVQsMLsTGjcq5rZyvmojVR3ECgNUFmr6n0AphrJU/36sCKPczUrQ1TfWeX1BRXDI30y1jTH0CRr
	Be/wn6DeFJMp50LMES/rW++RLUtPr1LScxPWvqS1DXjGMfn17fyqQEd8FtaBpGDMkRnOwM4La2g
	i75UDz+dg6S/9Q==
X-Received: by 2002:a17:902:e54e:b0:2e8:3b2d:c0e1 with SMTP id d9443c01a7336-2e977597291mr13010325ad.41.1792123897928;
        Thu, 15 Oct 2026 21:11:37 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e97e8ab443sm3815785ad.65.2026.10.15.21.11.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Oct 2026 21:11:37 -0700 (PDT)
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
Subject: [PATCH 07/11] ASoC: renesas: msiof: Explain component open return value handling
Date: Fri, 16 Oct 2026 11:09:42 +0700
Message-ID: <20261016040946.521195-8-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261016040946.521195-1-phucduc.bui@gmail.com>
References: <20261016040946.521195-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_211139_062084_D554BED3 
X-CRM114-Status: GOOD (  10.21  )
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

Acked-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/renesas/fsi.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/sound/soc/renesas/fsi.c b/sound/soc/renesas/fsi.c
index 88618e4b052d..74e2ea002fbb 100644
--- a/sound/soc/renesas/fsi.c
+++ b/sound/soc/renesas/fsi.c
@@ -1820,6 +1820,11 @@ static int fsi_pcm_open(struct snd_soc_component *component,
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
