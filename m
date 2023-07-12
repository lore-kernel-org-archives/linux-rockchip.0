Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB1E9EB64D9
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Jul 2023 07:07:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=REVSgvDn3zK5nv5E7m7KEYuK8v77cKXiQvzKW1IaiMc=; b=dFObINOueI2uRO
	3reAc8dnhg24XzUzYczTfTriV/ywxlbBHq5JDCOfL2JO0q/FgV+atiPu0/Qft5+vj4Q7jdgF5ep1k
	Je+JROkVV0rO3FIUpfvJFmRhd1wsNK6Hqjbz+q/zowPldReJxFkC33tzZSDAgMJbU6+jpmdTqzcuO
	RprCfrGdsVQeTZAcbIL3P4POPuBM6tQDzu3GYkELkZ/xQ4LUUOqTc9omVi8YNNOYQhJl2Q5KGjjvv
	bsXxMOpatUMOXIFLhd+csmjcSTI6ulYMagqjTm6Y0QBVIr0EcvqWDGu+L71NiBnkh3ZVk1LWn7D1+
	bDDlhxkkdRfU3sk/Zocg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJTww-00GkTC-0r;
	Wed, 12 Jul 2023 07:07:46 +0000
Received: from mail-oi1-x229.google.com ([2607:f8b0:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJTwu-00GkSD-0N
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Jul 2023 07:07:45 +0000
Received: by mail-oi1-x229.google.com with SMTP id 5614622812f47-3a1ebb85f99so5696027b6e.2
        for <linux-rockchip@lists.infradead.org>; Wed, 12 Jul 2023 00:07:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689145660; x=1691737660;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Vg98CuXFiRp4u5yNmh+JGhua2JWmia48tfhxdebpa/M=;
        b=eiU+z9oy49dIxRI/7D2/PuVf9zEhMAdny3ot/228JaVsDPwOwgEdj+EB8KZuNCpTQc
         hGq3fDHTGN+ZpN3gF+7Tf5MFDmYLobDkhkMELWI1zsD1Vep0WRPJMbmpPT1bQNQyXeXz
         MHpKRqUzOOSyRj52IFoQkPHVhxN8Oq5djN8pZaYrcQsuHLTOrnBkOZMMhEw1owIXfe6N
         ThBjdri1KDWZAJ6AH+qpMNYunRFYOg0DfRfueS+uH0SKsEIW7kZnAmV5qIWwkrOm0fFu
         ISHg8yw9ZinH+pmAbTlFjYgkD7EX1pGh1FLWNfJGdDpwSlnmx7AMezO8mB5IvvcPlT99
         xU5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689145660; x=1691737660;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vg98CuXFiRp4u5yNmh+JGhua2JWmia48tfhxdebpa/M=;
        b=eCjgwwCQXJ8Ni6LiNU4aStT4aDPRp6o82wGT1/mcBfCcZXzzOmP0g21c5sjq/3NBmy
         nEYe7FZ9Zqda7OZu8Q+x+K0mOBvqisCRD7YNTDyA9ZHbXhL0Sj+n2vLiYvEHuEoWZJnN
         QLYlbpL+XdnEOkarf9oE8zr5K8u78pJ9wejv4Hq6u4XUf+Y1AObcTAlegXc9nt6X4hTs
         ipaAwmFLGJWhD2OpY/OFdN+j7DLFrGAKtDp7QBSNOeZEq8qPGBoxA74WTKzJhXfON8tO
         nK0AzMnnBl/LgRoKY2G0+xf6bFR4n+3GLKZtLKS4uHpMNRLpdAnAPa957k9RtJ76KGta
         0rdA==
X-Gm-Message-State: ABy/qLY7WwjS3DVRemf0POFpueWqfxa8/WotJ+wWyMvzQ9PwiYVzOG9P
	FmyDTQGVCxY/Tg0dJOt4/9Q=
X-Google-Smtp-Source: APBJJlFdFROvQJI3VHsuY11lM51/84BB5dlGZBqeWttkdlgJsOelavjv0aYqvfyChm+i2vCzc455Jw==
X-Received: by 2002:a05:6808:1411:b0:3a4:58:8e87 with SMTP id w17-20020a056808141100b003a400588e87mr11181320oiv.52.1689145660573;
        Wed, 12 Jul 2023 00:07:40 -0700 (PDT)
Received: from zephyrusG14 ([103.251.210.195])
        by smtp.gmail.com with ESMTPSA id n4-20020a62e504000000b00658670ebe7dsm2839680pff.119.2023.07.12.00.07.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jul 2023 00:07:39 -0700 (PDT)
Date: Wed, 12 Jul 2023 12:37:33 +0530
From: Yogesh Hegde <yogi.kernel@gmail.com>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	skhan@linuxfoundation.org, ivan.orlov0322@gmail.com,
	kernelnewbies@kernelnewbies.org
Subject: Re: Seeking guidance for Adding ISP Driver for RK3568
Message-ID: <ZK5RNSsq6cUWm+eM@zephyrusG14>
References: <ZK0ApOXkmkSO98kM@zephyrusG14>
 <85ffc0b2-efbb-5d70-ab75-e3e9f0c74bf9@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <85ffc0b2-efbb-5d70-ab75-e3e9f0c74bf9@wolfvision.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230712_000744_158562_C00549C6 
X-CRM114-Status: GOOD (  39.78  )
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

Hi Michael, 
On Tue, Jul 11, 2023 at 11:29:34AM +0200, Michael Riesch wrote:
> Hi Yogesh,
> 
> Cc: Laurent as I had a chat with him about 1.
> 
> On 7/11/23 09:11, Yogesh Hegde wrote:
> > Hi,
> > 
> > I am seeking your expert guidance and assistance in adding the ISP driver for 
> > RK3568 to the Linux Kernel.
> > 
> > Before I start, I have a few questions regarding the process of 
> > adding the ISP driver for RK3568 and upstreaming it to the Linux Kernel. 
> > I greatly appreciate any insights you can provide on the following points:
> > 
> > 1. Integration with existing RK3399 ISP driver: Since the ISP driver for RK3399
> >    has already been upstreamed, I would like to understand if the ISP driver 
> >    for RK3568 will be added to the existing RK3399 ISP driver or if it will be 
> >    a completely new driver ?
> 
> That's a very good question, but unfortunately there is no clear answer
> to it. We were able to hack the existing mainline rkisp1 driver so that
> it works with the RK3568 ISP (rkisp v2.1), but the result is far from
> being mainline material.
> 
> I would say that there is enough overlap that the RK3568 ISP code should
> enter drivers/media/platform/rockchip/rkisp1/ but on the other hand the
> differences are so significant that there should be separate
> rkisp2-{csi,params,...}.c files.
> 
> Example for overlap: With some refactoring applied, rkisp1-capture.c
> could support the RK3568 ISP as well.
> 
> Example for significant changes: the CSI subdevice is fundamentally
> different, so most likely there will be a rkisp2-csi.c.
> 
> Example for a mixture of both: a new stats/params interface to user
> space will be required for the RK3568 ISP, but if this is designed to be
> general enough, it might be reused for the older ISP versions at some point.
> 
> > 2. Upstreaming process and staging: I would like to know if the upstreaming 
> >    process for the RK3568 ISP driver will involve starting with the downstream 
> >    driver and adding it to the staging area. From there, would it be merged 
> >    into the media subsystem or follow a different process altogether?
> 
> I think the tendency is towards skipping staging, but I don't have a say
> on that one.
> 
> > 3. Permission requirements from Rockchip: To ensure a smooth upstreaming 
> >    process, I would like to know if I need any permissions or approvals from 
> >    Rockchip, the manufacturer of the RK3568 chipset. If permissions are 
> >    required, could you please guide me on how to obtain them?
> 
> Downstream code is GPL'ed, so it should be fine.
> 
> > I would also like to mention that while this is my first time upstreaming a 
> > full driver, I do have some experience working with the media subsystem.
> 
> Cool! Just be aware that you picked a complex beast for your first full
> driver.
> 
Thank you for taking the time to respond and provide clarity regarding the 
process.

> What camera sensor hardware do you have?

I have Raspi Cam v1.3 (OV5647) and Raspberry Pi Camera module 2 (IMX219).
From the Rock 3A schematics, the MIPI CSI port is Raspberry Pi compatible. 


Thanks and Regards
Yogesh

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
