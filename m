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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 01BEFC63697
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2020 19:46:21 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 79E5620674
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2020 19:46:20 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="OrqgZWxH";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UIOGOw6h"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 79E5620674
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HUHi+/OxgICy1BLTlZ0CfnHtS6+o4QmnkG4nwQ0Kbjk=; b=OrqgZWxHPLGofMG1YuP80Fz1iA
	OFeQnJHbHFqQ9aiJeAauSwZjOZm8LAcBWPfQCUGvHFTB7CsbV11LWaPHka7kiaKDgNW3H7ba1qanS
	FSif1/ma+SvmNzrIX2CwrEf6Hsm3P+EDtBx4UJ3m1AKk1ad754qxpIDMoX/JnJfRKbHjgLQBEF3l8
	beokhVW0lM7v2y6LLwJg54XTiwDHNcg86G32ofC3PWhWAdW6ZCvyqNo89XzQx4yEk+G5sqL+/Hmxt
	jv0o3d0vwkvbPA2gLC6iQTBRWeYAcpjuqERZBqV4bE2ihUlDpdhPBjtd8QjvAGVBae63ezmIgpxBo
	CwuxVhaQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kf6vZ-0003CX-NY; Tue, 17 Nov 2020 19:46:09 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kf6um-0002u1-Ow; Tue, 17 Nov 2020 19:45:26 +0000
Received: by mail-ed1-x544.google.com with SMTP id v22so23736510edt.9;
 Tue, 17 Nov 2020 11:45:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=cfXI1Q85bb28+McjuHeu3xbkODr0lp86DQ42QSmzooY=;
 b=UIOGOw6hK+SW6PZnTFb6Ge3JqTDe/NwtTmNJTO4P+2RtdCxVwpi7Rq/Aqdy7x6Adcp
 wRP88fBy5dFJaM2aQnbeAQ86OaDGwNfxN12gzmJ3dkqFpVnOiTua1TOmWPi7J28YErO5
 +vT7F/x1TgHqtmEhUwh1PGspoG99p7+7gC8IC1SqDzWM6y+6IByo7u7LnARJsyzVo3vk
 EGBbLldPVSZ2FfdplHh31JJWObz6Q/AbWGttToOaFGaxQ4Bnap+uRazajLZG+ZNqt8mO
 LDNPLKADpPwuoYQpU5npEVkcgsD8/4BWY1DBz+1+56qMZZS+niS+ovqyTi/ggQR6pvM/
 lMSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=cfXI1Q85bb28+McjuHeu3xbkODr0lp86DQ42QSmzooY=;
 b=TkDdoHyWTrvLnYWA60znmNBsqDaEzqCvc5CBZnQJ99Wk0zgTxmzzUCCaRx9OqchBBY
 0kk0lXk7J/fCMitouGzkDu02SOb+1sYv5nLikJJmNbteFWlPLTMwqWCYdWSs5FpbbZGb
 qrqTcp6mK/U6KG0TeKP/WkTnwyuH9olqS2JnsLpsw5altQTrMHQ2hir1QSju+kAjwjOt
 YjprI4ZkUPi98PJePZeeZoIESJwYDE8N2YrBdFdVi1r6yfb0qXjSnVC1tbUk1TedikXn
 wZxqLcjYBP4tWLLI2NaNFhXPZWCmrRdcFqpqRYlqk5URW9O6sX65hdq/FHoSF/ojh5f7
 S1yg==
X-Gm-Message-State: AOAM530RSkUQZKxwCD++J9d6pJ1i/5AJG9pQnxs7Gk9KBdOJmE7s66JX
 YfmmcAjq/gMdeq4si7Clg4Y=
X-Google-Smtp-Source: ABdhPJzm63HVDveFpEYpiHWpLCJrGBMkWK296r8Fu/+E5TNgbXn9uz3U4HX7amby2EJhlwkYrbPUvQ==
X-Received: by 2002:a05:6402:1389:: with SMTP id
 b9mr12408755edv.178.1605642319735; 
 Tue, 17 Nov 2020 11:45:19 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id w2sm727972ejc.109.2020.11.17.11.45.18
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 17 Nov 2020 11:45:19 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v4 3/7] dt-bindings: display: add #sound-dai-cells property to
 rockchip rk3066 hdmi
Date: Tue, 17 Nov 2020 20:45:03 +0100
Message-Id: <20201117194507.14843-4-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20201117194507.14843-1-jbx6244@gmail.com>
References: <20201117194507.14843-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201117_144520_932335_474492B6 
X-CRM114-Status: GOOD (  13.83  )
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

'#sound-dai-cells' is required to properly interpret
the list of DAI specified in the 'sound-dai' property.
Add it to rockchip,rk3066-hdmi.yaml to document that the
rk3066 HDMI TX also can be used to transmit some audio.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../devicetree/bindings/display/rockchip/rockchip,rk3066-hdmi.yaml    | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3066-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3066-hdmi.yaml
index 4110d003c..585a8d3b9 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3066-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3066-hdmi.yaml
@@ -42,6 +42,9 @@ properties:
     description:
       This soc uses GRF regs to switch the HDMI TX input between vop0 and vop1.
 
+  "#sound-dai-cells":
+    const: 0
+
   ports:
     type: object
 
@@ -101,6 +104,7 @@ examples:
       pinctrl-names = "default";
       power-domains = <&power RK3066_PD_VIO>;
       rockchip,grf = <&grf>;
+      #sound-dai-cells = <0>;
 
       ports {
         #address-cells = <1>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
