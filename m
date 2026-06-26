Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1B7DC43458
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jun 2026 13:21:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SSo0JI3gFkTKuKQ17sLCpt96tg3Hxg2tkC9ajESZj3g=; b=4OYkytYiTJOQ39
	JGoGPPFU7yz+d1QiS8/gWB0aw8+uuypg373lbOhONCYL/hC3yP7+l32rh7PHU4U2rjcJV0hb4OpFo
	56ytUBIzYLNr1Lbn7gBNklKT3YJ64iP2mD9WwrA2RVpYe7vuSBNXhzspNMsBaMJGV1dzgXuFRMUEE
	6ynWkk/WWFA+xz1bu7ljFU3/Fzhawt3/cF2SpLhqBlBWdYh6IPEOJWSEGcsZ+aUbKmYzbYLeTGPGp
	gmbDAjNbzVeyEn0MvwLAE73GhC7+WswPXwD8gncqMjtZO2KSUy91616QaxB2LM1VEAFDw+PBFV8AW
	qZmqV13saUOrWPRTV1sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd6Uf-0000000BMZs-1P6I;
	Fri, 26 Jun 2026 13:21:17 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd6Ub-0000000BMYh-3tH9
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Jun 2026 13:21:15 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-5aea63b44eeso66224e87.2
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Jun 2026 06:21:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1782480071; x=1783084871; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=PwLoCPBMvnE4mFTZ0Iskkh0u0N7Zrq4pjwblbNDMp4g=;
        b=SeI4bELlsJ79tx4QpglRJ+usuN3i2f8Kv/qwXr5SMsYXxqXMXDuagc7ZkWkC72b0n4
         HVNBg6QN2MhkH0CpTSCTIb+tDxdzZ66l3u6ZHE2drEKvl6LflnySgJ3ISbuyPde6xD8o
         ndKYCKULE8JucU2uZo8LVL5LLrEdElHlQh1/hqlVpMny7ZHIlXT+SvepmDaekW5GZ/KG
         ZyyeKTj9fA/NutUHIsyAmRYdsp1YkNtSamGyBC9ZzM5NCNpiACoKF1jnV0M8iZyiuHW4
         WwPy/aNVLhyC7qJxFUcG9t3Z7d6F6cbPuUabWc1Wb7WdlEf4JI5nB1XxEtnAd6EGhX4b
         ZbtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782480071; x=1783084871;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=PwLoCPBMvnE4mFTZ0Iskkh0u0N7Zrq4pjwblbNDMp4g=;
        b=BFJuiJv79U6YZgdLZxZ+aH7qzhfmVffZSj+WjXPWeIoiWOIlI2n/wudYhoJrWFxZr4
         0jSrJ9LAvM4RVaMc8Z5HajZFRSmp3gxrBa7YscNJaCpaAmusdnkfhN7oEJwlA+trq7La
         WUndgRKlYwdy/CaPAgmTeM8BdUucijncPQv0FvtoQt7oXP3T4ASGV8HMXIWkZ17WdELT
         CWgHv7tBx4fB3FD9xTj0HIfLh9t1q5PuAuC565gaPmioOxKnQDjQOnPLlgMFCFzsDs3h
         ohrwfiAvpKyFhrWO6eJugK0+Cr+NxcxFyJgNsFe/cojWacBlQCIivE4ktNDMlz5d4ShY
         INFQ==
X-Forwarded-Encrypted: i=1; AHgh+RqmdV6XjlvjNHvODycVXIpPp6jferE959SoOonxvwgjguAujq2ygiCsdmfG9Y+AAwQ0LQwGdkoVLM5X3OCr5A==@lists.infradead.org
X-Gm-Message-State: AOJu0YySdxJuhiYDBf/gvJM238aLZXnao8o6R0M40S5hNWQC8lHSwQrA
	ayxnqyliJis5saTb+gcgOqJdnfERZq9YYw0tplwL95zwqByS+2fZ1YUm1aqDnunQfrI=
X-Gm-Gg: AfdE7clDY18kXgrvKLjfW6ikJutCD0hxx0SnavNvftvixOtaYvOzxiCrGoR5AYjW3mZ
	FIS38vRxBcgi7ks3bUP647qg6390V9l97C2+U+zBpilycA4zD7Hls+QoH9JKblv4JDaM/X/C+tE
	xhN4MybaEc6V7A3c/BmM5MRhVzgA9Vbigk75cQwHBl4a1vjEjhZTZY6T3+0GZHabRw61yAveaRV
	JM4dthrH4uBC859dDs2R0c+JhTubgj/8dZ48cv6XFtlgCU21j07VRzXhqrB6k2QhXV6fQ5yMDrT
	6zy+TSdj7Cw6T0AAYj12AB/oUXydrsZZAm007/j/zxV+M1mDrS01ngoYj1GZP+0HFVoLZoGc100
	KkNmywvvj+CcMNbIUboVyhmJWan6LHmapHkHRlpGJhfxxVzw931+G9HuiS4dbJdyZ4wNiurOF6g
	iGo6b2BwWrhOgkpql9asMcRIfyBZrOUJ8gNN2f/lM43RubiHwcRq1j973NSW1lEZJN8TC7KkXvc
	/UZ9Q==
X-Received: by 2002:a05:6512:1252:b0:5a8:bd9c:a2e1 with SMTP id 2adb3069b0e04-5aea1f3c156mr1200847e87.2.1782480071016;
        Fri, 26 Jun 2026 06:21:11 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5ad695859b4sm3327909e87.72.2026.06.26.06.21.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Jun 2026 06:21:10 -0700 (PDT)
Message-ID: <d14af4aa-f791-4aac-9d49-ace834952257@linaro.org>
Date: Fri, 26 Jun 2026 16:21:08 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/8] dt-bindings: media: Add macros for video interface
 devices
To: Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Jacopo Mondi <jacopo@jmondi.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, Jimmy Su <jimmy.su@intel.com>,
 Matthias Fend <matthias.fend@emfend.at>,
 Mikhail Rudenko <mike.rudenko@gmail.com>,
 Daniel Scally <dan.scally@ideasonboard.com>,
 Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
 Michael Riesch <michael.riesch@collabora.com>,
 Benjamin Mugnier <benjamin.mugnier@foss.st.com>,
 Sylvain Petinot <sylvain.petinot@foss.st.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Paul Elder <paul.elder@ideasonboard.com>,
 Martin Kepplinger <martin.kepplinger@puri.sm>,
 Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 Tommaso Merciai <tomm.merciai@gmail.com>,
 Svyatoslav Ryhel <clamor95@gmail.com>,
 Richard Acayan <mailingradian@gmail.com>,
 Thierry Reding <thierry.reding@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Frank Li <Frank.Li@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-tegra@vger.kernel.org,
 linux@ew.tq-group.com, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Conor Dooley <conor.dooley@microchip.com>
References: <20260626-kbingham-orientation-v2-0-47178be927b4@ideasonboard.com>
 <20260626-kbingham-orientation-v2-1-47178be927b4@ideasonboard.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20260626-kbingham-orientation-v2-1-47178be927b4@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_062114_012435_92C8274C 
X-CRM114-Status: GOOD (  15.42  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 6/26/26 15:07, Kieran Bingham wrote:
> Add a new dt-bindings/media/video-interface-devices.h header that
> defines macros corresponding to the orientation enumeration types from
> media/video-interface-devices.yaml.
> 
> This allows avoiding hardcoded constants in device tree sources.
> 
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Acked-by: Sakari Ailus <sakari.ailus@linux.intel.com>
> Signed-off-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
> ---
>   include/dt-bindings/media/video-interface-devices.h | 13 +++++++++++++
>   1 file changed, 13 insertions(+)
> 
> diff --git a/include/dt-bindings/media/video-interface-devices.h b/include/dt-bindings/media/video-interface-devices.h
> new file mode 100644
> index 000000000000..d2340b457292
> --- /dev/null
> +++ b/include/dt-bindings/media/video-interface-devices.h
> @@ -0,0 +1,13 @@
> +/* SPDX-License-Identifier: (GPL-2.0-only OR MIT) */
> +/*
> + * Copyright (C) 2026 Kieran Bingham <kieran.bingham@ideasonboard.com>
> + */
> +
> +#ifndef __DT_BINDINGS_MEDIA_VIDEO_INTERFACE_DEVICES_H__
> +#define __DT_BINDINGS_MEDIA_VIDEO_INTERFACE_DEVICES_H__
> +
> +#define MEDIA_ORIENTATION_FRONT		0
> +#define MEDIA_ORIENTATION_BACK		1
> +#define MEDIA_ORIENTATION_EXTERNAL	2
> +
> +#endif /* __DT_BINDINGS_MEDIA_VIDEO_INTERFACE_DEVICES_H__ */
> 

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

-- 
Best wishes,
Vladimir

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
