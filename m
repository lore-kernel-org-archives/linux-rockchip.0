Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92A5FCD11DD
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Mar 2024 18:06:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jXwliIffVP1t+hXvfrfsfrbxExlYY5m2nPANqEFQwQI=; b=mhdRxzw7hy5atV
	GIhC9SHmvTbFZ1PlUyUSNd/7x6ndltg9KwB9EimShx4bnPA14um8jwU+ulCV28xjTs2MCsRaXENp6
	RY9sbmtEBcM090cW9Oax9Uuf0G3atjR+lcXH3JnC8XuDAAKzgN4xyUZ93yZfgFU4NIJaoGdweHbA5
	zEZsdMRjhIwpwS0QHcFDmnlqV8pgnmp+krJnyV5iN4Y1Z7ZChI+m/S3act9UNEfGGdycIu/TwrYGG
	S0dgfEeEQ37979Qu2Kd7/8J3gr3SBljJ8F8nUkIksznOrhq3c8/mTpWRRS/erURXvFDG+p0tJ/xmp
	YQkxqjQO7fkPt6Pt5HSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpu8b-0000000F5OA-04yQ;
	Thu, 28 Mar 2024 18:06:05 +0000
Received: from mail-ot1-x32b.google.com ([2607:f8b0:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpu8Y-0000000F5My-0mGF
	for linux-rockchip@lists.infradead.org;
	Thu, 28 Mar 2024 18:06:03 +0000
Received: by mail-ot1-x32b.google.com with SMTP id 46e09a7af769-6e6db4dfd7aso814499a34.2
        for <linux-rockchip@lists.infradead.org>; Thu, 28 Mar 2024 11:06:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711649159; x=1712253959; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ek5wO3LM3gGmqgT3OwHpdUS57Kk7r4zUT9EM6m/kBdI=;
        b=M7SuHIyHwIXXST2RMAj3b0QiIpxpKPbsOpKGZPhsDSWGS0eW0fnoR1wcX3Ngh7RVLc
         w6qK8F7vH4O08arwoCZhxqDKydNWJIH7Hjp5FslAb4JBdoaYhheVCEXA3nolwU6PnrBm
         KLgZP6ycFVXkuSPBMz6BHomsOKyfRqPRBXQTzUxXG/EP0ufUm0HOm1CeYRSmUn6qMD87
         Ji0DTz0ob9QJ7lkKuJFVuYDjUpS19g9PolfhD/j31nQyVuYZGgDS3pvswVy/1lyXPVSz
         KjyV2SMzwoGtNRU3TDuLgCzOPNVSyFhImPd81dfzXo0iBR4k4IxVNi8hi2YPhmCDOMNo
         Pnyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711649159; x=1712253959;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ek5wO3LM3gGmqgT3OwHpdUS57Kk7r4zUT9EM6m/kBdI=;
        b=Ow56diJrCKvnVEIlMBe/uPtsz3eCiXC9lxe7Ttw72J77b4+7GBlCAK5unuXsb7KJsn
         rEz5PDLMqAEnzpzU/Ku4yM1uBkB4lIKTrP4i0kSNo8+NuE08PbYRgrbbu8RAMeUKqLFo
         piTzO/AqveFSDxG3Cj7IQTbczZuv41Y862WOPVYu7RBsFPl2CzqPB13pIebvIYqhuoZs
         DDLohUAezHZ5WnBT3N3mmO/ZUy21OKkR5W6J1wVbAgb52+43563BjxObTfj3kgkeN3do
         i84VnYWLAmG1r7SE4iC70Ks8Ur2KJY71ONWv7YLCDcFLIs8rnW8w661+XDQRptbs75Ec
         FgNA==
X-Gm-Message-State: AOJu0YznQcdxCS3Fa57uQqHj8pEn4mrUFRMIYcQJuOCfKc6bK2XjdHFW
	xc5VyOrZgAShEIvBPuCmnRRXirTOHqEHfNVyVTShifpblsVcDOZjCpF1Xo9r
X-Google-Smtp-Source: AGHT+IEfHD7GQesgpsHHesu6fwh/997Z91EzpeVi+1/3m3wiNcMuX28CSm3m4gywzDkMi6pLp3cQcw==
X-Received: by 2002:a05:6830:1202:b0:6e6:ff6d:986d with SMTP id r2-20020a056830120200b006e6ff6d986dmr2878825otp.19.1711649159512;
        Thu, 28 Mar 2024 11:05:59 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id l7-20020a9d7347000000b006e68a501dfasm323840otk.75.2024.03.28.11.05.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Mar 2024 11:05:59 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	jagan@edgeble.ai,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh@kernel.org,
	sebastian.reichel@collabora.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH] arm64: dts: rockchip: Enable device-tree overlay support for select devices
Date: Thu, 28 Mar 2024 13:05:51 -0500
Message-Id: <20240328180551.361381-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240328_110602_388570_82CE02A7 
X-CRM114-Status: UNSURE (   9.60  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add the '-@' DTC option for the Rock 5B and Indiedroid Nova devices.
These two devices are relatively new both with external GPIO headers
for expansion. This does impact the filesize of the DTB substantially.

rk3588-rock-5b.dtb		75352 -> 150094 bytes
rk3588s-indiedroid-nova.dtb	69507 -> 136739 bytes

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index f906a868b71a..26f306db0aea 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -1,4 +1,9 @@
 # SPDX-License-Identifier: GPL-2.0
+
+# Enable support for external device-tree overlays
+DTC_FLAGS_rk3588-rock-5b			:= -@
+DTC_FLAGS_rk3588s-indiedroid-nova		:= -@
+
 dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-engicam-px30-core-ctouch2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-engicam-px30-core-ctouch2-of10.dtb
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
