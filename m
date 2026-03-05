Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C953EF30952
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Mar 2026 12:15:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iCc8lp30PxSadLKMes8sDuCX5uFJ6xzGtQrTBBv2Zh0=; b=G882J1tJA9fcPa
	hJaBfYK6uh8drroGCsXIjxvtfdlRV4v2y/H1mmHWJ1jCuXdEYAid5VCsqDqi+7g3HL+bGuKaNF10h
	DNNL1RLGUPB354NymJFS+BcKv2zZqtwkSpa0a0slozkfrZmY201OWS4/dAl1Cnh57tL7xbiVzqezO
	vJS/Im+K/0CuX8Kry8YCtqTYteFaOZqNm9AvS7ZH6UqXS7bs4vO+FaLDv+Q/Cp/1K6PxXuXKLh4Ok
	1Py8cshD8czxAhCvgb+4ER6WiJdfMcl/iyMddTq3FMYLF4nc7jL7GAB9LpYp/Un4n4/Y4OX/wZ4bo
	JZjMW0Gy49jYm7aw4v+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy7cB-00000001k6C-1qLx;
	Thu, 05 Mar 2026 12:15:39 +0000
Received: from mail-pj1-f52.google.com ([209.85.216.52])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy7c7-00000001k4l-2UEF
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Mar 2026 12:15:37 +0000
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-35691a231a7so4896011a91.3
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Mar 2026 04:15:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772712934; x=1773317734;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yS764krKV6WfB8kOxjvP29bXooB1nm1bNBDNiujlO4g=;
        b=GJzKL40Yp9FsbhnhqJBge02OFqhp+kXopx5OTeDqyxhIL5QfH+O9r4gGOo7Ma/0JQ5
         /W0IM3BGiztoc5SSJiWumegYgkO56nCMlt5tN5C7FWcvSs+j03HwsyJKrWV2dLHR5Y3y
         nkI7Xo9IoDr6Wg9cpAVG6yQ4y9k8+F9O/sCJrfuuH5wFOe6euIB6VgJWgAVb3VSdXD2X
         GEwfZma05MLdn/YTjdl4f/7LSWYheZKOeICqoXGVm+8/OHEKdWR4vThcogTRf6pzHVOO
         pyMdWTxIydgUb3eOPNfR8zxjoXKmNXl4Oo2JQoYJiMCucI89E2FMpKvQ0+s1KdheQFuD
         D6iA==
X-Forwarded-Encrypted: i=1; AJvYcCVZRzdrJhhBaa7IAE8JaVaOAVJIT8K0C9oO/GD+Jc02bpLlPt53ntNrXIbz+kr6e1wcB12G9Q8PTHSAt1q5mg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyCMrHN5HX9PY/FTNjXaLOIt8CGS5rK64CyDfB81yvqBkmHFy5U
	QK8iownDDjPnhWLehEugHT87+TdfbekEgqPIFiCE4DNdGEcpZzxn0KdW
X-Gm-Gg: ATEYQzwVsA//dvUEl3lEt/zdJYroMUEq+tuCikrcrrJA8/wbvH/mPAi0Ez7iATAlTOV
	ppfdqj4G0WajRIdVsNTbcmVPlC4fSDv72C+8g3P4oQ+bbJBB19E2gFD3qmTXdrR3G21fH66/HCz
	VMUrFjNr8Qkm9nRWwsxOZbv/kNwRxLr9z2FWg4vjt8ffQXzNO+qKxUqzyDRDK5Ud6JXObpjDSDt
	O+hVrdv/GH5hEcF4elFB0eVY4d0GfxKV4ShIlyvxQ/bGgOVzacWKN7XI+a/yOr4171mN/c8p4s6
	WN5hVutx2YJIsz7+ix3ZO/hDzRL63+QaEeGwKswdvMPcqXi1nb/KJZw2MWLoiuLJWCDT4G6jfLh
	QkzTKxg3C0lZ6Wx+lYw9Zj4uUpuveBm/oUpuf5Exp+vsJVL4VUEb9jQ8p7ky6I7AJZQGonJ+YiX
	MVdPN3dcyzcUFYo5dPmWBBNDsNYEWggDN1tJQt1JtDLys7XbNO8S4yhkapXeUhO7+6DQkwDnpgc
	5EHCzV8Ix4QW3ghaCi8KuzfzxdXgc5r9+tS6IlSBgAP6qM6wjuv1wTh3s+5sw==
X-Received: by 2002:a17:90a:d44b:b0:34e:630c:616c with SMTP id 98e67ed59e1d1-359a6a92750mr4210979a91.31.1772712934483;
        Thu, 05 Mar 2026 04:15:34 -0800 (PST)
Received: from localhost (fpd11144dd.ap.nuro.jp. [209.17.68.221])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359b2c1daa6sm2391359a91.0.2026.03.05.04.15.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 04:15:33 -0800 (PST)
Date: Thu, 5 Mar 2026 21:15:32 +0900
From: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: Joe Perches <joe@perches.com>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-can@vger.kernel.org, linux-gpio@vger.kernel.org,
	linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org, linux-riscv@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev,
	linux-tegra@vger.kernel.org, linux-usb@vger.kernel.org,
	netdev@vger.kernel.org, spacemit@lists.linux.dev,
	UNGLinuxDriver@microchip.com
Subject: Re: [PATCH phy-next 22/22] MAINTAINERS: add regex for linux-phy
Message-ID: <20260305121532.GA1649635@rocinante>
References: <20260304175735.2660419-1-vladimir.oltean@nxp.com>
 <20260304175735.2660419-23-vladimir.oltean@nxp.com>
 <a8fee1cd-1e69-4a9e-8533-c0988c480fb9@oss.qualcomm.com>
 <20260305085148.7cwo3yflp7vcfldf@skbuf>
 <f3a5aa3df78553ffc0fd0024f5fd36a4e2158c88.camel@perches.com>
 <20260305114352.2f7btqixg4tu5bzl@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260305114352.2f7btqixg4tu5bzl@skbuf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_041535_634298_4BAA941C 
X-CRM114-Status: UNSURE (   5.33  )
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

Hello,

> K:	\b(?:__)?(?:devm_)?(?:of_)?phy_(?:create|destroy|provider_(?:un)?register)\b
> K:	\bphy_(?:create|remove)_lookup\b
> K:	\bphy_(?:get|set)?_drvdata\b
> K:	\b(?:devm_)?(?:of_)?phy_(?:optional_)?(?:get|put)(?:_by_index)?\b
> K:	\bphy_pm_runtime_(?:get|put)(?:_sync)?\b
> K:	\bphy_(?:init|exit|power_(?:on|off))\b
> K:	\bphy_|(?:get|set)_(?:mode(?:_ext)?|media|speed|bus_width|max_link_rate)\b
> K:	\bphy_(?:reset|configure|validate|calibrate)\b
> K:	\bphy_notify_(?:connect|disconnect|state)\b
> K:	(?:struct\s+)?phy(?:_ops|_attrs|_lookup|_provider)?\b
> K:	(?:linux/phy/phy\.h|phy-props\.h|phy-provider\.h)

What about

  F:	drivers/*/*phy*

or something along these lines.

	Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
