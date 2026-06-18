Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87198CD98F2
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Jun 2026 14:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nu6FvJpzBw9xh5aJOaN1tpkoOf6BWMsjE1iwW3Ykd6Q=; b=Xy4EPFpdYStdkN
	612f8XYUtY4PSto4ma+JoueuNlfISbxOeD6rZYXptgUkUwo4GYPcX4wy8RGRl1tTKdngxw1KPjUZE
	Ki3osmebxZr5hAPsSCmAlNM+T5r/veCa8hbQ6IYTJ1kC+kPn8GMCxcLhyT7SHAPN1hhUaLwChIW3e
	SZ0rJSGJPu20OR6tbpSnYDlww3Ylf3/az4J0NC/MIIirJuCYeAmTclUxdDpBUcCw+G2DbfwR7IyR4
	fJnh0GX2leNqhrY6dvL/OTRniOenVZxHYi8O/UEtJzdikr4Wkebun4RYCbmimJga1u6tJSa7p49ya
	ORqnfThyaj4pJSZCXmjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waDJe-00000001P2x-2TKl;
	Thu, 18 Jun 2026 14:01:58 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waDJc-00000001P2N-00l5
	for linux-rockchip@lists.infradead.org;
	Thu, 18 Jun 2026 14:01:57 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-4923139e940so5584695e9.3
        for <linux-rockchip@lists.infradead.org>; Thu, 18 Jun 2026 07:01:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1781791314; x=1782396114; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lmuac1vs/+f91HFLziPLpiPQkE/k9A+lUkC0pHKOV0s=;
        b=mhOSKssBLc5r4YU/n2R13gkPQZ3Sd0X+lyvSqFcBz2jJMZeq+NCKCOkffLjiyz1BhK
         MydOGxu8vn3gXRMGmwJ5/SwsprryZVxWALjJrAlpyGxjDfYS8oagABYLXhEoEBVue1vY
         H6xa3HCd9p1H+4w2VyfDXcrKCwTlqXer+ifK2S7pejeLByh/4VqPQHxXeWISFWWaW4If
         uuOIZDpovU1tMpK3ako8SahBPj8fToyGUokUYOFa9yqj8cw8xpN5yAN/28I7pmVwNwZd
         St5zh57SzN/zL0sC2muhsiLXLCyFBYfzTE9+6Hri3v/94/mnxh7BZQULIr7cCQj/oAbo
         5e/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781791314; x=1782396114;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=lmuac1vs/+f91HFLziPLpiPQkE/k9A+lUkC0pHKOV0s=;
        b=lv2iJmXrA7rHsI5HaEY9IHMqHOGW5IklSvYpp02g/5q9izAbMgFHjIeWD4DW6PhCDh
         AqJy94FA86A/jYyS2kR3DfzDnXvXz/xBvRR3VaMb7AsL+pUqNSjgnv+WEhWZADBd4XAW
         2nvkDRCGB79Y43vZ7bR/5QoF4k6q/TXeBCnoEv5mFUYvD4T4ntkxYr8qhiOeVabqcpR1
         mcgaMe5wxuGBJ/wHFN0vw83jCbN78lLOK86KAZQssJzhmfPhREmmefbeHkXvwd9FOCY7
         m7eBJgSNsmHSiA0kxN1g97gyPw2xYLjIkrS4Yt/zOILhV27lvHW20GuaJebrES8huAaI
         Ukug==
X-Gm-Message-State: AOJu0YwPKu43YA2AnXuCUtilB21r5KupPY8NZR1r3n/BDR2nK/BKUIuH
	QLo8KfFyvIZkajQADzDOcMPHFroFwTQ8VT8ilQwv3vb4+pdOYxApqdBEN41rneusD2E=
X-Gm-Gg: AfdE7cnll1S45dqeHGWQpYiMEAJAXGa3e96nSpfcOI6aCARXfV6jE9xFVbSZOZv3Or+
	SJiOhm91J1/GAX0TAyDq9U9UgrR9KQks3rn2saaMGQI7SJCUuioJeXRZ7UwkEezxl2JAxkx+P/c
	4rAO3c6QRuC/2NWprKCJ0If7uDp3VRs1PnlF1s9awkx4E+9QCoaXQqIAT9gXpyv8cx2Dr/5mDnG
	SNY3AWHGWpWVlYpN9NOXQ0dfvSQrDR9wSyoOhkTmk8ESvU/d/BAjL78OrzV2fIoD+myod7wJ99a
	+wTEueSoKJTWqg7qnTJTMZZaDc9EtWj8KffSsLaRFrH3LRCB191y+uW7K0ol5UZoRTKyuvnWDv1
	dIclVUKHmd7C2JzKeUDzzMpa35DTWP3UUy20znFi+tWtsDkYSGsxKck/jh7agpc/y3zcT99Ku9w
	41GuSMe2bGRB8JVSmU4NNtr5mABhB1WQwJOA==
X-Received: by 2002:a05:600c:8b45:b0:490:e1e6:8988 with SMTP id 5b1f17b1804b1-492340ff6f1mr124191785e9.7.1781791313722;
        Thu, 18 Jun 2026 07:01:53 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:106d:1080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4620b3ed0d2sm27901309f8f.22.2026.06.18.07.01.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jun 2026 07:01:53 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: linux-rockchip@lists.infradead.org, 
 Chris Morgan <macroalpha82@gmail.com>
Cc: devicetree@vger.kernel.org, xsf@rock-chips.com, sre@kernel.org, 
 simona@ffwll.ch, airlied@gmail.com, tzimmermann@suse.de, mripard@kernel.org, 
 maarten.lankhorst@linux.intel.com, jesszhan0024@gmail.com, heiko@sntech.de, 
 conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, 
 Chris Morgan <macromorgan@hotmail.com>
In-Reply-To: <20260610144407.438846-1-macroalpha82@gmail.com>
References: <20260610144407.438846-1-macroalpha82@gmail.com>
Subject: Re: (subset) [PATCH V7 0/6] Add Anbernic RG Vita-Pro
Message-Id: <178179131216.245596.2940101862662422510.b4-ty@b4>
Date: Thu, 18 Jun 2026 16:01:52 +0200
MIME-Version: 1.0
X-Mailer: b4 0.15.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260618_070156_074031_2BB8B8CB 
X-CRM114-Status: GOOD (  13.83  )
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

Hi,

On Wed, 10 Jun 2026 09:44:01 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the Anbernic RG Vita-Pro, based on the Rockchip RK3576 SoC.
> 
> Changes Since V1:
>  - Updated documentation filename to matche compatible string.
>  - Corrected order of allocating IRQ in charger driver and switched
>    to using devm managed function to allocate work queue.
> Changes Since V2:
>  - Corrected issue with naming of panel binding document and added
>    fallback compatible string.
>  - Switched to devm helpers in panel driver. Note that
>    devm_drm_panel_add() is currently only in the drm-next branch.
>  - Optimized setting GPIOs for panel driver.
> Changes Since V3:
>  - Fixed numerous issues identifed by Sashiko bot, mainly relating
>    to unclamped or improperly clamped values from within the
>    charger driver.
>  - Corrected hard-coded values in the panel driver unprepare routine
>    as well as correcting an improperly checked return condition.
> Changes Since V4:
>  - Fixed errors identified by Sashiko bot on charger driver that could
>    result in an improper value being written to the registers.
>  - Corrected some error handling in the panel driver.
> Changes Since V5:
>  - Corrected minor errors in documentation and added default values.
>  - Further corrected clamping behavior in charger driver.
> Changes Since V6:
>  - Additional corrections as suggested by Sashiko bot to fix potential
>    edge cases during probe for sgm41542.
>  - Corrected an improperly shifted value being written to register for
>    sgm41542.
>  - Changed a MV value to UV in sgm41542 driver to simplify function.
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[3/6] dt-bindings: display: panel: Add Anbernic TD4310 panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/0fd6ead8270270d859a28d0196a4b47e7d6845b8
[4/6] drm/panel: anbernic-td4310: Add RG Vita Pro panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/a81b4fe69e7bd2667524182e76c635f04c1ead7e

-- 
Neil


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
