Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28CC810F2863
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Mar 2026 18:06:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IMt+t7JW9EKjHuXNB8MagUVcRyWvAGRvk+qgc78pYtk=; b=22/w75Lbxl0Xlb
	1QXo0OcO8hLUwT/nyMVa4lT9cwRhllhX0DkjehSmXu33WQP29ytJRwCm8QSQyEEqVoMdccfmsn9TZ
	xhcIl0xGDvS3GexUeP4oAH7BtCw7VfV4YMIT3gHcy4FEBAS8/jSDoMHYw19soFsELLRsu5Kzf3pIJ
	Y3+ti96SJp97T4Cg8a6YBZ30VaKQAv953Ey4EwFi3Ncxr15PsHLYAPuceT/SPv2lQMtt6PCrBf4T5
	Sp+guPkaIGa3EmUmQ65inak0sXSpL7sZj83hyHl+ZrfbQcG4WTklYIP4qM3cgP0FIBPfSdCAksEBb
	GCnVstN4xDmg7WB4WblQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6BZk-00000007uhn-1rhg;
	Fri, 27 Mar 2026 18:06:28 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6BZd-00000007udH-0Yt9;
	Fri, 27 Mar 2026 18:06:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id CEAB5406D0;
	Fri, 27 Mar 2026 18:06:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF1F9C19423;
	Fri, 27 Mar 2026 18:06:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774634780;
	bh=vEdr7EPXzpO1kaiix0EvAxi+W/Op3ANhnxGGu30cNiw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Kz6FOGk+OERUDmvQU1+cq2Uwi/EiM8UC86DkHBXk7qfGwwB/CawDoMnGy+AC4+L5J
	 Yt5SXRAVbbJpO6escW35Tm6XOKOrUiY06JhhiJED2jQPGfH0GdNtXtgV1+AsbcENCi
	 JHm3z1Y+0jb0TvXREIu9a6txY0iAtdnBC4qHtOWUjzbqsKlYyv8wCYc4hokT4ZDtWP
	 wZChpp+2gQUFDJ7oh/ZmNTGoqzRkSvTVO6uXemmNIqIkny1CRkax6J9fxLOh8pc+ZS
	 q2GM07HdPKiQ7b1B7RoOraULkdQ6PKWIXBBfSjvF1HfwdzbnoX8SuYh1gLQZ6Fm+oL
	 1ItltE2xgrF5w==
From: Daniel Lezcano <daniel.lezcano@kernel.org>
To: daniel.lezcano@kernel.org,
	tglx@kernel.org,
	zhipeng.wang_1@nxp.com
Cc: shawnguo@kernel.org,
	jstultz@google.com,
	linux-kernel@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support)
Subject: [PATCH resend v1 6/7] clocksource/drivers/rockchip: Add rockchip timer module support
Date: Fri, 27 Mar 2026 19:05:58 +0100
Message-ID: <20260327180600.8150-7-daniel.lezcano@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260327180600.8150-1-daniel.lezcano@kernel.org>
References: <20260327180600.8150-1-daniel.lezcano@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260327_110621_215445_0BB365E4 
X-CRM114-Status: UNSURE (   9.91  )
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

Now the TIMER_PDEV_DECLARE() allows the driver to be compiled as a
module. Add the MODULE_DESCRIPTION and the MODULE_LICENSE left for the
one converting the driver as a module.

Signed-off-by: Daniel Lezcano <daniel.lezcano@kernel.org>
---
 drivers/clocksource/timer-rockchip.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/clocksource/timer-rockchip.c b/drivers/clocksource/timer-rockchip.c
index 486bbffba464..61433b295882 100644
--- a/drivers/clocksource/timer-rockchip.c
+++ b/drivers/clocksource/timer-rockchip.c
@@ -271,3 +271,5 @@ static const struct of_device_id rk_timer_match_table[] = {
 };
 
 TIMER_PDEV_DECLARE(rk_timer, rk_timer_probe, NULL, rk_timer_match_table);
+MODULE_DESCRIPTION("Rockchip timer driver");
+MODULE_LICENSE("GPL");
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
