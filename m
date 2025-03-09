Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97ED5C282D1
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Mar 2025 09:17:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ns1QKMFajk8AcScC2blH/wLHER5FiPVIboUEgoAIGGU=; b=c6a2q0NS+N0VqI
	rzbEMMBdeHcrDjLc49a0Dzof6jD0GFImsCqj0Lx8ybIsGEW1BYj6nX23DVhwZCFYZDHjd1L7fNwy+
	loMpI+OWJk44G2BvCqh5Ep2Yjhq+tUIXa9CmWPiRcFQOy37RTbIaT9a3klnGHjQmPbD+DQpreLtSd
	UBnxgoQhMnCyFtIcCn77X0k8wFIeN+bgiRU0C3jCOhNdHw+ZsK4Tc7h2+v/iwUcpFr3W5UnsWEmgf
	u/nk0AlfwnCYB/uiY6NKlAA9E1dZ3F9vYAFK1BQ+SjjL+v7K2c1mvv6xP30LPYrWHZVDkVhom1KO1
	vN4Yb9wauSY9CtUy5Vkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trClz-00000000FyH-23Nw;
	Sun, 09 Mar 2025 09:16:39 +0000
Received: from mail-yw1-x1129.google.com ([2607:f8b0:4864:20::1129])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trClZ-00000000Ftk-43CW
	for linux-rockchip@lists.infradead.org;
	Sun, 09 Mar 2025 09:16:15 +0000
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-6f7031ea11cso32787337b3.2
        for <linux-rockchip@lists.infradead.org>; Sun, 09 Mar 2025 01:16:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741511772; x=1742116572; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=y0eUpkni4OJ6N5I2ip/hczJtRuPECve9UUx0lHvZiWc=;
        b=DgXLowt/nBMQ9cRIV+fxyUW5H+MiAQa7CK6q6upI9YfZuYt+yRO4YrrOSZbHq64jY6
         eRVtLSJxAEYH+VUiq3r3c+h2e0ZTEAsmUD/GiKtq4MNxv7OzDWebm/Lc1H9sKzgp7J4y
         Rgs+Z/sH8xzsF/Ct27zHxyMhfTy1T9k3z3LXZ7OLsEV87WheP+19o/pUBTfwzHVTbpl0
         YbDkeHOVVQqFSmeWgiY9AmPhK3M5HtDf96cY9a5G75EwC8ycmA9NBQeFP1/+4lawU1Pl
         rIInfSTkz8EYptyooesgWcpfEbQz4bu8bVn+UVkSTKWfYPULyGIYmD1DbQIfA2zIj+Hn
         O9cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741511772; x=1742116572;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y0eUpkni4OJ6N5I2ip/hczJtRuPECve9UUx0lHvZiWc=;
        b=WDb3TNr0KaDCTlFf8pwhuG/NRiLiYt4vkPx81XLBG3beB5wq1wIZ7j+/IfU7h2w0qg
         fhLlK78j0BfaAy400v2/4UmgtRtUyrQ6XJ8q3cDaAA/fxz7rYWXZ/u+mL2kE/gGtHzXv
         PNAjmDCnoJFCFuqNVcko5d2+jb+uZpfe0Lsu5aSxv5dDnyM2o7zl1n2Y9uBfIea+vOLQ
         cdSaJSLw47/34hTN8zAhYpu00pj0Rov/qPOFdYmiqk73WOvRCW1Fp6YnRCnxY++JnjlI
         pgchq/5q0M8kwX+zFD5OhuWrVvqYOVesOh1evGoRnBeDkelgT9SeThmYwCP9v7zUek1P
         0SfA==
X-Forwarded-Encrypted: i=1; AJvYcCUDbXn50OQkCRNNHMh043YMSVAcPaVZ++wIZtn448HujTy6oiCZS1zcXRLhV9Kgqk0WNzbsXKj+CUTjQWVcpQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz7mIgnPGdmO3s6GFbn76DbD55R1ZvSiHYipRdn17edRd1DGNPH
	YH7M2Q5q2IKNZ2MSetU1O+0Pfy+Ish7GwSK8foxxAwCpRWqE05vEgPM6dJOblvkCwDqsuDcdBgA
	flwKSAVZGCt2qf83Zw7aoocfylnQLxytW3h05cw==
X-Gm-Gg: ASbGnctFWtbf5Yso0Zbx+/B0BAzYE6D6KkKIX0nbf9eJrX29jScBDZmhyNmcLNQmlAA
	MQrl7TMZzNFwSNGETxQ4wsUaHG3oKImtuDNKyCr3gX/0GCTgsMTZX+uFmzb1hNymDTqwDaQKsHT
	g4Els7GZRHWiDDd3jKki7r4RZarRPNOmNMwHSsQYHRGW0I0cuMrq0=
X-Google-Smtp-Source: AGHT+IFPECWoQ2SLQxFVAn6AAfos114PtgmwIoKQ+zMM+yCAQaFRw3Tq8C5wAZ3CID7rhAZlrgL2zlDgjqBdRN6ki9A=
X-Received: by 2002:a05:690c:6382:b0:6fd:3fd0:6f2c with SMTP id
 00721157ae682-6febf38323amr131915417b3.29.1741511771952; Sun, 09 Mar 2025
 01:16:11 -0800 (PST)
MIME-Version: 1.0
References: <20250308-phy-sam-hdptx-bpc-v5-0-35087287f9d1@collabora.com> <20250308-phy-sam-hdptx-bpc-v5-2-35087287f9d1@collabora.com>
In-Reply-To: <20250308-phy-sam-hdptx-bpc-v5-2-35087287f9d1@collabora.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 9 Mar 2025 11:16:00 +0200
X-Gm-Features: AQ5f1Jp3ty9yF8Gy946JtVIhFnSayq957H6H-29ZcG2uPAfgmPlCXdifLdlKe4c
Message-ID: <CAA8EJpqYE1drM6=C0AwPZ-e5RkWqjMTpWQiwhA64qby1mmVL1Q@mail.gmail.com>
Subject: Re: [PATCH v5 02/12] phy: hdmi: Add color depth configuration
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
	Sandor Yu <Sandor.yu@nxp.com>, Maxime Ripard <mripard@kernel.org>, kernel@collabora.com, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250309_011614_019776_9F41CF03 
X-CRM114-Status: UNSURE (   9.47  )
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

On Sat, 8 Mar 2025 at 14:21, Cristian Ciocaltea
<cristian.ciocaltea@collabora.com> wrote:
>
> Extend the HDMI configuration options to allow managing bits per color
> channel.  This is required by some PHY drivers such as
> rockchip-samsung-hdptx.
>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  include/linux/phy/phy-hdmi.h | 2 ++
>  1 file changed, 2 insertions(+)
>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Just to confirm, are you passing TMDS char rate or pixel clock for
DeepColor (bpc > 8) modes?


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
