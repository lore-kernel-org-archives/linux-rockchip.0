Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AEB8C7EE23
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 May 2023 21:38:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V8BjdlqiSv7pQDHDKuQ08q5AWBfnqOCb8tL8tOW3GuY=; b=13PURXkypS21F7
	QuP7gASvUfXrC72uvtm/oCkVNmPZcQ0KY/3DU3TBYH94QXLZxLkWc9VcI3XPNZB6dz3F/XlEYvFwo
	7SYAOxMA3/NRIJpbOEysVcWoE14d9bcvxCXPmYWr4UcUhnN5Q76Euev9l4l9d8P3yBcBVoHS9DXK9
	LxxBxZMfAP3CH99lxZVfbZC/iXyx4GjquYDdaKR6SdM+lkNZoPqxzhNNQpu6GUJvGj8tj0IEY3cCs
	mssJRLVuXYtVgtN0kOIxVY95djvnNJAwtyn5NvXcKAHXFWmhWDBnR5HLxnQCzE4eDMFGNl4cW5ik/
	L6TLLYPfiLIu/hGKcENQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1ZiI-00BVSE-2F;
	Tue, 23 May 2023 21:38:38 +0000
Received: from mail-oi1-x22c.google.com ([2607:f8b0:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1ZiF-00BVOv-1V
	for linux-rockchip@lists.infradead.org;
	Tue, 23 May 2023 21:38:37 +0000
Received: by mail-oi1-x22c.google.com with SMTP id 5614622812f47-39831cb47fbso202525b6e.1
        for <linux-rockchip@lists.infradead.org>; Tue, 23 May 2023 14:38:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684877913; x=1687469913;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WTtNHswnW0p7Ai5VHBQqwpfovct4y1t2cSckR4RYhYQ=;
        b=VP2eYu0mYZKLNe6VF95IV1KSztQTFzqKSR8AAUZeDFp5sxJD+S8uJIWxaRpTWI8as5
         YKICteRTItw9ONjGEZ8cQSCOqnHAtaC0f9eiqiPWlngdK+tO5lnAbJl396V5Oo5+dscx
         HBPl8ojxNaF8s9lBQS+3gZDAz0Ztn2MdhDHoHSIQ50qz0Lpw2YC7dNU8xo/y+ON+j5Np
         7Ya/ro0fBpN3Mb171bOJlzxnAMovpik89E4/cGFr6qucoYAVojUcbT0Vm58iDrAKZ6JD
         Ixg4Ftjo+2t9vy6I7lN12D7rfT21LH9VHZQ0I/rd9w/5Ao0nPlTmgoH0dNDoUBdQ4KrI
         gfeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684877913; x=1687469913;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WTtNHswnW0p7Ai5VHBQqwpfovct4y1t2cSckR4RYhYQ=;
        b=CeYLAFz2sxtg8TcdnGSMtYs+68Nvzk0wkp0wLVszARju4NZsfXnykaj9jeGAvKq/yk
         +PcQ/NYm/gPBeBbpqZSK/x7e5DBbTmz7uIP2yDQqWbFip/nU3sFCfoPby1fQBeJDlfNf
         DoWjZ8622clk+2fMyblAcVOGlgkSgUWo5jm3fZW8Ik22qiamFgZSETtXJT4ikqV5fpOx
         5LkceSZ5VoG/k3Lm+jGi6EPcEdAl9o9frZHWTk3PEZMpx10AGJN1BS1/wUA45MbleOa+
         tWl4sTRyAOs5PTOUXCBM7y0k3zBCaZunzdFZYqIuGy/A0JfeRewjTBnjTMRw3KdT6f53
         oFTA==
X-Gm-Message-State: AC+VfDxHykrDjRKkzG46XnFzbZBcHyIsmgevmP5ArdLLMHG7HhqZywQ5
	UL4SHqYnRIwHNhNa2jCpLEmgmON/YOcnJw==
X-Google-Smtp-Source: ACHHUZ4UHIvVwq9NygCAysw98QAheITp2cCaku+r4NtfRdiUslxK33f+rgJpUGnfmnmvQjEyKq2TcA==
X-Received: by 2002:a05:6808:5c5:b0:398:342a:f491 with SMTP id d5-20020a05680805c500b00398342af491mr1452917oij.34.1684877913521;
        Tue, 23 May 2023 14:38:33 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id y83-20020acae156000000b0037832f60518sm4442359oig.14.2023.05.23.14.38.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 May 2023 14:38:33 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org,
	zyw@rock-chips.com,
	sebastian.reichel@collabora.com,
	andyshrk@163.com,
	jagan@amarulasolutions.com,
	broonie@kernel.org,
	perex@perex.cz,
	tiwai@suse.com,
	lgirdwood@gmail.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/6] arm64: dts: rockchip: add default pinctrl for rk3588 emmc
Date: Tue, 23 May 2023 16:38:21 -0500
Message-Id: <20230523213825.120077-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230523213825.120077-1-macroalpha82@gmail.com>
References: <20230523213825.120077-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_143835_502882_805387C9 
X-CRM114-Status: GOOD (  10.13  )
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

Add a default pinctrl definition for the rk3588.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 657c019d27fa..571cdec24a66 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -1187,6 +1187,9 @@ sdhci: mmc@fe2e0000 {
 			 <&cru TMCLK_EMMC>;
 		clock-names = "core", "bus", "axi", "block", "timer";
 		max-frequency = <200000000>;
+		pinctrl-0 = <&emmc_rstnout>, <&emmc_bus8>, <&emmc_clk>,
+			    <&emmc_cmd>, <&emmc_data_strobe>;
+		pinctrl-names = "default";
 		resets = <&cru SRST_C_EMMC>, <&cru SRST_H_EMMC>,
 			 <&cru SRST_A_EMMC>, <&cru SRST_B_EMMC>,
 			 <&cru SRST_T_EMMC>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
