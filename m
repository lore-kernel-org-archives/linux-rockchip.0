Return-Path: <SRS0=Nc53=EX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD901C63697
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2020 19:47:34 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5E1E42222E
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2020 19:47:34 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="DWfzfj1D";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="j/P6lB+w"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5E1E42222E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tFRZcmm09f+bySRkwDK+BXk/Apb2pZkGV03wtC7blCc=; b=DWfzfj1Da0lUJ5a7JyhOTaDMYF
	su65t34IUCbjk0kkEk+I1jKReHq2LQ5NLkMAxXZAwLHgB8UWCQlS9Qc1pxwiSS9PW7uwiQA1lhg0+
	JMIrrjqQFnZHoFqhXtYD4Cz2hn8lUCnYdkUFkb3dtjMF+XWj9Is+XBldVvfO1GXbH26sS9alSFRV+
	aKULod1l2tZpY1sJC2zhdhd/c7xLF0y7TmyCTlHZ95CebUn48qdxYIKGNQy70pMZBZg9rrl8+THYj
	qZloCfT8Tdp6NCDJqISbZuSAKSa4fPKgd0W8/GzRWO20vZQClrNrLuZ8EEbYooQAxyBfd0/fTnk+Z
	Ky4AsKjA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kf6wo-0003r7-Jc; Tue, 17 Nov 2020 19:47:26 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kf6ur-0002wB-6k; Tue, 17 Nov 2020 19:45:31 +0000
Received: by mail-ed1-x544.google.com with SMTP id y4so17924813edy.5;
 Tue, 17 Nov 2020 11:45:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=MNzWsDtU39BR4iFEfSJQ9mnoYu92ToJLMEGgLWUUrPw=;
 b=j/P6lB+wO6vdZOi5Agv1mqQVbIrni+q+ALO6i+QbbntEAjO3ALjbyoaIccUUaOa0Yj
 o6cvV+wMx3wOdDlbzNzxjXywYGNQbe72oR4JacgcqedptYB1kV4gPGE+9dGv9jes269G
 Bq0r064CiJxLQraZzATdDk96xLcU/rIXbMJPuKTx1omwbiBt8qZeYKJpGfqDIPuYdMfY
 kyat5CUjgA9yeRMemvobcamXiv2alDl+Dd1uzPC8Lmqx7g7WXqB3glUF4qtkFkoaYh1h
 ZI4XdciXwfyp2DhlBEthUhQgPupbBA3tggimAtRPScUSsyZY2QGd69uiH5vjBKPHREA3
 /ZCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=MNzWsDtU39BR4iFEfSJQ9mnoYu92ToJLMEGgLWUUrPw=;
 b=tsebMIHN8bDBL9PeTxB7LbndDDTT5XFJp87YUOvRmnoFnHcwIUf6Hiv8zGP9vtzpMC
 NvnA7dsnh4MP0w4UFi0ObTolFXLxJHjjwOxfYCI8MFI3PpkBmLwhc0y0B5I3pBkEKmS4
 xw4mwfgfenc3I2cKkHjTyhKn8GhLVBZrTOeu6POjTeZr0qTIAUF1RnU1GoX/J+a96zQz
 ydHc7Kd8g/yujvVxb88aahEczT9Is20wpfAqqK3efG4NzhDfk7F2YL2+wwjcCsGNsLUp
 wOLQrK0pN8Hd8u3iApo/QyxflLcpLiP2+RmvKuntlXw4sJwR/CIbx7j7e18+kgRDlVI0
 BZ8Q==
X-Gm-Message-State: AOAM5301udD55jECoUZBCGsUs5cgZ1TkU97CHTSLXOuTiL9yCADKAWXo
 TszLKP8pqg8SGBtnI3VhXqM=
X-Google-Smtp-Source: ABdhPJyrzzhxGF5lvPmDjYfPklRS9F51sz7rQAaESr2rA6OkcPjado8yI8xHELXCq5r82ignHt0H3A==
X-Received: by 2002:a50:a105:: with SMTP id 5mr21926061edj.165.1605642324325; 
 Tue, 17 Nov 2020 11:45:24 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id w2sm727972ejc.109.2020.11.17.11.45.23
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 17 Nov 2020 11:45:23 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v4 7/7] ARM: dts: rockchip: enable hdmi_sound and i2s0 for
 rk3066a-mk808
Date: Tue, 17 Nov 2020 20:45:07 +0100
Message-Id: <20201117194507.14843-8-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20201117194507.14843-1-jbx6244@gmail.com>
References: <20201117194507.14843-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201117_144525_381590_D7AAC518 
X-CRM114-Status: GOOD (  12.72  )
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
