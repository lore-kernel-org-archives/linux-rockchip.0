Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04ABDC9EC8D
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jan 2026 14:13:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ViNiCY5YUj1JrrgB7KLaCppE2wfwBzcejGhW0bqJtuM=; b=ic2UFR26MO0cFw
	2Pe9CuTc9gkv+ICGubzO4wxe6+CMhQCnhcCCrCMxsf8ZPB5qTuMWhY2x1m5ugyB3lBav5T962C+JQ
	77QCTVqe3ExorvkxKZC45PP/Zp25tLGwEva13TCSb2q6WeWqmy06jXL/hDfDQL4P2snjlOWrerGiU
	mBdiQkjmYOEMzUZ6fRNZslFkOkLNzDlhjbSS5llogw9JGbPIjp+XS7JMXTyu6UBzoHzfGF0+Jfyl1
	z5ALnThO9WIdxKv+owEA85Jh8e7PW3+fqzIkRbt9UI1M2gqq6b4zAFhoO/hcv0GFntjuFOX4NS3H4
	l34BCgNFhXjIUwPaNeBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfIfh-00000005V2D-084V;
	Mon, 12 Jan 2026 14:13:29 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfIfe-00000005V17-0ryM
	for linux-rockchip@lists.infradead.org;
	Mon, 12 Jan 2026 14:13:27 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-2a0d06ffa2aso47039425ad.3
        for <linux-rockchip@lists.infradead.org>; Mon, 12 Jan 2026 06:13:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768227205; x=1768832005; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+jlV+CAPs310WldW/buR8RNLyPHwhl+Y2cQ6sQ4HpnA=;
        b=F13T5ZcvOt46p4X1HePBMvBW+a0kkt06A4w6M4222ydwppGeBJ1cvG1Y70uYcXGY7s
         2R2Mh8FJBGvHdjKDJnIjlVkPZKUw9eR58Z3rVM176mVrbitMqK+Y+Sue41CTZazax46t
         Yi0SUCzS1hwybItkLDYlAfsHgsUdm0rJUxiZORM71WzRfsRL0pvERhjlt6zaRk7Xb87A
         mhHC9Lk+0NFs/EwhtR6Xeu+BE6gUkRRuwKcel+LLjdyVX/2LZH0/RBRBpnhldNWOX9OE
         Dx8N+HYyfLK6lq3AZksVI0OYxRgRu1T1e3Fkzt8YqPlez+4cHzVzoBMpx+wnlgo7rCYo
         7HRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768227205; x=1768832005;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+jlV+CAPs310WldW/buR8RNLyPHwhl+Y2cQ6sQ4HpnA=;
        b=g2DmTYTzBk+deiYOhKpSuEKdnX9+/DZx6eSaib1VwUx7sCpMGdXYVKHmgmirc9KA5o
         NfIXYYTMKP39vMf65JwnNmaWDM8TwdtBfzNnoiGT7tIZeUy8rV8tgPlnPTpJgMFxikUW
         faM6nhDpWVbwPyCJt3MziW0qjv5Rc7XaYO1x05W3Gdcu0umMhTfg/VoyiI1gDvHrfAV2
         9C/HPVWchVj5U8Yfr8+ZJOYs0aaeZB7kpIv/rr3Y4lRBWCwQWl7X1CSbKnAyy8TDEC+W
         RUKw9PPyOaDARyKJwqiHtVQ3f6rRw8Ap/WNmc50HHLi1sYTmGHlZ2CEZXvttsv1pEE7q
         R1Zg==
X-Forwarded-Encrypted: i=1; AJvYcCVt1rSPuMGr+zTSsVL4eZ7YcsIFkpnXCW8bJCt5BJ7DR6EpW3OA4cOAGHc9sr44akr1Te6rEfwn+gpTib5WNw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyeaMXY8xvcbqUSn6f8gNnXLje07yJ1c6tGDMRJuw50u23xCefI
	/r4BJw5Ww4FDR6M2r/pWNxPQ+8KtuLcQkP3eu0PM9QDwsqqLzxI5QrnZ
X-Gm-Gg: AY/fxX5PoccqbmpwW1Qy6/i/g1ZGWSYhpBH9UxDZbC2Sjnc54KtJtZQgRvzJthEJhaK
	nHjBna6HZhdGvLlboYT77pFU3ueh8qrKPn7kdqchRd0+nH2S996vWVVCSwjfFYz0xXPMb05hXX1
	z2sSznX7CVuk5JXnDeOD95CEbjEaXmcWEvYrvLH+YAqn9IrvWZidtWfOXuepgbZd/1RT18WRHWa
	3zV95yO8qTW/QQW7jUPKn3nUDh5W/GxJavmOZXWIy0qvLT6pya95PZ4XquupbBvJv+jalFdsZvQ
	zSEGY4BSW4iOVSXUrKyPGgGuVlzSjTEK25RoiZPQrbhK1MCdgZYcVAJjXevKCfqjoSwibU1tItL
	Bmp3/gvD7B/ClMUhVo+MkLxpa8Iwqv7/f4Wve0lTW5KlJ+DFeYilDMKRqjppK4Gsx8VImhC3WAY
	PYy7dd2wZQ
X-Google-Smtp-Source: AGHT+IEce98yak9gOUEEAV8f478oht3gyp/nFi/fv0TYVmXF4aE5SsLzQdDp3zKy+V3GJSQ3S2BOSQ==
X-Received: by 2002:a17:902:f54f:b0:299:bda7:ae3c with SMTP id d9443c01a7336-2a3ee428923mr168226395ad.14.1768227204669;
        Mon, 12 Jan 2026 06:13:24 -0800 (PST)
Received: from arch.localdomain ([2a09:bac1:6500:8::19a:1f0])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3c3a512sm179660615ad.10.2026.01.12.06.13.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 06:13:24 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: heiko@sntech.de,
	pbrobinson@gmail.com,
	dsimic@manjaro.org,
	didi.debian@cknow.org,
	conor+dt@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jun Yan <jerrysteve1101@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: Remove hdmi_sound on rk3399-pinebook-pro
Date: Mon, 12 Jan 2026 22:13:00 +0800
Message-ID: <20260112141300.332996-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_061326_263423_6A9F90CA 
X-CRM114-Status: UNSURE (   9.93  )
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

According to the Pinebook Pro specification, it lacks HDMI port,
but hdmi_sound is wrongly enabled.

This fixes the following warning:

platform hdmi-sound: deferred probe pending: asoc-simple-card: parse error

Fixes: 5a65505a69884 ("arm64: dts: rockchip: Add initial support for Pinebook Pro")
Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index eaaca08a7601..a6ac89567baf 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -421,10 +421,6 @@ &gpu {
 	status = "okay";
 };
 
-&hdmi_sound {
-	status = "okay";
-};
-
 &i2c0 {
 	clock-frequency = <400000>;
 	i2c-scl-falling-time-ns = <4>;
-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
