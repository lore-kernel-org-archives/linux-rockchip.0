Return-Path: <SRS0=q/kP=GU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 10D53C433E6
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Jan 2021 15:10:24 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 84B2622262
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Jan 2021 15:10:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 84B2622262
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NApWSh7XETNGFTFa6/VP3e2Dr3iQaGbxtnNxCDJGHzc=; b=GQ7rdxNpdzmDCquoJVn37ivfRp
	WQPcPPFOQC5rkdWMc8wDV0CxpftPUbAMqbDnho1Ci7OovwWHPe0DfIMV+l8X1I/7TF3ZBTiWL78XW
	06+1RjmqVdXo5r+5ssRisC535GHT7uRpTTYE1mai/YvlqOYttL5rCfcGtfr7l7sV5KkCGvBQmJCcJ
	nTChjHqNiJi0yJ0RVpsXUkT4Ok0KrIUc47AKGHA1KvEswA9lug1KDNU8EU6ChtGxE6Q9+rUBzKzZ2
	Yx4nLA9/7p413X3fZxkpLQyff61kW2pAC+mFvjiJnF35XjUW0ii2k6G6YPdxJHnQqgJgzrr9kxwan
	xMShtxng==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l19h4-0004wB-88; Sun, 17 Jan 2021 15:10:18 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l19gz-0004uR-AQ; Sun, 17 Jan 2021 15:10:14 +0000
Received: by mail-ej1-x634.google.com with SMTP id gx5so894805ejb.7;
 Sun, 17 Jan 2021 07:10:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=KBhfyHx7lA/AvYD4INjaneAr9EpjD/9Ht6JhcAPrRyk=;
 b=KxX36Q38Gtu12ZEaMG8pcwxFXvjTgiXjLKKgwa8hRkvNDUq69PKG1+R+wMBmO7cKVa
 eqkOZ3IEYIwSxuxSlq9afn1cKGqhuGyZX82BVSUvQAO3Rz17+zBV2nZVrCuq7EPFAktu
 mAr0XDmaqUW3DxZGZ0uojWlDL4Hik1vV8vKHBrkBhY6/XVdNl7Dgku4BHE/9zR0BUffZ
 NZamLGcT2mHtlxDx8Zo4I2fgIG7QOs0N6j0iRq/5ZjCoDdqh6z9GF8hY24k+YsZL2Xyc
 KFFXD0hta9Z6uc2gxO5B2wWQp7qNJYjTqHNQ0Dr9JK3PE7JrAwtQ3JgSlRbaLe78V3eO
 OXSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=KBhfyHx7lA/AvYD4INjaneAr9EpjD/9Ht6JhcAPrRyk=;
 b=Uo3LBOfykWPrIYCc+CAdv+v6qfH+mRIIUay6H8pww/UjgLGfp0o8OLEfNtlk5g6zUe
 YD652q1HxK0EPdLUvNCA/NdgG8eW1RFolnTBHt9TySlKOdbrs55loKilSC70NHTCogZ1
 lVWsUTWMaR3iqe4rGNzTxv5f/CLyiF+0fy0WC7sIHkC+9xuL7lsRzMdv02i6nme1yYFD
 +5AKcmePYqUnZy1Vp/Emm2lwEnIl20aOqShOkdbwjd/vQXF2zeAbYCXaHrLTYx8VSQ33
 csZ4o2GPDap+UVnWJEcsE9pKz4fgDdHO48bhTn1fRiXZKJfwFl2V5fCe2fgPglriczjo
 Mbhg==
X-Gm-Message-State: AOAM530SzBQSL/US+llqBXllLd8Itchzk77JkB0oyJK1NFJWAkXeNZaZ
 gopxgXKp3f0hYqvFfNjej6Pz+oSYK4w=
X-Google-Smtp-Source: ABdhPJxPcUd5MNIIkD9OqaL4RoyXU009UiwezOm5YSI3C5+kDQS07JEjXDRYpJhYyvp+5Q4br98+AA==
X-Received: by 2002:a17:906:9342:: with SMTP id
 p2mr15049999ejw.300.1610896202360; 
 Sun, 17 Jan 2021 07:10:02 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id g3sm6295121eds.69.2021.01.17.07.10.01
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 17 Jan 2021 07:10:01 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 2/3] arm64: dts: rockchip: rename thermal subnodes for
 rk3368.dtsi
Date: Sun, 17 Jan 2021 16:09:52 +0100
Message-Id: <20210117150953.16475-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210117150953.16475-1-jbx6244@gmail.com>
References: <20210117150953.16475-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210117_101013_411364_41A4EA48 
X-CRM114-Status: GOOD (  14.41  )
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

A test with the command below gives for example this error:
/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dt.yaml:
thermal-zones: 'cpu', 'gpu' do not match any of the regexes:
'^[a-zA-Z][a-zA-Z0-9\\-]{1,12}-thermal$', 'pinctrl-[0-9]+'

Make the rk3368 thermal subnode names in line with the rest of
the Rockchip dts files. Add a label and rename them so that it ends
with "-thermal"

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/
thermal/thermal-zones.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3368.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
index dad1a00e6..cd8274a35 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
@@ -400,7 +400,7 @@
 	};
 
 	thermal-zones {
-		cpu {
+		cpu_thermal: cpu-thermal {
 			polling-delay-passive = <100>; /* milliseconds */
 			polling-delay = <5000>; /* milliseconds */
 
@@ -444,7 +444,7 @@
 			};
 		};
 
-		gpu {
+		gpu_thermal: gpu-thermal {
 			polling-delay-passive = <100>; /* milliseconds */
 			polling-delay = <5000>; /* milliseconds */
 
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
