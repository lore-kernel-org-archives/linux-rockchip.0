Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87E53D1039D
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Nov 2025 10:57:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1YOFJyaUhtZlI4ZHFHR/eqBA+vEbRmuDW4Wj9y4knT4=; b=fw3uWE0Re+fgIq
	GtTD06YihEv7cXgblrRCS5ubNkROFXGvNZuJi1Y0Cc/f3adc4sYg31PWuC7cw7KMXKfVCdwMydVXA
	zhcnI6eWHB2gvExZU+rzSbvn3/zG9a6y9ozXpoHjP3sjquNRTTD/7ysKh7Sjx+dk9xT/clqeY0zbt
	w+rX2ZmyiSAit1cehHMKdO7yUxfyakhVpomRQioZ6wFAXxbrRpAay5X1thGgywDD+GYN5Gzs8gc6M
	GDMVOicNRmIy2QiQY7ZLzAv2FDaOPv2ITXo6b8c3iOW/u138vKlyxBW29SmxgF1GUIWoSJFxkLxiL
	20v+v2i2fcQPXSwQAmsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vODDU-0000000EqoM-159M;
	Wed, 26 Nov 2025 10:57:44 +0000
Received: from mail-yx1-xb130.google.com ([2607:f8b0:4864:20::b130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vODDR-0000000Eqme-2NLM
	for linux-rockchip@lists.infradead.org;
	Wed, 26 Nov 2025 10:57:43 +0000
Received: by mail-yx1-xb130.google.com with SMTP id 956f58d0204a3-641e4744e59so6852016d50.2
        for <linux-rockchip@lists.infradead.org>; Wed, 26 Nov 2025 02:57:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764154660; x=1764759460; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6fJUBJYtX0hwUyO3vk+Ac1lETs5qleohrjV6r1JhUoA=;
        b=vGogSeSj84hYEsk9XY15g1YunBpd1uQTTPs+cbJIv4p8aHHciOZI3VTHVg1Ykt1yyz
         6sQJgNxv+fKYgaSZZU/REY/OWCFEOuq41MaXNOJI+cnA+ODB+WWFMWvSIqCJ4bcFcx0U
         xWa86ozbzo45Yk6xQCfUKPHliU5Ywl8F0rS8jHYO87Yt5AWlRr/hkGPVwXul5F2ZMO/o
         0S6Kss2NHSGmTZ93xZ1yxizKzdxQ8A6xL6gFcwPoi+vB9bBQUy7YBGO7y+dxwkvxJ50J
         N1aB9dOfhzWQi0OeIP84Vpr48N81oVYIKsZyhb88o04xQM9RpIwYAnnNpjaDb3Kz9Zq4
         VbFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764154660; x=1764759460;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6fJUBJYtX0hwUyO3vk+Ac1lETs5qleohrjV6r1JhUoA=;
        b=bcKC5KFquPSoEJpQn7lNq90/aQzdCMA3LCy0gwJh2E90fAqaQ8R+8t0U6KEz6vK0KO
         upVRHqXKe05BeSgrWpwMCOb7SK42qhQBZB/AoUVYifRXoMoXuKJ5xVUHSiLIkKhy2jHD
         7DjWscYcUGdGXY7B7XDC3BVj/3/rPTsD0weE3S31+bHI+5rmLc6x4/efHMofPWbCKLlY
         yvZ+uHchoM04KZLwUKMr5+fW6WkmQcc3z+qoDykbJx7lZC67xMryCnt+lDTacqxOOL0o
         DDweqnvmiR9Dcs5xh10/vzoUR4AjqSOrfL4s1rhbzuFyGsIFAMS8zS/0/xp4Xpi07Z9d
         1iHg==
X-Gm-Message-State: AOJu0YwLhx/Kp5bfMHzRsWYgj52vdin470jZmG/C/L0ujtXZjVSDxwml
	qiSke8pVN+ACgji0D46qOlGva8IDHIg6Za2smJQFDYT6S29faNmk1qV2q499AJ8ddroCJnz0xYz
	eAc3BBGR+5zjYRuVCI6Z5XWU9WyUXOEgQn+s0s/UyqZLglsy3pW8Q
X-Gm-Gg: ASbGncuSr2BRyq4Hteao0nqHcctqmS6+Ks05hZn3RYwz9Dzv8+OXxWknfHG2j0Pet8j
	nSTfJh4A64pNxYpuondE75jQ7Ws2XVD2mrhlpr8LzOG57ZgBhC5i5cIoTUt/QSdmCB1FADjKl8B
	nB+XQ9Xu6Rw5e3uZ6EEPZWxK4+arfqs3il25W0daQCMUSMW0EZjDulnQ8Tv3CvaXJuuOPkDpnOp
	EUtBHhEgshpmx2SEx23QnT1PdX9FraFR2u/KsK43JXJl6WSDqFAqErMJ1pljGon5RDfcvc=
X-Google-Smtp-Source: AGHT+IGIVfCkqztsxPovaCat3kgAGoBlqNAhzXThILxLpNm0K8yeMWglgh9uMdPakEam5up5h0WwXnH85J/mGjFP32k=
X-Received: by 2002:a05:690e:9c9:b0:63f:c52c:3828 with SMTP id
 956f58d0204a3-64302a4ab7fmr10632693d50.26.1764154660515; Wed, 26 Nov 2025
 02:57:40 -0800 (PST)
MIME-Version: 1.0
References: <1764113200-237279-1-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1764113200-237279-1-git-send-email-shawn.lin@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 26 Nov 2025 11:57:04 +0100
X-Gm-Features: AWmQ_bmZ5DgR-hX_asnVCtwy_16iVOBue9S505-dzvYgvEvDIm9Pu-dLfhBhOSI
Message-ID: <CAPDyKFrO=xft4pHn-hiTRDK4kcEvv_ANfdyT6fmeZBxjc10h1Q@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] sdhci-of-dwcmshc improvement and fix for Rockchip SoCs
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, linux-mmc@vger.kernel.org, 
	Sebastian Reichel <sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251126_025741_605017_1CFDCE81 
X-CRM114-Status: GOOD (  14.44  )
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

On Wed, 26 Nov 2025 at 00:27, Shawn Lin <shawn.lin@rock-chips.com> wrote:
>
> This's v2 of these two patches which adds ack-by tags collected and
> rebase on top of linux-next.
>
> The first patch fixes the auto-gating problem of dwc IP when using CQE.
> The second one improves the performance of CQE by reducing CIT.
>
>
> Changes in v2:
> - rebase and add acked-by tag
>
> Shawn Lin (2):
>   mmc: sdhci-of-dwcmshc: Disable internal clock auto gate for Rockchip
>     SOCs
>   mmc: sdhci-of-dwcmshc: reduce CIT for better performance
>
>  drivers/mmc/host/cqhci.h            | 1 +
>  drivers/mmc/host/sdhci-of-dwcmshc.c | 8 +++++++-
>  2 files changed, 8 insertions(+), 1 deletion(-)
>
> --
> 2.7.4
>

The series applied for next, thanks!

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
