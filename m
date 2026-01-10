Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CFDFD277D1
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Jan 2026 01:07:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0Gd1KRaQ2YMMSRS0nbVLcxLJD3kBo0/vm7/Twxk7pP8=; b=y9pmBKvJMk4f/n
	InqsQ2+cLGEFK6kmpiVo6EK6TwIQC4QT+L7USSGpNszu41qHn2AsddkbQ4euUtwXpCpajyQgqdw0U
	Uvp7HBzOcctI7Uvn96c4+sZtBEbc/VR/fdH5Hc18yTYszHJQ3wiFjej8svPaMvQvD0z+qsbZcTJYx
	vNh4xvKPEaxFL6AU65ZJYCAZ1MmRH9Xnogu2jP8l4hezwSDNS2hcFx48bbXAFpNuYmYW4XqusReks
	LE2ft3PRPtwjlWvXZfAlfbGYNlydMnuNyJoASsLujbrVFc6hCz6xDUHK3upr7v651jSR8sHdv/JyD
	sQcf4YTIyDmdiET/JeGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veNS3-00000003922-0lRO;
	Sat, 10 Jan 2026 01:07:35 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veNRz-000000038zF-0Uut
	for linux-rockchip@lists.infradead.org;
	Sat, 10 Jan 2026 01:07:32 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-47795f6f5c0so29644825e9.1
        for <linux-rockchip@lists.infradead.org>; Fri, 09 Jan 2026 17:07:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768007248; x=1768612048; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7DHIbUC9kH5ID0D9IUKqXIWIzs+CamKmp3PsS5mVQKg=;
        b=XGJpMlSoJ1jFcN8UyZwinzXQt54v0HgdP5Zal8XtYR33QQVY7UYvUPyvUtu0iC1JFO
         WBXMVYuagwbCpFs7Hq0mKCrXVK6nI2n9VRWqKwudBC0RCVQBP4BkIlhS4nazehrqwS3d
         Kc0CrYmD1RKD8kQGflHmDlfxz3MwLYMNcd2ltdqLZLvnKAq+eMkC8czn1SubnGVaTne0
         8GZf4GRYs192RIL8sxIVROV8xmk7L7JMUD2cGDFrTbkO+qdsrQfyx2sqNX0xzmc00DQk
         l86iN8q18pI6dY81co1qX5b63tnuyuWt9inwAOhx4HeOxPeKXwnH1Ra7ZtyWT1s611ET
         ok3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768007248; x=1768612048;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7DHIbUC9kH5ID0D9IUKqXIWIzs+CamKmp3PsS5mVQKg=;
        b=HT8GnBSIqFTFZWjhxDmgTBgcjIK8yiFTxG5PuzCwAlsM5UgGbbc+46I4CEVs6Amfer
         WCI4aFBAUO4+arZ7AwaqrsHwtUkF4sKyRrdrB6sBK8wt6CGvPNeffG4TajH3FX222AKl
         6ttWvLxYRgAvFiEFGJ7YimaNpYG2j25zqhGoQpP1nWk/chJf+bsOTDFo3rq/9ZjQg4+g
         vRVSXkpn7MJimuIHSp7XDHdI+OL7bAWT2Wfqt1TiaM6urJiLAmnFfVteugYKCSzSUByn
         Rj4dlw1Ya0h7HNgiLYSKDkzrHaqL59QokKgpZ3nnV5c7wYfYqBxqTV3KY877WAAYu7WO
         v2sg==
X-Forwarded-Encrypted: i=1; AJvYcCUdJTrl5Vi/thv4Bt87vxLCIrznq1VkgO6W7DfTVjpkqVmS7gHeX9lVN8s1ZSi9ES5M3er56uQGHs0B9tiGaQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzhwogAcTAFz8S4+a9oEcglpiHcG++NdqfvYSNq3J6ZadeO/5SV
	FUQuyOVJu80oGwvruG+4Pwn/T/DUUqHzcUHII5lFlupK88hfECkv7i+z
X-Gm-Gg: AY/fxX7DS13D9KBB16PLuJ/Lr0j1dkXXCZLmVD6QFycGpG9xkfdX0hPhPHe+m8k7sbB
	QR0B5LaIJGVTtJ+vXOMW5CdpIsWGmMsjtC9Euic1zaiyPLJWjWf9zEF0xem5KxHgN01xDR0TJj8
	C5CYXMtFTgCKgzB1Po9QMX7D0XDssO2h+50FT9Nw+yQtKLlAqovjVPPKtzDrmF83tnmu/XLi8aQ
	3I3zc/E9uAdC+Zjtj8UxK+/LpDlxH633fDPRt1fCqvXaDjQJo67fFqP0D/WW/F3Wra84TFxe/bP
	AzhjKvRiuCjPiQyZ4Ne0TQ2eg7dqOxSb3GTcJ0FTy+yW5Wd+FUz8XFpkvlE9HHNvO/nXArJfEOr
	yxm90b9iNKgPhLreOvzlXXLsGwcqQemgGdqN7G48YXE1x0udLTgHYDJ+Vtw1nVI6rjFaWqDO0Dd
	2u6odSy+oZKb74ghGiHoqZjuyBvYUCV9dOn1/vZIibxH+o032r4WIRSle0ens86iHDkwj0G7c7/
	b1aREQ=
X-Google-Smtp-Source: AGHT+IEEsvTH07Jlq4vwgEsug+8S14LvBK1JHllAkePtf6I0e5EhJvagWLbuktY7BlslZdmsV7k6Dw==
X-Received: by 2002:a05:600c:4e86:b0:46f:b32e:5094 with SMTP id 5b1f17b1804b1-47d84b5b4fcmr123965385e9.32.1768007248471;
        Fri, 09 Jan 2026 17:07:28 -0800 (PST)
Received: from stor1.home.marco.cx (ip-178-202-227-016.um47.pools.vodafone-ip.de. [178.202.227.16])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d8717d9e7sm71779475e9.8.2026.01.09.17.07.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 17:07:27 -0800 (PST)
From: Marco Schirrmeister <mschirrmeister@gmail.com>
To: heiko@sntech.de,
	ulf.hansson@linaro.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Marco Schirrmeister <mschirrmeister@gmail.com>
Subject: [PATCH v1 0/3] mmc: dw_mmc-rockchip: Add stability quirk for NanoPi R76S
Date: Sat, 10 Jan 2026 02:07:12 +0100
Message-ID: <20260110010715.1610159-1-mschirrmeister@gmail.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_170731_201187_77165871 
X-CRM114-Status: GOOD (  10.76  )
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

This series addresses a microSD stability issue on the FriendlyElec 
NanoPi R76S (RK3576). The board currently suffers from a 400kHz 
retuning loop when the controller attempts to enter runtime-suspend 
during idle periods.

Evidence of the failure in dmesg:
[Fri Jan  2 01:28:02 2026] mmc_host mmc1: Bus speed (slot 0) = 400000Hz 
[Fri Jan  2 01:28:03 2026] mmc_host mmc1: Bus speed (slot 0) = 198000000Hz
[Fri Jan  2 01:28:03 2026] dwmmc_rockchip 2a310000.mmc: Successfully tuned phase to 233
[Fri Jan  2 01:28:04 2026] mmc_host mmc1: Bus speed (slot 0) = 400000Hz

Testing confirmed that the issue can be manually addressed by 
disabling runtime PM via sysfs:
echo on > /sys/devices/platform/soc/2a310000.mmc/power/control

I experimented with various changes in the Device Tree, including 
lowering the bus frequency and attempting to keep the power domains 
active, but nothing stopped the retuning loop.
The issue only went away when I forced the controller to stay active 
by disabling the runtime power management.

This quirk is the only way I have found to keep the SDR104 link from 
crashing on the NanoPi R76S, I am open to suggestions if there is 
a better way to handle this in the driver or the DTS.

Marco Schirrmeister (3):
  dt-bindings: mmc: rockchip-dw-mshc: add rockchip,disable-runtime-pm
  mmc: host: dw_mmc-rockchip: add rockchip,disable-runtime-pm quirk
  arm64: dts: rockchip: add stability quirk to NanoPi R76S

 .../bindings/mmc/rockchip-dw-mshc.yaml        |  8 ++++++
 .../boot/dts/rockchip/rk3576-nanopi-r76s.dts  |  1 +
 drivers/mmc/host/dw_mmc-rockchip.c            | 25 ++++++++++++++++---
 3 files changed, 31 insertions(+), 3 deletions(-)

-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
