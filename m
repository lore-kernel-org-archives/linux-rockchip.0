Return-Path: <SRS0=Jg7J=FK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF2C4C433FE
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Dec 2020 13:34:33 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8B2142310E
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Dec 2020 13:34:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8B2142310E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tFRZcmm09f+bySRkwDK+BXk/Apb2pZkGV03wtC7blCc=; b=1tCv+96OlitbgJqMNUe5im6uN/
	EOXT0OtcgYy21SLk8xqjzlZ9R1IL1XHk7sqgTEpUw31JpXhIrSSSg8Jawud3F8gKJ9cNBs9pDLVFE
	FPk7p/mjqLa10SCsW3G4P+0D1pTkbIDN8hbKu/WNOsQ/fnZSviZ0Hk8v7ELIiouJRLKREOukfTOAB
	zE5iyAt0V2kugm24gxuV2J6IctmWROVJOf0LkAAnX1mBeAWsKqwMjaVftk3sunfHv5HAYvt6/tvpE
	gf0B/UKjExg3BTBqXCJ/VIaageRUOBHurKtP1+lrwky5wY3YjD+PebCW8jZmhGC/J6Jk7wXSTwL2Z
	HDScPeTg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kluBJ-0003x0-PF; Sun, 06 Dec 2020 13:34:29 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kluB2-0003sB-DK; Sun, 06 Dec 2020 13:34:13 +0000
Received: by mail-ej1-x643.google.com with SMTP id d17so15563427ejy.9;
 Sun, 06 Dec 2020 05:34:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=MNzWsDtU39BR4iFEfSJQ9mnoYu92ToJLMEGgLWUUrPw=;
 b=JOVXuy3e6JymxKOPEoHBdkzfQUhgnoR1msgkoaiMxH70fRYib/t+qYr+VQpo7JKMln
 F91whwe0wS6E4TTblt2ayRevdquO+k5v8NBiIGfJfJ6kCo75D+I0zR/Vp3M9iOTClr+y
 RCD4WdS3002o8Co4VHrBS/SLNuFuYVhfulYpaFxC/YwFdKNT4An0K8Wd/1+AdipNSVDq
 DmHl6hIzKsAopuPY3pE8J0vQW+3Q5+kXiYphccbg7W1ZVI6bX+A6IWPSUqr82lBEhjME
 zxPxH0zFGmboVpKVBFPb3LvGF83sSP9eqfPZsKkrNaa7ufXKT5erD+NMFSrNFe0jGx/r
 fRdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=MNzWsDtU39BR4iFEfSJQ9mnoYu92ToJLMEGgLWUUrPw=;
 b=gvjJcPfSkMUwwLS7qVooWk//pw8CIxiWRPvbq1tHTtyEuqfwv88j7DzNEyeQupNt5Z
 ov1LhMUsJrSOUYmckIfNu9Og3o1J1YVPJAAArlEt53Jt+Xt+7hHzjFDCWLHmqo9EzcvC
 0+EKh9jTUQpQ46HSdKVzbMf5O+Zzu0UD7cKLrCn5ATFJCWppB/RwW+iaeAMcLsdsrmHH
 NA68JDYH1fi2C4DlFmf02t5mRRU40HtL4LiTTM1EjbYXT7fodUA83ss/Q5VtOs2TRbu1
 FHX7poOChaCgtdl2AUIjzzc9xIfMWwLimZ86HnaVRLLaIvja290P2bU+GqmOX43nGNBY
 DjIA==
X-Gm-Message-State: AOAM531bLjEzWeYD4iUiFQo3jZTzK+eL+DtNWy2SA0GLrvstewRJBba+
 POT5H2LRrZyGGM4KSX4lfzs=
X-Google-Smtp-Source: ABdhPJztME1AEa+6AzKHTpyb9Y+omIXYUc5Z2Uz2KCJGA5tPM3cmuLgOt76RoEEmj6mHLL05lTnjBQ==
X-Received: by 2002:a17:906:f05:: with SMTP id z5mr15442015eji.8.1607261651143; 
 Sun, 06 Dec 2020 05:34:11 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id qh23sm7770129ejb.71.2020.12.06.05.34.10
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 06 Dec 2020 05:34:10 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v6 5/5] ARM: dts: rockchip: enable hdmi_sound and i2s0 for
 rk3066a-mk808
Date: Sun,  6 Dec 2020 14:33:55 +0100
Message-Id: <20201206133355.16007-6-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20201206133355.16007-1-jbx6244@gmail.com>
References: <20201206133355.16007-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201206_083412_558514_B2220C09 
X-CRM114-Status: GOOD (  11.96  )
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org, airlied@linux.ie,
 linux-kernel@vger.kernel.org, broonie@kernel.org, hjc@rock-chips.com,
 dri-devel@lists.freedesktop.org, lgirdwood@gmail.com,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Make some noise with mk808. Enable the hdmi_sound node and
add i2s0 as sound source for hdmi.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3066a-mk808.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/rk3066a-mk808.dts b/arch/arm/boot/dts/rk3066a-mk808.dts
index eed9e60cf..5fe74c097 100644
--- a/arch/arm/boot/dts/rk3066a-mk808.dts
+++ b/arch/arm/boot/dts/rk3066a-mk808.dts
@@ -116,6 +116,14 @@
 	};
 };
 
+&hdmi_sound {
+	status = "okay";
+};
+
+&i2s0 {
+	status = "okay";
+};
+
 &mmc0 {
 	bus-width = <4>;
 	cap-mmc-highspeed;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
