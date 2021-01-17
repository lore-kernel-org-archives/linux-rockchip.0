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
	by smtp.lore.kernel.org (Postfix) with ESMTP id A111DC433DB
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Jan 2021 15:10:23 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 41A2A21D81
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Jan 2021 15:10:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 41A2A21D81
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fH3mxiHX5Q3R8/tQS5uLHO05hOVMZKq10XaokJZ84R8=; b=HByVCB48qbWhAXenixaAn7O10/
	JK5LBuaof5ADlC+sTnJ1IKDNC+N8o/XaDIdiLytVfB7LWkY+D2vB9Mopl7bnN85PNISyEzPnF5Uf4
	ebC4Eh3DpqI1yq6bTpDZg3A2JwxojsWLanmgXMjy+gYuJ+8Le0wF4OB9IfdEZjGnu3+ObPxFah71+
	LP8N78yPWpMLRsUDy2i/khC8i03I1b7+Cz0BI3S7CExsL1DT1NMMniLDZHeyCJogvx9ekgJZl6T7z
	mIBL0MVSWkKSZc06iz4CeIdehI+/p0Jtypa/gA/vaivQTftM0S4HXZHfEbjjjBPpy7s4pMoJ/CqMR
	jkYqI6cw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l19h1-0004va-4K; Sun, 17 Jan 2021 15:10:15 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l19gy-0004uS-13; Sun, 17 Jan 2021 15:10:12 +0000
Received: by mail-ej1-x636.google.com with SMTP id hs11so17799031ejc.1;
 Sun, 17 Jan 2021 07:10:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=DRG9e23i2SPuZfCW/3STyimbjAw4V/3t5/u6E4VRlYY=;
 b=tNT+TXNvIhPH284c/OIxPeXrPhLGyt2mMyUofjpzH909fsLJ2RsQGxilTPhkBPQvts
 /ArzFD6AHVMff4if19fNp7lHRIrjhkwM+KBGKNnJSwwWntNmGytMhfAdtMPO6B4GRcmL
 eseMz7PLW6Aq+qi5Zcm6zmBLqaGdCZZ3KKCT8LYyh90u8fFMrWD0uWEb6WWr5Fps/J3N
 YBqbqMdxACSdjQWrqlJdnQ/TqU+YAhxmwRnDcEzsVTLEQoD/A/pxAgYYhbCfmPLrITwI
 240QwLtZAjTVxRv5NodQkGmuDK4v0gG+uBb3MHzA9+PXqkNx/RuYT8WBJfOWVYKu9yDX
 CXFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=DRG9e23i2SPuZfCW/3STyimbjAw4V/3t5/u6E4VRlYY=;
 b=ZG+ssyQ/BO8nbNMfX8o1oou5LNGZ4aOMlyAcf+UTxDTRWWEgYHG+/86gnA5O2qyqWK
 bM+fpJUkMJbw6T7D6sBRiZLwLymkvCBkUXGY4xTm0g2otEd3c9/brPigjjO1SlNEev+G
 LGhLYgJEPqDmmhWLUjHou/wQn/PFNn/GOiyafS3FyzZabvg3pswe65STSD6F432Of7N4
 2bC3DiHcGVZBuhHef8VZQSqs1L7+kG809WH3IJDDAYhUBH+L4ManMq9kKIYYqmVBBKof
 OftJz6qKjxxH6z7HS889GU8cznibTT1k8fkqVG71L81p2Lv062ZS2J7WASKB4yx95G6B
 gstA==
X-Gm-Message-State: AOAM5319Urweb0eUbg4U48OpFYJCeV6D2vewGAbfylPZ9BOZGA8hvaaA
 nFf8/5GmyTaRhsm3keA0GAo=
X-Google-Smtp-Source: ABdhPJxldbIelUhlRirTNtJCRL44lRqzuE/9xcwVyyjMHc8YTdAEMsJvdubfCMgPB/f9bWPfuxpBTQ==
X-Received: by 2002:a17:906:80c9:: with SMTP id
 a9mr8443492ejx.78.1610896203193; 
 Sun, 17 Jan 2021 07:10:03 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id g3sm6295121eds.69.2021.01.17.07.10.02
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 17 Jan 2021 07:10:02 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 3/3] arm64: dts: rockchip: rename thermal subnodes for
 rk3399.dtsi
Date: Sun, 17 Jan 2021 16:09:53 +0100
Message-Id: <20210117150953.16475-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210117150953.16475-1-jbx6244@gmail.com>
References: <20210117150953.16475-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210117_101012_103240_2F5DD99A 
X-CRM114-Status: GOOD (  13.30  )
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
/arch/arm64/boot/dts/rockchip/rk3399-evb.dt.yaml:
thermal-zones: 'cpu', 'gpu' do not match any of the regexes:
'^[a-zA-Z][a-zA-Z0-9\\-]{1,12}-thermal$', 'pinctrl-[0-9]+'

Rename Rockchip rk3399 thermal subnodes so that it ends
with "-thermal"

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/
thermal/thermal-zones.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399.dtsi        | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
index c88295782..b20774081 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
@@ -126,7 +126,7 @@
 };
 
 &thermal_zones {
-	cpu_thermal: cpu {
+	cpu_thermal: cpu-thermal {
 		polling-delay-passive = <100>;
 		polling-delay = <1000>;
 		thermal-sensors = <&tsadc 0>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 4e94b7ebd..3de493ad6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -761,7 +761,7 @@
 	};
 
 	thermal_zones: thermal-zones {
-		cpu_thermal: cpu {
+		cpu_thermal: cpu-thermal {
 			polling-delay-passive = <100>;
 			polling-delay = <1000>;
 
@@ -805,7 +805,7 @@
 			};
 		};
 
-		gpu_thermal: gpu {
+		gpu_thermal: gpu-thermal {
 			polling-delay-passive = <100>;
 			polling-delay = <1000>;
 
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
