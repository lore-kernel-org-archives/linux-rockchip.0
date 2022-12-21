Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1148CC4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Dec 2022 23:00:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mFul/Xvg9ZBUmhJf5SV4LmHr2dJItcZhNRSyjcOiKt4=; b=0rGjAAe5MTQDBs
	Cz16lsEGfDxHwPkPn6DkMdmM1Lp7pPzS5TS+RZuaKAOnmNioAz7BnMWXypoYCwsRRjsITvoHMnqAS
	9O2QjotwCertG7Vp/Wkzk/0TQroOaK1p9Tzyg8I7YgaEiPOafVPH6fI56d1GWSvcVmVxzYjywY425
	tVc5fj8qbGH/UJcFciJQhaGIVpE/OYx3WT372rsI7YhxOWFE7Jk84bhGuhJvanDlspdeWY8uOH5SQ
	qrXwk/EEV1hFD7vV+IihC8ttW6+1zw2NuYJtyF2KN6ozfL8Xm+0hxq516KSF/z9g4T/qj4lu8pxfd
	8QwfgyyrCn7gP8Xti82Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p884W-003Noo-FF; Wed, 21 Dec 2022 23:00:24 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p882t-003MsR-0E; Wed, 21 Dec 2022 22:58:45 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 7F7DA61983;
	Wed, 21 Dec 2022 22:58:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4879BC433A1;
	Wed, 21 Dec 2022 22:58:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671663521;
	bh=xPJyAttQv186mOKKFQAv7hbL1F6VtzkjKD1tNd/7IjE=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=c9LX/mATG1E4rUdpQf5lc00FMzlYrmQlGYnyGcdjKs8G80wg6uxgSaLmXYovKzMIn
	 6c53uqNXWNr+CER1vROnf2V/dFSrm6+jEzDJPWZ/sYJOY5c4BSVM/Xm8ak9yttAuIm
	 VU+y+jSFnHf5VESA94PMTn2SMb4p05Nwd8pkyKxle3UxxilLqoOsp9Uw8iysNP6ynQ
	 tQSqudhn21Kv4B72fL2qO1UGwGg4TJ+XL9rFX/abIxNqNCojhxGzTJRfGk0x/Tb7kD
	 0ktJgIRBGwsadLRtBb22sj6OlUFNovAX72Glq4jmLa99tYizdmadq0h2GLWBeI46Zp
	 DqJlNbJMWY/Rg==
Received: by mail-vk1-f182.google.com with SMTP id t191so212587vkb.4;
        Wed, 21 Dec 2022 14:58:41 -0800 (PST)
X-Gm-Message-State: AFqh2kogBTj50fRVWaOJsd4LOfioYFMhGymebs0VNjHA5JStMaC3u36X
	jnGwjKLKuBy2mcPTiXL4KnpUsQm7vKi5Ermk3A==
X-Google-Smtp-Source: AMrXdXvkVofoFLUCiiX0oMRt1lMmY+lF5kSdN/xdjD5N4p1/NYeUecqLznUCGN0lyIXoU5dqbSZVNpdmC1dh3bDlsnc=
X-Received: by 2002:a1f:1e50:0:b0:3c1:1c3b:c4d9 with SMTP id
 e77-20020a1f1e50000000b003c11c3bc4d9mr402043vke.19.1671663520158; Wed, 21 Dec
 2022 14:58:40 -0800 (PST)
MIME-Version: 1.0
References: <7f883643-c796-029f-ba38-73532325632d@gmail.com> <899d3a39-19bf-519d-a863-bd7ca1e7c033@gmail.com>
In-Reply-To: <899d3a39-19bf-519d-a863-bd7ca1e7c033@gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 21 Dec 2022 16:58:28 -0600
X-Gmail-Original-Message-ID: <CAL_JsqK5EFwqNU4YB3yYPn8x=FAv1jR6vMKhFrS-cqyuO2cRyw@mail.gmail.com>
Message-ID: <CAL_JsqK5EFwqNU4YB3yYPn8x=FAv1jR6vMKhFrS-cqyuO2cRyw@mail.gmail.com>
Subject: Re: [PATCH v5 03/12] dt-bindings: display: bridge: snps,dw-mipi-dsi:
 fix clock properties
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, krzysztof.kozlowski+dt@linaro.org, 
	gregkh@linuxfoundation.org, airlied@gmail.com, daniel@ffwll.ch, 
	andrzej.hajda@intel.com, neil.armstrong@linaro.org, robert.foss@linaro.org, 
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, 
	philippe.cornu@foss.st.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-usb@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221221_145843_168902_7189F3EB 
X-CRM114-Status: GOOD (  12.17  )
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

On Wed, Dec 21, 2022 at 12:22 PM Johan Jonker <jbx6244@gmail.com> wrote:
>
> Fix clock properties from the common snps,dw-mipi-dsi.yaml file,
> as they don't match with what is used on the SoCs.
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../display/bridge/snps,dw-mipi-dsi.yaml         | 16 +++-------------
>  1 file changed, 3 insertions(+), 13 deletions(-)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
