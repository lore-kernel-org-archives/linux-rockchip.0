Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6BD2CA0FF9
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Aug 2025 19:54:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vsa53TDE/TAYwlu4CSDLUcgsPDQLhMlKZm2AgUnY4SM=; b=ovtQZij0Te0Z/V
	U0X1Vh3nt0Pb8CQlDWW6ZtPMbBVTasxuFEb/qtpeMixLBjqePIx3nzWxZqytcz61hNgqbmoMGMwIu
	AQyAPigQJ8DDSmWXsBGE1YxuDgk62YZFtxuSkwC3h17ytIFyIs9st4x/uq3EnxCC7z002U5bywqFc
	XqucMc8kQiiFIwKNjNJhc2rMDSk+fXNFtIzCcFp0MOlCso4Xkbl2Bq9YRAzGFJ145WIqIRcWtDVDf
	f4sc36M6Lt2gtkKHZYKpISdS1LUqGDUvMeOUWbml/pJLpA0JAbNDgKSDI8L8rfpEVzfTIKU7HL2Ql
	2V9JwLWkwaBFC8kLqODw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1us5Aq-00000006oQ2-2VkY;
	Fri, 29 Aug 2025 19:54:12 +0000
Received: from mail-qk1-x733.google.com ([2607:f8b0:4864:20::733])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1us0s9-00000006Ab1-1xHA
	for linux-rockchip@lists.infradead.org;
	Fri, 29 Aug 2025 15:18:38 +0000
Received: by mail-qk1-x733.google.com with SMTP id af79cd13be357-7fac8fdea9fso159350985a.2
        for <linux-rockchip@lists.infradead.org>; Fri, 29 Aug 2025 08:18:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1756480716; x=1757085516; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ghrhxwoqKMCN5VgWcIThzYZeVniKtHuv8o+iU1wCEl0=;
        b=CoFanu4S+a+emL1gzy92D88S8EEU9835pU+Wriy99Q+uZvTgmKe9CQg/IYg+MC3Hp+
         9odWKoUXck1Z6onB+CA35yv6fmkxjWzKE/t8A80rJwf8IiqPNoOYxMCTKE/5Xbsoy2Es
         T1lxDDbBxEyWP/6y0Q3Pop7Tp8Wp/mX34b7EsjCqkxCr4j6yMyC9glyFtLDyrI819Tw8
         o/hX/g+OzaoGsWDnffaKzkq60AYPReEuQVszcs9J+7iLBweNoGw7cXuw++DfzGvMNDLl
         DP/enwxG9kWDnGVdcE0M6GisHyAYMCUWK/dMweQVE6yz9QIXOMVt67G+uO3lKUZko+qh
         4obQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756480716; x=1757085516;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ghrhxwoqKMCN5VgWcIThzYZeVniKtHuv8o+iU1wCEl0=;
        b=Mnv+072t7Yt1RYY0uced8eIy3Oe+xOXPUTuDrSmLZLRkGN7JFZBxHnR2plQstgkdi8
         /08wxzKmm3cTp5UERcSjnbDivBjunu+c3lc14tezgAxw1NFsVTEKXjkxqSJ/aeJafKPR
         HhwNjcqCrqOOqJQK6IF+kkrozImk/dy6vHuczIux69rfsFQqXH4X8q2U7y1qxqItvmsf
         M/MkoPTId02KxDxo/C2jlQ/JovCi4VUrsKGXIS/O1TlUY/UKy33HKVzOyDZPb2ehehaJ
         Q6uRazXZUWOKbxzaZTwf9y8C6QXSr7K5ymr14xvCONSIkDq1j+gSg5FFsC2eyuG3dSTh
         LkEA==
X-Forwarded-Encrypted: i=1; AJvYcCWyhZlzrfVwk9QSofIB42zVockURl8rVF7DpPgUsEQrtbYzvk4kPJCl828vNxSiOzv5oEICTefghT3cs1mPkQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxWFF9lRPfs5BEfb42EthQZvxl+pRQ1Vk//2Ncxa0hPZOsZcOmt
	0gBvpa12/uPO7tXUDACJB+23+zvC8Gf9HNdiaQftTH0nE+NjiTbOpoUxFLqDdla/CTtdjjZEIf2
	SOj9Qym7cpiyKMKHw9A2nzOB1h9MVAIjm9WveAiVUwg==
X-Gm-Gg: ASbGncvKOcXVQz+keTVJ+MWfAH2AwvnRNLTlnnvGrWO/jon8Uw6qeOwYUnlXISzzFgN
	8wxduVdLLpXMcJDG5Q/zMPthzPg704d0YGM6xC/ikqluwED33sYssndhXXnm+UnDwRPFpxYCUA3
	lG5qKFUJL4nsy3nA2pU3IAYzL2whBIKACVi8qlrqzznD/fW7PcDhOFm4s4JgcuB/7UWVW7qUZUA
	3bjG1MKptF+rECn
X-Google-Smtp-Source: AGHT+IGmPttzEK19ZD3UTDCY1FnzsKcijNSUsN6pQPrVL+2gsomLPlupJ17X2EjGDAqx5GLvtjHyN5i9KgoNezf9kFI=
X-Received: by 2002:a05:620a:2888:b0:7e8:1d4b:b00e with SMTP id
 af79cd13be357-7ea10f73af4mr2964339785a.30.1756480716220; Fri, 29 Aug 2025
 08:18:36 -0700 (PDT)
MIME-Version: 1.0
References: <20250825-rk3588-hdmi-cec-v3-0-95324fb22592@collabora.com> <20250825-rk3588-hdmi-cec-v3-5-95324fb22592@collabora.com>
In-Reply-To: <20250825-rk3588-hdmi-cec-v3-5-95324fb22592@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Fri, 29 Aug 2025 17:18:23 +0200
X-Gm-Features: Ac12FXxmGn_rShnoeRaqJ2HPo1b9mmmJuCbdWBYqIMqhSsoU1twbnPqkg976p5g
Message-ID: <CAPj87rO1NKnApMkw75CmAXS6_ARpFDiofgwiqH_uwfrB6BFcUA@mail.gmail.com>
Subject: Re: [PATCH v3 5/6] drm/rockchip: dw_hdmi_qp: Provide ref clock rate
 in dw_hdmi_qp_plat_data
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
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250829_081837_502285_4AB5A9ED 
X-CRM114-Status: UNSURE (   8.32  )
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

On Mon, 25 Aug 2025 at 10:57, Cristian Ciocaltea
<cristian.ciocaltea@collabora.com> wrote:
> In order to support correct initialization of the timer base in the HDMI
> QP IP block, setup platform data to include the required reference clock
> rate.
>
> While at it, ensure plat_data is zero-initialized in
> dw_hdmi_qp_rockchip_bind().

Reviewed-by: Daniel Stone <daniels@collabora.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
