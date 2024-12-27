Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88F4BE7718B
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Dec 2024 13:22:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y5uwH8NISwHCSbo/W5TUoAD8RNG7DHRGLIvCFjbuSLs=; b=HxpU6enk4+JCQn
	Mzlyf5Jyixj/mt8x1qO+csSex9Ap8+w8n13lnQ0YGZp443t4xikFBin/kOo/QRzWr5M6CADT3lEHG
	vvDtpGmZ6bum5r6354tl5Mg9W0xish88/Tfvgql2GEVR04mFaW++vq9tadCAMuGShktAYyvArfmPk
	dJWY2kD6GbvL3Yv27nHZWFwhtrgOAp3pEmhqXS3sfiA1toC1y8R05WNF+kpmCfBQOOL6scajo6FuG
	slVF0h3R0NH59J1VuLM/CjBVWc0gQArC0mp6V7Rvbxe3xJLcBMeuEaRoKSYVUPvArwrMxxabIEZrt
	t6YvZpFnoQc30COI1hjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tRAIX-00000000HDI-1J9m;
	Fri, 27 Dec 2024 13:22:37 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tRADx-00000000Ga1-3pFa
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Dec 2024 13:17:55 +0000
Received: by mail-pj1-x1035.google.com with SMTP id 98e67ed59e1d1-2eed82ca5b4so8697181a91.2
        for <linux-rockchip@lists.infradead.org>; Fri, 27 Dec 2024 05:17:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1735305473; x=1735910273; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=iAXFsxzlonOLXIwCn7fwLxpEOxOZpKttSBYOZ0M8BhA=;
        b=qKNZinq8Aq4CYQ3U9ybnT6hLHULy1rzZXcwFrl7IKgvv2gD0pTdT3ujMuqTPkyaKl/
         w7t8w7fGN8QlEntisLolhlDDS1qP/s76lMMTeH+VjyG1KRvbNQhEaWQSdKtiupKNKThB
         g4FyZ8JlKfxUkrnp8J2zctbU4xyiHCLpagGvGUZNvSOyUJRXKrI86AQu5NvHP1bsEGvv
         tru15Gbo5p8VYEOvyGIt/5ePq6461DmU1vR7h902vYRgfboqr/ZqXiufTnhbhPWiZ28Z
         KVd+YM8kZkEetObFxW3pjscI5SaiTAHwfBztUl28Ryl6qiK3gYmt4ZJyn45y1V9dKCOD
         tp6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735305473; x=1735910273;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iAXFsxzlonOLXIwCn7fwLxpEOxOZpKttSBYOZ0M8BhA=;
        b=ij880ZavYyxQDeXJxZfHjR+BpsV8P1DZpkGAE5epnlEvdHI4PthFLaHMfcP+EQjd8K
         R934cx/ZDa1MyUhHlc4LD/OaLjqn51BFFBHd4mdC4q3UzJ3iXr9tWZdB3moyBwiCEhne
         oFsEikVeoGU1+X7L9N5jQ8zxPzePzURgfC+x+bf7bP1mLR6UzWSFPwFV5LmT8Tgaaxlz
         j4Zo2s8F3iySYTa/3VycvJxFHFWOFar4gOQPHvk3tDJB8orp5TmUlooIJcc481h7/R0M
         OodYp4e1h6MZmZwQArZAhG2uKS4WV9AVysP3AtNSMQRdiJWmLNLlKQnyWoQEzSmpafPf
         NDCA==
X-Forwarded-Encrypted: i=1; AJvYcCVJGHU03s+EQtCL6qWMn57p2ipI8QeAInNssXyNcibul0xRy8eLh07Om8UUuGJTS2cZBiBJbb6RlDFmE1huvQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxAxh1wjCMSpC5b1V2aMzUm9kmknm2FKXLIVW/vMUNwADwXkqIe
	lDATG9gQRzdH3TrXdHu1X2jxTrF4rGPher61NH3ObHZWQJrEd8JleCXbaSfbzmmjcEtqC2aVX+J
	WdUvpDRoQSxsFg0o7hd5suOHpv+iL7syq4Lx3hw==
X-Gm-Gg: ASbGncv/+4dgLDWI8EzKy75Z28ftH5QU93RcLIkfLejDXn5E6tnvrg9hYB0i7k5QVyx
	jc+ErmIQtvcPzc4Zr5y8GFQVa1P75teaJU0/O
X-Google-Smtp-Source: AGHT+IGJXNWgYAZk4yTpptTSbNQn9IKrdlEA0Qzrr4v2C2qdF2+VE2NVca0nGnqFhl/5SkEJUK38o98Ip0n+fUXbfnQ=
X-Received: by 2002:a17:90a:da8e:b0:2ea:712d:9a82 with SMTP id
 98e67ed59e1d1-2f452ec6fadmr40836147a91.29.1735305472878; Fri, 27 Dec 2024
 05:17:52 -0800 (PST)
MIME-Version: 1.0
References: <20241211-rk3588-hdmi1-v2-0-02cdca22ff68@collabora.com> <20241211-rk3588-hdmi1-v2-2-02cdca22ff68@collabora.com>
In-Reply-To: <20241211-rk3588-hdmi1-v2-2-02cdca22ff68@collabora.com>
From: Jagan Teki <jagan@edgeble.ai>
Date: Fri, 27 Dec 2024 18:47:41 +0530
Message-ID: <CA+VMnFzJumtLmhFxNt8Mjzju7nC6wMWn2zDwpiRg3CEULRzDyA@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] arm64: dts: rockchip: Add PHY node for HDMI1 TX
 port on RK3588
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alexandre ARNOUD <aarnoud@me.com>, kernel@collabora.com, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241227_051754_217089_C86C6334 
X-CRM114-Status: UNSURE (   8.30  )
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

On Wed, 11 Dec 2024 at 04:37, Cristian Ciocaltea
<cristian.ciocaltea@collabora.com> wrote:
>
> In preparation to enable the second HDMI output port found on RK3588
> SoC, add the related PHY node.  This requires a GRF, hence add the
> dependent node as well.
>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---

Tested-by: Jagan Teki <jagan@edgeble.ai> # edgeble-6tops-modules

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
