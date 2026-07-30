Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49547C54FDF
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jul 2026 08:04:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XxD+sG5v8AZNK7dIRgeJAxViT3iaOOgGTrLV/aJOWpo=; b=PQVZaJMYb2Zvkd
	scewg5z7Ub4F19Wgmpg8cR4a/Ld3H4rkaapLMJ8loy0oO4u7ltctOk0Yp4FIVv7d84p04+D+r/1ya
	BhhgPcFmo01k64xwL17agiT30zwHWn5xJP425uve1WaR8FopMU0Jci6DSkkzZAgaFRjFo8l6+i2TL
	x0ZnfdUeXROZaSxLWKxUYMxoK+IdvDEEwuJGWxIOY5rZTSh4c2iE6Sfcjgw5CqjslnFaYGnexgmfG
	f6K79JzY+ZSBOmP5I8m1D8R2qKfSOVsSsmxZ01XDcfBWKPoClQDF7NGM3JVMMix5msCmAao7o31hN
	AWs3Yq8JQtMAyJ7pzO1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpLkV-00000009nCK-1ap1;
	Thu, 30 Jul 2026 08:04:15 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpLkS-00000009nBS-1Je3
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Jul 2026 08:04:13 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-47f6981d244so131740f8f.1
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 01:04:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785398650; x=1786003450; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=cYZOW4+rPj/CMFn0uRjVqgsz7yPpvLWpF6+UtZMyKrk=;
        b=UnH5RTlBRtcdqYZy7j0QB/CElS6rEn9EruVaNQjpBSUKjmunxSVQaUX6te5MUJR3db
         GbuhdXkl5lBTRfuvs4a24EyisZlHsCOITtuIv1PwCfeNVQljYnyi6yhp9EKh70Ye0Vxk
         14J+Oc9zhHlOeXFB41CTmJqi/pSMZKA+BnIXq88o4ICICI/yqXrIfZWGAuJMJ++RYXlw
         xtYX2RD+7DcwwThCunDNGdcweCMxN1Mn/9npvYjLG53o2PXXzbnKm+csXtJVFyAHbDv4
         mVnQ1GfqVD1JPnnh7CzgKJXGzNI4AHzS9KDxc6xr3W5/93hxWCUI3Pn65n4AhrEQZbZX
         8LfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785398650; x=1786003450;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=cYZOW4+rPj/CMFn0uRjVqgsz7yPpvLWpF6+UtZMyKrk=;
        b=d8kX+QvN4qrmbo+Z6/AklDG/AEmk4mtDgBrXNE9ekYG1Jl/d/4EkfX724dy5B++WUK
         Jr4fsueJmA01Rk7Ac/xZLcNzyhjI3sjopsPUgFK7dmpE2JYpETuD58WnTQQ7YM4rWOoo
         IE/xUMPSYhXK3EqPjizetJhQ9jazO7Zcy4JQMUBzMGABW7sNvJnk4SHkuPXYMsZGnkZQ
         TV8YLVqhvEV+UpmUmRNkdMXmq8QxSqLA/nXGPvsfQI620tZTDtlGVcTuyUD184AxQ5QB
         mcLhaTRAeOG/L2hz7o5xxdtNMvQE7dNHH6pdxJrbB/SqrAVtUq5uAzeI3Z6OdQe0dWZ5
         Vy/g==
X-Forwarded-Encrypted: i=1; AHgh+RqreQnNuG5R4u/W2CCTxwEZN7a2xgMcqkJ1bmDOZR3fWVS1Lhpq8K68BfHqskB4qFiL7yHGZkBGF+EGOSA+KQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzsO9LoQqnvX2CQEQoMz+6ubI5TnqOySGmrGEYShDcsK4LLJkbV
	VgBmxkqK6kq3W0U3mBDjbvzqBbHhrCrmMqMVDu0co63SQkGlTLB2qi1O
X-Gm-Gg: AR+sD12I01FGlcVm3ih2Z8CCg8tDHPXyZMpSFwiGz8oGsrFFZuZvfvYRwPvtwew2HMt
	vBxGY30Iyj4IFLzPhAe2C5ZcQtp8MQAi34xa3hSiH0MDaI5jepkxPFRYe71yOOxNvqYHDTdPJra
	aaG8k9WgIfB4AUoaU3W/EPhyaWlxMe+IXj5ScaRNjOdS+/DgRF8mnbu6tsZz8HZCw8Y9AN3PDD0
	FmtdQqFKLpa0hAT8XPWr7OJmgHH86w2V+rfm8YXgE4gdffHFksfFQ5jwIQ6Lg7QYGU3vDMSX18F
	kbCNFul5s9icyTbVrRRr/I46m/6Zf1z1w2wvdLUe2QK7u4pT/Jm4V6hDR5lgUCAA14HFPrRUA3C
	j/AALCTGhtPiQmQQ1xR6Ow+c+fQfMQUzPUwkZ2aRXdcCDn2ljq++q57GOG5masrkfaIYa2XK+GP
	eHu6j9daLDj5ZowHdB9rWF5q5CmqqcJMc8ik44TTrDJ92lRTu+GZebhqpq1KTKsUtOJ9oiSYOpn
	ukf8vFRH10FpL59Lgv1uJ2WH6pGJ80HImtH8CUbnh5sOfd1NQhVfQmEf3iZPPtId/XVD9czp7Pg
	mppE
X-Received: by 2002:a05:600c:46cb:b0:495:6274:56bd with SMTP id 5b1f17b1804b1-49800ed4c5cmr19802285e9.4.1785398649931;
        Thu, 30 Jul 2026 01:04:09 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B8A5A00BF2D55A7591B4173.dsl.pool.telekom.hu. [2001:4c4e:1b8a:5a00:bf2d:55a7:591b:4173])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47fc88e4055sm3347685f8f.13.2026.07.30.01.04.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jul 2026 01:04:09 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Cc: Oded Gabbay <ogabbay@kernel.org>,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Guangshuo Li <lgs201920130244@gmail.com>,
	Jiaxing Hu <gahing@gahingwoo.com>,
	Igor Paunovic <royalnet026@gmail.com>
Subject: [PATCH 0/2] accel/rocket: fix shared-device lifecycle on probe failure and unbind
Date: Thu, 30 Jul 2026 10:03:52 +0200
Message-ID: <20260730080355.177422-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_010412_372101_0A79F138 
X-CRM114-Status: UNSURE (   9.96  )
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

The rocket driver keeps a single shared DRM device on a driverless
"rknn" platform device: the first core to probe initializes it, the
last one to go away tears it down. This series fixes two independent
bugs in that lifecycle. Both were flagged by the Sashiko AI review on
my clks patch; I verified each by hand against the code and then on
hardware before writing the fixes.

Patch 1 releases the devres of the shared device on teardown. Today
every fini/re-init cycle leaks the previous rocket_device and pins its
accel minor - observable as /dev/accel/accel0 coming back as accel1,
then accel2, on unbind/rebind cycles of all cores.

Patch 2 makes the per-core slot bookkeeping stable across unbind and
rebind in any order. Today unbinding a lower-numbered core makes
higher-numbered ones unfindable (their runtime PM callbacks start
returning -ENODEV), a later unbind of such a core is silently skipped,
and a subsequent bind overwrites a slot whose IRQ handler and DRM
scheduler are still live.

Verified on RK3588 (Orange Pi 5 Plus, all three cores): the
unbind/rebind matrix keeps /dev/accel/accel0 stable and every core
findable; single-core operation works from the highest slot alone
(confirmed via the per-core IRQ counters moving to that core); and a
MobileNetV1 inference run via the Teflon TFLite delegate stays
bit-identical to the stock driver throughout.

The series applies on top of Guangshuo Li's pending fix, on which
patch 1 depends textually (reviewed on-list earlier today):
https://lore.kernel.org/dri-devel/20260708062845.716487-1-lgs201920130244@gmail.com/

Igor Paunovic (2):
  accel/rocket: release the shared device's devres on teardown
  accel/rocket: keep core slots stable across unbind and rebind

 drivers/accel/rocket/rocket_device.c |  2 ++
 drivers/accel/rocket/rocket_device.h |  3 +++
 drivers/accel/rocket/rocket_drv.c    | 40 ++++++++++++++++++++++++++++++----
 drivers/accel/rocket/rocket_job.c    | 11 ++++++-----
 4 files changed, 47 insertions(+), 9 deletions(-)

--
2.53.0

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
