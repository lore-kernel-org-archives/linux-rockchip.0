Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB997C79F9E
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Sep 2026 16:30:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tXYOV3Qvo49sz/YnI/fehAO9QiaXQmW9R8fDQTkoazs=; b=0S2LXC+6kL8X/h
	5nwnGvMVI+mfvjC2t62XyLpRc8kCgrnArXq3rHCw1EJVUi9TgeCERlfoYYufMKm5+HxgpCPvtOEyq
	3NyKJV+e7Iu41VA9IZsUlwBiU2sfBk34U/67mk5YeEEougyb/ivx+QbEHXCkoLZ6HBEinvb1dbCkz
	Uanpyj61mzy4IaHoC4wUxDYgq/y/P8gkNJst1D1l9trOB95CHBCYbw/Zo5Q3NxEMbmY5V+5ARx55o
	aadom8Ry0IJzuCYd22J+gI2xZntk2fE/kyzJQgRgEVdpsget9I/6yv/hhqWAr3a2Z02/OWS3VgvWR
	ZG1s+3Q7kM7FawYZKWnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3yhz-00000009fwl-0beg;
	Tue, 08 Sep 2026 16:30:07 +0000
Received: from mail-wr2-x10.google.com ([2a00:1450:4864:30::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3yhu-00000009fuq-0bzL
	for linux-rockchip@lists.infradead.org;
	Tue, 08 Sep 2026 16:30:03 +0000
Received: by mail-wr2-x10.google.com with SMTP id ffacd0b85a97d-4843178b1c8so404279f8f.0
        for <linux-rockchip@lists.infradead.org>; Tue, 08 Sep 2026 09:30:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788885000; x=1789489800; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=emj4cn58BmwUvuEYrkn19RQf/kNhJ8y8Fx3ptxT/4jw=;
        b=kMz5/dAbNReDV0kMUYi5T3IadeI6vBqN8QmtpUD54Ds3ZC+NlrUDL/qmsl4ZEsrKmM
         rlwhA6KIcLWmKxx3U5SaiY/mojTlJShP1LdNZx+jkzslpfgNRLwmG6AjMuXFsyzlHFc3
         Lvz6Dw/OtFr7iVAmMEyDx8gQqESiG1wT6GDKzne6ZYBCLgr9FOoWXxKz6rNJdXw+K2+c
         0e5sfJwh9fmevJFTb65j3UI7J5yBUZX6g5DVqJDDN0EY1o/ktA6lvP7/ydKenPzZJmIl
         HOD/7UXpupl/otXFMqSCLwAIhmXSMblkqbH6V1pOikVx5WIj+Og77tpJuV3XqBIUbvsy
         Me7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788885000; x=1789489800;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=emj4cn58BmwUvuEYrkn19RQf/kNhJ8y8Fx3ptxT/4jw=;
        b=W5Vp82Tk5U8Ngm06g/leXFyMP5+ZwFsaUNWgoohyttr00tWgRK9OlCk6jd1ii4Usxf
         CCYHlCkSlnUZuC+6lN8C6DH4hSMpr43xL2JZVcgsRBsDZD6j7q/PhwNajLCv55jMBrl/
         00DH3jxdQQk8SpvTb6maDQIGTlVWho+SKe+K7ZBr004A5is67AFN+ROc8QrPgQAKaZ7H
         ZvHFspxa9UylDA8kLWwf5zhsfY5OYHS7UwNT0EomBqNHGJmAE/l5ZDuc7s6/pNWRs/tn
         aBe8bngxUsYNYR1o0iRUMvGE9OT7nYWMF6CX8bCPaOjthRZk8IyxWEz6TOgIGffbmeX5
         ac0Q==
X-Forwarded-Encrypted: i=1; AKwUvBxbrMCGrUGG3YTIPkwkWSSTcpWBfEOS62R9ww5e4J40iuzGy+93iiWAEpKwXTIRb/E6RGS40Yo2BrDvh+giug==@lists.infradead.org
X-Gm-Message-State: AFuF++nUISN0ch0uK3c9TVTSOjhlck/Tnkf8xOen3/uta18cxf7XggT9
	io2Hb61PeOMeHY5jNQ6Cy23OSGRZfgWK48tEzG1IwXeeM3GFD3L/z27f
X-Gm-Gg: AYBFou33S8vBGtl1kv/wmt2kSuTMupX2KDPOrHJRkkvu+rbUTJoPyxeT8V7sglEt6E+
	R2yUtGtTRjL8pEZuwrzOkiPtf4F9s8LfDiKfDHvy4XppxDcw6QltkJIXRMrbwlL3A+oiIo/ODGY
	aH6sK1cNEU8Oi9B1DMr4xkeu8z85UzI6pcrPJZgQ9Hu55ae/U5mOgFY1Y1xWDfs/GbD7VUNI3Tu
	AMXywQmcHcvAQi9co6DI2qWrB09MnLsFUQzaJKBk6p2oh0BswZaxKE46lSaiHgengKeuLHlpZLg
	q7xwxgyWLCacPRAXX78ZDICbAuiAE9qKqdTCHnNiOIJNJnlDE6w2poSwb/LQs3lwxqKUBLZyR4b
	/7wwWAGiUosVZWefS/1DCbwSt1v/DkQ9rLQ7xgK2OX9PktHLP3IrAUrjHKMCWszmNqA/nczAypx
	c2uwtzvDTTllejwiVAuje0HLqeKKbVHpb6BkQMMbANRtSMl/yyzBdTttcTAtf/y1Q2s3EZYyCiP
	E4fYAnKYJsWKHltWwO0DVvowXAjFf372T5LYy3ajIegiiNwj9DnnCPK0bBLh/N6JR5c
X-Received: by 2002:a05:600c:c494:b0:499:d95a:41f with SMTP id 5b1f17b1804b1-49d010c3969mr205691045e9.0.1788884999944;
        Tue, 08 Sep 2026 09:29:59 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B825D00814606522702B594.dsl.pool.telekom.hu. [2001:4c4e:1b82:5d00:8146:652:2702:b594])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49d00031c95sm378593345e9.11.2026.09.08.09.29.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Sep 2026 09:29:59 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCH] phy: rockchip: inno-usb2: ensure PHY is running when clock is requested
Date: Tue,  8 Sep 2026 18:29:28 +0200
Message-ID: <20260908162935.7092-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260908-phy-rockchip-inno-usb2-clock-fix-v1-1-f7d59c31b908@collabora.com>
References: <20260908-phy-rockchip-inno-usb2-clock-fix-v1-1-f7d59c31b908@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260908_093002_201467_737AEF01 
X-CRM114-Status: GOOD (  12.48  )
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

Hi Sebastian,

Tested-by: Igor Paunovic <royalnet026@gmail.com> # Orange Pi 5 Plus (RK3588)

Repeating the tag here so it is picked up with the patch: I tested this
in your rockchip-devel branch earlier today and reported the details in
[1], but that was in my own bug report thread rather than under the
patch. The code you posted is identical to what I tested, only the base
differs.

Briefly: 4 full s2idle cycles with all four USB 2.0 hosts bound, which
hung every time before and needed a cold reset. The OHCI whose 480 MHz
clock had it as its only user went from "enters ohci_platform_resume and
never returns" to returning 0 after ~20.7 ms, 8 out of 8 resume passes.

One data point for the reviewers here, since it concerns the guard at the
top of the new function:

    if (rphy->phy_cfg->num_ports > 1)
            return 0;

All four entries in rk3588_phy_cfgs[] have num_ports = 1 (0x0000 and
0x4000 as OTG, 0x8000 and 0xc000 as HOST), so the new code does run on
RK3588, including u2phy2 at 0x8000 whose controller is the one that hung
for me. The num_ports = 2 configs are the older SoCs, so the guard costs
RK3588 nothing.

[1] https://lore.kernel.org/all/20260908144245.10700-1-royalnet026@gmail.com/

Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
