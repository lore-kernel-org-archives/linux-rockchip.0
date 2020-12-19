Return-Path: <SRS0=0WH/=FX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61CA2C3526D
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Dec 2020 11:27:21 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1978B233CE
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Dec 2020 11:27:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1978B233CE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5p8J1nZ4bO4IHaFM/8q+jh8awwGAZUtQTD9fiagtzi4=; b=vEifCtupC201db1JmZEnea+Jrg
	RphKOhUsEk0ze7HWlj9qp2/r88aET2DVYk5GfeUbJW8zMw6kpaTcDzIqG+Do0Q9uW4ZR+JOVABNfP
	1qRXZhagkY1nxL9q+J2IA10bA7y/42kpCHIkzqNIA9cDzmhwpiL4f/2C2IsN7R03hx0vU8Fs8fM3M
	ftkozpLCDn4uz1ycvqRJ/mDHqPKxejx7AcnE3O0c/7MAlo/blZULoHrkcjiyFLq7IozjMMSx4TZuB
	YK54LtOqPKBJn16pAViNpK/oB4wmCE3BZrJd45sraCp0ykwVUCNcKX8XvjZ1JMfrMrv1BYOfbuUG2
	fAqMcI6Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kqaOK-0006Us-ET; Sat, 19 Dec 2020 11:27:16 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kqaOD-0006RV-7b; Sat, 19 Dec 2020 11:27:13 +0000
Received: by mail-ed1-x535.google.com with SMTP id cw27so5017935edb.5;
 Sat, 19 Dec 2020 03:27:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=dWKio+Hu+6BJFwiEu0pqQ0A1lkCqJjEmlgSWcdnhaHw=;
 b=QBAP15iG2B0sWDxIf6ZPg6D6vGmITWRKuzpw0fXAPZ3+tBsZGksDw+or4En1mvTu73
 XCpNPdWONJzOIBQwywgli8PQJlp7ONPeCgq4hHDrfHLTQvvfqbmaSc0MgXsICzH959kH
 MsBBWBXdT7RcetcaRQyp1liyXGSpzhtmNTgsZd0Hdrqr6/ngzQPzs0AbX2ahE7Whlqry
 fYV2SGR5aNpU2JA7+4jxfPXzAkgMbulNuft08iqlYuVltKroTP27bHcGWZgzGyx+SFKA
 VwY5KWnL+im9Q93QLIWWQEyvbPbCJvSfP9ibMxKauZKs/fbHUZ/1ezeRs6kpTGs4Zoev
 Mzkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=dWKio+Hu+6BJFwiEu0pqQ0A1lkCqJjEmlgSWcdnhaHw=;
 b=Tcrotp4garL5kx1rmafEMv2ZbCO0Ff8uLSo2RS88O5fS+UiksJWz5VIl5MSDrn6RQV
 Eg/aCI5nj8x3YvPNCTom3dszD3kI1z90kKJ4EZDs/hLoLMHBtA+3dQHour0dIXB8zQEt
 pxMY8uFlR5l5fvO07+nWFtcnWGASYthQX8RDl2OlaDoNeiOMuwaYTycy/TV2VIqEiwp5
 1vxBfaFZXkvpqXXEwRS3GJp85PgxtUBWgVZ/H31XCmuS2Jsev4SN7kHwqJbdcSlzdllx
 4gBKL+/ME8LQDNkXSlZMWXuiiH+RQhAfIPHQdzODsLS6i1U21uWy8zYFhaptI4spS7Pk
 OFVg==
X-Gm-Message-State: AOAM533YdlsEZrMRC+KiasNVG8U0LcuZehoab4gCtvmOOzO5RGj0CfzD
 G7IVbnOZ2Q1pWKBRByvN8Ow=
X-Google-Smtp-Source: ABdhPJwx1hVRFyRILC7+TRy2vR59YpHyeP29I4+mqb9LKbQOqPBC/QkLkjmdiCHQMuq4MkSDaVdTaA==
X-Received: by 2002:aa7:c0c2:: with SMTP id j2mr8548577edp.343.1608377222442; 
 Sat, 19 Dec 2020 03:27:02 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id n17sm6651785ejh.49.2020.12.19.03.27.01
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 19 Dec 2020 03:27:01 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [RFC PATCH v1 3/4] arm64: dts: rockchip: add rga node to rk3328.dtsi
Date: Sat, 19 Dec 2020 12:26:52 +0100
Message-Id: <20201219112653.10705-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20201219112653.10705-1-jbx6244@gmail.com>
References: <20201219112653.10705-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201219_062709_368210_5A0E4DF3 
X-CRM114-Status: GOOD (  13.59  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-rockchip@lists.infradead.org, jacob-chen@iotwrt.com,
 mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add rga node to the rk3328.dtsi file.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 1e3e1086e..c4170dc19 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -711,6 +711,16 @@
 		status = "disabled";
 	};
 
+	rga: rga@ff3900000 {
+		compatible = "rockchip,rk3328-rga", "rockchip,rk3288-rga";
+		reg = <0x0 0xff390000 0x0 0x1000>;
+		interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru ACLK_RGA>, <&cru HCLK_RGA>, <&cru SCLK_RGA>;
+		clock-names = "aclk", "hclk", "sclk";
+		resets = <&cru SRST_RGA>, <&cru SRST_RGA_A>, <&cru SRST_RGA_H>;
+		reset-names = "core", "axi", "ahb";
+	};
+
 	hdmi: hdmi@ff3c0000 {
 		compatible = "rockchip,rk3328-dw-hdmi";
 		reg = <0x0 0xff3c0000 0x0 0x20000>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
