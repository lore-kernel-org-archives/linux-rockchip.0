Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8514FC61DA4
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Mar 2023 09:21:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ulWFzD3o4F0GFkgJdH0W1ZRr3YIwfTQho8xPSbpA6oo=; b=ASHlBuCH+Was0O
	Zn3H9wozuMLh3HHOTJ6woCW51yDjBFekmTGlLjtbDWk722ypSzAYkxrUimbl/b7kXDzzPl/wEdzhx
	b2uDGj3RwWz4qRTJwbC36PvY36euD8spu/JlpOlqZ+nGULO0v50R3AiYX6lzOeC4HbFGVeXzl9QT4
	oV6Jc/hK7XdokwqbYj6F0Fd97weEacE/A8qpPgpTHuWG9xZfAXgEuuDFeP0CiK3vdgvYIDlgBMtyR
	OcMNrgryh9+4TZU1OCVxVPkHSj63nHE3WOum0zm4R5tV9+6RYdMcpjGK69jVrCGdB63ut5ty/2UcA
	FuzcqL9flh4sEY4mjISw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pdSkD-004Vys-2W;
	Sat, 18 Mar 2023 09:20:57 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pdSkA-004Vy1-2s;
	Sat, 18 Mar 2023 09:20:56 +0000
Received: by mail-wm1-x331.google.com with SMTP id p13-20020a05600c358d00b003ed346d4522so4678375wmq.2;
        Sat, 18 Mar 2023 02:20:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679131252;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xu6SW76M44DHafkRSkNNVV2Y0xxvTOl/ACds05+1X8Y=;
        b=inOf34gptgalSVJ2zk7RE8vAZveUdYZVjYq5X7D4T477EtV4wodreJQPSk2e0JzZ9S
         2nWANOh2cn8YYdquhQ5IWG9oxk7HyM5oY7epWMywr/aOpfFDKP2M0xSeBXCO/bcFr9uG
         9osr5/Ia1G+bZRdqPFrQt+M9yl/rlLHAXzpvKYK/7CEOkeaQsdKmD0R9rgrbrSD93ARK
         U7rwqBcCa1ekC2TwkqGcwBC6D1lokZsU5CH1v+aEIrv63k8qJHvFrgFsaQCyIKjcnbwz
         yeQwaoUL85kNpGOwOCZzzIaTkGP/zzshqcJOcO6c5GlDfF06o08W4Q1Dkm1327NY8nPj
         ZVrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679131252;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xu6SW76M44DHafkRSkNNVV2Y0xxvTOl/ACds05+1X8Y=;
        b=igBk7j7GUyNtC4KNWJP4YVsfccGEMmkR0oKYFv/2kpEm7RjZsogKp1np8kZeSDUQVE
         41CmI2V9Jm/5iRZmCTG6JxkJtaneNyE1qHZf799x+DcmAmZc1BwP7TeMagVb1CnusuFH
         EDBkYkzuS8yzXYUOLvCfD9vRckoBKBNcOB3Zoyxr1RJFLTDcOktPHYpVwJwHQsfHPo8m
         jFyhKCkDRvTmz5/TFSP9KgNRWupjF4nCeNnCTu7gxVjCTTaOPoZjckBAm+ZUgSbSUX9D
         sk84HI5EgbStxrdFLSVOnxIhpWndO+N/zK5GCYxtx8fdZFZ6/L1m52cs3lYy4cw4x8aR
         KlnQ==
X-Gm-Message-State: AO0yUKX+qgdNTFaNmUJUdZMwDtOxM6if1lTl6YkODeMb//ee5e8BYjNg
	IG3buCFk1dsVvRwAF40h1a4=
X-Google-Smtp-Source: AK7set+9Xuue4Ps2b+7kehgYw0bjnJtLkw0edZuPUhUD5WJzbHDwW/4Qm43zLz53Pz43pLKhRqo9/g==
X-Received: by 2002:a05:600c:3b87:b0:3df:eda1:439c with SMTP id n7-20020a05600c3b8700b003dfeda1439cmr4029819wms.11.1679131252036;
        Sat, 18 Mar 2023 02:20:52 -0700 (PDT)
Received: from archbox.localnet (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id m20-20020a7bcb94000000b003eaf666cbe0sm4247780wmi.27.2023.03.18.02.20.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Mar 2023 02:20:51 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>, kernel@collabora.com,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Subject: Re: [RFC 0/2] VP8 stateless V4L2 encoding uAPI + driver
Date: Sat, 18 Mar 2023 10:20:50 +0100
Message-ID: <4586871.LvFx2qVVIh@archbox>
In-Reply-To: <20230309125651.23911-1-andrzej.p@collabora.com>
References: <20230309125651.23911-1-andrzej.p@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230318_022054_947339_22DDCA9B 
X-CRM114-Status: GOOD (  18.39  )
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

On Thursday, 9 March 2023 13:56:49 CET Andrzej Pietrasiewicz wrote:
> Dear All,
> 
> This two-patch series adds uAPI for stateless VP8 encoding
> and an accompanying driver using it.
> 
> It has been tested on an rk3399 board and there exists
> a gstreamer user:
> 
> https://gitlab.freedesktop.org/gstreamer/gstreamer/-/merge_requests/3736
> 
> example pipeline:
> 
> gst-launch-1.0 videotestsrc num-buffers=500 !
> video/x-raw,width=640,height=480 \ ! v4l2slvp8enc ! queue ! matroskamux !
> filesink location=test_vp8.mkv
> 
> I kindly ask for comments.
> 
> Notably, the documentation for the added uAPI is missing,
> that is to be addressed when sending a patch series proper (not RFC).
> 
> For the RFC I also did not care to replace a BUG_ON() in the boolean
> encoder.
> 
> Rebased onto v6.2.
> 
> Regards,
> 
> Andrzej

Hello,

I can't offer much in terms on technical comments on the implementation,
but thank you for your work on this. A more general question: Is the
rate control done by the userspace component or the kernel or even the
hardware?

I tried this patchset (and the gstreamer merge request) out last night
and ran into quite noticable i-frame pulsing, and am wondering who the
culprit of that is. Looking at the vp8 encode params in the uAPI, it
looks like it'll be userspace in charge of rate control?

On a related side note, since I let this run all night with different
parameters I can happily report that it seems to be quite stable, no
problems encountered at all.

Kind regards,
Nicolas Frattaroli



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
