Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21AA1C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Dec 2022 19:34:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LVEbMi0CkSP6MigIZVJA19MDGwnjLMNz3gMBCmxQQbo=; b=R/8q8KoL2crIY+
	zJ/82GFqjjpd4l0mj1m8Ic/mffUggHiRoIHZLQP7pxQILyHaoaI8Gg3GzR22IrMDVisNwjSaz8ViK
	sjjdPFndxC9kMsHfcbdbn65qFimRuRfv0ts8TL5tKrdvCfHe/iTosTS5QibXXwDcJVfk5z6Z1c0MB
	t1zwUXTBzMI8oec2Gun4CufTyfYPS8m6Z+WJW+8bMIVXc2Gy/Mrg3/cBO8PEZSJqXT7EOTNci6VSY
	wfUALYhIrLCQbRy+UL5nDEGJJ6iU6wgRvbHFsacjNbLcbwC2smn+ovsWh1081n6NsZGVYTQiMZTDz
	jU7kYC/8VHy1Vb6IYxpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8RKc-00FxYo-OZ; Thu, 22 Dec 2022 19:34:18 +0000
Received: from mail-oi1-f172.google.com ([209.85.167.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8RJp-00FwqN-O3; Thu, 22 Dec 2022 19:33:31 +0000
Received: by mail-oi1-f172.google.com with SMTP id v82so2793889oib.4;
        Thu, 22 Dec 2022 11:33:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GYZuAOCMovMvktU5KUPbfgtaY37Eb8Oc8FmMFnt3Lvc=;
        b=D3wtFLk5Mf0eY1ODjEamoVkSP2n2YSXDlxAK2vsT7Tm/maCfOZxA4oZnt9rgSHr+RF
         CafDLzANnKLtQi0+IRhA5bO4Qs1EGOxxtC9g3uSMbvvPODIJhcwsHzADrIjNDFplSPHn
         uSum9WTDJUwBc8vJwOWpCS+Mhow1HNcdLrJjE15qVyJ+02qmgmZuk67dNxHOZ67PQV05
         dnfQPpfD4laiBB7awBX4p3YELWZMvnvt6rAJmm40f8R66/0RmntJNOSQVW9KayCzesYb
         az2aHfx6UfWUqYqm6RZBCOv0DzxwGZ5/uKfGxmnIkhXrHjmf+iuwNZcAGwxMek2YL4+l
         20ew==
X-Gm-Message-State: AFqh2kqVnz0CZwJyQwTmj6wylQtK82lPoKJxqrMHBv9YvD60ZBQkZ0Xs
	EoU3g+YJOs1PKhOi3x1Y8w==
X-Google-Smtp-Source: AMrXdXv/kgIlpx844AJKnleHRaPETuExD06FHseWyuKu9K1+X9Ay09uxx4A14i873JeeiGCBmoHlhA==
X-Received: by 2002:a05:6808:190e:b0:35c:b79:8cf8 with SMTP id bf14-20020a056808190e00b0035c0b798cf8mr3875792oib.6.1671737606641;
        Thu, 22 Dec 2022 11:33:26 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id n67-20020acabd46000000b0035b451d80afsm651127oif.58.2022.12.22.11.33.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Dec 2022 11:33:26 -0800 (PST)
Received: (nullmailer pid 1948183 invoked by uid 1000);
	Thu, 22 Dec 2022 19:33:25 -0000
Date: Thu, 22 Dec 2022 13:33:25 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: devicetree@vger.kernel.org, alim.akhtar@samsung.com, inki.dae@samsung.com, hjc@rock-chips.com, linux-rockchip@lists.infradead.org, neil.armstrong@linaro.org, gregkh@linuxfoundation.org, andrzej.hajda@intel.com, linux-samsung-soc@vger.kernel.org, kyungmin.park@samsung.com, philippe.cornu@foss.st.com, jernej.skrabec@gmail.com, airlied@gmail.com, krzysztof.kozlowski+dt@linaro.org, linus.walleij@linaro.org, dri-devel@lists.freedesktop.org, sw0312.kim@samsung.com, Laurent.pinchart@ideasonboard.com, robert.foss@linaro.org, daniel@ffwll.ch, heiko@sntech.de, linux-usb@vger.kernel.org, jonas@kwiboo.se, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org
Subject: Re: [PATCH v6 03/17] dt-bindings: display: dsi-controller: move
 clock-master property
Message-ID: <167173760428.1948132.16098364997799838917.robh@kernel.org>
References: <67771143-fd83-383d-41b2-68e8707134e8@gmail.com>
 <1c3b18ad-350f-e862-de98-a775e11e132c@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1c3b18ad-350f-e862-de98-a775e11e132c@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_113329_843626_74959F0D 
X-CRM114-Status: UNSURE (   9.77  )
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


On Thu, 22 Dec 2022 15:24:51 +0100, Johan Jonker wrote:
> The clock-master property is used for the controller and not in the panel,
> so move it there.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../bindings/display/dsi-controller.yaml       | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
