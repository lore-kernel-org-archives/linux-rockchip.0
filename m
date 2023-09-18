Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A5E7CD13D2
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Sep 2023 17:33:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lvjoLLuKF4jYTAQdDSo9mlQCutYFr4R8sYTHh4dCHzM=; b=gpfuDD33nIS/9V
	binD4yD+a/blKcbyoJrgRSUYnW93IC9VrT181VrgrlsENRCHqlkVnJhzOJXAAh9cxv/h2xYXFq+rG
	gJvCU8oLhJAKpJwx3MODmK2klHHEuz11jpOf/YsDgSWBkwFeP6vVAnt3uvnYOHhFCqRUfbjLiQBJ+
	f+Pgjt8u1sKXt6aG4aQxVykE8+8ZWsiB9AxrU6XWm40q/HkAwDAAM4iIAbPi0uffeA5DC3xOeZJ3/
	8HpMxpyYs1dyVMqTIUMuH3eUqUVjG6dN3tsc4IHQWrKDu/E9Wn1C3sNt9dibJA/UwOk0Dld0EOzsM
	nZ6e5vVy4OijJeNy2yMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiI7R-00Fzjl-2w;
	Mon, 18 Sep 2023 17:33:09 +0000
Received: from mail-ot1-x332.google.com ([2607:f8b0:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiI7M-00FziE-3A
	for linux-rockchip@lists.infradead.org;
	Mon, 18 Sep 2023 17:33:06 +0000
Received: by mail-ot1-x332.google.com with SMTP id 46e09a7af769-6bdacc5ed66so2606448a34.1
        for <linux-rockchip@lists.infradead.org>; Mon, 18 Sep 2023 10:33:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695058383; x=1695663183; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fOcE1gEVv8k+1mKB0BOnHrQMjIkGHZfrQmU9eoEzouw=;
        b=UjG6TOAne/BTaAJxsjcTRJpgxKsqNnRiAYcG3Uwrkru+n2vgLsxorADyUmcH6ICKo4
         6EqgYNSh0gckrFbI2+lJK0VCkcIq/zI3npvO/0sEP/IMkM/L0dKmhZmQNwnNQjC5wm43
         Ntrd6DwdEjgLLjnQqBNnQfsZ9D1Ct2hd8xNG6/zzzXCcpVo+V8smgBAisiy1En5EYKOZ
         kmo5UCSl0CQnTmesSvFNOv1bbAVvkVkqlcbs2Hp9wtBkt44RCglwsmvZOxJ5XRgsR+Bp
         VTtlpru74xISBFdiZbHWSGeIcgl/uFTByDAzpXsEFyiKwakSFRKXXNJDfW+09wn7uON6
         ZqVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695058383; x=1695663183;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fOcE1gEVv8k+1mKB0BOnHrQMjIkGHZfrQmU9eoEzouw=;
        b=HKSaotJisAlOnXQEnWfoAvgzyRzlnW6GZxGHIp0Ww58Tl6KZY0wKhFs0HhyNv2BcPn
         gcnV6Ab8z3dvnaMYDw4r8quX48/wUrQivJKqsZ0pWDwfoPhNDLRt5wgVKG4NE2RYkT9m
         R6/cN90G/pwMMyKgfUbU340MOb4wV74JjnAR9bIqrFcxLDiqD362KH9Z/X+oE97Nq+Lu
         vbbwq2PyOou/TsYVa4HbXPraECg71aDwCS5offJ2i5HnUphHdNLedHYr+y/9CAvZi6kS
         2vhjafVK7LI/O51NpTjq3CkpDqOLN45w53chreOGj+U4YOXEoYcXCfRf8wq8pEZcgsEw
         x/1A==
X-Gm-Message-State: AOJu0YymLwPrrkPamkF3MkZu8W/WIexVtQP4FfWLTVJ8ZKFdRXV8+psX
	hZqblX0gTGTn8iQlWfpynzc=
X-Google-Smtp-Source: AGHT+IHwJnfJ+vNpzCxFe1Y+gVZMxsNsok+2pobr3vm625PSwkZzk7Gd+IgfVNKsp37mzVgFeJHbdA==
X-Received: by 2002:a05:6830:3493:b0:6bd:8067:21ec with SMTP id c19-20020a056830349300b006bd806721ecmr256313otu.15.1695058383320;
        Mon, 18 Sep 2023 10:33:03 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id z5-20020a056830128500b006bf0f95f702sm4315755otp.64.2023.09.18.10.33.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Sep 2023 10:33:03 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	jagan@edgeble.ai,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 1/3] arm64: dts: rockchip: add PCIe to rk3588s-indiedroid-nova
Date: Mon, 18 Sep 2023 12:32:53 -0500
Message-Id: <20230918173255.1325-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230918173255.1325-1-macroalpha82@gmail.com>
References: <20230918173255.1325-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230918_103305_019221_9EC2BF7C 
X-CRM114-Status: GOOD (  10.33  )
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

Add the necessary nodes to the Indiedroid Nova to activate the PCI
express port that is used by the RTL8111 ethernet controller.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3588s-indiedroid-nova.dts     | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index d1503a4b233a..646f49cc9e53 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -109,6 +109,10 @@ vcc5v0_usbdcin: vcc5v0-usbdcin-regulator {
 	};
 };
 
+&combphy0_ps {
+	status = "okay";
+};
+
 &cpu_l0 {
 	cpu-supply = <&vdd_cpu_lit_s0>;
 };
@@ -348,6 +352,12 @@ i2s0_8ch_p0_0: endpoint {
 	};
 };
 
+&pcie2x1l2 {
+	pinctrl-0 = <&rtl8111_perstb>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
 &pinctrl {
 	bluetooth-pins {
 		bt_reset: bt-reset {
@@ -366,6 +376,12 @@ bt_wake_host: bt-wake-host {
 		};
 	};
 
+	ethernet-pins {
+		rtl8111_perstb: rtl8111-perstb {
+			rockchip,pins = <3 RK_PD1 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
 	hym8563 {
 
 		hym8563_int: hym8563-int {
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
