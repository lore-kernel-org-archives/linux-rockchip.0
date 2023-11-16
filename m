Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 095F0C197A0
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Nov 2023 21:46:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+hZvYLENzMqhKS2WusgT7Gnpt+XjxPSRh49gbUjNDdM=; b=BojSUen2jQycVX
	lRTv6V3N/Se7hiRuDPOhHbdtgl2SLbfhMDgwPwc0Fl54+7yXko3DyoGSa1fVoXkNDMm+QNvjuWZIC
	2QJTOzT86MfL/2n9X1YFB7cMfiuB0eFN7naYGCB1VGNWvxJa1iSumecZFzuyrM411drxkOIA3UNzB
	Tc6N/dAAGnnAvGHTHSPWmaWU1jMeyvNGYVOOm9EHOLJHGF2Bd/LfCa+2rvFsHM/5mDWXa3z0edUw9
	e9fPwlDTtgwgGWeEO/g3+DazX2gjGFcuT3ki+ybA7SHA434J7QnT+os3fcfX2A9mrqDa1dkp1Ur4d
	bcPHjgAdypIRRYTMsmkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3kBP-004wiE-27;
	Thu, 16 Nov 2023 21:45:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3i1f-004WJd-2G
	for linux-rockchip@bombadil.infradead.org;
	Thu, 16 Nov 2023 19:27:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=UdXxO76TxrHNOJ1hG2GWZ3FtG3o6//qcCrBEV7e6JF0=; b=YXtPd3P9kB6VBE2WQ7xHBf5DEC
	d96ZHHbJmJsTrcWbbwBPBzPMBU3Ev/7ThAa2Fgb5aH7QVCg4dkNcWeeSOVsJiwhCG7VZPBo+IQ5Kk
	MGhBY47Q1VjGOybmowP1qczhNLIFi+7NyNyxgZvfp4uSxcqwF0b1ObUSuaArVHMGHWhs/6yVjOIaD
	K+S14CUSzSFPwvlR+CUg48N3eMFGfFRiA2b1pxxHnrhLGBV7u/Cj1qk///T66GHgGj6U0ZSMwxVgE
	Pay6fglJFng02rB9S2Vx/H7fqdrkrN5nytAGbtLnPZQg8d7Mf4aG2FmZtm9PuyS4XZlZV8lwKxZha
	VtjQUxqA==;
Received: from mail-oo1-f46.google.com ([209.85.161.46])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3i1b-005mzt-1g
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Nov 2023 19:27:42 +0000
Received: by mail-oo1-f46.google.com with SMTP id 006d021491bc7-5875c300becso674397eaf.0
        for <linux-rockchip@lists.infradead.org>; Thu, 16 Nov 2023 11:27:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700162857; x=1700767657;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UdXxO76TxrHNOJ1hG2GWZ3FtG3o6//qcCrBEV7e6JF0=;
        b=qZHiN82Leb75Jjd3KqdHPwsI6EddLPYbFISkCdhYRDv87KrQzH4Lm4QTqySD83/2rB
         pH6BNhVadFsgodhvCaGuVsnipHZJMR+F38mjFYLiBKSPQfYN6Tf47732KPQLCQ0k9MEx
         h4dgi/64Cl/pIYI6nVJHjiEUWaHSioXYk3JSk/I2EC6V6efKrqY3CqGARxpWx4NjxP44
         awMUKmZmz4q3A4jdOY10xhK73jkcYWTFecZxA673Qrn/rIjbEdiHXnpMxAgQ40iB4QR6
         6XmWAQ329o4IwdjYkp8wnOi1OLeyeBPAR9QfpidxGNRiFHe7DCOvXly/9Bqrl3Hk7igA
         /0Jg==
X-Gm-Message-State: AOJu0YwybOTNWvGzW2F2ud9qOY9sImNfUHF4Crck0rlOKQHEC634b7Fg
	bd38gtC8h3aSIrP0bmvb/A==
X-Google-Smtp-Source: AGHT+IFX+Vh0cRgukREyljR+kjDwhtv9/esCRp99bcIH9IEMsr6X4lDgVj1LBbJa0EfNgm8RoL05IA==
X-Received: by 2002:a4a:9187:0:b0:586:b062:f3d0 with SMTP id d7-20020a4a9187000000b00586b062f3d0mr15603964ooh.7.1700162857520;
        Thu, 16 Nov 2023 11:27:37 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id w18-20020a4ae4d2000000b00581fc1af0a7sm11965oov.28.2023.11.16.11.27.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Nov 2023 11:27:36 -0800 (PST)
Received: (nullmailer pid 3065895 invoked by uid 1000);
	Thu, 16 Nov 2023 19:27:34 -0000
Date: Thu, 16 Nov 2023 13:27:34 -0600
From: Rob Herring <robh@kernel.org>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org, sebastian.reichel@collabora.com, kever.yang@rock-chips.com, chris.obbard@collabora.com, s.hauer@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH 09/11] drm/rockchip: vop2: Add support for rk3588
Message-ID: <20231116192734.GA3050632-robh@kernel.org>
References: <20231114112534.1770731-1-andyshrk@163.com>
 <20231114112855.1771372-1-andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231114112855.1771372-1-andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231116_192739_721035_BC006EC7 
X-CRM114-Status: UNSURE (   9.78  )
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

On Tue, Nov 14, 2023 at 07:28:55PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> VOP2 on rk3588:
> 
> Four video ports:
> VP0 Max 4096x2160
> VP1 Max 4096x2160
> VP2 Max 4096x2160
> VP3 Max 2048x1080
> 
> 4 4K Cluster windows with AFBC/line RGB and AFBC-only YUV support
> 4 4K Esmart windows with line RGB/YUV support
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> ---
> 
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 324 ++++++++++++++++++-
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.h |  57 ++++
>  drivers/gpu/drm/rockchip/rockchip_vop2_reg.c | 215 ++++++++++++
>  include/dt-bindings/soc/rockchip,vop2.h      |   4 +

This is part of the binding and belongs in the binding patch.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
