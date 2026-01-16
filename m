Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2AFC3C982CA
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jan 2026 15:13:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=skZNFzC68PD0QflGVDTtH9TaBqB/ug0LdzJPifc89hU=; b=V4Q3MF5r06HuqH
	iMfn9r+FXG3XVhhmZaemp6w3EtNO1H415brdoIDx6TMso/5lF//Lv51FNsVwRKG3MIkdewsxEIGhe
	2SGaBfktNUjBXBn09gYo9H0OEX7Hv3CBiQqUdbzWp+fRZdjKTmTgTD+Ap5VO6nCqOc0A+t8p3dZ56
	EX64AAN6PTYf5JD7IHDVU19fmo3BH2M3akDBgPj1Ta2J7tXouX+42ZyN6IEsZB2orAclSZLlZKDa8
	M0SiC5qsf80FvJpDGdytTjbVG+fitNtedLVX5fFKjsse+k+liTWJoQ64EgDTakUPPoAm+5rsVAOca
	Ao2VNfrxn1uckGYIASgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vglVX-0000000EKVH-2Sf6;
	Fri, 16 Jan 2026 15:13:03 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vglVU-0000000EKTq-3gg4
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Jan 2026 15:13:02 +0000
Received: by mail-pf1-x432.google.com with SMTP id d2e1a72fcca58-7b22ffa2a88so939780b3a.1
        for <linux-rockchip@lists.infradead.org>; Fri, 16 Jan 2026 07:13:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768576379; x=1769181179; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lRiEbJrzkH/I22ILSwaqJapqGZa7fvSUC1WPmu8Y6zQ=;
        b=Aeg0wbHHEjtLpIPStfBUJiViW2+XehiRck2hOge+RV9yz2S68SAvYp76V1clh5IjiQ
         K3LVTvCdp/g07e9xDYpjz2XcoKisr8VUrTdwUfGSPu2M3dFeHUpQgGOwog4ytwkfk/Nk
         mZA9hAXilfan0sOKJ+ERlf8el74pliIkuNlZTb9XrTKqcaI5BIAymCXvlCn3k7zuwsZr
         Wxgb3EgvHqWA4BEU2DPMvnRhgj/u6bAgH6sbF4RSv1F6IJl+SBJKhAT0iHiqsFUfwDem
         7VYiGQAOQGbEUfbow9Y4go51jkXPQ2b7AM8XYnjpb/c3i+SjuCuoaQkxQZESDzn5q4g3
         r8uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768576379; x=1769181179;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lRiEbJrzkH/I22ILSwaqJapqGZa7fvSUC1WPmu8Y6zQ=;
        b=KE1Q4TpJi/y1sl5XC9c77W//vcXNQSJ0pr5UQRMl20/oZpKyysAhKA/s3zympDzE53
         2xDHu4fssSWaRjdd2zjIGwe+ZMLCzbk0Jm0xS6VodF5+rKS+EN3xgxOAQQ6FBo9JENHz
         R/JZM1VbbMl8szeuvTy+Bb8LvXm3ihbVzPoRpj6s2La+906BYSbyLTZrD2/KbG7XHFGl
         Vv/sJ8eJYbE/FrjdeMgXOkLwQjD+H2WqVxKZ9izc5dG1T6Tp5FFzJjORB6+Tew3kl2bb
         vRD6KJCfYNf5DJ1gJYB6P7MhnySuR/3K3SfTBtjPmeRr1cxjj05iPT+6B2uykiSNGvt6
         Fvvw==
X-Forwarded-Encrypted: i=1; AJvYcCXZe1VD+HDB6zDiJFxoeBtoI7pj/QOBYdTKKNpxiSai9By4dhRStlyUe6oTjd01EukqNvmltQ2I2PmC2Aib2A==@lists.infradead.org
X-Gm-Message-State: AOJu0YzyFOF4X5NWM6NeebqkUPZZOFFYdeQFbNB8/AAd1QiJJk6CzXR8
	psbNsXemJqjkHnZ7S3qYucJGHd3c5PjA8mFxdrxn4xACBxWgr1aUJHNBNT/TSVPEc58=
X-Gm-Gg: AY/fxX634j+hmjfDi7beMPFENAdisG12W8SGw77FToWGoYnHzpyHqXcripL6F+WlAzy
	sjLaT6S+mBYvcAUIaZpU0rxg6QbF+7XSa9kRKYQOJtnKHwObv0iJrLuLkB3cT0M01x7ff3xDNec
	kgbtNuwm9rNDxieQzroRzHOPK9DkPvCpVCNnopnWZrVIbelMahxiSVUmtxF+ril/5JP6RwIPkSY
	pUUQMQMOa0U/+FPimIMmZ5U8NPWeEuM1MRuHppJT0mzjpZ4dz1LQufW/YwKd67bZVZC9UVfyq14
	8hgaXPO+hgjiAdCHxRUuLThU8EcXuQhMJhjS0LA/1UjJ9b3aizRUZAHXi3dsw+d6eUp5Q2iR0yE
	bvIjfUWCDi48qUXvMW9qgxyz/ElKSFkZ35/r8NUFnEgLw8IbxG3nnLEt1FRN/a4N8h10RrRDIW7
	fuDLehsaIbiwGeGT3HokU=
X-Received: by 2002:a05:6a00:3c8b:b0:81f:82b2:ecf8 with SMTP id d2e1a72fcca58-81fa1890ca1mr2604735b3a.63.1768576379447;
        Fri, 16 Jan 2026 07:12:59 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a65:fc91::1001])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81fa12b51fcsm2345072b3a.68.2026.01.16.07.12.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 07:12:59 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	pbrobinson@gmail.com,
	dsimic@manjaro.org,
	didi.debian@cknow.org,
	conor+dt@kernel.org,
	Jun Yan <jerrysteve1101@gmail.com>,
	stable@vger.kernel.org
Subject: [PATCH v2] arm64: dts: rockchip: Do not enable hdmi_sound node on Pinebook Pro
Date: Fri, 16 Jan 2026 23:12:53 +0800
Message-ID: <20260116151253.9223-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_071300_909856_E4375C2A 
X-CRM114-Status: GOOD (  10.62  )
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

Remove the redundant enabling of the hdmi_sound node in the Pinebook Pro
board dts file, because the HDMI output is unused on this device. [1][2]

This change also eliminates the following kernel log warning, which is
caused by the unenabled dependent node of hdmi_sound that ultimately
results in the node's probe failure:

  platform hdmi-sound: deferred probe pending: asoc-simple-card: parse error

[1] https://files.pine64.org/doc/PinebookPro/pinebookpro_v2.1_mainboard_schematic.pdf
[2] https://files.pine64.org/doc/PinebookPro/pinebookpro_schematic_v21a_20220419.pdf

Cc: stable@vger.kernel.org
Fixes: 5a65505a69884 ("arm64: dts: rockchip: Add initial support for Pinebook Pro")
Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>

---

Changes in v2:
- Rewrite the description of change
- Link to v1: https://lore.kernel.org/linux-rockchip/20260112141300.332996-1-jerrysteve1101@gmail.com/
---
 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index 810ab6ff4e67..753d51344954 100644
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
