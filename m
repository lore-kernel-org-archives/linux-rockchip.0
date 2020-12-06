Return-Path: <SRS0=Jg7J=FK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE2D3C4167B
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Dec 2020 13:34:25 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 648E323121
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Dec 2020 13:34:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 648E323121
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HUHi+/OxgICy1BLTlZ0CfnHtS6+o4QmnkG4nwQ0Kbjk=; b=aXyvJ6iUOpRZMphw2KjsqvjSQ6
	c0Vk01O/JNHjVRHocLe2ri019qAeCvJQL4G002bDWQ//9IbrptCr0reh+o85JigLLvmmnYMiiwcsT
	LDz8t4YrvhIqOi972b60+UUWsHkZcY7X7biSo6bB+e5boSQY3RBLg3PluR+GkJqdYItOR6JPen3JF
	NKBGNbTuXeQ4UEdxhd7VEt5HKk2/A9IrFxdCg4xoG4k5w1g/gSAdfK6H5sfbcv2hQAy8NGboI9osB
	7Mii0rC/d73gvzrqcgMhl8QRBRgk7SbQpUQS46gurOf6rLnAJwwpybDFu13YHnnkhlZ7fIZgeDWH/
	+fczEtBw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kluB6-0003tP-GB; Sun, 06 Dec 2020 13:34:16 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kluAy-0003qi-4Z; Sun, 06 Dec 2020 13:34:08 +0000
Received: by mail-ed1-x541.google.com with SMTP id c7so10801165edv.6;
 Sun, 06 Dec 2020 05:34:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=cfXI1Q85bb28+McjuHeu3xbkODr0lp86DQ42QSmzooY=;
 b=rTYlIsnBZhZ1gkeFipGqwBYR2ZwA9h+V8hdArOoD/aqyF5pkPdp8UG2LN6I69z6Z8o
 v/qbG4Tg4fZZwxqHLkJYXWphkFevKqRhcDiftdm7cW4FMW5B019iie6IKUAuqmmYoUAC
 0iceP/n6IV1kELlWzcM85oQXUlG0r5De0IpNKYpyCZHCEDp/DLhjlp1GZVhocDQQDnMl
 u2Oz4gy+73Xl0m0TmM47nRaMMFdcR46by+7wcEOQ/GWQwlNrIEZiODOYsEyHFCbh4lB6
 5SQr9x1xqbwElGItP8zmvF7oCyhW0zak8lRn7Iwsp+b+GoTEOWX/A2ymxinWVs5hZywF
 rk0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=cfXI1Q85bb28+McjuHeu3xbkODr0lp86DQ42QSmzooY=;
 b=ljfs+np2tQZHFFWYU66eo7yx+0195E7bNSWa5z+Qv+s/iU/D1UsU7uCBpsg9y2gUIc
 kYqy+gKRrIfrGrCuUIlCUCABc6WA+OZGC4t22l6jLkgE2RUv4k2ppXb/4WLGPtjDkXta
 1uLDSI/YwRsi2dkR4djaLzTZr/4abl7jjSjPRNDd+U0hwXiZoSXBrM+CzcGcwQPEG5zz
 SfaSM8uq1hsGO9AdZj0W08GnxIlE3kl8xU7CqEbj7j94FbuGX+dTAuAkQ9daXZSv9UiP
 /Bd9gO81eI4Xiks3ebD7LZ6UtpBp0ATugd31/wk/2jB3LzxOIgPLM4SMapH7NQsG8ZsV
 vA2Q==
X-Gm-Message-State: AOAM532fH5D5XCafc5FwyNacyLu+pjSm0zLhwAVsYhjKESW+fTsTQZUg
 v8QlJa8FGH38hx3UbqElH2w=
X-Google-Smtp-Source: ABdhPJz+2tgBllNF3mr0DriE1oUWiJyqUX1uRzwk3HN0LdYKtYRiu18qL/KrCGFwmIWGbACXPv7meQ==
X-Received: by 2002:aa7:d99a:: with SMTP id u26mr16355837eds.32.1607261646808; 
 Sun, 06 Dec 2020 05:34:06 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id qh23sm7770129ejb.71.2020.12.06.05.34.05
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 06 Dec 2020 05:34:06 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v6 1/5] dt-bindings: display: add #sound-dai-cells property to
 rockchip rk3066 hdmi
Date: Sun,  6 Dec 2020 14:33:51 +0100
Message-Id: <20201206133355.16007-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20201206133355.16007-1-jbx6244@gmail.com>
References: <20201206133355.16007-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201206_083408_264057_C2AB337D 
X-CRM114-Status: GOOD (  12.86  )
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org, airlied@linux.ie,
 linux-kernel@vger.kernel.org, broonie@kernel.org, hjc@rock-chips.com,
 dri-devel@lists.freedesktop.org, lgirdwood@gmail.com,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org
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
