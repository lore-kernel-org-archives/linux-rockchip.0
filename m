Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEBDECA0FFE
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Aug 2025 07:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IELK7qa0spJLNO9m9i4+qZyVljnDpzpy/BD3YE+/A7U=; b=JxA/tlPLvKXqnb
	O5XY0/tW3lYQ8quJDgNk7fKEhqzk7D/0kejXGZKGTBhSoPVoq86Vnx6A+jECapoSgyFJzcZXXn95E
	79WzvXoJqrEKoV/qEsc3IW5UW9vgSgWqeX2NERozHHNij45Y2r8LNrCtqc8Eji7P9mDFOPLM5ENyT
	yXeut8zdbKNaHMUenQdfQ+/pHSGxsEt+X8JUxuD76ShP6SWdwskhDbiX6RpvG9K4enhSW1i/09EiZ
	jEJgy3S5e2tXzSoYV07gq+fyTwbMyW7uQOWqusjLPmNZqMoRZlzFKBywhntQzEMcesXIy7wsJwGgP
	r0mOp26FyT0Was57WLGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usGAg-00000007YK9-2qrt;
	Sat, 30 Aug 2025 07:38:46 +0000
Received: from mail-qt1-x82e.google.com ([2607:f8b0:4864:20::82e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usG6h-00000007Y1H-14Nm
	for linux-rockchip@lists.infradead.org;
	Sat, 30 Aug 2025 07:34:40 +0000
Received: by mail-qt1-x82e.google.com with SMTP id d75a77b69052e-4b30d24f686so20991201cf.1
        for <linux-rockchip@lists.infradead.org>; Sat, 30 Aug 2025 00:34:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1756539278; x=1757144078; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/XKolNdOG4rWtnm/Z1Xm//IS1jzblLqTcVqQ5IMS/rM=;
        b=C6zs1IfcKu1LNpuLh2VNR+mUQmvk/l3pM6x3bNJSqdtq04gEBT1bYRXlLJyFU7xXY0
         YBCQxEUcU0eomc2+/qdK8Jr8rRFZ+ZxDvsKaoz5ZKLihPow/a/dh4K2KX1RbbGBTDP9W
         W4qPcyUCDpn42qu69dmd08VmveqyQqn+8Jh8ntjO4ZpYG44uduzYUS52BHDSLm6ADZ4G
         GXpBvYfRXG2ONacyRMiznnM/WYIPT0mqaBLR+nKv+r9a0P7YCCAlI1d0JRxBc1YYoBRW
         iMFOfKr8bP2OnzSwG94Lo0Ob2XncmXKw348oL3CmACMb7t4z/7wqgHdjI1opBGGIArFf
         p/5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756539278; x=1757144078;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/XKolNdOG4rWtnm/Z1Xm//IS1jzblLqTcVqQ5IMS/rM=;
        b=lnY1TWBnwEfnRdrk/qvMc+o1s/zRXwD5nAUay/E07sisDfsxB7q7lvAgG9yCltG9PK
         3F6FePOMvg9MpCVqwqqVX0/dBXjPp7wTaENc7E7rGMFxJ6/2DFx9WxEvCfXUC+xkUdmO
         DWhuNqvtrJXiHa47aW1qR6k+M9+gVBhrSEo+IFuXS6e1L/1/hFdsKaBWTpTCWYT7nOTo
         mL6+CW+z+Nw3MyMrYIVHgbRsKyS+mwNNwkh8T/fJa7trVU9IbD3dEIZmhb0UEOOsSWiv
         fZa+oRtVx7Mc7/9MFb3g+huCu4SGwDmS6FgpUnIn235dUwI1CeuzYpdjz8dxxQqf9eg/
         Qz1A==
X-Forwarded-Encrypted: i=1; AJvYcCXXZLki6NzVEZgAaY8j1ZIt4Vh8DXBSAULCtsS4dxbjo1IpElAtJWd6PBPTpYoL3nAHckTCOx5iDyTAqpy5jw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzrgj+DvG8M1gm9pDJD0wvm0GKZwfk0jGJWHMJ63QKy1oRk1AaP
	6WJOprAnuk7L21dGea/q/8KofJiobEQQUfx9/9V+/Uk4pyT1Zn5j9mRB7IHeFoXWmmOFCMcd4z/
	ApmCo5eTktSrnWG0uHxH8j+HxvkVld37zNd3FRdPoWw==
X-Gm-Gg: ASbGncue2zlRw3b9wB6314rK8p4Jkepplh0xENDpTe0tQr3WQPlYJ+tZXOEDq005Ucp
	qOluUOmsFz1O0lCticfV3c79JLSFOqo+OIHAq2i3ybyrabtg1Yn3YHk6mBL/AA8OYWhudvUZY45
	SBAtSSN5C1bMgW/5a90EtDFqJi60Q7bwXDeRVKBhCnQODznhlkpocCcDBgamgw4PlfzSUSOWSg8
	vev4g==
X-Google-Smtp-Source: AGHT+IF+RtT0nHcRaStCokPpIqIxLujpZpjFFgu9P7ssG1Dbp9cdTPQGJvkbcXDD3qNhvrdS/Kj2NXgLvHLELse+VQw=
X-Received: by 2002:a05:622a:4116:b0:4b2:ec43:3de4 with SMTP id
 d75a77b69052e-4b31dcb27f5mr15037901cf.75.1756539278311; Sat, 30 Aug 2025
 00:34:38 -0700 (PDT)
MIME-Version: 1.0
References: <20250830-drm-limit-infoframes-v3-0-32fcbec4634e@oss.qualcomm.com> <20250830-drm-limit-infoframes-v3-9-32fcbec4634e@oss.qualcomm.com>
In-Reply-To: <20250830-drm-limit-infoframes-v3-9-32fcbec4634e@oss.qualcomm.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Sat, 30 Aug 2025 09:34:26 +0200
X-Gm-Features: Ac12FXz1p7iZOdEEQR_vXRtXiF18jyko9t937NCSmf3jeVcnUDmrfFo9HX_W5zM
Message-ID: <CAPj87rNMr-2ZeZ2Pqb5qG4Z-xtUyOVxbY635pw_PDEjVpd5-OQ@mail.gmail.com>
Subject: Re: [PATCH v3 09/11] drm/connector: verify that HDMI connectors
 support necessary InfoFrames
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, Chen-Yu Tsai <wens@csie.org>, 
	Samuel Holland <samuel@sholland.org>, Dave Stevenson <dave.stevenson@raspberrypi.com>, 
	=?UTF-8?B?TWHDrXJhIENhbmFs?= <mcanal@igalia.com>, 
	Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, Liu Ying <victor.liu@nxp.com>, 
	Rob Clark <robin.clark@oss.qualcomm.com>, Dmitry Baryshkov <lumag@kernel.org>, 
	Abhinav Kumar <abhinav.kumar@linux.dev>, Jessica Zhang <jessica.zhang@oss.qualcomm.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-arm-msm@vger.kernel.org, 
	freedreno@lists.freedesktop.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250830_003439_299238_77327284 
X-CRM114-Status: UNSURE (   6.71  )
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

On Sat, 30 Aug 2025 at 02:23, Dmitry Baryshkov
<dmitry.baryshkov@oss.qualcomm.com> wrote:
> +       if (!(supported_infoframes & DRM_CONNECTOR_INFOFRAME_VENDOR))
> +               drm_info(dev, "HDMI conneector with no support for Vendor-Specific InfoFrame\n");

'conneector'

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
