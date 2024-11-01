Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 041B9E6B251
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Nov 2024 12:16:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p7kl9+OKxR67SDbmm8cWbj3gIg+S8pOPcYHauPaHEFU=; b=3f9XsImmPjTugY
	1R+zOtsm9VK8Pi5ssQJ/Dc/G6XQPFzc1M0eEH3PM1MLV7+MVg2pC85NRleiX1ZqhQE8BBg1K8+qcQ
	cqATAJt46FVhsSUw6FL8OGKZjDW5Emorb7qUtHBgGA8n+6Hy0vDpQ5cFLJOKay+BonqLhf+GGIvZO
	FJ6JSN0YGEbCE83XxsTXrFMrfDXWWElOEvVL2m8Nlu8kyQR/P+cE8WjuwzVdhu7uUoRVUrNLSGBEp
	hUIHnfhKDlsDGQNgtJ6WdAOTczjXr9CbSYrTY17LlwyuyWS+Akm+KnUIXHu1bdEVKCgwcYUvU96iN
	uvK1QhXz9Ybe2UNqJs+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6qZW-00000006w0P-0s3e;
	Fri, 01 Nov 2024 12:16:10 +0000
Received: from mail-yw1-x112d.google.com ([2607:f8b0:4864:20::112d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6qGs-00000006pNu-0Xqi
	for linux-rockchip@lists.infradead.org;
	Fri, 01 Nov 2024 11:56:55 +0000
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-6ea0b25695dso15395077b3.2
        for <linux-rockchip@lists.infradead.org>; Fri, 01 Nov 2024 04:56:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730462213; x=1731067013; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bEjXnXMl7Ay4KShECfnw+okEgY3Haneebjk5FbB0/Hs=;
        b=GaHGXrkYoypWwsg1Xjl3WOrHE3neZpE0zYb/LBo5bZt0ZqRXyt4/hTLFsl/Qzv7B4B
         Kg/eIeL+57hPbhfXvFoBPV0SDhgfIvstSjqSQfWsV41BGhr7XX7lda86TOXvZmmT1feo
         G24dx8JRoF1pqonb2aWtDUy6iexU1blQzLHbDB1YRIMmJcGTdG+g3YZ6mWfwsV+ODhKA
         LPUmg9+3utAK8fatTmQUXZuPh66fNnAStcwQzhFCwzoZ3liuSoXeQJUZvBfvK1YxYACe
         PXk1PF42ptB+RCNUMIim//oDjnGWd3Q1e7aSKe+Zs5BnbHF6wOAq/KAjcX9/vvAqq5Os
         A1/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730462213; x=1731067013;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bEjXnXMl7Ay4KShECfnw+okEgY3Haneebjk5FbB0/Hs=;
        b=tKZKxghdPzQd+aW4W+FNilSbee+cGMHQubXjvKAn8IHvyzWmuu/y5LJ2sjOxqLtA5a
         N6lwErT/GY6PayBZls3YySRWuzuxazG5VJC4FdvjLbaRP1oU+bc9a95tleZnWFG0XnNm
         NtJWoSL2XQPvCT4Z3PahqnxF/h3UPoa/oxDxTjmr2vAaubpN0grkpY2zt96bhn4miKIr
         +3D5PzvO0WlJFjX7UqZP+h6volbZftimUEs5jUFy6xP6HK7pYf1xF6eT+jtZGwDJ45CM
         lmkLerBU+1x+l3x7MJmCp7N8UPbmgVWhu7Tsg07PsZ9TQDogsLapLdE7vTHfWqID6lqT
         Gqpw==
X-Forwarded-Encrypted: i=1; AJvYcCVZzZr6Ltsg8FUZ6EUUk+011L9tbDOwQBdoT3dGBEBx6kwoC6T8314Gs0UPU7yZXZfD6i407+z0c5oDpeK87Q==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy6yxl0MBDpYt2A3AWnj2ZY0A3kDfWOevZ0ckjNqYtQv4WsiHWH
	YmVkxN7bB8uC3rsXOcTO4HWwF4xHrtL0GKM+OG+M86cAvCS3j6L1umlbXHlJONkaaEqd2iB0NAR
	ITQKz8E0Xeaud34g8/+aQnoeWCOPPot1zmPfscQ==
X-Google-Smtp-Source: AGHT+IGEoqkUdkWxi7vuinWA4jtAEJie/21Db5kfRuMM/lRk+uKXHoSQVZnW3JPpiWrncmcO/tvCnkg7EHY1ZRQ4gvM=
X-Received: by 2002:a05:690c:f15:b0:6e2:aceb:fb34 with SMTP id
 00721157ae682-6e9d88ea2b9mr230633227b3.1.1730462212665; Fri, 01 Nov 2024
 04:56:52 -0700 (PDT)
MIME-Version: 1.0
References: <20241022154508.63563-1-sebastian.reichel@collabora.com> <CAPDyKFoAv1jeQitHmTMhvwG9vGzN-vLby0fPzkX1E6+-Qe2dog@mail.gmail.com>
In-Reply-To: <CAPDyKFoAv1jeQitHmTMhvwG9vGzN-vLby0fPzkX1E6+-Qe2dog@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 1 Nov 2024 12:56:16 +0100
Message-ID: <CAPDyKFp=sRLVBhW2aK87pYHVGi_6gNw=e3j3AGMnEWP2SVYFpw@mail.gmail.com>
Subject: Re: [PATCH v3 0/7] Fix RK3588 GPU domain
To: Mark Brown <broonie@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>, 
	Elaine Zhang <zhangqing@rock-chips.com>, 
	=?UTF-8?Q?Adri=C3=A1n_Mart=C3=ADnez_Larumbe?= <adrian.larumbe@collabora.com>, 
	Boris Brezillon <boris.brezillon@collabora.com>, Chen-Yu Tsai <wens@csie.org>, 
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241101_045654_198620_6635EF2C 
X-CRM114-Status: GOOD (  27.06  )
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

On Wed, 23 Oct 2024 at 12:05, Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> On Tue, 22 Oct 2024 at 17:45, Sebastian Reichel
> <sebastian.reichel@collabora.com> wrote:
> >
> > Hi,
> >
> > I got a report, that the Linux kernel crashes on Rock 5B when the panthor
> > driver is loaded late after booting. The crash starts with the following
> > shortened error print:
> >
> > rockchip-pm-domain fd8d8000.power-management:power-controller: failed to set domain 'gpu', val=0
> > rockchip-pm-domain fd8d8000.power-management:power-controller: failed to get ack on domain 'gpu', val=0xa9fff
> > SError Interrupt on CPU4, code 0x00000000be000411 -- SError
> >
> > This series first does some cleanups in the Rockchip power domain
> > driver and changes the driver, so that it no longer tries to continue
> > when it fails to enable a domain. This gets rid of the SError interrupt
> > and long backtraces. But the kernel still hangs when it fails to enable
> > a power domain. I have not done further analysis to check if that can
> > be avoided.
> >
> > Last but not least this provides a fix for the GPU power domain failing
> > to get enabled - after some testing from my side it seems to require the
> > GPU voltage supply to be enabled.
> >
> > This series is now based on the pull request from Mark Brown:
> > https://lore.kernel.org/linux-pm/ZvsVfQ1fuSVZpF6A@finisterre.sirena.org.uk/
> >
> > I added one more patch, which adds devm_of_regulator_get without the
> > _optional suffix, since that is more sensible for the Rockchip usecase.
> > Longer explanation can be seen in patch 6, which adds the handling to
> > the Rockchip driver. My merge suggestion would be that Mark adds the
> > regulator patch on top of the immutable branch and creates a new pull
> > request.
>
> The merge strategy seems reasonable to me. But I am fine with that
> whatever works for Mark.

Mark, any update on this?

If easier, you could also just ack the regulator patch (patch1), and
can just take it all via my tree.

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
