Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB983CCA473
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Jul 2022 02:14:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hWSWWtifVXBkh7VvEahXLvYqsry0iccd0Dh6O8kblcM=; b=OxFDlw8UjDYZdo
	EMi/lx4XLCIknRayPKuZD1SGzj/m3FwJBbSCPkF8jruucVbTTCwUdLzkqJEYgqQ/EIbqSrDehxQor
	8NFKPq9OEvBDacVft7Vo0lXU2GRIbwouLykwkBrrs1hqEpnNCY3ALhZ26bxE+Bsh3R4rbB1H2/V8M
	5vu32gH5QtXh/cJIDkyWtbRDGr5FOW9WQdHfaB/CAtjYNw2w6AWMhesFZJsNx1pKjOu6J5DE653zo
	0qzxPiv/QM84w0o49bu9O3QWRx72yYpwLXSPovEIMcTWuntJ5VDhxZezyrmxClmHk0j7DT/GbrpFu
	xDkOmCvZCJzI8kM9FIBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o76B4-002NRN-V0; Fri, 01 Jul 2022 02:14:38 +0000
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o76B2-002NPu-IY
	for linux-rockchip@lists.infradead.org; Fri, 01 Jul 2022 02:14:38 +0000
Received: by mail-pg1-x52b.google.com with SMTP id g4so1116264pgc.1
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Jun 2022 19:14:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+nG6eb4+X5Ja/3xTBDEgAUy+rU3+Q7DlGcjeg+QB5NE=;
        b=AhRwhX3qb9Gd5pjZU3Ju6++wdDeh9TWEcwxe7bHgCzd2uV4SQi6lmZjo/YF93Keivu
         nppBG2JkTguvnOU2sKHsipgtfl7GIDry14WJl07b4OcAOSRUuxdFebUItxXO/SHmei2x
         Na8FewAQ1/FvgOHmArf8p6ak4Dcvc3Dq0r1lg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+nG6eb4+X5Ja/3xTBDEgAUy+rU3+Q7DlGcjeg+QB5NE=;
        b=BCit1SyqVG7z7VSXTcyc7z/ayFE8uzvuai1bwNelaGFZ+iZB+pcWzV6/4pLlLouJ8r
         9w4SVg5ian4I1EdSqGVMctiI2IVlPDlHnpqI6hW2FpnqU9tuUhsP0q3u6q1rNerDgRS6
         Es8mKK1qhQ/ia6CMMxWOse3GunQUTQeI3E3T294WoWZq8J4O6A6zp0Yt8ZQZX68QYXSA
         bc+oyshBAWkFhOZBTUSPlSRVrfNIZYcSSa91lYnEaunN7jdJVlb2wxyO5+h7sr7x6l4/
         laF7H94WzLUJOmz5wQ4XMG6y5X5UfF2Mar3cgU4L9DGoauuhB/DT1SFjHBelhfRkXzz4
         3Gsg==
X-Gm-Message-State: AJIora8ryRSsiHn279wZkJ3D6HGfceIDBu73uWNoVYLvAa97EmxS93XQ
	CkQqvFMR5w7vdDgk1l8xp7z+Yw==
X-Google-Smtp-Source: AGRyM1vT575BCyuGLho/NbkSLyh3jD8NuJm0rgeF42h3/GJvEzoiIL/ra/yU9Bj42AjH05umGXxiJw==
X-Received: by 2002:a63:4d4f:0:b0:3fd:f4a1:93db with SMTP id n15-20020a634d4f000000b003fdf4a193dbmr10451410pgl.374.1656641674280;
        Thu, 30 Jun 2022 19:14:34 -0700 (PDT)
Received: from judyhsiao0523.c.googlers.com.com (0.223.81.34.bc.googleusercontent.com. [34.81.223.0])
        by smtp.gmail.com with ESMTPSA id z29-20020aa7949d000000b0052515e20df8sm14423596pfk.152.2022.06.30.19.14.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jun 2022 19:14:33 -0700 (PDT)
From: Judy Hsiao <judyhsiao@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Liam Girdwood <lgirdwood@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Brian Norris <briannorris@chromium.org>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Chen-Yu Tsai <wenst@chromium.org>,
	alsa-devel@alsa-project.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Judy Hsiao <judyhsiao@chromium.org>
Subject: [PATCH v1] FROMGIT: ASoC: rockchip: i2s: Fix error code when fail to read I2S_CLR
Date: Fri,  1 Jul 2022 02:14:27 +0000
Message-Id: <20220701021427.3120549-1-judyhsiao@chromium.org>
X-Mailer: git-send-email 2.37.0.rc0.161.g10f37bed90-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_191436_993203_105D7D41 
X-CRM114-Status: GOOD (  10.16  )
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

Add the error code '-EBUSY' when fail to read I2S_CLR
in rockchip_snd_rxctrl() and rockchip_snd_txctrl()

Fixes: 44f362c2cc6d ("ASoC: rockchip: i2s: switch BCLK to GPIO")
Signed-off-by: Judy Hsiao <judyhsiao@chromium.org>
---
 sound/soc/rockchip/rockchip_i2s.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
index f783994cc16a..fd36c0bacc43 100644
--- a/sound/soc/rockchip/rockchip_i2s.c
+++ b/sound/soc/rockchip/rockchip_i2s.c
@@ -171,6 +171,7 @@ static int rockchip_snd_txctrl(struct rk_i2s_dev *i2s, int on)
 				retry--;
 				if (!retry) {
 					dev_warn(i2s->dev, "fail to clear\n");
+					ret = -EBUSY;
 					break;
 				}
 			}
@@ -232,6 +233,7 @@ static int rockchip_snd_rxctrl(struct rk_i2s_dev *i2s, int on)
 				retry--;
 				if (!retry) {
 					dev_warn(i2s->dev, "fail to clear\n");
+					ret = -EBUSY;
 					break;
 				}
 			}
-- 
2.37.0.rc0.161.g10f37bed90-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
