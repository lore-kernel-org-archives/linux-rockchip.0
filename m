Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C670C4167B
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Nov 2023 10:56:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OUzY0GQdKW1wmLmbaxE9D3RO/dg+juoTWm9utUhQum4=; b=Ouhh4b0M/vsoMo
	0aV7Fx6mSQ43XkOl8rSPXI1rH065PNjJfMk1qfH/+oyouPxYWKdM/wBLWTdLNiiNHeFTQYPgW3KN7
	6foaJaZfaqFbaRfVZLwfnILJAapd4yotDnFjC31orO1wJrWcwqrfbFQ3ivd+3NRxQQvHZ2mBV/55M
	9O48u6PLJl+Qr9oNCP3Tw3HASTHYHfP4NyT6AdIUHKLRxEmCXX4U2tGwUT5ZVfgrPsYGmVE/+NsNp
	HTGQG/OR1EwF1Px2FwsYr8n9A3GQNr+1C/hqvmmdMzdSyulzXZHAzusn+yZEREd3EWUZMqqCEuNZK
	/cGeCHy38qoD9shDgYOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7CoD-00Ai4V-1o;
	Sun, 26 Nov 2023 10:56:17 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7Co9-00Ai3G-1G;
	Sun, 26 Nov 2023 10:56:14 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-54b18dbf148so1402116a12.1;
        Sun, 26 Nov 2023 02:56:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700996171; x=1701600971; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mN5h4JeQlyNJ6i5AWUS6aIyGqp9DnO+inxm6CANO/d4=;
        b=Gb3a+1Tg01H2S5LXDfvylt7LxwixR/qgUbfRM1n/CAJjNGMbgT1t/rZiZbisUBUf3E
         pn1NFXEEu4Rc6qw7xKMFmjnYxG3vFkcc2vh6BE5H/k+7SuVBoy2+GKtjMgqrLQKcqiyG
         8Or2kEpbp18ECs+D75wHoob2O4WJ4xo8nn44jELSWohqz2fC8if3JS4t6jbNkc/kzTel
         SEgc8wzHggUm5DBKF+5zb5ICHdccJvIOjkRY27J6aLvzE7GGFHqxAWVxdBSW7kTGOqS9
         bJd8dIX4PyjorbnADQuW9jijWsxqqOFe2sup68W/Qk9e1tcB3F4imnUP99l4Con8puRP
         kd7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700996171; x=1701600971;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mN5h4JeQlyNJ6i5AWUS6aIyGqp9DnO+inxm6CANO/d4=;
        b=Lf4YTBY740+7fsFUevFb9WduLd2zbijPn7S+IMhK1vLUZT2Q7IrMAFH35bgiN26mfV
         j9XdijopPeoJ89NHme6m5L16q4/2xe15pjts2Ng32DMEw0VPHPtBAos+mINARNdwrbPH
         amxPZYQcCvpbmp46v6OBrCY2Pc8avalcFuSsAZAL2F6P0PTFPl3bz4cG9QB7fK5OipPd
         Wk3aHm57CK5bWw6pD1lLc3x2ABPWHWZprez7cj4fAYZzI1p366E+zC2CVlwsNFU/gcTG
         q2uKUHOHNREODfLkcbghYl98hvSZE0M/vvAzrLq03BUkVGDsPfjqhNNrPzewU/gLu4ZR
         V+5A==
X-Gm-Message-State: AOJu0Yxm3V2e+8cPAtB5hphGQ+4ln2MAkOjK95eOl60w3frTl7LPex9Q
	dYjPmxLOuhY+I6YdNBtXhBA=
X-Google-Smtp-Source: AGHT+IEOyqWMk44eN134q8IBZJzyDe7wGYih+f76HdhbtNuQJ+hi/1cY0IEENQqhqYe0kBJwSUOqgQ==
X-Received: by 2002:a50:8d4c:0:b0:543:5c2f:e0e6 with SMTP id t12-20020a508d4c000000b005435c2fe0e6mr5900684edt.17.1700996170898;
        Sun, 26 Nov 2023 02:56:10 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id s25-20020a508d19000000b0054ae9d77989sm3281586eds.64.2023.11.26.02.56.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Nov 2023 02:56:10 -0800 (PST)
Message-ID: <1ae0d08b-4f99-39a2-d692-d0cb1efaef7e@gmail.com>
Date: Sun, 26 Nov 2023 11:56:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 1/3] drm/rockchip: inno_hdmi: Remove useless mode_fixup
To: hjc@rock-chips.com, heiko@sntech.de
Cc: airlied@gmail.com, daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, mripard@kernel.org
References: <2601b669-c570-f39d-8cf9-bff56c939912@gmail.com>
Content-Language: en-US
In-Reply-To: <2601b669-c570-f39d-8cf9-bff56c939912@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231126_025613_453325_B303EBA3 
X-CRM114-Status: UNSURE (   9.21  )
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

The mode_fixup implementation doesn't do anything, so we can simply
remove it.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 drivers/gpu/drm/rockchip/inno_hdmi.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 6e5b922a121e..cc48cbf85f31 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -517,13 +517,6 @@ static void inno_hdmi_encoder_disable(struct drm_encoder *encoder)
 	inno_hdmi_set_pwr_mode(hdmi, LOWER_PWR);
 }

-static bool inno_hdmi_encoder_mode_fixup(struct drm_encoder *encoder,
-					 const struct drm_display_mode *mode,
-					 struct drm_display_mode *adj_mode)
-{
-	return true;
-}
-
 static int
 inno_hdmi_encoder_atomic_check(struct drm_encoder *encoder,
 			       struct drm_crtc_state *crtc_state,
@@ -540,7 +533,6 @@ inno_hdmi_encoder_atomic_check(struct drm_encoder *encoder,
 static struct drm_encoder_helper_funcs inno_hdmi_encoder_helper_funcs = {
 	.enable     = inno_hdmi_encoder_enable,
 	.disable    = inno_hdmi_encoder_disable,
-	.mode_fixup = inno_hdmi_encoder_mode_fixup,
 	.mode_set   = inno_hdmi_encoder_mode_set,
 	.atomic_check = inno_hdmi_encoder_atomic_check,
 };
--
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
