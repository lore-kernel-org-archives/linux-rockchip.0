Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3C40C282D1
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Mar 2025 09:23:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N//3FJwq+tou5oWlvhmy5nBmiX2+e5Hh8GxnjoxD5uw=; b=qXoIZexNJgNgSd
	lXaIy3sT3VormvAXRW8jlR2uDJ6pGpnjeLK6h7j458KPAh5txvoBHJ/vykz9f+dk4pOyFXlni6+rZ
	UMYHy+S/5YsJaLpRov0fy4XxGi58jFwKonJ91r9InfoiUs9Feb89D0/+Avz75lXeCcy0ob238TDh1
	TSz4o8d8Rq8v+sT0TpMq5Il55rZEFeXbiKa3PSQ1lYj9dd14ak1fWHxmRMrpqB3oGcIzCnXFSSfZr
	actYRB0gIRiOdc9zZ5JLKpfp+3mctbQQSOLpGRYqvrBj0yVOe6PlZKYXhg7tN+94EOHRqkNjmRpAV
	rDllr1fs+RIP4OIj9wmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trCsN-00000000H3o-47Pj;
	Sun, 09 Mar 2025 09:23:15 +0000
Received: from mail-yb1-xb32.google.com ([2607:f8b0:4864:20::b32])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trCoY-00000000GaX-1FKS
	for linux-rockchip@lists.infradead.org;
	Sun, 09 Mar 2025 09:19:19 +0000
Received: by mail-yb1-xb32.google.com with SMTP id 3f1490d57ef6-e46ebe19489so2459105276.2
        for <linux-rockchip@lists.infradead.org>; Sun, 09 Mar 2025 01:19:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741511957; x=1742116757; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Jv9BJK8h1smkPFin/eoitVvyZGcBn6mtj+ZWUnOyrrM=;
        b=WbYd5gzVVoetdsqJJ3dCurh8diz7M75W2N6zrYP9i40rLrwvFwMFJuQrSCGQxfti1M
         AGNrpp71gXdfrofJzW6BkUbWooC+x22nAlce+XAhnLaTk6fq2yrCY5TCuvU/cPbKWfR5
         Mv/q05iON0fgH0WwTeRenhFZDxwnrQEZF8hXeby4HK1a7XRcSgw6Cuv/TP28s30BirXi
         sbwabBhe1DRrF7GkUXw93FGXDgNKeF/JiWrdC0fWUmWjcWIJL0Yg2oqxGO9IRCWo/aoT
         Vv6LPekB6JgyXSpm4ig4wS5/NBuD74MPrG42RD1yRR+tnNpbJe+wc2cUSdl0wZ414YTt
         Zliw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741511957; x=1742116757;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Jv9BJK8h1smkPFin/eoitVvyZGcBn6mtj+ZWUnOyrrM=;
        b=fgD90pGT46Ys7yCYP2mdAl4Alu1FmFtqP2qAzaIFXhxQyNsDmpm3x0oEr4F+i2g+/X
         jGDurdIF/Vp0Fl+CiNjlWyJvhUZc+RnL9kTye6Ph9pWhq48aGnWXM7+ZPb3714KclgpC
         wJrj0ttAbCnp3D6WZwpxEChySE9i7NVqugHZCNOusFZwOCWJjO5Nhk40XnQE3+4tQJ76
         tnuEukMCuO7hos+nEQybwdkiqVpXqLeH1DWQsbZg08RjIGCoXCvAbAaIwZSwXpe0MESS
         Cfwh9MKHHZcRkr8b+qelPeFsLHsrjiek5MiboQnfF+IbT51pwOPbakx0In4uuNDaqRlB
         zNwg==
X-Forwarded-Encrypted: i=1; AJvYcCW0P7b/U2Be55gD8j+rQsmrv8SUt4v0p0/71tK5dUgNBaep5RAx0BJznorL39POwFKW0ySkfICulr3D9VXL+w==@lists.infradead.org
X-Gm-Message-State: AOJu0YzL8WYCRgHhpI6HwiS1iNeQ18N5TQVfGHTHLuN6WkYFk0Ix0hfi
	gz8WXVHnYgz7mrUoD7knkOsF3WyLMDmTMVowdqu149V4E8Z3GGqDp1wEPvQRygDKZXvRdDdiN57
	1uG+gFsh17L4cPmYMFQ/lrcswNwFE7toPDNwERg==
X-Gm-Gg: ASbGncsAmxRY/YZD3mX1ovVd3BEk3dnxmhOMkHIQ/5majkntzyluaspuUkHiOwzRpsu
	rzJ+WEkCawwzi7wOkwx65F1T+TS0Mn6NGxAsiYXB2fik6ISg2X6KSb0ROjjA0t7YXnaVrFPyCQx
	clUk9jPR/Is30sjY8/SyLdOJMqvG/tXNjRZ40ztEP+
X-Google-Smtp-Source: AGHT+IEu/PQ12bVNZYXCd34qYJvUqyHf2vmlZ85Q5AvR10mVaF6BlXxpWuNpl9htbiSsYttCY66TAN4aoeQg9Ypsf2c=
X-Received: by 2002:a05:6902:320c:b0:e5e:2428:fa56 with SMTP id
 3f1490d57ef6-e635c1ed376mr10933687276.41.1741511957257; Sun, 09 Mar 2025
 01:19:17 -0800 (PST)
MIME-Version: 1.0
References: <20250308-phy-sam-hdptx-bpc-v5-0-35087287f9d1@collabora.com> <20250308-phy-sam-hdptx-bpc-v5-6-35087287f9d1@collabora.com>
In-Reply-To: <20250308-phy-sam-hdptx-bpc-v5-6-35087287f9d1@collabora.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 9 Mar 2025 11:19:06 +0200
X-Gm-Features: AQ5f1Jo6fNACL-x0ajpVmroongj8VydVA56TBkhnTi7aC2zOMYCGM315yQKl7gQ
Message-ID: <CAA8EJpo_AF6BHCDThNncuH36VHZy1ZJX-=Qj8mj7-UZY41rCuA@mail.gmail.com>
Subject: Re: [PATCH v5 06/12] phy: rockchip: samsung-hdptx: Drop superfluous
 cfgs driver data
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
	Sandor Yu <Sandor.yu@nxp.com>, Maxime Ripard <mripard@kernel.org>, kernel@collabora.com, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250309_011918_340176_0ECE6697 
X-CRM114-Status: GOOD (  10.55  )
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
> The ->cfgs member has been introduced via commit f08d1c085638 ("phy:
> phy-rockchip-samsung-hdptx: Don't use dt aliases to determine phy-id"),
> but it is only used during probe() in order to setup ->phy_id.
>
> Use a probe() local variable to store device match data and remove the
> now unnecessary member from struct rk_hdptx_phy.
>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 12 +++++-------
>  1 file changed, 5 insertions(+), 7 deletions(-)


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
