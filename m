Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99874E77199
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jan 2025 12:41:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FsRy/DU+8cZ5C94A4R3vNcMmgtg3umliRYiJkEvEPq8=; b=TnBTRnxwwjWU4o
	Jx5LAQTTjcH4+3uQJfIqgy/gwC1c+wL6GBDvUpQVhsLftSb+I4MxghHf+1Ks8f5JXcxubC0xP28hB
	/3jHmm29ggf+rtzC4sZdSzWcYPwecnjODYBc0vuv4+Er0HsNklpBbdZr627TDPpKixYEUsrXpmUDN
	d9dnerIBzr+YESjYc2+rr7Das8Ve0PuIMFvGcUNn27Fk1GnAht1P17MCoMM24pqbL5VCqCnbS/He7
	zOzLTIhwEJhhYmBizI4m+K6rXkrWP7CL7j78lJbRjdQqto4P+8NNyOAbbma2qwGS4n4Q2qu+fPBHO
	66zxkTYckyGfJXxM13zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVrqf-0000000Bsi1-00g4;
	Thu, 09 Jan 2025 12:41:17 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVrqb-0000000BsfZ-3e76
	for linux-rockchip@lists.infradead.org;
	Thu, 09 Jan 2025 12:41:15 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-53ff1f7caaeso876996e87.0
        for <linux-rockchip@lists.infradead.org>; Thu, 09 Jan 2025 04:41:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736426472; x=1737031272; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=R7tMXX4qdRYGFciUc1sdwNNpuk6x7gkAmHud+GC2Ng4=;
        b=r9mIU88AMnog87UGjUbk4bqQO+L41qmnvduh9ZJ8pC5yHyrVYSQ6AsJclptsjb72LO
         JkeafHkGis0Q0dPf4V9il/6KVlm+dpMmLOqV0U45UNzBTWcvk/UC5tZGoZKlLtQ+Xogr
         r3d9aXzZhfn7WjaQGln9Uu9XSHkqDWTzvFZL0EZPdR0M5vAUfZZMdjOSIPVX5qhJkPhQ
         9dncs3A1NYk9OCZMJ3en86jV5RMy6QfGGzmsGkD4cs/z0fwnrEJDRFXbDlt/sheNMS2d
         Wy5SKgtbrHwtaTH+cbYvjH6Or8CzY9+Zlv+RkmA2+dL7BZyrVSMlzSEGV5nXTiAsmWZO
         nBIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736426472; x=1737031272;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R7tMXX4qdRYGFciUc1sdwNNpuk6x7gkAmHud+GC2Ng4=;
        b=ncNm9w5399KN26u4xW1AuzV2U4i+B5HasSPmhKkWs7t22k8Gqc2sFOUfTbj7yy862K
         VcJYUCdNmBKdP4CGW3KSFRW6fY52jxTB0v59lmeql2LkHWhvjMInkPBDPZFCuNVMiqT7
         Xabeb4Ksgv+/pB3W7T+JyFAlHBkIUGV/v2p+RTUScjgMVRnYOU+LnTqAx2PIy6YGUFDB
         9jU0xlNTTF7q67txjDzNO2pcYO7eNkjmw7yunXY6j/z8KcHtlnOsCafR6nZdziEiXpq/
         Tuy0jl9ona2AKovjCq0FJEQjmwRrtTSLnb1YcRnKwMUOcTgat+8F/T0gtV+XULwdeVWV
         GcOA==
X-Forwarded-Encrypted: i=1; AJvYcCXhFIiaXONpiy/BSspzp79Gkm1z9PZRGVGvfTRII589IBNJYCU1aROCVRuJPsJZMsR5uIIcWjqsl0g2AEF3WQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw+9fDzkLhphdKTMgX73msa72bG68hycUgUPg6XWJX8eSmTWzo9
	5nJ1oOkXkBhdUJhiEx2QxPbvk9AowHbzcjCpH3DWB1Q9Stolx8Mkz/KI0krZm1s=
X-Gm-Gg: ASbGnctNE89MHdl7i996GnrFYqm1UjqKmneJlWTgAFIfRqA0W+RBN7LKR5LSaCU+Nkl
	1FvKi7s885dFiTcKHtmY7yvq+/jpFueiossSZZe822q2FaXu4s/quMkMqDOnNeTpnoNSsbyjHfB
	L/07rWNjZ6kXr8tlVys+JrzDASOuzCxnXJB0DHvIg/qhB0nwJIv4D8zrQjlrE2uHsULSwa+L6Al
	O8psPwik6X0u+nbf7Pa0mEpU10Hea/vkhhXCdVmZblhk+AKWiR6uLUMnSEChxnkACG1C8Hz8eVN
	zUqqdHvrAevkQcn+Rv+4xu2i+gy7dKTg2Fuc
X-Google-Smtp-Source: AGHT+IEwvFACO52C3ryh5S7HnArGMLvYQPYGuxGvrDUpjWDgL5Aq/3itURjeK26UKQyFNf6mWWqB1A==
X-Received: by 2002:a05:6512:3d27:b0:542:2388:3f09 with SMTP id 2adb3069b0e04-542845b20bdmr1837748e87.37.1736426471690;
        Thu, 09 Jan 2025 04:41:11 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428bea6a72sm185201e87.151.2025.01.09.04.41.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 04:41:11 -0800 (PST)
Date: Thu, 9 Jan 2025 14:41:09 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v5 08/20] drm/bridge: analogix_dp: Add support for phy
 configuration.
Message-ID: <7tvoipnypxzkzu235vc2n4jehcxgfkmgd5op5j6cqibqwmnlkg@vpftfenswtrq>
References: <20250109032725.1102465-1-damon.ding@rock-chips.com>
 <20250109032725.1102465-9-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250109032725.1102465-9-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250109_044113_907005_E676CE7C 
X-CRM114-Status: GOOD (  12.86  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, vkoul@kernel.org, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Jan 09, 2025 at 11:27:13AM +0800, Damon Ding wrote:
> Add support to configurate link rate, lane count, voltage swing and
> pre-emphasis with phy_configure(). It is helpful in application scenarios
> where analogix controller is mixed with the phy of other vendors.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> ---
> 
> Changes in v2:
> - remove needless assignments for phy_configure()
> - remove unnecessary changes for phy_power_on()/phy_power_off()
> 
> Changes in v4:
> - remove unnecessary &phy_configure_opts_dp.lanes assignments in
>   analogix_dp_set_link_bandwidth()
> - remove needless &phy_configure_opts_dp.lanes and
>   &phy_configure_opts_dp.link_rate assignments in
>   analogix_dp_set_lane_link_training()
> 
> Changes in v5:
> - include <drm/drm_print.h> for dev_err()
> - use drm_err() instead of dev_err()
> ---
>  .../drm/bridge/analogix/analogix_dp_core.c    |  1 +
>  .../drm/bridge/analogix/analogix_dp_core.h    |  1 +
>  .../gpu/drm/bridge/analogix/analogix_dp_reg.c | 52 +++++++++++++++++++
>  3 files changed, 54 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
