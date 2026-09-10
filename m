Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED143C79FB9
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Sep 2026 07:52:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JAxgn7dF78zCH2tu046TW2zDdlI+TacFUh+gqF1XDd4=; b=Ej8ZrYaVnNeg+J
	U82DwSzDbom5hKViapN5J2Ou5Fc/dSjh2VhUlUdUOqFZ89CErJsPLKsFaC6+nrF53bG6rLOoZ+sme
	BQmkKUwZ7voYhRAFTCTd2Ct93Fx5HmO5wMXtM+bQkp+hDiAf5GIOJP7ZVJ8H7bkX2vtrUtnEsStQ1
	F4KQ2s7at8BRZ/GHCHob9PF4F5OZxRsKizpFKhU1TMzJGvogndFOw2D/bg9nsKpt1A9MpSTrTM7M4
	roxl7BCCLSpwhsEE1OvyJcO6jhUyZidNx9o/0q9Io/vmnBSQr4eQA2MvZVp24K+ALea4ZNGamERED
	IdFZCzen2O+jIqDHBdqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4ZZo-0000000DffA-1PE4;
	Thu, 10 Sep 2026 07:52:08 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4ZZm-0000000DfeW-2IGj
	for linux-rockchip@bombadil.infradead.org;
	Thu, 10 Sep 2026 07:52:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=hSvkvCa4QalyG2BNxJcMEEX0DpoCO16400N3JfxMgjQ=; b=FVckcVLaFxer5EIQDJuvB2t0KG
	X20/II56XPTXfWIlAacZNOLPO7veVDiMzqv3XGRbMHEGcMlZRQ9dZlTWtufrF1VDpLa3yKTglwHHO
	j4kwK23M55gyZoqSkTM16gcuZglV3mfzT08y61qqwJQvQ2VCCnC/sEbtzwUnJebf29Xp0oKy13CdR
	3kmV4LQc1T0XGuA+3/ryRcfaUI91mdV5YxrW2HdBD2RllPsSLbO8ZzhgkbT34/kcEI9lE9iBMWWj1
	8mCIDdibwDYF34KB12Hw3Cr4AGMbzU+Hm4y/wyXg6KH+JQ26bCYsP6SP9zJ9EK+vk1tSat+/S90Gm
	qVpe6o2Q==;
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x4ZZj-000000029hl-0Pp6
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Sep 2026 07:52:05 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-49b0dd3e1d0so2366305e9.0
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Sep 2026 00:52:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789026721; x=1789631521; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=hSvkvCa4QalyG2BNxJcMEEX0DpoCO16400N3JfxMgjQ=;
        b=XJBhFjNsA5qSo4zv+BpWRnNM+lrhAu4xNi+vWeW7uEQWWUdhfMyzgPjGQDQjn8LEso
         JE8lO8YaOFCkxbt3eFNggsuQk2Vge9qwDkUseY3V8zxMB72RDB41OdvaFq65ENNPBriR
         cdUQkT5P2ZU9z6uL1ZzL44VDO/36GtaZxTGj5p49G5mNrshfpG65p5jZlxdN4C0dX9r/
         j3gHBjh5DXe/hbdOiiG7KavD4fy+pb1/JMhhNsesn1c+O7MODCUaVOJ7sOEoQeCS2pol
         prI6yFZhvzDddIQpP504N3+If777Q81fJxOxmaqASRUedlVIquYCiEhY+0jsy5PMio6i
         a/bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789026721; x=1789631521;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=hSvkvCa4QalyG2BNxJcMEEX0DpoCO16400N3JfxMgjQ=;
        b=i4onAdHjIzwY3Y/vb0/T8ED6fN034EleMN9KB4iLjYH640A53KOvej7CbEMo3f+Ru6
         rYRtLEyXlNASVzdX8suvEN+RQ9U8SugnL8Y5QpMhAYlejQlmHIlH0tf2okPJwan6w2ka
         H3i1dSdtQMJ2CbDV1uTcgwcLYWr2aTorC7co66R3GeoifRpaa8pSHxReT9BiDPgbm1Cg
         hpY0x/QodKxxX/1KQaYckL4KqzqSEOOvkeczGapZ7RIlw2Hqhi4AGP/F4MACyPGTS+X1
         3NFiM8fOOZcEbo3NFkgeJHnLh/SD3DiXXlq0COe3fwLzyvsV+jblufzPoNjDSVhTRmpM
         +N/w==
X-Forwarded-Encrypted: i=1; AKwUvByhdWGvbiYaqOUnAEOibltd6lB2hOA7SkMDiVIm/nqdRCShubpRxYYb4cydhjSZhXZP3GeEWDpd0LtzgpyBGw==@lists.infradead.org
X-Gm-Message-State: AFuF++n/NmzCqRLOTxm/RBSnM9RenWkbk5wm+ZuF2HpYXUmlJcmQTglw
	eMa3TLpqLrutIUg8/MvGbrPmqpR/uhWVYz5VDNnR7fH8P/JEOyOGHaZF
X-Gm-Gg: AYBFou3tRiHk9Yc+TwyC7xrChd1WNEBLHv02JFUubUGuVwb/yY6YJQdNgAAqsb6x0ap
	0aQNHMIVJHRGtk3doHvlcHVhqnqIqywWx4hbIlGL3lT40cf3ezi+AI1dVDdFUOKU9gT+CYuGSX5
	ts6vSn4T8FOJEc2rem6syFdZPwJUZI58XZPsEgDTiKVz0KSgoddy/eTVgmtxmHQkUA5+BUM6agC
	6yzv8F9wiLhbdCf8RBkW+M/W1MFvrcAi9/kTn3C+347e4dHUYB4y8luI0L8r2Qo++az5aFzx/kT
	B4zDo3YtBTZ1hFXOfJECKBKNV552Z996AFngass7/4e+a/l9e8Fkwbx4VfvMBpQ4S+HOoN2xaDV
	GD8sA2sDYj9I0u3Fu0CCyFGqi8SBNlse0bfDXnSUSQyyFzXt6IpK8GNWzdWVlrqkFT9IJNKO8eQ
	VzjA8TSJ2UvbYTBotIE9IIrIxcAio1B6nM2f/UOb+a6KFYla4R8xJnjV/SFE5lZqZ85ddveO1aZ
	4rTQxhc8dLOaqT//VxcSdeB+mugpTUMBgg0zsbSdUwBHpFAY8daX/YaOlZiS/EyjrZaTapbzxui
	ZrHj
X-Received: by 2002:a05:600c:530d:b0:49c:e363:c66e with SMTP id 5b1f17b1804b1-49d01dce86fmr291744635e9.1.1789026720937;
        Thu, 10 Sep 2026 00:52:00 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B9146001C92980EE71198AB.dsl.pool.telekom.hu. [2001:4c4e:1b91:4600:1c92:980e:e711:98ab])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49d20fce7a7sm251593715e9.4.2026.09.10.00.51.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2026 00:52:00 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Subject: Re: [PATCH v2 3/3] drm/rockchip: dw_dp: Attach "max bpc" connector property
Date: Thu, 10 Sep 2026 09:51:40 +0200
Message-ID: <20260910075141.48803-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <9e77b5c5-f1d9-484b-ae02-846fae1b3642@rock-chips.com>
References: <9e77b5c5-f1d9-484b-ae02-846fae1b3642@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260910_085203_618624_17DAD85A 
X-CRM114-Status: GOOD (  17.65  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, Imre Deak <imre.deak@intel.com>, dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, David Airlie <airlied@gmail.com>, Ville Syrjala <ville.syrjala@linux.intel.com>, Simona Vetter <simona@ffwll.ch>, Robert Foss <rfoss@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, linux-rockchip@lists.infradead.org, Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Jonas Karlman <jonas@kwiboo.se>, intel-gfx@lists.freedesktop.org, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Jani Nikula <jani.nikula@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-xe@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, Igor Paunovic <royalnet026@gmail.com>, Neil Armstrong <neil.armstrong@linaro.org>, linux-kernel@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Chaoyi,

On 9/10/26 09:16, Chaoyi Chen wrote:
> I don't think this is the correct way to go.
>
> I believe max_bpc should be handled in drm_bridge_connector_init().
> Take a look at its implementation. HDMI already does max_bpc there,
> so DP should probably do something similar.

Agreed - that is the question I left open in my reply to the bot. v3
moves it into drm_bridge_connector_init() and drops this glue patch.

Three points I would rather ask than guess, since it is shared code:

1. How the bridge advertises it. drm_bridge.max_bpc is documented as
   "only relevant if DRM_BRIDGE_OP_HDMI is set" and the helper only
   reads it inside the OP_HDMI block. I intend to honour it on the
   non-HDMI path too, relax that doc sentence, and have dw-dp set
   bridge->max_bpc = 10. If you prefer to keep the field HDMI-only,
   a separate field is easy - I just did not want to add one unasked.

2. The range. HDMI attaches 8..max_bpc. dw-dp's format table goes down
   to 6 bpc RGB and i915 attaches 6..N on its DP connectors, so I intend
   6..max_bpc when connector_type is DisplayPort, 8..max_bpc otherwise -
   the same gate Dmitry used for the DP subconnector property in his
   msm series [1]. Nothing is attached unless a bridge declared
   max_bpc, so existing non-HDMI bridge connectors are unchanged.

3. Where the default lives. 2/3 restores max_requested_bpc from
   connector->max_bpc after drm_mode_config_reset(), but Cristian's
   v11 71/74 removes that field [2] (HDMI keeps it in hdmi.funcs). I
   intend to keep the value in struct drm_bridge_connector and restore
   it from there in drm_bridge_connector_create_state(), which folds
   2/3 into the same patch. 1/3 is unaffected.

The state still has to exist before the property is attached, so the
non-HDMI path gets the same create-state block drmm_connector_hdmi_init()
has. If you would rather see that block factored into a helper for both
callers, say so and I will do that instead.

[1] https://lore.kernel.org/all/20260722-drm-msm-display-interface-v1-24-368c10fe62fd@oss.qualcomm.com/
[2] https://lore.kernel.org/all/20260901-dw-hdmi-qp-scramb-v11-71-bc12954a0688@collabora.com/

Thanks,
Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
