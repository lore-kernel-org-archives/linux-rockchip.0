Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B008CC46CD2
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Dec 2023 09:06:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:References:In-Reply-To:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2tftdogZDgk6r1Z3mxOAVbGj9WX7PIKuEPRMrZaJ2KU=; b=bHvhdw/iCwnGJY
	kzpQB+bwPN/jGJW9cj8XwWtL5zWQcUnW6OBZIaq/sg/kUiixioVGqI8Kpw5rVw9q/6jyy9OHIg1Sl
	NySQEqAuJyUuiMKYI3WjeAwbTdmHI/WwdGrZLiqA4BgurrIGsVSjWmYNIadIEBklI4lG2gbkpFYCF
	BeTFf/cCfWMmzehNdydBArDg9S/2i7D+q9W0/rlbRr9x4wx+pzkvM04DbAU3DPrG4HvOon8n8XgUh
	P2l0Pfq3YK0oiHY8F3YPYG882fcSfw/hfJF60Zt0AcIBMlDExerNe8sm8T0qXwEyKLJkQtZFNnaEf
	WlDlqnbmNfnTiKZ+wEiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rF9aC-009ab8-1Y;
	Mon, 18 Dec 2023 09:06:40 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rF9a7-009aYH-2b;
	Mon, 18 Dec 2023 09:06:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 36E0ECE0171;
	Mon, 18 Dec 2023 09:06:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2010BC433C8;
	Mon, 18 Dec 2023 09:06:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702890393;
	bh=+xrIC1/M+x5wcDX06MA4CU4wO1xgEjusI4hUvk9v7rI=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc:From;
	b=D1+K+2TuggkeOywWXWV/o3XuwlXsB+dqlcUycqw/yS0BII3/ni/ahT/ZEMsCZu8Ka
	 pYvoJP3wAZMavxnBh7QkBu2OqyB1G/1rj1nS+CJ0bSiQPZUmp6ZK5OBcB0IAjBRimz
	 qya9m98rXJlg18arlEpWpBDrDxCIkSSXyEGlZNmRRwhJuxaFjnRd8BUAJEJDrLFcI0
	 nbrJbxW7bR1qyorv9Auz4cSLCahgcRRMExhUC/q9bs//begL7eiRwAjoA6WjkwgYoy
	 Lpy91k8DYnlEnfooukr1U3AjWL6c3wllpLZ3bPgm/2W6uYYNlTXjZNlmDMvrfDXGTF
	 e1TN6vKdBVVEQ==
Message-ID: <2fe240249b744ecdddc31c8e23c7616b@kernel.org>
Date: Mon, 18 Dec 2023 09:06:30 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Alex Bee" <knaerzche@gmail.com>
Subject: Re: [PATCH v2 24/27] drm/rockchip: inno_hdmi: Drop custom
 fill_modes hook
In-Reply-To: <20231216162639.125215-25-knaerzche@gmail.com>
References: <20231216162639.125215-25-knaerzche@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, "Andy
 Yan" <andyshrk@163.com>, "Conor Dooley" <conor+dt@kernel.org>, "Daniel
 Vetter" <daniel@ffwll.ch>, "David Airlie" <airlied@gmail.com>,
 =?utf-8?b?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>, "Maarten
 Lankhorst" <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>, "Rob
 Herring" <robh+dt@kernel.org>, "Sandy Huang" <hjc@rock-chips.com>, "Thomas
 Zimmermann" <tzimmermann@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_010636_012743_1C9C2392 
X-CRM114-Status: UNSURE (   7.05  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sat, 16 Dec 2023 17:26:35 +0100, Alex Bee wrote:
> Now that we have proper pixelclock-based mode validation we can drop the
> custom fill_modes hook.
> CRTC size validation for the display controller has been added with
> Commit 8e140cb60270 ("drm/rockchip: vop: limit maximum resolution to
> hardware capabilities")
> 
> [ ... ]

Reviewed-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
