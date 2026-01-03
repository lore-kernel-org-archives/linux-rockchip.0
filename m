Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CFE2FC6160
	for <linux-rockchip@archiver.kernel.org>; Sat,  3 Jan 2026 08:32:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MsvVUvXGyI+CdDEboCpjJnM5IXoNFBq0uwn6/MqAZJA=; b=35C3G14hoTzKQe
	dQFeMFZ4NJTbkmXs0Db6JT2xEmH9wP6wuxXGgv82Vgq2GStipwThnxzNsv0/25qrChYjhSOMaP2dX
	Uswndj5GVrXBfdMjhLXMHzAcEfQiwpliF93ZCIytc2/kcx+G+ST6cICep0WFUtPLqR+HVFO/LOXQD
	5LthJXUMPr4c8oN05Qdqg5uVeyp4nzw/CkNG4Y5G+4vBr6d27WclXRzWPeaDpog8xs/DupiSts5J7
	22w0mg9I3P0xuLActGz+0TcymHJFxay8iklU4LqxwvP8dv65LN1R1OqcR/HrMGMwC5tymqpG0qOHx
	RgwPKKkFOQq8carVRbUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbx41-000000096M8-2KB5;
	Sat, 03 Jan 2026 08:32:45 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbx3y-000000096LG-1fS3
	for linux-rockchip@lists.infradead.org;
	Sat, 03 Jan 2026 08:32:43 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-2a12ed4d205so110937565ad.0
        for <linux-rockchip@lists.infradead.org>; Sat, 03 Jan 2026 00:32:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767429161; x=1768033961; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/VnPzfp1fQvhkaRYisdGLmhxps8C201lJVc83Pn+yP8=;
        b=ixMlKIq4u5s5QXCt6whQiXaNFATzVDgMpLoNyC3iXwDkeZBSo/pAgJ+JpeX/Y2rNO2
         BVF/QDiZKAcxPDEzSeb1ZHVjNHC1bVGAbLEfGW4fP88JicQl4ewzrgeiDeYAyOCL8nzA
         D+rYNWupD+ucg/SxibvH+W9Wrgp6bdlOLM5HgtFVjjgctlimSHCaFM6G8lko13jlPDPy
         bBgjMH2xYKQbA+Vr2hkd+fRWUn4zdf5t23VjKUcAZyCoDSo83Ax+AnEcinEHlw0e7KDu
         ME/MDM2fAVZeYcx5PipsTTO1VTL1OObCWo6JTLi2eTOKDmOGEsJZFhvlY8dU0gQZNSWv
         yU5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767429161; x=1768033961;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/VnPzfp1fQvhkaRYisdGLmhxps8C201lJVc83Pn+yP8=;
        b=fgokHSndowCfHZlMFnuESBb4TodUcX1zecXnDzGfr5AL+q6W6KROe/iHCU5M6ZyOSV
         7AbKEo6DprDR1oh6NkkrkDWl8zWw/v7bSKJUsBpJkD/BMzdR34AHdEyFlg8Wtg8ixtQO
         2M0pVWCvu6CKxwmfCmLqPSpNtFr0dLoolzn8nhr0NSLo5J/eDQO03p7sf2YpiI0OE8gY
         sbKIWrlHJv4L9Nrw5rwjqrg7KT7k0ibdusokUqIhgxdBgCfXsmGaQApT+WKKfadIH4mx
         SHrW/v8MOc/0i8uJH7zV9N+E2lGlw0G++bjNFMmFr4uFl3+cadMbbBIKoMXpkyy5Zs0P
         WXiw==
X-Forwarded-Encrypted: i=1; AJvYcCW89B4m2xV6LEG0N5pX49ibu6yyj4qdckR9uOXfkeBlIkzMpZ+yi1gvp9iHhUREtC/m6p3gIBh1+KzdMh89Tg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw92ox1nC50CtlLitB/LA4yHZy3JBbpxLc67FRsAdEJ9+yD3/53
	yPt5ztyaoj0jjkGNgYEZIxsUmva6y0JdtDzffduEMQe1XIpNaUnp4CM0
X-Gm-Gg: AY/fxX5QelowdRa9Ncp9AEgc5sK9d1sINWUiqKiA9q7o/OHQxvYypyPNWArMK6egIUD
	88pjfHtW4crf15rLl9POUkTcPBtJ+fUkivIYNRyFhQCFvPyylFheDxsvjQGOtMU22Kuazj3pQTq
	ESGZ1iAThyG/PCtB0Y/SXGFhoSLW36xaoIvpsbJnxmw4gYc2hLCTpuYrKasFrfSaYnkVcJ5/0Bt
	JZpfGI8sfymRj6kzFqER9bnGT8g/D2T863TSfN34PV1Z5m76wd1Gk6XlBoIRnCg2bGcvvTi3hF5
	rrDCQk2+UUxOzQNnmU9XWjo8AzrQ7fLMJBnXhb30A0p18/caMdUGjinY2GhNLYHObHQdU9CgbI6
	FCu1l4HfnGONn42AAoXlQdF2jP0q7JT/itnRbGVpGo63T0sYsJAMXUuD8PLbGupuydFeR3no8Gl
	VWSNS3bw==
X-Google-Smtp-Source: AGHT+IFoulmgJlcINPNA8cZbhnmS4JTmUEE8b7brlKlIn5OURft66LBge+OGHsQgzKapPNMd4n6VcQ==
X-Received: by 2002:a17:902:c103:b0:2a0:97d2:a264 with SMTP id d9443c01a7336-2a2f2735214mr289212675ad.37.1767429161344;
        Sat, 03 Jan 2026 00:32:41 -0800 (PST)
Received: from rockpi-5b ([45.112.0.8])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3c666d5sm391700365ad.21.2026.01.03.00.32.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Jan 2026 00:32:40 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	Yongbo Zhang <giraffesnn123@gmail.com>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list),
	linux-usb@vger.kernel.org (open list:USB TYPEC CLASS)
Cc: Anand Moon <linux.amoon@gmail.com>
Subject: [PATCH v1 0/3] Typc fusb302 powerloss issue on Radxa Rock 5b
Date: Sat,  3 Jan 2026 14:01:16 +0530
Message-ID: <20260103083232.9510-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260103_003242_504026_159F0313 
X-CRM114-Status: GOOD (  12.44  )
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

Hi All

On the Radxa Rock 5B, the system occasionally experiences intermittent
hard resets during the boot process. Initially, I suspected a power supply
issue, but further investigation points to the Type-C fusb302 module as
the cause.

Specifically, probing or reloading the fusb302 module triggers a hard reset,
which can result in immediate power loss and a reboot.

[root@rockpi-5b ~]# rmmod fusb302
[root@rockpi-5b ~]# lsmod | grep  fusb302
[root@rockpi-5b ~]# modprobe fusb302
[root@rockpi-5b ~]# [ 3389.031608][ T7143] typec_fusb302 4-0022: Initiating hard-reset, which might result in machine power-loss.
[ 3390.030444][ T7143] typec_fusb302 4-0022: Initiating hard-reset, which might result in machine power-loss.

I attempted to trace the issue using ftrace but was unable to pinpoint the
root cause. The problem appears to originate either from the I2C controller
or the PMIC reset.

I have identified a potential workaround involving the I2C SCL debounce settings
for the RK3588 and submitted a patch here:

[1] https://lore.kernel.org/all/20260103052506.6743-1-linux.amoon@gmail.com/

Please note that the submitted changes address a minor aspect but do not fully
resolve the underlying issue.

Thanks
-Anand

Anand Moon (3):
  arm64: dts: rockchip: rk3588-rock-5b-5bp-5t: Correct Type-C pin bias
    settings
  arm64: dts: rockchip: rk3588-rock-5b-5bp-5t: Fix USB host phy-supply
    on Rock 5b-5bp-5t SbC
  usb: typec: fusb302: Switch to threaded interrupt handler

 arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi | 7 +++----
 drivers/usb/typec/tcpm/fusb302.c                        | 7 ++++---
 2 files changed, 7 insertions(+), 7 deletions(-)


base-commit: 805f9a061372164d43ddef771d7cd63e3ba6d845
-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
