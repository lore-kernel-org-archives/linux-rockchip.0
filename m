Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04DD3C001B0
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jul 2023 08:29:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DwsXjPa6Fdi/mDzzOl26MeC8hPdy8kQI8CAdqEsciP0=; b=CesFONxe5TeVMo
	sXg9lyDoiZSAP0wv+0j+mVb/bXEc7KV9Yq6gp8f6BW6cI2h0sRfmz4jhJqbiyYRYlOyakYq/pRFlB
	3PXYRKg3YLIZTNqLpny3ovY3nR3hlOhUgvbqrnBKQiFccBaUtNy3CNwU972tdHZAisvKHhL9r/3KX
	45loA/6cb6yJKZOtUQOdXU6ptrRtcl8fgSJdbdBROcJbBwqCfrPWorAUHTYKIfcFQOne7XIpIXka0
	yCR8J+fWE2JFGrsL1Zz3BsupgjfrVQFs6e8tDwZC64V99kL0YXZVxs62M5ppSgMEN+oEHkmxvjFFt
	MhVMDnO9Mh8PIaFQxFSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qNUSO-000aal-1p;
	Sun, 23 Jul 2023 08:28:48 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qNUSK-000aZg-2N;
	Sun, 23 Jul 2023 08:28:46 +0000
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-1bb2468257fso17656695ad.0;
        Sun, 23 Jul 2023 01:28:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690100923; x=1690705723;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=f2RBK6a1rrlPMn5TOATq9/7yx1S/Tl+2zZSZzJBZNsM=;
        b=aZpe29ckQMqcjD0CsG2rRtigKYI0ycSzcfnysKME5uEV0dbXxqtgQbq/bhqYWPtf+W
         CSobQNGJyv5uNyH8uuFRqc+5O513SpfChXjITqC+MhD19F9pcuh321hq90epTf2hntZI
         xNJWWUot6UblUHOmHbXg/+aohGhJxd/y12WJLiLVw7Vx4xrYQ+RkRLK3FWeQQFqVSwmi
         9I9HtohJOBSMAaRi0gRLwLmBeMkiYmP6he6Yyl1LTMroJeD73kHNriFDxANu2tsSg2Wy
         F/HCRsLhC2jDUyU/dZPzCQK7fbSeZV8UPDqP3L85G8sLY7tJZ8mUKPFj1Z5xZ9XOIHty
         eGqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690100923; x=1690705723;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f2RBK6a1rrlPMn5TOATq9/7yx1S/Tl+2zZSZzJBZNsM=;
        b=b9jEKk0+p3Cu7TmAU7Oaz31W1T9aqPnbb9W6+hxr3wraSkhlsx/Xk6FXR5QcBJuAJS
         dW7T818pB/T681wym+EMzx2VIb+aT3hIZRLToIa5K4ZWlNdc65WKcs6b6DDD6cHu+ZB8
         7KJgXiXOyIJxw+rnIdkS85H7xjXUTfxfppp5+SP5LOFvLCYRN5MYp251uS5hcnKMQcAs
         jEtny8EIA0EiP2rNryX5oh4AjoH+QgS13jnoVueve3xJPBO/2+LFHNAhtVl0zKQIUxZH
         4X0j3SCP+4An0andBqJD/Wa17w6FqCZ16lZuzuqxYQJ/1E7mz24mZyPk0sg7c63Nqkhv
         OH6Q==
X-Gm-Message-State: ABy/qLa7sdNhAbYTagcPG4Uhan+Cr6XKySgW+/tAP3dms8R4jtxW95Z+
	ZXuznqwcEqooDEHBjoxpnKo=
X-Google-Smtp-Source: APBJJlEyAivqgS1z/Q7bcfIa339ze+9MNCa6mD2worMXLAUFaSPxd3TpcGx2eH8f/O2vbFPJ05rqIg==
X-Received: by 2002:a17:902:d509:b0:1b9:de67:2870 with SMTP id b9-20020a170902d50900b001b9de672870mr6536878plg.40.1690100922731;
        Sun, 23 Jul 2023 01:28:42 -0700 (PDT)
Received: from zephyrusG14 ([103.251.210.195])
        by smtp.gmail.com with ESMTPSA id s10-20020a170902ea0a00b001b53d3d8f3dsm6428406plg.299.2023.07.23.01.28.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jul 2023 01:28:42 -0700 (PDT)
Date: Sun, 23 Jul 2023 13:58:36 +0530
From: Yogesh Hegde <yogi.kernel@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-kernel-mentees@lists.linuxfoundation.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Fix Wifi/Bluetooth on ROCK Pi 4
 boards
Message-ID: <ZLzktMnJHTg13Pp/@zephyrusG14>
References: <ZLbATQRjOl09aLAp@zephyrusG14>
 <2023071850-festival-illusion-6399@gregkh>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2023071850-festival-illusion-6399@gregkh>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230723_012844_777101_81267889 
X-CRM114-Status: GOOD (  19.54  )
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

On Tue, Jul 18, 2023 at 07:37:21PM +0200, Greg KH wrote:
> On Tue, Jul 18, 2023 at 10:09:41PM +0530, Yogesh Hegde wrote:
> > This patch fixes an issue affecting the Wifi/Bluetooth connectivity on
> > ROCK Pi 4 boards. Commit f471b1b2db08 ("arm64: dts: rockchip: Fix Bluetooth
> > on ROCK Pi 4 boards") introduced a problem with the clock configuration.
> > Specifically, the clock-names property of the sdio-pwrseq node was not
> > updated to 'lpo', causing the driver to wait indefinitely for the wrong clock
> > signal 'ext_clock' instead of the expected one 'lpo'. This prevented the proper
> > initialization of Wifi/Bluetooth chip on ROCK Pi 4 boards.
> > 
> > To address this, this patch updates the clock-names property of the
> > sdio-pwrseq node to "lpo" to align with the changes made to the bluetooth node.
> > 
> > This patch has been tested on ROCK Pi 4B.
> > 
> > Fixes: f471b1b2db08 ("arm64: dts: rockchip: Fix Bluetooth on ROCK Pi 4 boards")
> > Signed-off-by: Yogesh Hegde <yogi.kernel@gmail.com>
> 
> Why are you saying this fixes a specific old commit and not also
> properly cc: the stable@vger.kernel.org alias?
It is a mistake on my part. I apologize for the mistake. 
> 
> Please read:
>     https://www.kernel.org/doc/html/latest/process/stable-kernel-rules.html
> for how to do this properly.
Thanks for the link, I will read through it and resend a v3 of the patch 
with fixes. 

Thanks and Regards 
-- Yogesh 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
