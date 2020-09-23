Return-Path: <SRS0=ISdC=DA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.5 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95522C4727E
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2020 13:09:53 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2334120708
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2020 13:09:53 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="a1g7h9Dm";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="tx+bB5it"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2334120708
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dP9sc+ikZIjOq1Pgz8y/EAl9PzDq21BGZWmCCxV3syM=; b=a1g7h9DmIoFePwOR/8TwkVp4R
	EmnZwGAJHJ9zMn1UF5+Fs7/5GSxiOD5jU2ac14x8JSSqKjkMOuAa66ctomMiOQ+m6UHovHEtPQ9Dy
	7bZXJ851lhPMRELbgoNzw7NjfHZk6O30WyEpEIqQalcdDTXXd8Jnhpa5Bn3RBc/sz0b1UXHzmil8u
	Z6NooyFlloaN/BVifoTx881yVYmzOvSMzHvFj8cenzRCZQul2lMTzjvYpQl13TlLhXBy0Z0zRdTDw
	taHp+EynIiCmN3ddtoI3NIJU68zHPeS+0XgSLK0nYZD6i5k845gzoinOFvFQDqrBFlYMf9fbZHpba
	DJF82fb+g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kL4Wp-0006G3-Fl; Wed, 23 Sep 2020 13:09:47 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kL4Wn-0006F0-Om
 for linux-rockchip@lists.infradead.org; Wed, 23 Sep 2020 13:09:46 +0000
Received: by mail-pj1-x1042.google.com with SMTP id kk9so3141138pjb.2
 for <linux-rockchip@lists.infradead.org>; Wed, 23 Sep 2020 06:09:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hpX4jEQhpZjqmFfBBMmC4/su6hz0jFlTBy64OjqIAYg=;
 b=tx+bB5itLfeYad338/Td34tGpLol9c6jt2IfWRjritsLn/TvYp6wR/aDRqNL0OPCXZ
 /A0nfC6SJVU2Jxne6Vks66D0QUiSZ5UxLvCW3UbN4YX4Ad68rH8ApL9vBEOcE4HlsmdE
 xZhs/P38pBk0PlvZh3W+h318v8jYsb+Ee6uv7L+rv4+2xqb7+VnfPr2Q1dY+3CrAIqZ8
 oTWAIaOH8XCXEneMg+y0TwyJqVSZAMGgodz2QavT4E4MUmxN9vD3Z6I6x/lr9FTt6o8t
 mt1yve91BKjqixm0BbhOGfLJEhzMF6MKJgvCfYYPSi8N2+aU4dbcBugWtsZGOmcq+ivT
 qMIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hpX4jEQhpZjqmFfBBMmC4/su6hz0jFlTBy64OjqIAYg=;
 b=d8HLLvJn8Cmr4sEYVhELETSn6F/j9ZK4OfWNA0nSWTOBhl/FThvuBSwgSDkCGGKLIJ
 KhzAkC+YCQuxKLihc9vS32YSpDw1+M398UEU5I3TTXoQ96mvd+kgtBlwCvhG/b/Nbp6a
 1qFX5ELApMYsUSUhL7D+1q8Pf9RgTBxhCFj10CKlXl7QyWEHxwy0OmxwLI/ekndrGqrt
 9hDqTZ4Tr9ESVkEmpPPvsFBmoPXqEB1zk9Aj5WHlY3doNy7sTTcuqeNrzsR4Kzi3oSh8
 725ViOXFJB4JdmlmrFM5JOHOj0ptHOY9DH4QeOrUnHctT5W6tH035LHz/G/zZ45/XOez
 lMcA==
X-Gm-Message-State: AOAM531LTpDSl9BiJAR4mwKa+QxK6Ud+KmUH6CkbS3rTGKut7nG8FlD4
 f1ULMFwr55s0WRjF6DWACafibQt5/Sw+uA==
X-Google-Smtp-Source: ABdhPJym3DMrUpQ4br7MYout7ZaEVSOxw1qWiWuyya5iIF5SqRCdKplqAN2Vf3PhVc42gsXu1QKT5A==
X-Received: by 2002:a17:90b:f01:: with SMTP id br1mr8580238pjb.2.1600866582592; 
 Wed, 23 Sep 2020 06:09:42 -0700 (PDT)
Received: from universe.lan (80.251.221.29.16clouds.com. [80.251.221.29])
 by smtp.gmail.com with ESMTPSA id b11sm17913362pfd.33.2020.09.23.06.09.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Sep 2020 06:09:42 -0700 (PDT)
From: Artem Lapkin <email2tema@gmail.com>
X-Google-Original-From: Artem Lapkin <art@khadas.com>
To: heiko@sntech.de
Subject: [PATCH v2 2/2] arm64: dts: rockchip: add ir-receiver node to
 rk3399-khadas-edge
Date: Wed, 23 Sep 2020 21:08:23 +0800
Message-Id: <20200923130823.1612533-3-art@khadas.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200923130823.1612533-1-art@khadas.com>
References: <20200923130823.1612533-1-art@khadas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200923_090945_807042_81C4213E 
X-CRM114-Status: GOOD (  10.57  )
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
Cc: linux-rockchip@lists.infradead.org, Artem Lapkin <art@khadas.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

add missed ir-receiver and ir_rx pinctl nodes to rk3399-khadas-edge
Khadas Edge board uses gpio-ir-receiver on RK_PB6 gpio

Signed-off-by: Artem Lapkin <art@khadas.com>
Tested-by: Artem Lapkin <art@khadas.com>
---
 .../boot/dts/rockchip/rk3399-khadas-edge.dtsi      | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
index c67420578fa..e4655097f22 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
@@ -109,6 +109,14 @@ vsys_5v0: vsys-5v0 {
 		vin-supply = <&vsys>;
 	};
 
+	ir-receiver {
+		compatible = "gpio-ir-receiver";
+		gpios = <&gpio1 RK_PB6 GPIO_ACTIVE_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&ir_rx>;
+		linux,rc-map-name = "rc-khadas";
+	};
+
 	adc-keys {
 		compatible = "adc-keys";
 		io-channels = <&saradc 1>;
@@ -585,6 +593,12 @@ pwrbtn: pwrbtn {
 		};
 	};
 
+	ir {
+		ir_rx: ir-rx {
+		    rockchip,pins = <1 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	leds {
 		sys_led_pin: sys-led-pin {
 			rockchip,pins = <0 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
