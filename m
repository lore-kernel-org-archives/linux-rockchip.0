Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58579C4345F
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Apr 2024 20:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=URQzUAR37O38Q7hjb0uP5Ty22jyu85H6cMAzBhtSpA8=; b=YgKacxuZ+4NHmm
	66jpaM0c5ujErPMGxh+dNFF/1Tsem0FL8k0zEoqoxaG7qJYKwEjJVJsQFrWHQ7ZXotKlansBX5/YY
	kHzRT7CC8JtRMyj+SSI26os5swaowrp6Fbuq7HiXVj7VRkXvwOJ0QDbthLMoXHnVsGtcqxLLubg2P
	74LYzF5llyXqhCP8xrEUMsV45P/i1NfC/bCKN2TYbCqznkFUmmx6XXMTW+5pb2girD5OXQzN8Vg+R
	5J6aNqdSM0Fsk+sirnMBbWxyGLexvYp5EmSqTx6QXnVp5fqP/auRPOI3FnQKqQV8lAyzTmKRczoTE
	PWDUZoBfVlpM39wyrKnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s0on3-0000000G8U1-2IMm;
	Sat, 27 Apr 2024 20:36:57 +0000
Received: from www.zeus03.de ([194.117.254.33] helo=mail.zeus03.de)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s0omb-0000000G8Hi-3Wp7
	for linux-rockchip@lists.infradead.org;
	Sat, 27 Apr 2024 20:36:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:mime-version:content-transfer-encoding; s=k1; bh=vucjjM3RsCbo5+
	FPCKzNEmVbLons1oLEEtyP6oygaEw=; b=J/dbn4NFhpPLnpA2UHgTAGogwIkFVU
	c1Oe144PmBmlBY7G1bZjfrO64wUSfJItMs30Ey1vHza/lqVrpXpu3HBC64PtE6wm
	PM643I22QuBpe+FQCCFBy9C1g8B/+qKR2wnguasGV7MKIQhjrLfC6ogaEikc7wZg
	NXKz5ylEb6ox+6JSJCa222bDqBSM7wjjeZmD2itN/VEqY86s1JzjVcawhMT0dNBB
	ZfrCpu0HSx1LJTveW87o2Bi1Cr36obPwq5lvaoeqdeUgwJOFx2FSWFozO2gDVB1+
	r2IRSzGgTFNtpEl2Svq5p+/Wg9jwOurnZVwcxRc0W7D4YqCilqvAW/8A==
Received: (qmail 1781755 invoked from network); 27 Apr 2024 22:36:14 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 27 Apr 2024 22:36:14 +0200
X-UD-Smtp-Session: l3s3148p1@ZFeo+BkXsI9ehh9l
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-i2c@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org,
	linux-omap@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH 00/15] i2c: use 'time_left' with wait_for_*
Date: Sat, 27 Apr 2024 22:35:52 +0200
Message-ID: <20240427203611.3750-1-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240427_133631_035192_6BD91E29 
X-CRM114-Status: UNSURE (   5.57  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

There is a confusing pattern in the kernel to use a variable named 'timeout' to
store the result of wait_for_*() causing patterns like:

        timeout = wait_for_completion_timeout(...)
        if (!timeout) return -ETIMEDOUT;

with all kinds of permutations. Use 'time_left' as a variable to make the code
self explaining.

This is the I2C part of a tree-wide series. The rest of the patches can
be found here (slightly WIP):

git://git.kernel.org/pub/scm/linux/kernel/git/wsa/linux.git i2c/time_left

Because these patches are generated, they need manual audit. So, I will
send them step by step. This is part 1 and also a call for opinions if
this is a desirable change. But at least in the I2C realm, I really want
to have it proper.

Build bot is happy with these patches and I also compile tested them
(except two). No functional changes intended.

Wolfram Sang (15):
  i2c: amd-mp2-plat: use 'time_left' variable with
    wait_for_completion_timeout()
  i2c: digicolor: use 'time_left' variable with
    wait_for_completion_timeout()
  i2c: exynos5: use 'time_left' variable with
    wait_for_completion_timeout()
  i2c: hix5hd2: use 'time_left' variable with
    wait_for_completion_timeout()
  i2c: imx-lpi2c: use 'time_left' variable with
    wait_for_completion_timeout()
  i2c: omap: use 'time_left' variable with wait_for_completion_timeout()
  i2c: st: use 'time_left' variable with wait_for_completion_timeout()
  i2c: stm32f4: use 'time_left' variable with
    wait_for_completion_timeout()
  i2c: stm32f7: use 'time_left' variable with
    wait_for_completion_timeout()
  i2c: synquacer: use 'time_left' variable with
    wait_for_completion_timeout()
  i2c: jz4780: use 'time_left' variable with
    wait_for_completion_timeout()
  i2c: qcom-geni: use 'time_left' variable with
    wait_for_completion_timeout()
  i2c: rk3x: use 'time_left' variable with wait_event_timeout()
  i2c: s3c2410: use 'time_left' variable with wait_event_timeout()
  i2c: pxa: use 'time_left' variable with wait_event_timeout()

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
