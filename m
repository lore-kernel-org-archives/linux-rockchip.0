Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8E9EC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Nov 2023 13:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MJJDbUgw+kWSsE8xvw9QaFZpJuYA6/bMoGJ19U6Il5s=; b=oBPu6xupK2C80b
	dGfh5DiDX9th2gqg1CpO494dFWrkI98jqJQ5gMNaMFIHEUrlGuHAKjFVWv2A8yUhen8RM+lq5KZ0y
	34lGmehQElFmWK+mYQ64y7P3cciQHfX4Igd81ncgnEkPUXPrwCe1zm8NeCrMcEUWwTD1mCC5dCguV
	/XrXVksJsy5841LLrOAGBN+byhcZAjFfudaN6asQRgYQ61vNqNvDHrRARtrn5/YCaYDHh+2f52MSe
	b9gVaiuyUbmyhj9p2hpY4EYeFtCx9IuqqLDBP23arV0PUVkPaF1NLciHzlgmMjMZe0l8EzJw+EFwK
	QaVMztW4IfOLYYiP/aaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qyXxM-009YO8-0s;
	Thu, 02 Nov 2023 13:41:56 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qyXxJ-009YMo-2j;
	Thu, 02 Nov 2023 13:41:55 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-9c603e235d1so137631266b.3;
        Thu, 02 Nov 2023 06:41:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698932510; x=1699537310; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=525ntZUU9IDbVV4Jw2CWfdlqQxiLo8Ec66BuDOeD0GA=;
        b=SgCf33+HWXXCOJs5EgW0NnHL5P+o9yqCQRjL3ebqjCX8JEUn8GGTLmQzUrC0vi96UA
         3ld6OJIn0dqOEelF+yaBA3Fl5Fpxr4NomXj/XZjFcLRaClK62Tg7PAB7VDF/naYUfQ4+
         jN/8tmTo77369BvW7/7A35pZmuGgDlolSXFmDP4fKnpJzqEfO39hLY6ZgnkzIsWJfF4c
         MKjb1c12tLY/Ru2/+bNJ8rGIAMRQ6rvuC5rAc2MgAVk2XMT9+GEtpogfDg2n45boOCvy
         tkpXaQv/hXn3eIXJch/FO/ZAtzvtCrVBjtL9fB5UN0/HWEgfUDDFifBLQF83wY6rJu+d
         igIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698932510; x=1699537310;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=525ntZUU9IDbVV4Jw2CWfdlqQxiLo8Ec66BuDOeD0GA=;
        b=QvqToY6EFZLQu/Gb8lJFOqfU9A0QBXk/Lsh8AO+FJIeSrUbEOKLibuYRLTFKzs8nJa
         S5O1B9k/AJ2iNzJEZQJ8MpyRjRHRhn3advzV9nU/GkvCF6V1ddQSHwE7F1EL/ZzTe3QF
         zebNGGhCP+FVZKveEw9w1LRZBpiW2yl7byKOS4pms04P9LuHSDn/NwGTL4oTojegXB7a
         0WbyXStwYgGH7y5cOwkdQPTVam2PV9DVHa1oHVmn23wYoWwCsSnatarj67kzJQoqKFWT
         04IyoQAFTv1JYLJHfbFGFldEEZOM2v1FDDPwA19LJbTUbHX1CYr8KJcN8u46EO3mxe6I
         dDXw==
X-Gm-Message-State: AOJu0YziqurOu4C7Vget3Xxw+aA5ckKNCTs7sIg66hwp1CpfBpuFrTKu
	LuDOLJlrw6RacCHxgfSlePs=
X-Google-Smtp-Source: AGHT+IH973wFt6bqHW7cDZN0wKW+UkKsLKCaRg36hSJokndjWn786idIO5cQuLHCEfTXF8UIDskt1w==
X-Received: by 2002:a17:906:eec3:b0:9b2:b153:925 with SMTP id wu3-20020a170906eec300b009b2b1530925mr3895676ejb.21.1698932509891;
        Thu, 02 Nov 2023 06:41:49 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id hb9-20020a170906b88900b009adcb6c0f0esm1157638ejb.193.2023.11.02.06.41.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Nov 2023 06:41:49 -0700 (PDT)
Message-ID: <5649ac03-db92-42a9-d86a-76dfa1af7c64@gmail.com>
Date: Thu, 2 Nov 2023 14:41:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 1/4] drm/rockchip: rk3066_hdmi: Remove useless mode_fixup
To: hjc@rock-chips.com, heiko@sntech.de
Cc: airlied@gmail.com, daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <cda574be-4f33-b66d-eb14-92c2b31d241e@gmail.com>
Content-Language: en-US
In-Reply-To: <cda574be-4f33-b66d-eb14-92c2b31d241e@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231102_064153_882487_8862051E 
X-CRM114-Status: UNSURE (   9.90  )
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

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 drivers/gpu/drm/rockchip/rk3066_hdmi.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rk3066_hdmi.c b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
index fa6e592e0276..5c269081c691 100644
--- a/drivers/gpu/drm/rockchip/rk3066_hdmi.c
+++ b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
@@ -434,14 +434,6 @@ static void rk3066_hdmi_encoder_disable(struct drm_encoder *encoder)
 	rk3066_hdmi_set_power_mode(hdmi, HDMI_SYS_POWER_MODE_A);
 }

-static bool
-rk3066_hdmi_encoder_mode_fixup(struct drm_encoder *encoder,
-			       const struct drm_display_mode *mode,
-			       struct drm_display_mode *adj_mode)
-{
-	return true;
-}
-
 static int
 rk3066_hdmi_encoder_atomic_check(struct drm_encoder *encoder,
 				 struct drm_crtc_state *crtc_state,
@@ -459,7 +451,6 @@ static const
 struct drm_encoder_helper_funcs rk3066_hdmi_encoder_helper_funcs = {
 	.enable       = rk3066_hdmi_encoder_enable,
 	.disable      = rk3066_hdmi_encoder_disable,
-	.mode_fixup   = rk3066_hdmi_encoder_mode_fixup,
 	.mode_set     = rk3066_hdmi_encoder_mode_set,
 	.atomic_check = rk3066_hdmi_encoder_atomic_check,
 };
--
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
