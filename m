Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1836DCCF9F8
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Nov 2025 20:59:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mO7ik2oNAMLNFKwx5dsVNwId6JuZqEUjEn9JQ3LjC00=; b=FNZdYQeKyeiz8I
	zTct6jHUMVjnD13VLLiN+ZziqSKieNiZNVflathEBaYkOmACCLz42K0qe5wOs713OfY4+7WneB87t
	yTI1kVLuCj/GCoAc/Nfiy/PrAX/BriBWIqvCCiNGVBVoShTpBRuQ2sHUCDCMYDjBo9+q+VBwS5R4C
	3IwcwTgQjdYRyVhborjVuCBAEZ5ya9aN6N32wUAm5JTPNZ5VunGYyLBGQ9HicOdYgSVXIEkytwIYr
	0OtmYG7KBMWnd2xRw5aaxrco2ljKPARrbf6yRDvnaVYCLTiIc5h+I/mBNSRZ8eYv0GVjhzb6EozDz
	xnO4b3SqEoL8CvR1sOng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGkbc-0000000EPNA-3v1H;
	Wed, 05 Nov 2025 20:59:48 +0000
Received: from mail-oo1-xc2b.google.com ([2607:f8b0:4864:20::c2b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGkba-0000000EPKn-3UwF
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Nov 2025 20:59:47 +0000
Received: by mail-oo1-xc2b.google.com with SMTP id 006d021491bc7-656b4881f55so117049eaf.2
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Nov 2025 12:59:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762376385; x=1762981185; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cRtK+lS9rHtBCW3jizyzFl27YU+3fK4QgSpnBETL5cU=;
        b=SjXcfr/i2xTEvb/b0g5Oy8NDT7UQMpkoCDEKjwpO812CR2D++aM7EpcRP0kyqX1UnR
         xSpIWnuiTVM6eAq3xBE4XfaHD96Y0yO11F0O1/ypvFd/20qkoGLohDmf//org73pUO9U
         3J1z5Osk8Vbyp0m+Ee499yHTzoGqpGUxvgADePTBe0zgJbcth36dR3vL2di/ccXNlVAC
         0969nfPHF/PMxfrJzNkF55hapDANdzqkym+DkCkD6QdKGAoG2Tof9MAAMkfulkt51H42
         SYkY5PpkbI+L9yR+QHhJXsUm+RZYLzB9H9A/NRL2WadsLskDklglM/sfk8DNe79Nr18x
         0baA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762376385; x=1762981185;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cRtK+lS9rHtBCW3jizyzFl27YU+3fK4QgSpnBETL5cU=;
        b=WXiaSHHSoPK3tYq7AQB9JmzlB6PK1YcTi4qsZKZ3+0WLAMpiuckz/UbvxxJlcQ2AeZ
         xihny3452WRHcmLHnEE91INmRpS9DLwshkVEcg1tNoT8VdcNHxlYeIYP8fG+A6AvIsk7
         W1d2EomIbwIa3buxoncuqdS84TntjMSIWD0bB/q5W6JyLMST9pI3VBPRMDmC3QgdbsNK
         VgaG8gN6JUW88LZcb+NwUxbNLYhibkyQpy3PYF1HQUKWm6Wehxkc7T6znRzfflmCK7E2
         ixZ8O9yCHxbDJrJ9WonxZ5Dn3t3zDuLrkfbPEWSZJao9j7x0ylfoqINTBdy3HNxr8Ngk
         mmBg==
X-Gm-Message-State: AOJu0YwSbcCHE8B9+TjFAT6Jwss8TjgU0QnnQHtBDEYvALypoE4+MqFd
	DlB9zOZZSn4ZDuu27BTxlTMVNSiGayN/2J/Ln6MyMDZ8w3F4gti8h3c5ysZktg==
X-Gm-Gg: ASbGncvDemN08gqeZeBH2yUpZNSQoOyJ4Cquy/7FHDEmyxw3S6XpGW47fjyqDM3mMDw
	B/mZM6IvpLZRJkstLT5LBKKL7Y6e3193xMMFgYlbRh6WisYg9VBy8+yAmNACfCj7o/jrZ94HhJE
	uVVO/8/QtvuFknyzNhP/v6ij9pXhM3A3kX+mwHcL2CQ4xWgewVhS/2JL5BHd3e42P4NBPo8ULpa
	nmvvWUulu+8G1ODKQ+QGD9TQqGSLbtCMVrtU8G1nGjddYXYxm3NSJBm306Hh/y3xWbvooRgMjWG
	pclULVpfg5bE2NBwpoq3kYI4+sWyhbO9KYg1iTlbuExtCFBQhvplIWFyRYKfMozYmA0QUME8U2e
	rC8vD99KtWJ3L2659+vIrVOa+C81zZhgpBFbr3DH253FQqJ1bY5YQYPMhRAOU5cISVDPkPLlv/w
	==
X-Google-Smtp-Source: AGHT+IGR02gANsIG5Dp6MaMRMO3Hbvadnn1pJpAOGH2hNz1l0v9uosfD4QX9u8Nn9h260fG5+C6XIw==
X-Received: by 2002:a05:6820:621:b0:651:c86b:528e with SMTP id 006d021491bc7-656bb5a4bd2mr2143335eaf.1.1762376385625;
        Wed, 05 Nov 2025 12:59:45 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-656c5713288sm160312eaf.5.2025.11.05.12.59.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 12:59:45 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	damon.ding@rock-chips.com,
	jbx6244@gmail.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 3/5] arm64: dts: rockchip: enable NPU on Indiedroid Nova
Date: Wed,  5 Nov 2025 14:57:06 -0600
Message-ID: <20251105205708.732125-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251105205708.732125-1-macroalpha82@gmail.com>
References: <20251105205708.732125-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251105_125946_877144_2A2F7C00 
X-CRM114-Status: UNSURE (   9.24  )
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

Enable the NPU on the Indiedroid Nova.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index f40782b6c7db..62c8c8f68713 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -471,6 +471,10 @@ &pd_gpu {
 	domain-supply = <&vdd_gpu_s0>;
 };
 
+&pd_npu {
+	domain-supply = <&vdd_npu_s0>;
+};
+
 &pinctrl {
 	bluetooth-pins {
 		bt_reset: bt-reset {
@@ -522,6 +526,36 @@ wifi_host_wake_irq: wifi-host-wake-irq {
 	};
 };
 
+&rknn_core_0 {
+	npu-supply = <&vdd_npu_s0>;
+	sram-supply = <&vdd_npu_s0>;
+	status = "okay";
+};
+
+&rknn_core_1 {
+	npu-supply = <&vdd_npu_s0>;
+	sram-supply = <&vdd_npu_s0>;
+	status = "okay";
+};
+
+&rknn_core_2 {
+	npu-supply = <&vdd_npu_s0>;
+	sram-supply = <&vdd_npu_s0>;
+	status = "okay";
+};
+
+&rknn_mmu_0 {
+	status = "okay";
+};
+
+&rknn_mmu_1 {
+	status = "okay";
+};
+
+&rknn_mmu_2 {
+	status = "okay";
+};
+
 &saradc {
 	vref-supply = <&vcca_1v8_s0>;
 	status = "okay";
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
