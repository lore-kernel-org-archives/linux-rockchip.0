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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83551C63697
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2020 19:47:30 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 100902222E
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2020 19:47:30 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="zHtB6IIo";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gv9iMNUE"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 100902222E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=16gS6jjmYi2GTyyTwGt2V+tBmHCbfgjxVBgcxsqyQhw=; b=zHtB6IIoVWUyVIsU47gXjpjeDP
	dhFU7d0TV+guehgKpnqp9ZcHkjzWNCjN+TzgeQPlDEvrovfDIzMbl0Ahwg/q17l3qkscNZkJuEXNl
	DMCU/2MOBiUC+lTFwh0+BcMEM4C3jZSMWOj9ztCMvE46Ft92ifrBgyP2mMGDtZTSdBOv4vdd74gin
	h1AhZuVYd1DfvXeFTG03qyQFtrU5oVsB5X9wWqJmTaGcSG18F49lmO2jDsyfa+eZQWSJJ8T072FyX
	4ErsS3+FxINEEwfUdmpjfo0SC0XNXetqDxAtJHZu0xzFrWA2aBKILk8aLvULGrE9RoZcOp5ZNznxG
	VytUjCVQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kf6wk-0003o4-Qp; Tue, 17 Nov 2020 19:47:22 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kf6uq-0002vU-8L; Tue, 17 Nov 2020 19:45:30 +0000
Received: by mail-ed1-x543.google.com with SMTP id q3so23730576edr.12;
 Tue, 17 Nov 2020 11:45:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/M45YtMWBHvWX7HJgiaCX3duzycDxACgeh25TxK15Eg=;
 b=gv9iMNUExdomLmhZ6/3RtkBaW3AhpWBSUWSrMO1oLfdXYLZKQ0dl9R4nUwEcxPz1V0
 mijrwHA55UDncYNgagM9CjzpkasGyZQoc3OpbH5CXsWqB2RXLkTBzhyOkCyKX2oxJpeb
 Cwkb3M6jllsXM2EVpeBVtFwAtu16JC1xGqamfyB9l0yrXPxgPasdkyldRj/5V4DH6Awd
 iNOINqDFXEiDXichdp0Q/ygBI5MghrASAsL7lKCJ8uR6kmH3Q5B2JU5Dl2Czrb8IMnf+
 ndjcDuDSRacZCVEFgjLl1RQo58XMQZZ6lrS28sjX1rAs/o4SH4t8XgaWKHyUJXwmiPpv
 ov7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/M45YtMWBHvWX7HJgiaCX3duzycDxACgeh25TxK15Eg=;
 b=lETTkifsZaQDQkRaplw5hJgPLviZWrM/OzomhSgSbBzuvQCw1MErPYBoDImREWg6w2
 fEE5GBg1QoMjS8DBxm2HUdbbFUs5A0ly6P0oMrLEMv5HONnk9pFr6a1BB2xChbNvqICY
 IJbYaSrlJ4qer37YWvscmvJ0QXRGjivZEuj6dMP9/pcxGL3TWyFIsM7tJ4Rx+tjlO3P8
 vt5MypdstbWktcBNwEw2BD2L2LbpxfmSrDqEeMZY2NZ3WcGuRjaKIxxlzSl1Je1gR0tp
 XqIqBMsbfZUgv4DldZLQop5Q8hdSdrgBnDI4VReU434BR/lolZNLJSa48VeqFQgF7iUV
 tdVg==
X-Gm-Message-State: AOAM5308vXpeiBLH91X/cBMz5giMs9jB26auCZ+wwVeF0z7YoGZ5bVKM
 wIiBIhrObvTPZYctbnzZVr0=
X-Google-Smtp-Source: ABdhPJw0SEhxpFWNTsu1mkMrCWY8UFWsWPMj03LOTEeqmIC1KaMO+Jigt4JOZdpDCQfeyl7XDV8vHQ==
X-Received: by 2002:a05:6402:6d6:: with SMTP id
 n22mr23176808edy.82.1605642323246; 
 Tue, 17 Nov 2020 11:45:23 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id w2sm727972ejc.109.2020.11.17.11.45.22
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 17 Nov 2020 11:45:22 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v4 6/7] ARM: dts: rockchip: add hdmi-sound node to rk3066a.dtsi
Date: Tue, 17 Nov 2020 20:45:06 +0100
Message-Id: <20201117194507.14843-7-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20201117194507.14843-1-jbx6244@gmail.com>
References: <20201117194507.14843-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201117_144524_437906_2C3315E3 
X-CRM114-Status: GOOD (  13.07  )
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

Add hdmi-sound node to rk3066a.dtsi, so that it
can be reused by boards with HDMI support.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3066a.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm/boot/dts/rk3066a.dtsi b/arch/arm/boot/dts/rk3066a.dtsi
index 67fcb0dc9..f91ce3054 100644
--- a/arch/arm/boot/dts/rk3066a.dtsi
+++ b/arch/arm/boot/dts/rk3066a.dtsi
@@ -49,6 +49,22 @@
 		ports = <&vop0_out>, <&vop1_out>;
 	};
 
+	hdmi_sound: hdmi-sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "HDMI";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,mclk-fs = <256>;
+		status = "disabled";
+
+		simple-audio-card,codec {
+			sound-dai = <&hdmi>;
+		};
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s0>;
+		};
+	};
+
 	sram: sram@10080000 {
 		compatible = "mmio-sram";
 		reg = <0x10080000 0x10000>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
