Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0A41CD13CF
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Sep 2024 07:31:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UfaFzGMkGYGuu/MoxbUfKIURePNAexqlTCWP6YnyFfQ=; b=hJO/QeFCtzEJ5s
	5CFGi/is8tLL21fhqEGXLbrVhe1K00bei3G3IySPhBZ2ZtgaRJ0hEGmHYenWClhmsD7NrTzQciSbn
	I2ZFK+f8vIh5ygA+54+zFl4yWKoifkYDuRJdLbTIrshSCCrGO785jAyjwEIG+HgHrb+g4jo7zOJBf
	gOBu+75GpHsSSiBKos5gMHDyjgJnI5kg4JASPu7/Onkd9IW2HUBBhOEubyIwuPAuCkCaoevi3emzZ
	S4VS8RibERCVZbVBamQMMuWZnlwpdx8CNuOLBqIJtfu7VugAzBSbqQMEj8mPCYYFBL51xXT+Qwxbh
	4ZzTo6JtH3tkWrdxfQFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl1Wn-0000000DJbE-0EI6;
	Mon, 02 Sep 2024 07:31:09 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl1VW-0000000DJN3-1lCn
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Sep 2024 07:31:08 +0000
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-2055136b612so12747855ad.0
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Sep 2024 00:29:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725262189; x=1725866989; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mTYRk8QDYfw7agaBF71vSyqd846XceBwZWHKjPzpyUU=;
        b=TotxkFVlVRtx10jnxVQTxUS7WuTZKEsjjn7DFOaklwFa39jMLJSS1t7dqzXkSjnC5S
         a85EoKTK1Yz3IVIb0isyE80eDn/u4FaAWF0ovUMF487l5Fmh76QUwIrHRTkLI6Q3ibu8
         18GkxhmEAfKSiAONrfBmBAFSya3zzz4EUh9NF2uiYqe2RH1Wu20XWTk5lTVe6a9X1/hw
         n12ljP21m/QUZ8slwEctWrY5u6UojolrX9EuwImwqzfKzC/AtvAvW6rYxdfAziPD7zgs
         GciZgUZXwHyyJH0bosbHss8LLnuPTeX6nuQwPipC/AFAND+7djIXCnNPtprtzsOrwVC6
         Hbig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725262189; x=1725866989;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mTYRk8QDYfw7agaBF71vSyqd846XceBwZWHKjPzpyUU=;
        b=rHb5ruB//UER1M5CtukjB8YJwf4Zc1Wo0iSfEbelJ8ndeSEvbisKRL6A+ke8rXF4Kc
         y5lss3GaWMILqo0EiRmO8WVYz86gqwrBp6lXFxpCFRbCGxvyhU19vZjtLeIn6z+ZK0w0
         FxdIJEK/BLXwRQx0VK3KDrUhMl2FrwSBCCQz2oS26XUzd/1NXTecGfpPC0EgtvB7zUuQ
         1MQquu3QUEwoxQ1U3GH9C0+LbdPbJEVjkSRVZiDZX79ivw0xQedAWO8t+8Ij2Fx6oeSC
         7yogmh8891jj03Pb1ZerUrirF5koKOQn9MlLAETFfWfcapAeKt5OAfWxeMkRn1xG5wor
         f89g==
X-Gm-Message-State: AOJu0Yx+Go3RH33lWCWgPYEe7FFbdZ/6WFivfwQBiVBKgtOmp7aYeq6S
	fowZSpIZUPcOTNEAzrDdmXw5y2LA4cW+G9tnTAlGnPLa7dLBwQOJcfZrNKnMRAyV8w3H9MUiHUF
	piacWFxCSMC3pnarUVeEdst5h3zYUfMY+lXg=
X-Google-Smtp-Source: AGHT+IGlftb219Q8PlYPJI38E8ORu4VRICcFddjZUO/s6r0Qf4D8FXpjpOnQuZ48yEbWZOefWdloS0L4RIQmswfahyA=
X-Received: by 2002:a17:902:f689:b0:201:fcc1:492a with SMTP id
 d9443c01a7336-2054612c3d6mr73174695ad.18.1725262189329; Mon, 02 Sep 2024
 00:29:49 -0700 (PDT)
MIME-Version: 1.0
References: <20240830-rockchip-canfd-v3-0-d426266453fa@pengutronix.de>
 <20240902032837.1513090-1-a1ba.omarov@gmail.com> <20240902-aspiring-amphibian-swan-f65506-mkl@pengutronix.de>
In-Reply-To: <20240902-aspiring-amphibian-swan-f65506-mkl@pengutronix.de>
From: Alibek Omarov <a1ba.omarov@gmail.com>
Date: Mon, 2 Sep 2024 10:29:38 +0300
Message-ID: <CAKyg=SXE5FVW4zHVX5qzsm80zco5A3eNe-pU8Xrzq1a7AcM-xA@mail.gmail.com>
Subject: Re: [can-next,v3,00/20] can: rockchip_canfd: add support for CAN-FD
 IP core found on Rockchip RK3568
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: linux-rockchip@lists.infradead.org, linux-can@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240902_002950_479337_3F98B21F 
X-CRM114-Status: UNSURE (   8.81  )
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

> Are you using the CAN in production devices? The driver runs quite good
> on a v3 chip, but still not stable on the v2. But as our customer now
> only uses v3, I don't have any more time left to fix v2 issues. Drop me
> a note, if you have issues with the v2 chip.

Oh, I meant v2 patch set.

We're probably mostly running on v3 chips, since nobody so far
complained about CAN bus and you're also telling it more stable there.
:)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
