Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98291CA1000
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Aug 2025 19:54:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PqTQzHLZOSI9kTXMQ8ADwjYLunUNmDg2k+LJ6V45tvc=; b=OpzdSDCKTVfkVs
	YCnc51vTVIRScxMmcAjzpa46UMFiB+qh5D+i7Dd3GIeDN78QQ23s16pOQahbGvd+HBEwNH3votIoJ
	Ccx1Eq7Oa4et6CJXpidzn/mWTdjrnhhoJSylT26XhOzkdAZignhudYvUcH8k25G2h8zzDRm+wVcIU
	Bvfbp+FIaXItN7De4TtpAaTAz3nAXbe8nI5fUMH0M/HAvYL2St+hNeDGx40KRuzhVAjIK5srwuD9+
	cTL4oV0BBKMRxsA45CMJB03HQO8UsR5CogK9i0GpGUWoRQi5IHZc0pnYJRWHuo4MSPo4Fccs6PtDm
	raNrup616ZSxNubKdljQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1us5Ao-00000006oNy-2xb2;
	Fri, 29 Aug 2025 19:54:10 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1us0lF-000000069ka-0OeI
	for linux-rockchip@lists.infradead.org;
	Fri, 29 Aug 2025 15:11:30 +0000
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-77201f3d389so2352077b3a.2
        for <linux-rockchip@lists.infradead.org>; Fri, 29 Aug 2025 08:11:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1756480288; x=1757085088; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MKVIGNn1cEq2YWpF5MnDqFEUCjnk9rekqsdebgbty2M=;
        b=Xe36mc8rUF0XSY+C7sJA7SsdtKXfiIZmj2eXV7cVtxrGJN8DDIVuvaG8wyPP6nhFwi
         pFjktLtSE9p62L85KHnJV2aCbjoh9v4XEpEFaeHQCKmD9tg40kUGeMuYHs2g/xg50nWS
         jSUhlRfdnZPVpXgrEx8eq/hrgLrmSgCAuSRCbJBoh9qVbffncIgPuN0bKO0e9Sp6uF3p
         IDnqYeljF6fKRwRZOzF5ngry9/qQ+MAZB1fpS0H2Gtt1tKmKM0B0eYWDpu28mUdaezCU
         lxJsIIa1pXrcoputW5CjMmfhpm9uzNzrwTRnmC8imyKdAPg9HFSZfrMSZsY8qE1Kv+7x
         U1iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756480288; x=1757085088;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MKVIGNn1cEq2YWpF5MnDqFEUCjnk9rekqsdebgbty2M=;
        b=XkZgNWNa0IwlgRjpnucU9sPOGRHrrCqWaQVMfUjS+0EdSQshxwBeKgFf/a8vPrTcF9
         7W2OSZGbm61mFTa6yLIF13WVmac+tbKqCt3A/JgpbA3HeDC1ZaNKeUVOBiX7nxNbvQur
         ZS28oGhFsPY29QMmnuos8O7vAQV1GYcXLA7P3s2wfbh6ginCCnjb/tgvPQz0v6UaPGfk
         qUBz4/b1I6DbvVBpjeKoGynJeCnk3ES4Y8RcX1eOMx0FCYrknU6aLvS9gwrXkAa1nk+0
         Zu8P2tCh/iaY/e3RAm1KKBcc46+hO7AO5hRPpWalURMgql+3wNcra1QNx6mkuRRqXkqd
         mTPQ==
X-Forwarded-Encrypted: i=1; AJvYcCUAM7DhiBtfIv4yhPJxvjDokHzRs2dFdQC8HbGBnwMNMCVJNvLzQjAkIllyRuu7R14JLFqcnuBCZtwPmVv/NA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxjxRdFEvXTxuy4as7W6iTqcuawLSBPJQIbAd6XSoo3sIe4eSMu
	fnQdwRipMlA1iaQN65qDCo9HsV883Ej4A574SA7qYjEdnKOA4kV5F/pR3J6WUGuGBcqDbR+CQH/
	/3DUkPYY7B9hVTfRxc5AqGuImmqZSWe2LP+atXYCAPQ==
X-Gm-Gg: ASbGncu1RYBrxS2GuK9f290+AgXBdG6onyKbxBOJcny9W7btd4QnL77r6HlwUF9uESI
	N25VsittkMDCD2KekfNf6Mq6mDnoDcKcBnS9ujHzyngjUhk7bYK9dUL+HrctDUMqDaw5ex1FMFg
	pfsFXsI0kZKGXcLwTI9FBBiL0YE9vKLX5A2YGmqnGoZEhVAamOXHhxiOm8u3xnKfEolMCudcIoW
	YJmHpRwHqicLrIa
X-Google-Smtp-Source: AGHT+IHGuK+XPEJZnoxSJC5I7lDP0ZoQ+n66AiaBsrF0OgVB4dkv+81+YUciDWeRwKYQ7j4CfvTN3OcksYb1HiKXD3Q=
X-Received: by 2002:a17:903:b0d:b0:246:d70e:ea82 with SMTP id
 d9443c01a7336-246d70eee46mr278790365ad.5.1756480288279; Fri, 29 Aug 2025
 08:11:28 -0700 (PDT)
MIME-Version: 1.0
References: <20250825-rk3588-hdmi-cec-v3-0-95324fb22592@collabora.com> <20250825-rk3588-hdmi-cec-v3-4-95324fb22592@collabora.com>
In-Reply-To: <20250825-rk3588-hdmi-cec-v3-4-95324fb22592@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Fri, 29 Aug 2025 17:11:16 +0200
X-Gm-Features: Ac12FXw0jSvkKD9n-NKvt8cWwlJ3T6SlQZFX3ax5d_8FYdRiZJRd202BjgA0Vpg
Message-ID: <CAPj87rNf3JHveEbtBB-DpmpobDG-kE5nOeNPUaVW-xn70V1jTQ@mail.gmail.com>
Subject: Re: [PATCH v3 4/6] drm/rockchip: dw_hdmi_qp: Provide CEC IRQ in dw_hdmi_qp_plat_data
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
X-CRM114-CacheID: sfid-20250829_081129_135666_2A563080 
X-CRM114-Status: UNSURE (   6.70  )
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
> In order to support the CEC interface of the DesignWare HDMI QP IP
> block, setup platform data to include the required IRQ number.

Reviewed-by: Daniel Stone <daniels@collabora.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
