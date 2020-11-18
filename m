Return-Path: <SRS0=K/1+=EY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1583C63697
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2020 13:59:46 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 274732078D
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2020 13:59:46 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="QqmYFNlN";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YxD4BW5c"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 274732078D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tFRZcmm09f+bySRkwDK+BXk/Apb2pZkGV03wtC7blCc=; b=QqmYFNlNHJRM+dDQxj/SE6wNEv
	WZBXmUqL8mERXMDjgWCUQVKi+J7s3hDS76B5PKiaCCgDF4OQXrZLZkXLuVZ8CdMgq/Zo+aAWIMT5i
	qp3cFjspYEbS8ZUqOudiDw6joiWDcs7ERy8Ltw8BuK83EYC6rOSsiPvA9fji4+12xlCliRj9Sy/3h
	eqLQWWD+8g1sjvwZEUy4UWQcf/Q28038JytoHOZ+zUTKdcTk6Ia+eT7cA2HZEbtt9G4sdUVYR3VM5
	df7TiEjI9ZG8mmCaWRukNT0JoGZkLShiWywPM8xpVhzwrRn0QEpQHtktjzdFHN0A2DA4behRBYE9Y
	Vr7iwbtw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kfNzo-0001sp-Ne; Wed, 18 Nov 2020 13:59:40 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kfNyr-0001SF-Un; Wed, 18 Nov 2020 13:58:42 +0000
Received: by mail-ej1-x642.google.com with SMTP id o9so2920443ejg.1;
 Wed, 18 Nov 2020 05:58:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=MNzWsDtU39BR4iFEfSJQ9mnoYu92ToJLMEGgLWUUrPw=;
 b=YxD4BW5cjmQdz4D/NWPOTYFDoj79erTso5jj6MSUrfUHf5OPHU//Y+UjP6rHQ8VYEi
 vBjQQBNvcP9cw+uaMWj5PTsXnqGwi+kVyf/BQa0kDaY381yNAEK3VpqAAZ093jnk/LMK
 uTtUZiMYKd8Yzkuafi0CZD6v8UN+ngYxLTCukSBE1wNJ/fl4NlZ4t+DWlUI+C/vjax69
 nouAaB5P0vcCRk3Ub6qTmGOojyV8lhP+JClrNBmQxficjyoktGm12RqQIMnkW051Za3x
 r2gagmHv/V2uVmIY3M0N9T9Dl9MIz3112FQOwMO59615Oe+Zq9Y611rb0gojGj2SwgSl
 KrLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=MNzWsDtU39BR4iFEfSJQ9mnoYu92ToJLMEGgLWUUrPw=;
 b=joeyMPGHS7uxkCp2qdY82AKoq4BcdqWENcsEYXLtSppfQBC8GUQQ1ovTj/oskYG4VP
 KN6fKJ9FQfScEMj+cWfgslcGO1ffLpXaERJ/e0FyBJ3JAqRi0AhgX6yymfCQc8s42lDp
 OVEXx82qNDDo2HGQCvV31lOmEiFUpD2knoB9E+XIoR2AN6MVYJwCrMEI3m8/qcZGZSbV
 aodDc+2s3fsYTHv3KCYbNu9mq50T2oDdEcPvZxesaAnFVZW6pEMoS9nFj8+smMRWAW4V
 gZ7Cdbl48lLYyXlHcYiofsqhZzPw8Emz6L9A+wxqgpSaRpv84aSITcIkaJi2UppOSe1L
 jvbA==
X-Gm-Message-State: AOAM533V/5Z1dP0ECEGaZGSLl3oO+tMGUR/f9TkGCQllbI9sEjJpmTKY
 ThxSvKLh48RpZq5ICJRKF+k=
X-Google-Smtp-Source: ABdhPJyl5SpYNZp2HUHCYYO8l+T0uxxnjSi9rjNGR0CciOkx5xPSCoFR3ksws8b0r8sM04dsBaG9wA==
X-Received: by 2002:a17:906:374a:: with SMTP id
 e10mr14400381ejc.246.1605707918063; 
 Wed, 18 Nov 2020 05:58:38 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id cx6sm13721384edb.61.2020.11.18.05.58.37
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 18 Nov 2020 05:58:37 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v5 7/7] ARM: dts: rockchip: enable hdmi_sound and i2s0 for
 rk3066a-mk808
Date: Wed, 18 Nov 2020 14:58:22 +0100
Message-Id: <20201118135822.9582-8-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20201118135822.9582-1-jbx6244@gmail.com>
References: <20201118135822.9582-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201118_085842_045839_A2440236 
X-CRM114-Status: GOOD (  12.35  )
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
Cc: alsa-devel@alsa-project.org, linux-rockchip@lists.infradead.org,
 airlied@linux.ie, linux-kernel@vger.kernel.org, mturquette@baylibre.com,
 hjc@rock-chips.com, dri-devel@lists.freedesktop.org, lgirdwood@gmail.com,
 sboyd@kernel.org, robh+dt@kernel.org, broonie@kernel.org, daniel@ffwll.ch,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
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
