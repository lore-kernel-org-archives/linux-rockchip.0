Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46A0BC2BA4C
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Jan 2022 20:33:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=efCZ27Cpv83YIUnCoI0MVJJ2ipSI2DH9pH8mVFdkz70=; b=nd7GvU8NjOhojf
	gqJD/2AsGYH3kKI3N5s+aiqKR76ZrpyXK64TySvBfAm4PP8HxDa0y9DH8D+2VyflWpgtVWbRU70YO
	rKTfFTs7cVANzV/oui3PeyThiVfXsOn/cPUltnhRmvY5eZsPyWZatOUu6+hAOKs2hgNc2gInGY7sz
	1IRbSfNJcP+3R8/QVdQ1CZvER32btsxyILgYETO83ior19udmwONc7BnXhHVGTN9GRSrXYNeHyzeK
	Nus2kSsTL+HUtlRSRoIc18775/eOVqbNNGfaEmr+gPzh4BtEt5IZAiaPx34nNj/yu9uusw66saTgC
	jMTeTBGe+SATMMUOSdPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCoye-00DUZO-Rd; Wed, 26 Jan 2022 20:33:12 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCoyb-00DUYr-Q0
 for linux-rockchip@lists.infradead.org; Wed, 26 Jan 2022 20:33:11 +0000
Received: by mail-ej1-x630.google.com with SMTP id s13so1147190ejy.3
 for <linux-rockchip@lists.infradead.org>; Wed, 26 Jan 2022 12:33:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ukliw9sukrQW6ow50YsY/2wbM/35BtcU0cL0HgzMnLM=;
 b=dw3QQ8Vjz4RduwkU+DfXuqaAy+1poDrHZmp7JJYsjaLqADGSWcua23elXiKOBrIfvN
 7CO/frPtzzCycKqxFaHsQjgqaBwhlBkfaPAiAt12zt7dDGhFRZ5HSbU8Tc3NkGYqK2HZ
 tJP3A1aldRNXuDeTtmADqnlbwfkrUlb4gBabTRzK6sM+zretwoncESlZN2lO8P9oGNN9
 bWlOLWD9XRdqWJSO2ppjA+34On1U64ijwC2ttfBT4VlMrCx0fZArv7BU10l7JL5KmR9d
 b+41zKo6P3DKTs3CiIBfV2ivx6KvXZ+lrQoJA/LTagjK6/Ww+5IGQ3IjvDlOnoLjnTmW
 Yw1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ukliw9sukrQW6ow50YsY/2wbM/35BtcU0cL0HgzMnLM=;
 b=vbkuBGN2GwjWfCLC1HVJa46ryIX37AKPkX6buUZYYccl44vHGnjqw/lJsAgBjgw1j0
 r/4E8jVAeKVP3PJ0rL9XXJLyEB4fXZYTGky67SKj8juwYfVcCk5QeREicyNoSv4jfDhs
 sRvE9NnT3TLBLpuHA8GhZk9005vwPF9A1zk6whGefS61R/DPWli1qUWeCoZrrtan4hCs
 F70cwEfh1WP8Dcmov9JZHgxXDaL0RWIMfOJ6K7UQUNi5HR1SYH2XNDpzVMcTUVv2FBBM
 0ayqXKbtgaSAL4vBV1PdZ5ndfebES/Ur8DjAigDRz3+/Jp2ThIaqZWriH1PY9VB17vj4
 90MA==
X-Gm-Message-State: AOAM530AkbdE8oQIp8HZshkdW84+9Q4SXT+ohsJSVVPHeS/RJjklVuPA
 g3td3iEB5kMVZG+fm4pIb7Uy/oycOJV8jz2emtY=
X-Google-Smtp-Source: ABdhPJyQZXqAslD5Wtaiq3Z87kAq/zpe6tUPp3S8ENbcd+fSsQYcZRU1nOoYAZmA9Ux5tlyjLlB5qq2nd3AnF2TWv0w=
X-Received: by 2002:a17:906:478c:: with SMTP id
 cw12mr414096ejc.214.1643229187072; 
 Wed, 26 Jan 2022 12:33:07 -0800 (PST)
MIME-Version: 1.0
References: <20220126202427.3047814-1-pgwipeout@gmail.com>
In-Reply-To: <20220126202427.3047814-1-pgwipeout@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 26 Jan 2022 17:32:55 -0300
Message-ID: <CAOMZO5CesC_mZDHhF93_1u6rMrmtc-pMaB8X28CX-npY_5BaDA@mail.gmail.com>
Subject: Re: [PATCH] drm/bridge: synopsys/dw-hdmi: set cec clock rate
To: Peter Geis <pgwipeout@gmail.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <narmstrong@baylibre.com>, 
 Robert Foss <robert.foss@linaro.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, David Airlie <airlied@linux.ie>, 
 Daniel Vetter <daniel@ffwll.ch>, Pierre-Hugues Husson <phh@phh.me>,
 Archit Taneja <architt@codeaurora.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, 
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 linux-rockchip@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220126_123309_876453_275F1BD1 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Jan 26, 2022 at 5:25 PM Peter Geis <pgwipeout@gmail.com> wrote:

> +
> +               ret = clk_set_rate(hdmi->cec_clk, HDMI_CEC_CLK_RATE);
> +               if (ret)
> +                       dev_warn(hdmi->dev, "Cannot set HDMI cec clock rate: %d\n", ret);

You are setting the cec clock rate after it has been enabled, which
can be glitchy.

Better to set the rate prior to enabling the clock.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
