Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66DF4C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Jan 2022 01:07:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=t37XqOy3Uuy9j6w/pzXhvsDAstpsY1zsO6WIgHbzXxA=; b=BJIsZYmbJ9T6P2
	70/v/We5ZyjkBdC50GXJLb9UzoCntzCCyhQfdItLf3ayJtidCjgo0DyXzjdF6RWwo6p9H1lu1743S
	IALea63kybA9Ub0g8vSbNdluhLhH4jQhVwJQymdzXtx2/+HSfkjJfABxnnFWG5rQxgLtrASgDeS1+
	ikx4hsmpkrajAQCqlTdB9IqiGK98Fz/e7+FHVMkDouJPucqFUS0jsqAlfRV1hcvwgq3kJXwXGKrB+
	br0L1Hyhnvl1C5aQJ9Su0Ujb406IRDF5uyoK5/B+5APCW3mv8TGitWh85fs0PnqIsOx7wWJWwucOT
	UUYNmXb9KyYR/eUAhIUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDFjo-0000ap-QU; Fri, 28 Jan 2022 01:07:41 +0000
Received: from mail-qt1-x82f.google.com ([2607:f8b0:4864:20::82f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDFHO-00HVYk-Gq; Fri, 28 Jan 2022 00:38:20 +0000
Received: by mail-qt1-x82f.google.com with SMTP id r14so3973171qtt.5;
 Thu, 27 Jan 2022 16:38:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6NEtqARvV8XL726RAo68zVygz3uajpfAwMjDNLByJDQ=;
 b=fBNtTWhfh0e2aupYsSMkm0mnr2auxfUY4KzigBbUxuOVVU4IqIa7omg+3VRdYc0AKg
 QWvZrIl6JvCBPX4ownFqt6FIKka0D5MIdAX+lUDU+KvrkbX4KmRiuKYpAxtsWSKBmzWM
 Y2IjRCK74mxaaxb5LdY0aJ7G2+Rfy7yHndEGXWj3IznuEqesufw+qdi6eNL+uQfS4ocw
 C38/pBtqSr0W0ULk74ustaxL5xRjNHA8tt36FfTRMm20pIn8R6ww1EV10aAm/trnoLko
 G7XGtvHgI4kIL8UZyt5CvLo9iuvCvaOv6/Y8vXEYebTCbyxS0R6Z3JPs+MWv/9BUbjnj
 /8xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6NEtqARvV8XL726RAo68zVygz3uajpfAwMjDNLByJDQ=;
 b=B9GjVYSEKJt7Os15q3U7kqozYsXAhfIPerOSnf5wPc4XBJ5i06Ue8JCqqpvaxcGc+u
 fRYERzl9oPJDVxsI4A6ZBPvU7nUvK4plW+4kNF+WH/p0HdnhF79eB1xthVy599h3DRgG
 HmFSaxMqmTeKi15Ucye4hzNWoMx1b36gE5MGQXYtGgkNjodequAYjY+z4yaPDG6iklWw
 mpnkQ1T9MAND7L5oIQ7yHJpBx3GRWIL/rWweoxai/JHpatezuU6u3+4ryIy3/56pJu+Z
 vXiOVEjhCzTqMlRAYApTtEqyNiL0jUSHNAhhFKUkEppF82f2/r+SR5DGCU6drYPTEC72
 2XpQ==
X-Gm-Message-State: AOAM531XKv/3vwmPAITPvRY6bccnUJs59ISjTOeK4AdyEpxO9MLNMeH4
 qn7O0wg8gc2J8Wyh4cWpzlc=
X-Google-Smtp-Source: ABdhPJwPHM2kqUrjC52kNZQDFaRBJEfsKeyyunuAJ0urBsruwsOfWYejieqgaQCjSHcLQUyEbAgTsA==
X-Received: by 2002:a05:622a:164e:: with SMTP id
 y14mr4503923qtj.471.1643330294894; 
 Thu, 27 Jan 2022 16:38:14 -0800 (PST)
Received: from master-x64.sparksnet (c-98-233-193-225.hsd1.dc.comcast.net.
 [98.233.193.225])
 by smtp.gmail.com with ESMTPSA id t1sm2142883qtc.48.2022.01.27.16.38.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Jan 2022 16:38:14 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: 
Cc: Peter Geis <pgwipeout@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/4] Quartz64-A fixes and enablement from 5.17-rc1
Date: Thu, 27 Jan 2022 19:38:04 -0500
Message-Id: <20220128003809.3291407-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220127_163818_638430_54DEEA37 
X-CRM114-Status: UNSURE (   8.82  )
X-CRM114-Notice: Please train this message.
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


Good Evening,

This is the first of several patch series for further expanding
Quartz64-A support.

This series has the following patches:
Fix the ddr regulator voltage.
Add pmu_io_domains to permit sdio and high speed emmc support.
Add sdmmc1 node for wifi support.
Annotate con40 functions and enable i2c3.

Please review and apply.

Very Respectfully,
Peter Geis

Changelog:
v2:
- drop status = "okay" from sdio_pwrseq
- drop disable-wp from sdmmc1
- move reset-gpios to be alphabetical in sdio_pwrseq
- add con40 annotation patch

Peter Geis (4):
  arm64: dts: rockchip: fix Quartz64-A ddr regulator voltage
  arm64: dts: rockchip: add Quartz64-A pmu_io_domains
  arm64: dts: rockchip: add Quartz64-A sdmmc1 node
  arm64: dts: rockchip: add Quartz64-A con40 hardware

 .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 81 ++++++++++++++++++-
 1 file changed, 79 insertions(+), 2 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
