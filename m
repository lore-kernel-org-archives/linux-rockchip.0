Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83BD5C7EE26
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 May 2023 11:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V0wAsfX0jPwNij1RRu/gV1FwdYiABJGvRrcIn43WBec=; b=SvuegBsVgnQqrI
	QRWn245vS9K5kHxMosemjfHyqcsbdTP4MxaTwikmF9PdnS7ZDIMHuQ26STI2SjC9gcm6BtE1kukxT
	1wxK4FzIkw+7pZINbEfotyU95VZ62a/rMXLEkJqw42HIPTXUN8cGZVYIceWAXeJbtNw6HNG+PzNyr
	zjsULItYrDLBOqOhNYNqey6NvTsvCF2qRNK8pGu0asJQwKEYKvs/iOvrx1p4L4/BDmE3xzrtTG6cS
	9bOf4brdIETuYQC/uJ3wutiCK+tGQcM2GLK9m3py3b/mNS0I3s3SUlWu3BfVUaqEdNDkQI2+y+m4X
	qx0il+FGGq4IwK7py2Lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwi6q-0062z3-0i;
	Wed, 10 May 2023 11:35:52 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwi6n-0062yH-1k;
	Wed, 10 May 2023 11:35:50 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-3f450815d02so6115495e9.0;
        Wed, 10 May 2023 04:35:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683718546; x=1686310546;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tvApClf6Vwq7pYYq456swXVsLdXe4Yk/kHkfI1zIbf0=;
        b=A7JK7Aa8+cE+lTIOQPBBguTGx4LVhzygAywBRaxRWDXJpKHRJStUaUY0rPCDStOCSq
         GBOwjR+1YuWTe1dVqZQcobgsVkrlYymiSSrIgo+y0ASEPz75m0AzfCcw0fQzFPjjjYS7
         d6bzOGfAsvxNKXSfg0xZdsHy5GLoUdan879eDcH7YNC+L+C7ZB2Q+noqlVV1W1Pk56KR
         7bEuYPaKJmyf9WpoT0p220LaMblPNU6x98SZYeR65vem9VFLS+ZxqbhOETZtq+tXPA5r
         PVytCKL5HNhUazNOxTgiBgva7e24kHjSXwKigglEJI+dTeP4GBSTvCjnBOWyCxdAaAqP
         0bFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683718546; x=1686310546;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tvApClf6Vwq7pYYq456swXVsLdXe4Yk/kHkfI1zIbf0=;
        b=USWLfkFcDR/18L+ztlWRyCPsW5UadMzM0ahl8jiZtgrjCNDKeH8MVppakDiQw4oGpD
         RnI79R5CE6JakiM0TLOBa63+UKPbrF60448JFSf12SNEFr6y2zHbKZLP9g//an3ZjRw9
         c9QzkpyJ5/WVh8m3P13WCYwxRgJxWbaOmxvyQciqbjUoFfvhifeRs7OWm10Vfa3lhpvl
         rGjoGqpS5eUHhDHSneULxBSJSIB+xJ36BZ80vi/5QTHcCzdlM7IDGEzJ4pLl3oVSc/p8
         rz4Kwh+yU2nclzKX4ocxadSIimB/gXHpYdt9zCUcTbxp2quA1eqZ0o+GnlLbifHnwM0H
         Bfew==
X-Gm-Message-State: AC+VfDyWdd+n/1MEq8AHJYjdRCznEzDVfSlj6TilzX3V5BeWjoWT2bla
	XU+Qxrgyl6pvRaxIzcCe3eM=
X-Google-Smtp-Source: ACHHUZ7wo+6G+OTP/f1njXi4NgMQmaiEiKJ9+AcmhQdxQJiCG8NzXngE14HdSos3iGEqNEoox2RfcQ==
X-Received: by 2002:a05:600c:2298:b0:3f4:2bce:eeff with SMTP id 24-20020a05600c229800b003f42bceeeffmr3624831wmf.25.1683718545727;
        Wed, 10 May 2023 04:35:45 -0700 (PDT)
Received: from localhost ([146.70.133.78])
        by smtp.gmail.com with ESMTPSA id y10-20020a7bcd8a000000b003f16fc33fbesm22321946wmj.17.2023.05.10.04.35.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 May 2023 04:35:45 -0700 (PDT)
Mime-Version: 1.0
Date: Wed, 10 May 2023 13:35:43 +0200
Message-Id: <CSIKESNNLX5D.4VDA3E6NBN3N@vincent-arch>
Subject: Re: [PATCH v1] drivers: pci: introduce configurable delay for
 Rockchip PCIe bus scan
From: "Vincenzo Palazzo" <vincenzopalazzodev@gmail.com>
To: "Bjorn Helgaas" <helgaas@kernel.org>
Cc: <linux-pci@vger.kernel.org>, <robh@kernel.org>, <heiko@sntech.de>,
 <kw@linux.com>, <shawn.lin@rock-chips.com>, <linux-kernel@vger.kernel.org>,
 <lgirdwood@gmail.com>, <linux-rockchip@lists.infradead.org>,
 <broonie@kernel.org>, <bhelgaas@google.com>,
 <linux-kernel-mentees@lists.linuxfoundation.org>, <lpieralisi@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, "Dan Johansen" <strit@manjaro.org>
X-Mailer: aerc 0.15.1
References: <20230509153912.515218-1-vincenzopalazzodev@gmail.com>
 <20230509211902.GA1270901@bhelgaas>
In-Reply-To: <20230509211902.GA1270901@bhelgaas>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230510_043549_583946_7491A4D2 
X-CRM114-Status: GOOD (  26.08  )
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

> Hi Vincenzo,

Hi :)

> Thanks for raising this issue.  Let's see what we can do to address
> it.

Yeah, as I said in my cover letter, I am not happy with my solution,
but we should start somewhere to discuss it.

> > Add a configurable delay to the Rockchip PCIe driver to address
> > crashes that occur on some old devices, such as the Pine64 RockPro64.
> > 
> > This issue is affecting the ARM community, but there is no
> > upstream solution for it yet.
>
> It sounds like this happens with several endpoints, right?  And I
> assume the endpoints work fine in other non-Rockchip systems?  If
> that's the case, my guess is the problem is with the Rockchip host
> controller and how it's initialized, not with the endpoints.


Yeah, the crash is only reproducible with the Rockchip system, or better, 
the crash is reproducible only in some modern devices that use the old 
Rockchip driver mentioned in this patch.

> The only delays and timeouts I see in the driver now are in
> rockchip_pcie_host_init_port(), where it waits for link training to
> complete.  I assume the link training did completely successfully
> since you don't mention either a gen1 or gen2 timeout (although the
> gen2 message is a dev_dbg() that normally wouldn't go to the console).
>
> I don't know that the spec contains a retrain timeout value.  Several
> other drivers use 1 second, while rockchip uses 500ms (for example,
> see LINK_RETRAIN_TIMEOUT and LINK_UP_TIMEOUT).
>
> I think we need to understand the issue better before adding a DT
> property and a module parameter.  Those are hard for users to deal
> with.  If we can figure out a value that works for everybody, it would
> be better to just hard-code it in the driver and use that all the
> time.

Yeah, I see, I see. This makes sense. Is there any path that I can follow in 
order to better understand what's going on at the hardware level? In other 
words, how can I help to understand this issue better and provide a
unique solution for everybody?

Thanks for the nits in the patch, I will take a look with a fresh mind
later in the day.

Cheers!

Vincent.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
