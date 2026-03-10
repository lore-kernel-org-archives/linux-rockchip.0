Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B39AFD2D97
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Mar 2026 13:51:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sKZ2aognzJQJ01IVLRSL7Gv3vDQU5wGz9MPqzEFPYjw=; b=XJ1QF3tPwbadcn
	EixVBBdPCXoB2wO2H01DQA3GtTWy/bFpFQV1ulD5Z0tywPgYD2dOU67nDLeFUGoTNP4Pq+HAq7PTf
	Xa0Q0eraRCDfpFJwmxbZ9MQsA8lfcrAdAiJ3MkVCKfe2jSP0vaZGdCnWlrUbx642MQB3GvyyIG93D
	UbsChRvU7kYiP1JuZjvabJBqPJMYlIBUXyadgfJJt8VcfOFzP2jf9ztzmiKF1aLPFklcHQJZuZnMa
	DW+hR4PXi+ABb5Ls0Rd4994fjl7MBdRPOflvxxhXdYdAYo26J1SHDAOoM1qbmAmS9ubY+pdSTwRKW
	s/UY2deG84DysXih3H3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzxUv-00000009dWi-0kgR;
	Tue, 10 Mar 2026 13:51:45 +0000
Received: from mail-oo1-xc2f.google.com ([2607:f8b0:4864:20::c2f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzxUt-00000009dWI-2bOJ
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Mar 2026 13:51:44 +0000
Received: by mail-oo1-xc2f.google.com with SMTP id 006d021491bc7-67ba8095a87so1900786eaf.0
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Mar 2026 06:51:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773150702; x=1773755502; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MyfM+MhrYn2/RsgfcmOrlLX4awk3CYqAr4hHOk/rflI=;
        b=IQXI9Kn+Phh3JxLSdS/wE5JxzZvZVS7J6BkOyWLJSam0vZR9bZja09XdOMnZVXhr/9
         Yv3ZeOnRHH2LBu/bdBzN4yU5QmitgKUIVREC9uhfbCmu4RCb8h5Qgruy7POfJDCVUELf
         Q9SoKqZesSuEqy1Qaw9ELg6OVBfEU5AWQU5SyPR+OF5Qi35TMI9bTuVoW/22Q6msE94+
         aWuYtLxloH0WWAWO15j2n3s+Gko727+p+mZNwzZyHChn2NFCKI3V5T3y8XQjVaJ1JlwY
         p/0DXBRn8eYEcKXn4TgZ2cHtgD4Q23AD1ipRpsBtwl+1vIkE2KfPd6/00rCrSF//49A+
         VV+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773150702; x=1773755502;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MyfM+MhrYn2/RsgfcmOrlLX4awk3CYqAr4hHOk/rflI=;
        b=G9BEqrfwAvPk3bVmhIARC/Lng4x4GT+EsPkww1wJUw4zTDLcbaq26ZGh398kMwDcIz
         bdXSR1wdeAki5Uk94HErE7wi/tnUn+oarjBfRF99zjzpov3pDZiJ2KmJ1xrSmRx5blZG
         FaNuY09RcsqxRo9fV9OU2jmOfT2WgtHtfxx8QeJpHxU1clgySxYYeLAWqMue7VJzVLd8
         297Pmg6O9XH8QNwOmg7rYbaRiIfs7uck8BTeYkvPx8GvPn0ZuoQZMuPsY0oKkKvAWNKm
         8QSa2ZuUPgdQpWniARJELahM289/zLvLY/9RUi3iC9cb4CmZZtX31XsoPh/KF8Q658EE
         4hKQ==
X-Gm-Message-State: AOJu0YzLswO+YwvDZKKM6EPk26GExAY48qGCPLYrJSVgnqHcuyF2yQry
	wGoKKEjIt+hRvG9Xd1aJj/8F3+vCO3/gmIhMNHii2JyuqGNEQkjB9gHH
X-Gm-Gg: ATEYQzxbOiBwHCaS2an3I0ZW5q5242nHA8eQFSx8UlBVsJqYz999l7C5ffA0a72D8eS
	5BVR4X/6SU7JBneqmFyOSwRD/CtuJ4fe53o5c4GcFwKrAj6SccZoAHfD8S07HYpm4TDT04EsFxp
	VRqVQaQ5ZMmRNWeMrVvBH/xk2/icfUtRg4rG9FNSpRUUMC/hqdmSHjDs5Iu76G+YyxFWXWVfJvv
	W33z19lWDVRUGmwuDH48Z0Y43y6ZRmCCX6raT3VtIC8VlzyCuCGae+sO1/Yr991yMIWDed37AT+
	+ZV1I8EDhLPO2HFGxD/xlX4NXAyTfsjz4B1hk1eNPzSe9SC6fff3WdM4sPGE8bb4Px8Ys5zgigj
	W6EIqtzxZ6ToxcNOS8bK0pC59wB/LMfIey7my1WiRc6svmJtsl/HBpgYfJ+wh5EsGXrn9hu8pEY
	SgQW30Cb5PJ0lYAAM/36sp
X-Received: by 2002:a05:6820:3096:b0:67b:bfc1:c0e4 with SMTP id 006d021491bc7-67bbfc1c256mr1202247eaf.71.1773150702429;
        Tue, 10 Mar 2026 06:51:42 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-67bb230e0f1sm4500971eaf.13.2026.03.10.06.51.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 06:51:42 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	sydarn <sydarn@proton.me>
Subject: [PATCH] arm64: dts: rockchip: Correct Joystick Axes on Gameforce Ace
Date: Tue, 10 Mar 2026 08:49:19 -0500
Message-ID: <20260310134919.550023-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_065143_681619_4BFE470A 
X-CRM114-Status: GOOD (  11.07  )
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

From: Chris Morgan <macromorgan@hotmail.com>

The Gameforce Ace's joystick axes were set incorrectly initially,
getting the X/Y and RX/RY axes backwards. Additionally, correct the
RY axis so that it is inverted.

All axes tested with evtest and outputting correct values.

Fixes: 4e946c447a04 ("arm64: dts: rockchip: Add GameForce Ace")
Reported-by: sydarn <sydarn@proton.me>
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts b/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
index e8ad525ba3f9..b69d7aa0b2f1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
@@ -60,8 +60,8 @@ axis@0 {
 			reg = <0>;
 			abs-flat = <40>;
 			abs-fuzz = <30>;
-			abs-range = <0 4095>;
-			linux,code = <ABS_RX>;
+			abs-range = <4095 0>;
+			linux,code = <ABS_RY>;
 		};
 
 		axis@1 {
@@ -69,7 +69,7 @@ axis@1 {
 			abs-flat = <40>;
 			abs-fuzz = <30>;
 			abs-range = <0 4095>;
-			linux,code = <ABS_RY>;
+			linux,code = <ABS_RX>;
 		};
 
 		axis@2 {
@@ -77,7 +77,7 @@ axis@2 {
 			abs-flat = <40>;
 			abs-fuzz = <30>;
 			abs-range = <0 4095>;
-			linux,code = <ABS_Y>;
+			linux,code = <ABS_X>;
 		};
 
 		axis@3 {
@@ -85,7 +85,7 @@ axis@3 {
 			abs-flat = <40>;
 			abs-fuzz = <30>;
 			abs-range = <0 4095>;
-			linux,code = <ABS_X>;
+			linux,code = <ABS_Y>;
 		};
 	};
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
