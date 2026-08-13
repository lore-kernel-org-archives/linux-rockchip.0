Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D493C5B572
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Aug 2026 16:44:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3BsvOU6E+KazkIGIgQVbfB+Z+SCarGfSW9XqCQGyO3A=; b=0ILHiYVhVsb0o9
	wbFGqwsaGKbGXbsKI3QqT7IHFkMpamjvPfraOyzMBDg95l6TqN0ZbXgiw0Au6ieBlbJVONTWocL6e
	1k8eWtk2KzZ+5yGnYnsu6/oFArqgYdKCP2LnZiuv/nhao2mu/KCq5HwRYNZQLHTU4zA+pj6paxopg
	N9zlQG1Ah0lSZv1zvPVkL89nLXzMa7wg2Q2Jaroxc35qTdcpNtcjgJv/ssx1cvuO5t/9t0fuJoz1Z
	xAoey1WZqZLS/KbSVWxQhE674bDHZtjHTUZpPFVwhWOLtHdRwGi3E+lvPjBeEq1VXLCUATrv+sZG0
	HmKoryuaOOdpPWePi9hA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuYXW-00000001Box-0AUX;
	Thu, 13 Aug 2026 16:44:22 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuYXS-00000001Bnc-3VJj
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Aug 2026 16:44:20 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-4994d41ceb9so136825e9.2
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Aug 2026 09:44:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786639457; x=1787244257; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=uzP4xqIsstfeVL1p2BEayzggpWH6XvsfreBjrDZxCS8=;
        b=Z+RHoj39xYpSNmC6rhyrpygnHex3xIoXGHXWm383NtOUGpUrDYlUxF5m4QJyjo6jId
         2sTHJ1Z6/DfPT7vp3uC+fCSM2VljNVnKwMJtm2W/77ORwiyAZM2PzUEFf7jkENLTG8Sr
         tDmEoQEr5fRLn6rRiejDBnRsnKWfcNWtSB1YjQ9MuiIIi1hLFYjuNL687XQw5N2xvOto
         7ziMzTIMwQv8KZiWCjEjq08VwYuxmxGNJl7gNGn06pDrsYBHqbRMjwZqCIDNaWV5uILH
         mq1BdA7AZEgwaI0HjF7jQi92hIN+UJyiIxRoFpIFGM4Rtl3rFv4gvo1zflSDIopzZctL
         r5bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786639457; x=1787244257;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=uzP4xqIsstfeVL1p2BEayzggpWH6XvsfreBjrDZxCS8=;
        b=tHCjc+1UQ+1WC5XX51e1Z0HdpnWueK1VmWAHlCr2Y7JnRVkOgsP1ldvowRpA7jfxwn
         dD4qM8AyGpns5y5my8XVQoZzGZMiqz4T9Sm3JoO0x2Hq/sZwWCEBYNHNm+DImsh7maYv
         EXNwCkTuDCzL/WoCyxmTqJP8k5EU4OTs7gXiZ4P97ac7yrvdYZ9HwtogHuxdRxpmYrgd
         GGUi09QP5c7nsUD6AvgH/agDGIVL7izlfgejyVuZrohIko06BEHWpcPNocRcZh+JaY9D
         2EWqe7VybKxFTNGXvXzzKUYoYhrg72v3qhOU45BvO+uDP4YNO3YtmcYUt6ybk1y+wqpr
         0jSw==
X-Forwarded-Encrypted: i=1; AHgh+RrdiKV9lJKpGf3JORP5VFesY5sCb7xldvx76BaLKmBLeBv0lrZF6+FbptZTXTuOndcZm2UDrMmuw1SNVbi/7Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YwEwNP/8yvj3MqlfPm2m4rapqcrivFyv0w1+NndgGpooV9q+b0E
	iv50zrxH1hf6F/b84cQ+X9GN7jyzxJSKsbtXJ9mFjAKs2n8L7T/KeGgO
X-Gm-Gg: AR+sD13g8EAKI+N+n0vIlOIA2ClUgnzLddMK+KsAOcW+4bcZ0UQZNkNWkXQaSpEK/5E
	X2WCwfcULJrRDfSm20jyixLS7SrzGRz0FNIO25gpO+7n7d65/FIJAtr6ST30BFLy2XwSWYpOEFD
	NNibtrVO67JmLAFXtioFYZrepRm4AqYZGr4HSaNBIPUKRgXLh06mEfyx4lrbw9TsLdwif3D6Nx7
	TuiYz0t6M21SS6wbps5OvmtREGu+f+585pdwt3uoGqEruVUpMKJiHOei3hG9lsS9mHtMJ/y1PRQ
	DarT3wKQ05hoX3IUwnlBSHzn1X9NF6LeN8+YJw5UD5BpZPmFRagUyhTeGn26qazdnKT0fCVg150
	Ajgjbpn+p8ZAzG3dNhIoWcB0Vn6y3yGCed1LX05gLWHdgA1ioE7jM4OwIIPYB++ZITZU2ZCnfhx
	ot9wGb8y0QFl7UsOtPy7zbRD7TdO3Hxx7JTBe0nHUXT2TqkLJsYx/4q/7xyLiQo18TdZFKheXcL
	eUjFiLAkmuf2eoMsYzOIXA4WXk8a3nHIhI6Ig2m4dtAG4bxpzhWARfwUPl301bEKk1lmOHD6tRT
X-Received: by 2002:a05:6000:1aca:b0:481:3db3:8eb with SMTP id ffacd0b85a97d-48159edffe0mr5610370f8f.1.1786639456881;
        Thu, 13 Aug 2026 09:44:16 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B911C00586200462B420123.dsl.pool.telekom.hu. [2001:4c4e:1b91:1c00:5862:46:2b42:123])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4815f2b1d90sm603116f8f.22.2026.08.13.09.44.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Aug 2026 09:44:16 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Andy Yan <andyshrk@163.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	kernel@collabora.com,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 00/14] Support 10-bit YUV422 and 8/10-bit YUV420 color format on DW HDMI QP
Date: Thu, 13 Aug 2026 18:43:51 +0200
Message-ID: <20260813164356.9625-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260709-dw-hdmi-qp-yuv-v3-0-a4a982a9f2e7@collabora.com>
References: <20260709-dw-hdmi-qp-yuv-v3-0-a4a982a9f2e7@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260813_094418_890976_62F1816F 
X-CRM114-Status: GOOD (  10.84  )
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

Hi Cristian,

I tested this series on an RK3588 (Orange Pi 5 Plus) with a sink that
actually needs it: a Sony TV with a 256-byte HDMI 1.4 EDID -- max TMDS
clock 300 MHz, no HF-VSDB and no SCDC, and 4K above 30 Hz offered only
through the YCbCr 4:2:0 Video Data Block (VIC 96/97/101/102). Without
YUV420 output this display has had no 4K mode above 30 Hz on the
Rockchip HDMI path.

Base: drm-misc-next dc2f9f7fed1a ("drm/komeda: Set display/writeback
clone masks"), with the dw-dp v11 and usbdp v13 series applied, plus
three local patches: board DT changes enabling USB-C DP Alt Mode and
pinning the VP2 dclk to V0PLL (DisplayPort side only; HDMI ran on VP0
from the HDMI PHY PLL), and CLOCK_ALLOW_WRITE_DEBUGFS for unrelated
clock experiments. On top of that, the samsung-hdptx clock fixes v6
[1] as the runtime dependency noted in your cover letter, then this
series.

Results on the HDMI-A-1 connector:

- The connector now lists 3840x2160 at 60/59.94/50 and 4096x2160 at
  60/50 for the first time on this setup, and 3840x2160@60 shows a
  stable picture.

- The negotiated wire format matches expectations
  (/sys/kernel/debug/dri/0/state):

    output_format=YUV 4:2:0
    output_bpc=8
    tmds_char_rate=297000000

  and clk_summary agrees: clk_hdmiphy_pixel0 = dclk_vop0 = 297 MHz,
  just under the sink's 300 MHz ceiling.

- Cycling 60 -> 30 -> 60 -> 50 -> 60 re-synced cleanly every time,
  with no errors in the kernel log and the VOP interrupt rate at the
  expected per-frame values throughout (no underrun storms).

To be explicit about the scope, three things were not covered: 10-bit
output in either format (this sink's 300 MHz TMDS limit rules out
10-bit 4:2:0 at 4K, and my compositor cannot force an output format
to exercise 10-bit 4:2:2 -- I can retest with modetest from a console
if that would be useful), and the 4096-wide modes were only verified
in the mode list.

For the series as tested above:

Tested-by: Igor Paunovic <royalnet026@gmail.com>

[1] https://lore.kernel.org/all/20260811-hdptx-clk-fixes-v6-0-75bca0ee5753@collabora.com/

Thanks,
Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
