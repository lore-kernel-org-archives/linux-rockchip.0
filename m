Return-Path: <SRS0=fNsx=LT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEF8FC2B9F4
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Jun 2021 10:49:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 89F816144C
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Jun 2021 10:49:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 89F816144C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D29l3vrB4SaI+eBfFSTQ//LFsvTTBd08hxeNil+C0Tg=; b=ovMvfNwEfcOBxm
	BuQNeQyLGSYaW+ZWKpXkbaRTW9ksU3j98FYmaxk81DhB1zmwm+b1ASOqoEwagl9JaIR/0x1NQgFrj
	Gc0yxXQfiOI3oVEILoEM5T8AQwJjBMSCGOFfFYzJVlDUq9a24UKGaZ0eJDqYXRLxdQupYQTI98u3w
	BLdkT1OpWaHKIaijGhWHdGFKPpEe36zp7cB3C4CmOfKQOH0ZdTaN52BLaugsPlVTWiXc8oi2hIqwj
	k0klI0tk5FcfcEK30IyjVcF3ZYgWYHiB5GY8ccGPj1+cXewWQj81b5Vr+YepTeovFZqnIMWLA0iYU
	D0lW2hFpOEuPmakDSfwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwjOe-0016ew-AH; Fri, 25 Jun 2021 10:49:16 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwitY-000tyR-20; Fri, 25 Jun 2021 10:17:09 +0000
Received: by mail-wr1-x42c.google.com with SMTP id j2so9959439wrs.12;
 Fri, 25 Jun 2021 03:17:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cIJcZ1Hi3DoEF/1CqsW4mJpJl8hECj9iLa8Ln8QVFSo=;
 b=U7cy1h0cVWptDWWUfpU4ico2RksrM6E1SfL/eAHUZUdgMGsizxx2HClHmoQafPXGG9
 3i+jVIgS/hqvcM4onNMG8u4MgqATSVltVqBsprLIgK6Bb9pZ7F3CEz3d4M8Bhkfb/ib4
 jfUhketbQby9lGJ/zCMVPpTERDPGqR9xDh2wa2s5pvXZ9fzXmVEK2bzct6MWXSD/9P9A
 4qhZx90viYFxl60oUkhuMQ0s8IYmsjc76FJHXWbrrgWIT3O1q3wRx00/4LVLStDgOr1h
 lDPRm8kFzoKLFqq1/1BLDWLNbsAI85izjGDmwUv4crTiELVC13QxKjMVJFccCpEGWv2a
 BE9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cIJcZ1Hi3DoEF/1CqsW4mJpJl8hECj9iLa8Ln8QVFSo=;
 b=N25prJ7DeRAvznyBwKPymkwJrncQtp9F97ES1pQNGnfy0vzzJVRGmNt/E7pMpruEwU
 9WwEnSIShtWRwwKqdSvqPn9R3sTMtzuWl1BT/cAI2duiLuW5nqUIB0WKG+xyaBWn2vtx
 CGk3BQ5wVwwKm/Y3m3WqHW+iB3d6q1BOdTOkiXhjGh5WG156LZ5BDXJ5VRHJiNttXxT9
 ddBL5sfcD44amvANJYsR5HcR9caK4XJxGfIQ6gxewsnOXaBNy9VdlG4ueXvwPg4CskF+
 fJqOXutIveffDzVf8vR4uH1xD2f96AeSbFRNZwIY38iWsHE73cKIjZZxIo3mVOGVSVTG
 IDYQ==
X-Gm-Message-State: AOAM5313lghIzhEYhnUR+idEUQ1xFpjUYuk20ATexitOlCC1B+SHjnYn
 +Rid5ZRib9LDghG5LoTwRN8=
X-Google-Smtp-Source: ABdhPJxeqsKJWHHGkmrWZgB5l5AlihSE0DYgHzBqRaUowI3qYFtG6+88oK9iZhepTpRmQt7/GoCtpA==
X-Received: by 2002:a5d:4703:: with SMTP id y3mr9720719wrq.321.1624616226487; 
 Fri, 25 Jun 2021 03:17:06 -0700 (PDT)
Received: from morpheus.roving-it.com.com
 (f.c.9.1.f.e.c.d.1.e.0.0.2.b.5.5.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa.
 [2001:8b0:fb11:2681:55b2:e1:dcef:19cf])
 by smtp.googlemail.com with ESMTPSA id 204sm5462736wma.30.2021.06.25.03.17.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Jun 2021 03:17:05 -0700 (PDT)
From: Peter Robinson <pbrobinson@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>, Tobias Schramm <t.schramm@manjaro.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Cc: Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: Don't enable i2c3 on Pinebook Pro
Date: Fri, 25 Jun 2021 11:17:03 +0100
Message-Id: <20210625101703.3290934-2-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210625101703.3290934-1-pbrobinson@gmail.com>
References: <20210625101703.3290934-1-pbrobinson@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210625_031708_207737_021DE8FD 
X-CRM114-Status: GOOD (  12.20  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The Pinebook Pro doesn't have anything connected to the i2c3 interface
so there's no need to enable it in the device tree.

Fixes: 5a65505a6988 ("arm64: dts: rockchip: Add initial support for Pinebook Pro")
Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index f584d08a63f0..e02f6b5cc49e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -685,12 +685,6 @@ es8316: es8316@11 {
 	};
 };
 
-&i2c3 {
-	i2c-scl-falling-time-ns = <15>;
-	i2c-scl-rising-time-ns = <450>;
-	status = "okay";
-};
-
 &i2c4 {
 	i2c-scl-falling-time-ns = <20>;
 	i2c-scl-rising-time-ns = <600>;
-- 
2.31.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
