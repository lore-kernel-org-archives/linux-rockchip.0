Return-Path: <SRS0=qa0x=GV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 42428C433E0
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Jan 2021 15:53:25 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F236122C7E
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Jan 2021 15:53:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F236122C7E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cGoM6EkRavS5T0Hl+eNw7tDA1tpodfsC70DH94MSCik=; b=qy1Cb+QdreQca8NjIfJnAXdows
	9T+eMd/PIbJH1jmyVdoOcFV7dl7nVZXHkWSi6+QCo+H0TD96BsqyCSJoukZrt0w0hRiCamjhrcGU9
	g7wqWVGFgcxfcFD5bC6EMHTqK1icnnCaEWUYPFUnCAbY7Z5/BBjVeLAcZ/mWWL6fslH+qFW19xJ8z
	58VP7PEs8q/bsvpg2EmGPw05vh1IB/YxO4p+PVaKDHohnYLgP/C3sBrYJnGk2ljOIepUNZbqPsPJJ
	wnmHJH5auqceQCe4w7EMTra/SoREqzPegsfWQYtJWshbp/RSt2x714BURRt4v5W/f3Ab++NMQ4Y6q
	GMYNMYDA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l1WqE-0008P3-SH; Mon, 18 Jan 2021 15:53:19 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1Wpt-0008Ic-U2; Mon, 18 Jan 2021 15:52:59 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a10so7713945ejg.10;
 Mon, 18 Jan 2021 07:52:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=1X+r3rIHhYyL6aQz5bVp1gC9k/hbSfHY26WTukrVjhI=;
 b=AoOuDk/mePLd9aT+57VoNa2cx6wInQE6sPmyZWxAx3/YABARdyO8R1uMuv5dkVo6Y+
 AYNWfgC3W76LoMtCbG6LWoWX9pUXYvZ8Zl5wiXpJWnMua+VFbbiKKCEsDr8aD6wYoNHw
 NBLiMRCh01XbA/qFE9AtMz0FgURlVrNjg8cfkfRZYRPGBuVmBx1ZZ1er7Wa6Ox+4arux
 jDlAg0g7SDyt1D6raDXA3+bKwbDVSfdGhpI+NoYzQ4MI5CN+d9kuJVRxX+CNhn9pokig
 /hNaRX10ZAoKsuM6sZfaWExtISTPkS2cczFeLJxXsqsZOB9X+sPura6wWwfkZ4A7mP9H
 /CFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=1X+r3rIHhYyL6aQz5bVp1gC9k/hbSfHY26WTukrVjhI=;
 b=Y8cbYOaU34f+fIzAZVV9CTIR6u4OmkRRMT7C5p8KgJDGmtkcXhrJTudo9TWq8e2ZWm
 QY/pKIqVdwHw5VD0/+TOX/wz58kZ10uThxSwJY2Qr1n1lbd04/ihPJMr6aP89I13ZLAX
 nyY+h9rsrdEYSLWZ96YwO+fAHXAME9uh3fxtEupZBWr2szihpHfkS0Y3XVKW9N67KLyw
 5VI5jVLRQkLJ5c4Y1iFSMGaKV6ugjTNgS/Jzfy07aZjGQ6XKqQY0Y6NPzrBP/6Lqt5Ue
 Aplt3ANSZApsijYBo+owVfRtTa27t6miF2gl8rqlVT2fCk/pzCbcZEeBMZS4UPnBGvvi
 hmRw==
X-Gm-Message-State: AOAM533M0uOREVP6CCFrKqXSPWA2eexfuM3abO5GnfhEpEpdtwiB+/mP
 5WQt3V5yXRjWxfkWMJp23CPWe4fyqoU=
X-Google-Smtp-Source: ABdhPJwEe8+OJdHJZhzDww9IlyIFg3M01x6qLnE+hU9+1Dy3bIe7FkeQFyMzYgPif0U0xPwsHfucnQ==
X-Received: by 2002:a17:907:3e02:: with SMTP id
 hp2mr197147ejc.411.1610985176362; 
 Mon, 18 Jan 2021 07:52:56 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id f13sm9561694ejf.42.2021.01.18.07.52.54
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 18 Jan 2021 07:52:54 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 4/5] arm64: dts: rockchip: assign a fixed index to mmc devices
 on rk3308 boards
Date: Mon, 18 Jan 2021 16:52:41 +0100
Message-Id: <20210118155242.7172-4-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210118155242.7172-1-jbx6244@gmail.com>
References: <20210118155242.7172-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210118_105258_003659_00AFB949 
X-CRM114-Status: GOOD (  12.42  )
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
Cc: linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Recently introduced async probe on mmc devices can shuffle block IDs.
Pin them to fixed values to ease booting in environments where UUIDs are
not practical. Use newly introduced aliases for mmcblk devices from [1].
The sort order is based on reg address.

[1] https://patchwork.kernel.org/patch/11747669/

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index ad54acf5d..b360b059f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -24,6 +24,9 @@
 		i2c1 = &i2c1;
 		i2c2 = &i2c2;
 		i2c3 = &i2c3;
+		mmc0 = &sdmmc;
+		mmc1 = &emmc;
+		mmc2 = &sdio;
 		serial0 = &uart0;
 		serial1 = &uart1;
 		serial2 = &uart2;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
