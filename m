Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55EDDC282DE
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Mar 2025 20:52:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6UF4als6UX/pPQq1fVC1ApIffFP/UXfLEhStmRbhjAk=; b=S8xmYPq5H4E7Zi
	QIybu8YTs3d1OslR5McNZvcqGbKEKyvLgglDuq/vtEMfEDohQjYnYHgGJKzej+KuqgWovfVGUA7u3
	4YK9ddHTf62Oiw//1epk2htNmmbTDf9WVAL4UWEMrp0I3XG3CwBs2kHSxfc4e4LpoHxLCXulSavK+
	O148jlmd4ABcZedoMOaoBoi/sXLiqqDuU5x+OFFuLIe8dT8ZiRbcgcumWatFNcIiiqj/nyCwtWdJU
	UL5A8q/Pc5qfsBA7cvwAoFzG883gBo634CRdNZ8QZABP769iHLbAVk0/IuHyJVLffGBh6NianTkdP
	QZX7xTbE1jzHWjpj6oeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trk6q-00000003vdR-1ka1;
	Mon, 10 Mar 2025 20:52:24 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trk5B-00000003vH4-2y7a
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Mar 2025 20:50:43 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-30761be8fa8so52688051fa.2
        for <linux-rockchip@lists.infradead.org>; Mon, 10 Mar 2025 13:50:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741639840; x=1742244640; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MFIKZkaTfjlzWSNll4lqXgpcQhLW3KQ5qFxK5aL+7cU=;
        b=oUdq9f3daE0NVmFRYIZdoCNhHTCrIawwu7njtv0Sy3+0xZ7UThKYX3alTVMdZZAdqu
         7ZZaQlXMDU7zbdVbrpaRlr3RYI+Q624AvURmq5nML5Ei6ANQAtmNjmDTWKUDe9mExqLd
         mExEgUc7IeiStFm5J9RrRHlB2DngDHXpWef+vJFVDxuA30/Krvnp1TLxjtNPdNtraiFm
         1+cpnhhqfiMITgYEcZRPF1z3r/6AnNRGc3Cw3kmKuZ4QYL/ZnWFva28lv/kPMsuwLIWx
         JhSANK1uOcYk+ilkwzmUJ1ijTTTFgFLFL0FyAvZBBWfW5Lnw6cLhRaxIIDpPtRq2Hjef
         eksQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741639840; x=1742244640;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MFIKZkaTfjlzWSNll4lqXgpcQhLW3KQ5qFxK5aL+7cU=;
        b=anPJUvW6kLXHfJvZ3V34vzgD7f8gTvSGrUBThyA0X+gibYyQRWEUpzbDlTJXa1Gud+
         HimvlYXFEfpzvf+jLMtM8/vTjwlfvYEicdCWvabVYqPl+7L+V8278Lg2YqF0bjUXHibL
         gou9m/ofXcMiXgbaVwPavOtT2FMfKVrEP1dVL51OrsnX3YYapYYSZ7pmbG5rYwSXynGZ
         gnVKqULQGorBrKp4Mr/CMkHBklv/9dL1kIJhjcvEaY6BBtlCDTzY59BekskU+f+cL2C9
         70Iz0XWSgnW1rAhu1o4Lg+VktmL9ZD7F+9LXukWqoU2XWFFOqVad5TpLwGJdAs47WQne
         iQNQ==
X-Forwarded-Encrypted: i=1; AJvYcCUK+vUerxR2ctmUaJps4an4Jf5ySa38y+9TPLwzJj0fJEnMemR0DWjXXLftmM+YHrpnVpWMzciUcHQ+TP+7Lg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxLDoEEctZL1fR5gGJQRy/eBJ6omKDq+9qvNmmuPTOQ4OGbnQa3
	OVLzSSHxC+uCKpi5XFfwSiGbUxzO+eGjFvmSjFkMQTVO6E92CJOmSxhubRadNSM=
X-Gm-Gg: ASbGncu3EnI+o5sN/NsqI1BNjqyoDvpEWUyArPrjx8A5kD/mao06Ewz4hvbR32M0azM
	L73IUJHE088mjsm6Rh7GiKUqvN7v5MfPGksM8PEj+UcnLNHaBscWW9UpDn3ilGJFBqkZe4AHdqo
	oDWN42Avsy5CbGmfSaG962RR5M8Cxi4FnLEDs2/N6pVAAoiXIddxkYnw4bUm9sNezwxn71IeyGw
	JhBdnpxSOV7iZ7Z8M+nfXCs0Hb/RZV5l7nCQaZpoO3XmH0Px/nUA1Xnd9KqcQXPzjF5ldKLvb2p
	tscL0YupsPFXCv+Ct7JklYIui0aiARzTV2tV/4ab8nqGSMNDSFlVKXrrPAm4fWT40ZHxYISxS5I
	tTAU1n1Zmn6DSOdTQK7TSS6Am
X-Google-Smtp-Source: AGHT+IGcrlELrZBnhqzie4iDaP6avVfnzS9Zwuy/y5VMLk7WTqgSbAIjxpbHVS4pswFb2Tc4oA719A==
X-Received: by 2002:a2e:bc27:0:b0:30b:bb45:6616 with SMTP id 38308e7fff4ca-30bf45e2500mr50729081fa.29.1741639839816;
        Mon, 10 Mar 2025 13:50:39 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5498ff85e23sm1362140e87.225.2025.03.10.13.50.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Mar 2025 13:50:38 -0700 (PDT)
Date: Mon, 10 Mar 2025 22:50:35 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v8 07/13] drm/bridge: analogix_dp: Add support for
 &drm_dp_aux.wait_hpd_asserted()
Message-ID: <gnwqnapqlc7bym2nd55oif5lxxiibeme22upepbrgafilpcxxn@py5j7ju4rac3>
References: <20250310104114.2608063-1-damon.ding@rock-chips.com>
 <20250310104114.2608063-8-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250310104114.2608063-8-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250310_135041_752225_512C3504 
X-CRM114-Status: UNSURE (   9.40  )
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
Cc: heiko@sntech.de, dri-devel@lists.freedesktop.org, dianders@chromium.org, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, rfoss@kernel.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, maarten.lankhorst@linux.intel.com, mripard@kernel.org, linux-arm-kernel@lists.infradead.org, neil.armstrong@linaro.org, hjc@rock-chips.com, linux-kernel@vger.kernel.org, boris.brezillon@collabora.com, tzimmermann@suse.de, andy.yan@rock-chips.com, krzk+dt@kernel.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, Mar 10, 2025 at 06:41:08PM +0800, Damon Ding wrote:
> Add analogix_dpaux_wait_hpd_asserted() to help confirm the HPD state
> before doing AUX transfers.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  .../drm/bridge/analogix/analogix_dp_core.c    | 21 +++++++++++++++++++
>  1 file changed, 21 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
