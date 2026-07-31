Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD970C55167
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Jul 2026 06:50:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QmR+GI1q4eaA2win4Qy+e0BX5qcVE+EAP5gH3ts8tAg=; b=YyrrF8oLcvjtHq
	02p0Lh50bPh60hU9wBhgdx9ItmZSBSaWXr+oRdH74n27PewJ0PZYN3uoJqac8o0+cyTDrdlye3B3l
	jSiVx5U9prhi1AxsJwJI6ICRiU4uB3ZL5VEukWqVo5siNduzWh9A9srAS2YWox4k8kSxTchXFRPGV
	4I/dahNz0tGmkO6Axea2S+rQUOHDirHT3f5lXsrasdrUbUM01+Bd+MrOqVV1d0g1bK6Nz+tkG+uCj
	sq9kZR5efIyROn+6+ZjzJ3328xxSetAcEnHFjcTD0y+PncId6xlBbGosnj2Ia8WtBycBEzjlDFJ8g
	K7F15V7tZLKRBye+oZMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wph4E-0000000BuxH-2nTy;
	Fri, 31 Jul 2026 06:50:02 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wph4A-0000000BuvW-1iOH
	for linux-rockchip@lists.infradead.org;
	Fri, 31 Jul 2026 06:50:01 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-47f502ff678so73521f8f.0
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 23:49:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785480596; x=1786085396; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=vsR6hWzy4D9+PPoxqFEdaQVVVEVdpxP3yoc1mBPPEeI=;
        b=geeQ23TTiX9pK0xJp4774CdnZhONacImc/M5ZgUo63DpFRmUUR4pXsjJRKT4u0cNMO
         PI+ONlp1xdOWVZz9mFHp0ARomGCfrcfs+VFSTw5an1qHNaO3MyM/OT6Dy2R+fiCM9BdP
         GUVMj/OuJn4rJUKRZaD3JVMYk2CgHYF3f6pnzh9MtctVCYdKamjc7f980NeGpGwT1zfX
         0NMTpY+4GZaw4be3dWtIdaIHSwVLD/6/whdNoEoiHcS60Nk+xV0RyIU32pGqAbLZD6/l
         Ly5pCfHdE2Ri02+pdxAuRDPzcdhBlYMmJANbpnP69AMnoA/pfEWEZ+Aw2FPk4Pm2GNI1
         gstA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785480596; x=1786085396;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=vsR6hWzy4D9+PPoxqFEdaQVVVEVdpxP3yoc1mBPPEeI=;
        b=YGN5QOcHnpursDdEft6LLf7ZzovxQb4Skjmtj2iTN1gv66d+V7BOPKDNExyjnVTgAz
         Z7563b0j40HxDxRF8145E9KVshZDDf/0vftB4eUc58Udq1Dr8Gf0DLwLwTeZlMptfFxd
         Ljx24kkzkzMLNU5zT6uWLtrQwTDm0HfBlLxEV1ZynFxtvjWGoY79+0StNqENKEI4x4NM
         DZV/6dGzKnY/CG5lI11PNV7gmwIAs2KNLVOdzsZawPd6JXZuO6Q6nZJi4orDFjlra5QJ
         FTE+ndobtJxdS9wjTfZLkzocRN7OvSpLoujQbLaHLsupSuGCXIlH99kx3Msf9a2W1gbe
         rmmA==
X-Forwarded-Encrypted: i=1; AHgh+RoyDFNiMK4luULQrM2nzzgTYIlzsjZ/KlsrQzpbesNdffW4fZebrSSbwwN4Ww6yI8NnpoKfiV8E/N2fgKrMwA==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywbl1UULQ9etoRaQhL2U+eEroh0GixPFP55zqMeQoPmENurl2LM
	Uhz3C9iMh0TC46wOaTyOWNLAdwUTLeAwIy3zrQUhgeeE8YiFiKajFoCo
X-Gm-Gg: AR+sD11ahz2mt7QTqZ4QwkzoTl/Vd9Fe++0FKes2z+wZzpQCL+NS2y85BlSMWNZbS8A
	47q3gFYSEBXMP7BOlAK11mD6L5eQ27IXIKH2mpkvP1hfsAm/C5eVNPhIMeMn+QSy5IzW1VhZ0CC
	LKj5hyDsq0O1ZW9xkRBHw1VNM6fBMlDRYXNo6oZr0fpIOkU4iK1fN/SIkBSHgNtyPVkJHkePPXF
	6S6rsV9XFvpM6OUx9tniadnW98IS4T1Jvw6Zr60RdNVy9U4XGDOiHUrwYaqfVm0OMzmWoShf+kX
	/0lOBfFGKSNGTOjfZp7zDkAAfj6+3htxxLeb+pbtP2T6PqPaAZiutUlmF92hLKWkPKaZp/JnuFo
	1VL4TPDelGFhnZMbCQsUbEMOj34amW0DghSXJTMaJtY2nifXayDWOPzFe/VbmYNpn/moa/4yeOD
	XjZsRl1jb30DwkDgZGZSyJCxx6YcXGKpZhnMNinRcPDemewWq9aplUDj5qTfp8XYnjE1RHbYpW+
	nbfU5XdRUAa2T9Chll9kuTv8nnpFA23Mb5XFBdpaiDk0/WOC+yYkDHiuSXgPOT0Gg2s9Q==
X-Received: by 2002:a5d:64ed:0:b0:47f:7e91:3d55 with SMTP id ffacd0b85a97d-47fd2b3e820mr2256719f8f.2.1785480596373;
        Thu, 30 Jul 2026 23:49:56 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B8B8B0053881A2C61CA978D.dsl.pool.telekom.hu. [2001:4c4e:1b8b:8b00:5388:1a2c:61ca:978d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47fd41e2abbsm1212753f8f.9.2026.07.30.23.49.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jul 2026 23:49:55 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Cc: Oded Gabbay <ogabbay@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Guangshuo Li <lgs201920130244@gmail.com>,
	Jiaxing Hu <gahing@gahingwoo.com>,
	Igor Paunovic <royalnet026@gmail.com>
Subject: [PATCH v2 0/2] accel/rocket: fix shared-device lifecycle on probe failure and unbind
Date: Fri, 31 Jul 2026 08:49:31 +0200
Message-ID: <20260731064933.12548-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_234958_465631_739BF536 
X-CRM114-Status: GOOD (  11.44  )
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
(confirmed via the per-core IRQ counters moving to that core); the
forced-init-failure path releases its slot cleanly; and MobileNetV1
inference via the Teflon TFLite delegate stays bit-identical to the
stock driver throughout.

The series applies on top of Guangshuo Li's pending fix, on which
patch 1 depends textually (reviewed on-list):
https://lore.kernel.org/dri-devel/20260708062845.716487-1-lgs201920130244@gmail.com/

v2:
 - patch 2: clear the slot's .dev when rocket_core_init() fails -
   with .dev as the liveness marker a failed init left a
   half-initialised core visible to lookups and made
   rocket_job_open()'s live-slot walk overflow its allocation by one
   entry (Jiaxing Hu); make the never-initialised slot skip in
   sched_to_core() explicit; document the synchronous-probe assumption
 - patch 1: unchanged
v1: https://lore.kernel.org/dri-devel/20260730080355.177422-1-royalnet026@gmail.com/

Igor Paunovic (2):
  accel/rocket: release the shared device's devres on teardown
  accel/rocket: keep core slots stable across unbind and rebind

 drivers/accel/rocket/rocket_device.c |  2 ++
 drivers/accel/rocket/rocket_device.h |  3 +++
 drivers/accel/rocket/rocket_drv.c    | 41 ++++++++++++++++++++++++++++++++----
 drivers/accel/rocket/rocket_job.c    | 13 +++++++------
 4 files changed, 53 insertions(+), 10 deletions(-)

--
2.53.0

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
