Return-Path: <SRS0=0WH/=FX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D6E3C4361B
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Dec 2020 20:44:43 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1199422D72
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Dec 2020 20:44:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1199422D72
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=simonsouth.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=LrWp7Q7cvv986bNLWQD9l+0IQzzqE9FXsMYfGqtEewo=; b=pKMRQWH5CZJ0LGn964cm+zJ4kO
	pEApZsW9uOGXKd50M53HizD03MpYwZpus69zWEgewykwUrrjBg/Ci7+cy6nYAcaKFMKTeZqE43s+O
	xeul1O2Qo6Q9gL0Sc/W2G3x5PKadduTMABxZB2TARO9IrU35l6Nthci+/URMAx/ifk7fRcnm43L59
	HFKVhxnuN5/F6FMw7XL+ocfD9zx71Lj9LtkCgF1OFeJmXCj/IAENt7cqcC8+aSBDhrwScvykU3bEF
	Ba7bpWwMVkDAesiSuYL2t6lEXJmfgF1TaQzle96IrcI2Jujv66E6KsMDKUQFS0gD0jCwUGYHQPT5T
	OTMTSBTA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kqj5e-0001E2-MJ; Sat, 19 Dec 2020 20:44:34 +0000
Received: from mailout.easymail.ca ([64.68.200.34])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kqj5a-0001DP-UR; Sat, 19 Dec 2020 20:44:31 +0000
Received: from localhost (localhost [127.0.0.1])
 by mailout.easymail.ca (Postfix) with ESMTP id 1016DBFD50;
 Sat, 19 Dec 2020 20:44:30 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at emo04-pco.easydns.vpn
Received: from mailout.easymail.ca ([127.0.0.1])
 by localhost (emo04-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 750NSG3Cgy_m; Sat, 19 Dec 2020 20:44:29 +0000 (UTC)
Received: from localhost.localdomain (unknown [108.162.141.195])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailout.easymail.ca (Postfix) with ESMTPSA id D2F66BFBC9;
 Sat, 19 Dec 2020 20:44:16 +0000 (UTC)
From: Simon South <simon@simonsouth.net>
To: tpiepho@gmail.com, thierry.reding@gmail.com,
 u.kleine-koenig@pengutronix.de, lee.jones@linaro.org, heiko@sntech.de,
 bbrezillon@kernel.org, linux-pwm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v2 0/3] pwm: rockchip: Eliminate potential race condition when
 probing
Date: Sat, 19 Dec 2020 15:44:07 -0500
Message-Id: <cover.1608407584.git.simon@simonsouth.net>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201219_154431_021225_1A2B3E82 
X-CRM114-Status: GOOD (  13.77  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: simon@simonsouth.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This patch series aims to eliminate the race condition Trent Piepho
identified[0] in the Rockchip PWM driver's rockchip_pwm_probe()
function, by moving code that disables a PWM device's signal clock
ahead of the code that registers the device via pwmchip_add().

It additionally

- Fixes a potential kernel hang introduced by my earlier commit
  457f74abbed0 ("pwm: rockchip: Keep enabled PWMs running while
  probing") by ensuring a device's APB clock is enabled before its
  registers are accessed, and

- Tries to improve the driver by (re-)enabling the signal clock of
  only PWM devices that appear to have been started already by the
  bootloader, rather than enabling every device's signal clock and
  selectively disabling it later.

I've tested these changes on my (RK3399-based) Pinebook Pro with its
screen backlight enabled by U-Boot and they appear to work fine.

I'd be grateful for help with testing on other devices, particularly
those with SoCs like the RK3328 that use separate bus and signal
clocks for their PWM devices. (My ROCK64 uses its PWM-output pins for
other purposes and wasn't of help here.)

[0] https://www.spinics.net/lists/linux-pwm/msg14611.html

--
Simon South
simon@simonsouth.net


Simon South (3):
  pwm: rockchip: Enable APB clock during register access while probing
  pwm: rockchip: Eliminate potential race condition when probing
  pwm: rockchip: Do not start PWMs not already running

 drivers/pwm/pwm-rockchip.c | 49 +++++++++++++++++++-------------------
 1 file changed, 24 insertions(+), 25 deletions(-)

-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
