Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB121CA1003
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Aug 2025 19:54:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XFONCoIuDoRGtb/n844AaqRBwWClEl7ZtJ5SfE2NkTA=; b=gBjvT9i3k/V0mC
	dc0pT+mN69rqqJ8MfPUri/Km5GWClLwU0g6/3ty8W3Dk+M90Vi5v/gKbveBHXeGtydzNuIFWTr3mu
	QUlHEtZp64sxp/ZN34W6p4U+s/CKmCM6rmrgGWxFPUPg6QpTc57gkB6BgG9e969kQe+qve0WGA4HM
	VYQ64vWjvHcnx0fajLOlO2f9TmKe5O6CGumD+SmNZ2jGEmXzTEcwlX+LUGYLCjg52A1Vee6ux7y5u
	eMphTPK9V4fNjhUdgDFGZnG3mYfcQASc42ZdxCvGG2a12C/S68ydbXfErmWc22gbrF1k6Kl0z74Up
	10BkT2b9vEky7jEwyErw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1us5Ap-00000006oP5-3TST;
	Fri, 29 Aug 2025 19:54:11 +0000
Received: from mail-qk1-x72a.google.com ([2607:f8b0:4864:20::72a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1us0q3-00000006AP5-1pbF
	for linux-rockchip@lists.infradead.org;
	Fri, 29 Aug 2025 15:16:28 +0000
Received: by mail-qk1-x72a.google.com with SMTP id af79cd13be357-7f777836c94so205857685a.2
        for <linux-rockchip@lists.infradead.org>; Fri, 29 Aug 2025 08:16:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1756480586; x=1757085386; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lOUf78kJC5CeFRX+36nx9b9SoyYDtPWwiSrTZqImx4M=;
        b=cxSRhGLzpUG6jN7tBcvV3gY+1ehjxH1HYcbQIeLAfB+pu+t+U/Ssaoes/4Nyhyj8NN
         eT6gaQjSewK+8EvQixp3Z//CXzZwYMU3K/i+W9hp+J0Qbf/r4gnWCafAUbgLXhMCkHz0
         u7XzyWavGVS77go5wdVpoubL0XOwVI7M4F3EmXgabWrQYQq49nrQTeEur+irtxX28D9/
         6KTe95CT9demDmYFhdUBC4sq/LqX/GxECpOUjwoeLLhgiAwpcfon0CFTQR0O6weneKnQ
         TEScbsZxOPEMEEgH9tIU8F/ygeBLWScTg0oAUTlr+0sicMnqhruYm9yd3bFmun+2lr0w
         EN3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756480586; x=1757085386;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lOUf78kJC5CeFRX+36nx9b9SoyYDtPWwiSrTZqImx4M=;
        b=eM37b1VHOXxzUAPOEPMhB4P1nhQjvwdrmk4rGxlFcSPO7uZvYgsK/UP5HPGgLkiACN
         MbqKBhho7PIBdcbB6dsOT8pXLO/i/r4QqvE7lUjIdmvp3SxQfHwUPwmwNMCDiiLHBa9y
         FNmSgGAt0ZuztWrZ21xnVs3JBpGR3wFzr4EOCVmwhM1/CegYgw0o7XUwACdAVzJWUPze
         Z/tQL+Rpm2eOnrHRjzRUGVzuqNYUNp0O84hPhvM8U8TLhRfsmuWaveksWZz15avwbb11
         /rdJX/MQEDD7n80pW9wj7dVos030ooKYDVUuFgioEVXniVAOPDdW+/Bvpz5+nw7Cx5UU
         XJeg==
X-Forwarded-Encrypted: i=1; AJvYcCXBU1TgBEkNXCtBy+0IOPPZaMFWKfhCTSLr5AXF2n+zayWGqhnmXh6FCx+qcT4Be9ftQT/hr2CPrOtiPuGwEQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzHoV3cci+EaoyiCTgk69ZrrVO1YOrrrwG8UbmXXKWAm9PzRkFG
	dxhYbVHtuEmswx5DspW4/75DjR11qKXrhXicX5y/RuS0aL4Ak1ZARZKcn7rOuqKJ0lNL40+HKlm
	5VTgh9RZFUE/wrF0XrkrO6cOJVeHQGS7nmvw6n+uSQg==
X-Gm-Gg: ASbGnctjzxBeEp9LGFXd+SrV58GPI41xxK6U0MlyjtrzYgmjQFnYWZVru2hn+EMuIg3
	dJrn0r3ta/nlwl/iXc2pduleC4zeb9liwjcShjVg8XDoXzBT/GdTJP9T51x/pj+01MyY5blcZa0
	gj5byCrw6JB7WFaFIBTxzuocL7mSShzWVPKcKY9J8EDaUny2lqUuebuuAGjukb7srf2Nn1lrDPp
	/YArg==
X-Google-Smtp-Source: AGHT+IGnzlI20hD81QuCUxmiLx/CLn49uqNE3sl8frDh4fjPDY8YZMBAvQbF0rOj2AAQybUTZBlLQymUJBEgeOnVx3g=
X-Received: by 2002:a05:620a:4053:b0:7f4:5aba:d966 with SMTP id
 af79cd13be357-7f45abadb98mr1590732385a.60.1756480586040; Fri, 29 Aug 2025
 08:16:26 -0700 (PDT)
MIME-Version: 1.0
References: <20250825-rk3588-hdmi-cec-v3-0-95324fb22592@collabora.com> <20250825-rk3588-hdmi-cec-v3-1-95324fb22592@collabora.com>
In-Reply-To: <20250825-rk3588-hdmi-cec-v3-1-95324fb22592@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Fri, 29 Aug 2025 17:16:14 +0200
X-Gm-Features: Ac12FXzpMvL7DIJopMIso2mzGRacTGimE8ocHlW5RhJ-2PuaDc4LbG8M9GuvEHk
Message-ID: <CAPj87rN7gHj2jyAa20hJXHscauupUcEzYxfgH8-9ykuVcETOpQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/6] drm/bridge: dw-hdmi-qp: Add CEC support
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, kernel@collabora.com, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Algea Cao <algea.cao@rock-chips.com>, 
	Derek Foreman <derek.foreman@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250829_081627_479788_CFA049B5 
X-CRM114-Status: UNSURE (   9.31  )
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

Hi Cristian,

On Mon, 25 Aug 2025 at 10:57, Cristian Ciocaltea
<cristian.ciocaltea@collabora.com> wrote:

> +static int dw_hdmi_qp_cec_init(struct drm_bridge *bridge,
> +                              struct drm_connector *connector)
> +{
> +       struct dw_hdmi_qp *hdmi = dw_hdmi_qp_from_bridge(bridge);
> +       struct dw_hdmi_qp_cec *cec = hdmi->cec;
> +       int ret;
> +
> +       if (cec->irq < 0) {
> +               dev_err(hdmi->dev, "Invalid cec irq: %d\n", cec->irq);
> +               return -EINVAL;
> +       }

There is a bisect break here until patch 4/6 as nothing provides the
CEC IRQ, so the whole connector init will fail.

You should either plumb the IRQ through first, or just make it
optional to retain compatibility.

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
