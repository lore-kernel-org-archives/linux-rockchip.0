Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 100C8E77188
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Dec 2024 12:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pEflEWs8aFDyYWvUr8BtQHtPWKy4c56JS1puTqW4LgI=; b=tcSKywiWvxZQqz
	UKgdk6VB2KI1Bi1jnxV05SJI5/Ej0H96jltS+BW6xFoneeA6kVYPon0/+31u0gJ+jAP1jFRfA20LZ
	yRrDVqrPHlYwxBpaMfVa18e5b/XQ4sQ1AItKDJqlUOZfDzQcAjWzL9hDx/Lw6EvzyjItRwnPp3DqM
	uLw7I/FD4FA2CjcgWQOIZj/ceF7x6gkQy2vWlw6ECa/21WSZ4EsxCEZwV7fshHGzD8yopB1o8hq8D
	RRcsB7F9LpG7c6kXgFInlCMdkbosK52OHXRSh2je32MDfV56jh1rxONzM5zAek8r4ikYA2zkpfDdP
	4Y7BU/SOBSfDlR1JDCxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tSFAW-00000005CxN-3Bs4;
	Mon, 30 Dec 2024 12:46:48 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tSF9g-00000005CjB-3WSq
	for linux-rockchip@lists.infradead.org;
	Mon, 30 Dec 2024 12:45:58 +0000
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-3003d7ca01cso99301091fa.0
        for <linux-rockchip@lists.infradead.org>; Mon, 30 Dec 2024 04:45:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735562755; x=1736167555; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wR+rDjRYRPZhYRjSFOwWeCZzooZ4kP9UqFam3k443z8=;
        b=gFJ0Rr6F+KzhxK4sIP1VsOW/CbaeQJU/xOtiOprNdoprr+eEsfpuMX3n/Q/ypTBM0+
         Kq81v9hWhjmeQB8vQPO6kupcKVs03v+v17hIUjU908BAaoZCoviBpRlT747jNvfXilYY
         VFvVxso/gdwLX4MtX/w97bgZLN41QfoFmsGYBnvzFjIxOpblxMsLPQD/xFwnJcIcS2HB
         aGvFkpQUBaIs/MUrIhEmCaX5iTETu/ZmoaJlEUQ5B+ywFek9vsgIdQLxGJUSFs2+gNar
         DWsUu2b6Mu9v7pMcXN/V4rDsDAD7p0sg3N/ZTIyS4WK+dxnMpgvC1M6Av+Qb204HVv+F
         T89A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735562755; x=1736167555;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wR+rDjRYRPZhYRjSFOwWeCZzooZ4kP9UqFam3k443z8=;
        b=YBYJJ8C5bFoUAKHGI22M+1MQ9mzB7oX0n5y0PxTxiL/nr4hBsN59CfPpBDu+/Ljnyt
         RLKg+/vjfQhvKn7ums2AyZ/ln/YLLXeM3pdhO5OeybKxH7KWi0P3f0oTE5b1TuyO86aM
         fKUp1BLRPy8Ih+g4DCfvrYHKNqXw+1+Yrj5Obgo3KF6xxoghSd9hkxYDPW12PvkD8TkW
         aoNLGc6zr8lkyCdIKYBBePuo9LTieoL6Wd8arSoqN4uPH4QxhJQjGyo23TST3r70r/yb
         QaNCI/vm2IXr9so0AKa6BJ6AcdCW4FpW8P48Ctp/XUzv27L8VSVNnM3zM5R6waIrQrAE
         N8Pg==
X-Forwarded-Encrypted: i=1; AJvYcCXmVQkbjNLlr93pFp0vvlgzTEQLqEslD/yJWogEzm5NIV8p+PobEtJ8n6FdjqTodjenrrq0jp0UyAUMgKxP9Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YzKDxCBY1m2S43AGQ8XTD5dTnhrgaxjHHdJWOwVzuomEUellrQY
	jdpfjFnZKaFnDxUuiQa68XuOSRnOvaY2R0xh/OR+u0xzKScTvR7Xw9O7wSmZQno=
X-Gm-Gg: ASbGncutCQH8ajg6N/pk/0GUoC7BLLuIIl/mIfD72eDjBuI08WB7tMUf3wWRzYuAE3p
	B63tVXVsbdHpdxbskOKPZRDgib4t2CieTAdUTJ+OluHKEg67sY1eVUSVvThImftqFlRMvZSJwn7
	g3fKXGNWNnAmZzid+CI06GIZj0o8hmJnnUv+nBdUZH0R9KMu6wS0Y70K8DM973lEwArsaTzI+Nq
	DludYDhpXR9BtZXSpu6p6Gtuqg/K/OTkZ16uWus6kQCTllR3YwGU+ArmYwFzuEfcvYLqa8/7PVR
	AH8WdTaXVBpw+rR0NmrtW5EADSx9c4SHdjlf
X-Google-Smtp-Source: AGHT+IGQKU2FvLR9cA2rX0pjCPif1JwZJgsXfRJ7/tnNeUSB87XImquoxTJIlGTComk+jVqCQS1kGw==
X-Received: by 2002:a05:651c:50d:b0:300:3de4:ff57 with SMTP id 38308e7fff4ca-304685f2d61mr135629341fa.26.1735562754937;
        Mon, 30 Dec 2024 04:45:54 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54244e19cdbsm1240805e87.132.2024.12.30.04.45.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Dec 2024 04:45:53 -0800 (PST)
Date: Mon, 30 Dec 2024 14:45:51 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v4 08/17] drm/bridge: analogix_dp: Add support for RK3588
Message-ID: <n7xgy6v7txz56ew3mcinwhnln4jxar5uxtogs3om36ft2y4wz4@ln2uqsfaszbi>
References: <20241226063313.3267515-1-damon.ding@rock-chips.com>
 <20241226063313.3267515-9-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241226063313.3267515-9-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241230_044556_870961_79BA572E 
X-CRM114-Status: UNSURE (   9.92  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, vkoul@kernel.org, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Dec 26, 2024 at 02:33:04PM +0800, Damon Ding wrote:
> Add max_link_rate and max_lane_count configs for RK3588.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
