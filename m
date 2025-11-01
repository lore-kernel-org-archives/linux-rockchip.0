Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8593CCF9F8
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 Nov 2025 10:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oubYIEorH12kpDlDidxvEUm9QBeql3L4pqFORadMlOg=; b=s0iwZ0mua8N1dK
	nWozsNUgx/R5qh+xnvrxgOzAKLY07CrdbEp4750y5kMqKPYmMZen0TWAUdssxyO1xKoLWzz9A+WEB
	cexUh0Ovvl8pNcjhNT26FKTml0+7Ly4NDAKW4cblOOYYKQiNLT5bN1wCfe6esR7PrT7b+30OzIw8e
	FwTvC7jQUr9YlfGU4cFYpJ13YlhYPonK4eOTKVw2hM+olpsuhHAnNRJav5qROsHGbJ3TaCDqarQPU
	yhTjnWTh7jTXD0i410m8iIZ2YlhNq5bvdp827Z2kwKYqv4ETOFCwFIOkbEbG3MQkcralOLFBhYovm
	GzWXVx1xsehwdiQhtHzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vF99d-00000007Gzt-3T7E;
	Sat, 01 Nov 2025 10:48:17 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vF99b-00000007GzF-3I7P
	for linux-rockchip@lists.infradead.org;
	Sat, 01 Nov 2025 10:48:17 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-640a503fbe8so52660a12.1
        for <linux-rockchip@lists.infradead.org>; Sat, 01 Nov 2025 03:48:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761994092; x=1762598892; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=gtLoHp0kEwq/bLHJArViyfu5fWlEi0xAxEhFmz0T09k=;
        b=IpbNylaUj/3ap/nO0M1LTzjtkS1acydsD8qyt1w3d7R/6HXxrEUgDYoUhKLXHaYWXV
         JUCLJCCWJX8CZJ9rcXZI/D+wuLyysewWObUo7XgQ5LuUzgOuNfpp/RSKm3dWd0T5eUHz
         J5G/rFwq4XE1XWypxFMf/4RIgOWTo5WeT8kGs4jFokamRoOwM9uE6hJp5IsYH574chO4
         Yrt3Zfk8kVT3qnLsK0jkbsHO48aR+mEDxa3agCtJhkmMQCWB5wweR/j8PK3xh0TeK5aR
         Uo+UW77IxgME/VVWhfDizvWJuNPelqu8Du86RDBloEE9xV5LivYdHp8VXfsX59ByZUA5
         MFbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761994092; x=1762598892;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gtLoHp0kEwq/bLHJArViyfu5fWlEi0xAxEhFmz0T09k=;
        b=NbjCEVui7B+tWRyEd2Qna65p43vCp08R86NWLX+CHNvlKmk6jgDe3C5OJlGUOF2uAO
         cy97sdsrZjFPgIVwHWXtv+mUH+nV6wkSxF3D5tlbu44ieAXfebsk1xUKQW/ALU81YjTh
         HT34z834bcCF60Vpf8qWMLnWaL2Wsr4gDRidadbMEW1nuYEItlMA4vHVKIXeIWTdc7lE
         Xw69tE85l6aeZAAUPJFZpC3JgvshLS19DmiwQpjXv2AucfvZLdx+nvqQdxY+GEXjIKdm
         4NZ/dq7qLdp5M3XZF/H9+0VjpW2EOGOpB9L2GbySuFy9htCZGCgjRKowoh3pHz9qW1Ey
         te/Q==
X-Forwarded-Encrypted: i=1; AJvYcCW4Pa8Zqv4nH8a9Z11EbZ5971iCaKc0grbK6rQ3worcSeypXBC+cJMKzF4O4ZkDUkj1NwGq+zb6XvCvXJl6Rw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwKsL5ne8dz0071hUszumQnX/JW4lSoib59bBN0dgplHMttWHV7
	jCEN1Vr6gyEKGn+VVJwXJHVU6dbHaySlbUnf3LrKch5bBtqko3yBq3XTCg5tPfEwJFqE99FoPVs
	GcM7updELt/BzasgGXAuKmVwxWcVoyQc=
X-Gm-Gg: ASbGncvMBqutCBbAeLdQlX5HiWRnCgHnY8zo65V/WH46VWoyvxPhOC2buDk4LDRb6+g
	5i3gyzZS51w/6fB5QwyBVhk6bv8zmiIneA9jcoxJt+X8jE6A/u0Qtp1g8LW0qz/rOjaDLrnIrYI
	sg6FXGeesbmFH00DfmpskvHg8FcPFqzfQ2oCGWLP0OWggjBAWbSoFocn8RwzmK+Vo1yZQkHfLhI
	9mR0fRPyOGmKxaDyOKr6UxeMKwApzo2Dt7PjliNBnmgKyYp9a83eEYxkCJ1PsGubbXKSA==
X-Google-Smtp-Source: AGHT+IEwEAbpzczbirHeYPq9CirAqArt7tfqx1f1DuepotXx+VdlfMQPQPP7/cGb1j0Z5jLq9Qc9/0ubBl45KkLxH90=
X-Received: by 2002:a05:6402:518b:b0:639:dd3f:f265 with SMTP id
 4fb4d7f45d1cf-640771ceb67mr5718247a12.25.1761994091667; Sat, 01 Nov 2025
 03:48:11 -0700 (PDT)
MIME-Version: 1.0
References: <20250905112736.6401-1-linux.amoon@gmail.com> <176085588758.11569.7678087221969106036.b4-ty@kernel.org>
 <CANAwSgRjXS4V_Kpw5kaJnPA8f=18uN-MgfEQ5ErN3aFRqbJKfg@mail.gmail.com>
In-Reply-To: <CANAwSgRjXS4V_Kpw5kaJnPA8f=18uN-MgfEQ5ErN3aFRqbJKfg@mail.gmail.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Sat, 1 Nov 2025 16:17:54 +0530
X-Gm-Features: AWmQ_bmhgMeWFkOeYmBpsEodWI1g24fEo-iGnLSXhllxCODvU7vKr_LfOJBB0YE
Message-ID: <CANAwSgSrisWFPPRkZ=ukCjui3_xzgrmLKz5F9iXnerUFktk5UA@mail.gmail.com>
Subject: Re: [PATCH v1] PCI: dw-rockchip: Simplify regulator setup with devm_regulator_get_enable_optional()
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Niklas Cassel <cassel@kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>, 
	Hans Zhang <18255117159@163.com>, Wilfred Mallawa <wilfred.mallawa@wdc.com>, linux-pci@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251101_034815_959991_1298AC1A 
X-CRM114-Status: GOOD (  16.74  )
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

Hi Manivannan,

On Fri, 31 Oct 2025 at 12:27, Anand Moon <linux.amoon@gmail.com> wrote:
>
> Hi Manivannan,
>
> On Sun, 19 Oct 2025 at 12:08, Manivannan Sadhasivam <mani@kernel.org> wrote:
> >
> >
> > On Fri, 05 Sep 2025 16:57:25 +0530, Anand Moon wrote:
> > > Replace manual get/enable logic with devm_regulator_get_enable_optional()
> > > to reduce boilerplate and improve error handling. This devm helper ensures
> > > the regulator is enabled during probe and automatically disabled on driver
> > > removal. Dropping the vpcie3v3 struct member eliminates redundant state
> > > tracking, resulting in cleaner and more maintainable code.
> > >
> > >
> > > [...]
> >
> > Applied, thanks!
> >
> > [1/1] PCI: dw-rockchip: Simplify regulator setup with devm_regulator_get_enable_optional()
> >       commit: c930b10f17c03858cfe19b9873ba5240128b4d1b
> >
> I am looking to suspend or resume the issue. We probably need to
> toggle the regulator
> to maintain the power status on the PCIe controller.
> Therefore, dropping the patch is an option; I will add dev_err_probe
> for PHY later in the patch.
>
I found this series with the address system suspend support

[1] https://lore.kernel.org/linux-pci/20251029-rockchip-pcie-system-suspend-v4-0-ce2e1b0692d2@collabora.com/

This patch will conflict with
[2] https://lore.kernel.org/linux-pci/20251029-rockchip-pcie-system-suspend-v4-3-ce2e1b0692d2@collabora.com/

So please drop my patch.

Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
