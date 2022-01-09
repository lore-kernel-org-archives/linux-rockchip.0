Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AF8AC433F5
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Jan 2022 16:33:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tIeWQ9YwFhfHlnC32DJgQ7yCClIHWolL2a03kr5D6wE=; b=uy0JjXAC/LySlz
	fnpkpcPqRHALtMNVr3sCq7znTNu83FwcnY8ANmJWnLV7F+Ov9nLZLLgQo9+2oMQ1LQ4bfUw3jrtYj
	E3sRktmFWoXYTWCpWxfLelN3sp9AmXf1364hJ33DlJlKgLaFd6CP8KRShaVOYTL0PukBo7rmzbjgV
	TWtD9sMLYA6ILI08LCype0Q8OazNP2tIndsHZ9yS+S6XFMCh9pB4+GKzr2EUVR8mbqzDheUj2Y4FH
	0xdnIWK0v5/sbPaqqBj2QJ1GyV+cAmFcIJdbFVse/lRJtj7bcK1rsghJBH9f7qEJCLKcHiuarTj3S
	1qK0htKd2gIzL3t0fgvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n6b8J-0085Br-7I; Sun, 09 Jan 2022 16:33:27 +0000
Received: from mail-ot1-f49.google.com ([209.85.210.49])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n6b86-00859z-Tz; Sun, 09 Jan 2022 16:33:16 +0000
Received: by mail-ot1-f49.google.com with SMTP id
 n17-20020a9d64d1000000b00579cf677301so12738126otl.8; 
 Sun, 09 Jan 2022 08:33:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=6aQP76L17zZIifS48mJSyI2JpkFOM8CJyj+hC/CiesE=;
 b=CQiTi+N11crrj7vOi/87Yi5wcLE/NItUJXt1V9D7EtEGD6PlkMw+L4n3DMsaQSMJad
 YYo5XjNoYs7REeCFigcR6Qj+cv188Qj0FQy9UUMgWpM2M8t2GdfRmW2s7Scl5wB9IRXp
 LqneIB4o1Hhvia+r0QKs1XDk3R0o3ssZLgvwfYE+wW6BCVQdKpKnGcM2NR3fWs1qy4u9
 xFERlJNa1g0Jr4X6m9UQoO3sKCA0Fj4Nuh+JnuE/pio5/5VgMq7OoJK7EGIM6VL6/V2h
 kanIFHsexifcNoXp+ekHH2R1/6RxLRhbqTAC6lg9pKv8IozF+bYKseXpMsrir1TCAixC
 aUKw==
X-Gm-Message-State: AOAM5310AABWX95URht3Ew2odkFkqZVqrHi0SGs4DgyqLeOy0KMEJiuc
 vGbOm1jIfNWDOFSSwM46VA==
X-Google-Smtp-Source: ABdhPJyjNrFptPbU7HtswyOghK5ZNW41xftu9unOvQFYSHzdWpB2VWJ/iT1O1WH3Rms7hoEFc6T7aQ==
X-Received: by 2002:a9d:4d8d:: with SMTP id u13mr14022539otk.246.1641745993000; 
 Sun, 09 Jan 2022 08:33:13 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id q65sm759252oih.45.2022.01.09.08.33.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 09 Jan 2022 08:33:12 -0800 (PST)
Received: (nullmailer pid 3263068 invoked by uid 1000);
 Sun, 09 Jan 2022 16:33:11 -0000
From: Rob Herring <robh@kernel.org>
To: Brian Norris <briannorris@chromium.org>
Cc: Kyungmin Park <kyungmin.park@samsung.com>,
 linux-arm-kernel@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 linux-kernel@vger.kernel.org, Chanwoo Choi <cw00.choi@samsung.com>,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 Derek Basehore <dbasehore@chromium.org>, linux-rockchip@lists.infradead.org,
 Lin Huang <hl@rock-chips.com>
In-Reply-To: <20220107155215.1.I875ab8f28c5155a7d2f103316191954d4b07ac13@changeid>
References: <20220107235320.965497-1-briannorris@chromium.org>
 <20220107155215.1.I875ab8f28c5155a7d2f103316191954d4b07ac13@changeid>
Subject: Re: [PATCH 01/10] dt-bindings: devfreq: rk3399_dmc: Convert to YAML
Date: Sun, 09 Jan 2022 10:33:11 -0600
Message-Id: <1641745991.444665.3263067.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220109_083315_014118_E7A8D9B4 
X-CRM114-Status: GOOD (  17.90  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, 07 Jan 2022 15:53:11 -0800, Brian Norris wrote:
> I want to add, deprecate, and bugfix some properties, as well as add the
> first users. This is easier with a proper schema.
> 
> The transformation is mostly straightforward, plus a few notable tweaks:
> 
>  * Renamed rockchip,dram_speed_bin to rockchip,ddr3_speed_bin. The
>    driver code and the example matched, but the description was
>    different. I went with the implementation.
> 
>  * Drop upthreshold and downdifferential properties from the example.
>    These were undocumented (so, wouldn't pass validation), but were
>    representing software properties (governor tweaks). I drop them from
>    the driver in subsequent patches.
> 
>  * Rename clock from pclk_ddr_mon to dmc_clk. The driver, DT example,
>    and all downstream users matched -- the binding definition was the
>    exception. Anyway, "dmc_clk" is a more appropriately generic name.
> 
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
> 
>  .../bindings/devfreq/rk3399_dmc.txt           | 212 -------------
>  .../bindings/devfreq/rk3399_dmc.yaml          | 297 ++++++++++++++++++
>  2 files changed, 297 insertions(+), 212 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/devfreq/rk3399_dmc.txt
>  create mode 100644 Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml:37:5: [warning] wrong indentation: expected 6 but found 4 (indentation)

dtschema/dtc warnings/errors:

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1577007

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
