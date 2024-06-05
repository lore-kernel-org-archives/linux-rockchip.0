Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52FA7C25B76
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 08:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j+oNg+U9Kxe0fxts6irOARbZkzxxXBSqAqOTDDDj2sk=; b=ZwEtnj9up+9K1a
	aYyCoJ7B5plyZ6w2mJaVP0Qe7N+ZaXvKL/75osrR9kCTn5qA1XL6/qgzsKDdWGRgBTIpQdxFMihyj
	MXtCGlpVR5T2D7Urt55qHzQg8quNmUBHxWyrndsxFz8iROXFypwu5kzgqxHZ8SmoFUYgqGGqNsygk
	X62AXXfaOKZTEYAre4aAg/5+HimUrGDNSfK/r6+xXi/mkN3xL2UW73J0N5AE0E2OI846SPKhamCGM
	PQlC+1iNrWPgSNkfK/DrVdu4rpFrpog59AKIdVrl1WzOvleIQ4H64kPHfpn6e5+o6Y9UJhxOcGqyM
	awyIi9LIvdhOuxOnpyjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sElqI-000000059Am-3dIJ;
	Wed, 05 Jun 2024 08:17:58 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sElqG-00000005983-1IbJ;
	Wed, 05 Jun 2024 08:17:57 +0000
Received: by mail-pj1-x1033.google.com with SMTP id 98e67ed59e1d1-2c1b94dab63so1556025a91.0;
        Wed, 05 Jun 2024 01:17:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717575474; x=1718180274; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1wdjcsi5xleRe7XanjwsWQ4TJLqfHy+eOuRnTIm772k=;
        b=aKxcCP+bRu8AqFHus8Ru+G5iUqsdN5DUqe0aPO3kFTSedkSgiKzxWYZ0Cr6c7BvxHX
         wMYwBJhtuiM32qkH4HbCae3oth8lO//JGURMqYWqbNV7UPyGe/LI4gg3B4G9Q/EDJmz6
         CAI75aRnd7VPJuKDbX1RsKJaLdNbxdmDDGbCxGj5oBpmzBQ+9v6w6aGCGCahIJSX+aIR
         /0A/chk9E0op6mX4p4R6ozMeDUhgbxzt+kuv959TtTb+EYvAvdIkTsi/f8hnqvb/Nxld
         b9ZMpS8lrF+J8B5+5AtS5271eBATFMp2kJ73ce28lK3U8dEEDslXI2yU6qScHdDzvL9R
         IuWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717575474; x=1718180274;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1wdjcsi5xleRe7XanjwsWQ4TJLqfHy+eOuRnTIm772k=;
        b=g6VTNDD+c5hlbrPOgvrZEw8EP9nIF4ZiOBXOMEKjUxemPZS2s/72hhtYm8AATRd8Ob
         6PMJFH8VbfCCof1qRkiYYV1ybTQT57RfR0hg6hixeM/fGIOX7tgMoma1SG6ibFmbP5Da
         Jiy6Jufyudyejr0WUGsIGWjn7PilQOz/96pMNGrD0rI5iwCig3/2Bp69eomFMvCPzoMh
         mF9hCYMwTUd74Q3j79BjY75LpSzWJwlI4dTCrVeO5o7oDDu2f8CyM5qRcb8MHikfYRQ7
         RVzK0xTToFZm7nZrCLl2xC9qpsMG8Kn3iK68RO2FEErjs0aVc+ZCYnuv1b5u6H7j2rYf
         NYzA==
X-Forwarded-Encrypted: i=1; AJvYcCU8bhQmWlYf1L3QcAzT1zV5S+0dffDXm9Bm40FKAGn6lKbfUl3aT6ttimArHkHbjx+2dGNSWB1HZW3NNyML2b4mOuQvABzjaj76H4XIPqdwYy2bHMcFuC8EYsokDYFvT+mTc3GdkX/1AOrAxGGYzORQyE48/YgY1eQ=
X-Gm-Message-State: AOJu0YzwwBZeiL8/Rosgf+jEM/Cv40HMVfXAWhpcaRMB3xwPXSHhFezY
	lmLf03UPr73mWRlt4utqPEYOfbUgj0XiooGOB2wte3LCbTPMX6fpBgo1EaHWzm4uNKzY1yUKpR+
	jLByPKielZ3shcrgWBE1fVssJQ5U=
X-Google-Smtp-Source: AGHT+IF5rnwycoV3ChyFzp5X8uVGQNRRATu+t23uSYtVBEuKZlPG9wBAsfpHV+Aq+lH+0feC0OG1t1qZ7ZXypMaKk7Y=
X-Received: by 2002:a17:90a:c085:b0:2b8:f5f1:10d9 with SMTP id
 98e67ed59e1d1-2c27da22604mr2277848a91.0.1717575474188; Wed, 05 Jun 2024
 01:17:54 -0700 (PDT)
MIME-Version: 1.0
References: <20240604184752.697313-1-a1ba.omarov@gmail.com> <20240605101323.60d7abbc@booty>
In-Reply-To: <20240605101323.60d7abbc@booty>
From: Alibek Omarov <a1ba.omarov@gmail.com>
Date: Wed, 5 Jun 2024 11:17:42 +0300
Message-ID: <CAKyg=SV9HhMAU0cVDxvZjMx-KBc=2BTqgr1J4Wyx7z77vRTRhw@mail.gmail.com>
Subject: Re: [PATCH] ASoC: rockchip: i2s-tdm: Fix trcm mode by setting clock
 on right mclk
To: Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, 
	linux-sound@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_011756_383346_3E9DD1E2 
X-CRM114-Status: UNSURE (   7.29  )
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

>
> I cannot test right now, but it definitely looks correct.
>
> Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
>

Thank you very much!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
