Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1599CC4707B
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Jan 2024 07:01:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tiLMUkPm0Nx+eTSwZlQHt/2b24J4I/xLSOTKxBhsskQ=; b=VyNz3PwE1kooMp
	coGhyaP6zN3uiy3Ns34uMXGov8PWQMcLuHf+04KPdrqIPAZ6kJMd0euPxc1AUX6iy3gzLjjdoI2rV
	Wrz7AH/P7QsgZP7lOCaw3SjlNYqMtPXhfe8nC5z3awBZHZEvxWoTvgsiqQZ1WpRy8NG2/v/B6B8OR
	BvmZCMfwIvmP6RlBhP7qmg51tIQaMkrAE/6NvLt0AX9DcFA7Nd1lJIo09vVyIPBqcgAwodbXyn1z/
	5iMQ5/tBf4AwJopW5zfJmV7bwKB/yCK3c+uENDuT7dq4m2AdkDS8AOEJFzCIEZEoGifK/4ixtbIPo
	u/p+FgbutgdAgeA1nVzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQMOk-001qn7-36;
	Thu, 18 Jan 2024 07:01:10 +0000
Received: from mail-pg1-x52c.google.com ([2607:f8b0:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQMOe-001ql6-2Y
	for linux-rockchip@lists.infradead.org;
	Thu, 18 Jan 2024 07:01:09 +0000
Received: by mail-pg1-x52c.google.com with SMTP id 41be03b00d2f7-5cf2d73a183so322802a12.1
        for <linux-rockchip@lists.infradead.org>; Wed, 17 Jan 2024 23:01:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1705561262; x=1706166062; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=I+/SphmSczTQB/7x0/uHD+Ko02TvpaehY225Yo3PifA=;
        b=ZI6flAlM3ZYYyIoBIhNnktn021s2/Sec53OLdL8M5BP67aPwpxsSo97Jh++VOF5PZA
         07nAMgCx1d0zZVn06xiylgzbf5Xo0G6W1d3rAVZ58MLWi8A/GBuSh8MlGqKQ3doM2eyD
         Ar9Y9eldwqJ06Vw3rXavLa5HBqbS63MaUgbaAEWSdWJlF9TSPbnlzxIO3Z19GyqoEWk/
         2blu9SuNcwjEcFGK/Cj+xaNqApDt8VmgDM3R/QO4Torwx9+IM+aLNDfFxufvT71BERHH
         ChITIC7D4KB4lXw/0PjVcHz3S81sWUtnH5wU1SAZjrNUhI1jiEfwIadkKgxdEu9v8RrB
         CDLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705561262; x=1706166062;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I+/SphmSczTQB/7x0/uHD+Ko02TvpaehY225Yo3PifA=;
        b=DEeoa5RZD+T3N2+FaJlpODyKRPLXw+GgwVZ7IR8HFxfUINoFHyKCzDDJ8Dr9+sj9q7
         62EyuC+06EJUlxC2vYK1BL6P2ZSjb8TnTofrlTgKMzLuI7XkLcz2LPvaajVFJR2mphws
         QN2HeEk/k2lbSZ47Wf+fvkEfybLx7wPpOuPn8w3ohiLoql/v5iAiqDAaY1/itaIl8iCn
         P8BGXfL1vNEsXyYgL4XbDuX6Qb/4xcL/IDCIu47XV+6Oj5Ujv2o/K43nmZ+rzjicD8yW
         OId2CYX/HV7OUoJKSIXbBwrgbsYTK/ZFlWOJdPijzykLcffpgWUrZhuza5FIOYccPPKX
         JEag==
X-Gm-Message-State: AOJu0YysV2D7dkSDqXSsVVUsAFlST9c1Bf/o4wWrkgYfqktGiB2YFyzL
	4JZXMGPsEZS5fyPur2grMjSn7EHMRavensKOUqcQfRe+L3aIUmfxLrAwfv2RAwncks85EGG9XYF
	fLolUb8NJ2wkNLBsNZ/pTtgwqp+4VLhjLEXdNoQ==
X-Google-Smtp-Source: AGHT+IH25PXnoBhV0fLFktjyfx6CY2sgg121FnKFk5OQcNtYrEkXLlFoZmqPRzmJhiSKg+wYFfUW4B8RiSwuvOhS9rA=
X-Received: by 2002:a17:90b:1884:b0:290:2c12:f40e with SMTP id
 mn4-20020a17090b188400b002902c12f40emr172020pjb.26.1705561262203; Wed, 17 Jan
 2024 23:01:02 -0800 (PST)
MIME-Version: 1.0
References: <20231125190522.87607-1-jagan@edgeble.ai> <CA+VMnFx4j1=CGou4yya_7RbFgPwQ_KqOLoTWbYLthPw2VwR3iQ@mail.gmail.com>
In-Reply-To: <CA+VMnFx4j1=CGou4yya_7RbFgPwQ_KqOLoTWbYLthPw2VwR3iQ@mail.gmail.com>
From: Jagan Teki <jagan@edgeble.ai>
Date: Thu, 18 Jan 2024 12:30:47 +0530
Message-ID: <CA+VMnFyZnZVj46dHhXZM=FzBjWjEpxka5RkQbsMFXceMcPnMwg@mail.gmail.com>
Subject: Re: [PATCH v2 00/10] arm64: dts: rockchip: Pack Edgeble NCM6A, 6B DT
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240117_230104_830577_B4BCF918 
X-CRM114-Status: GOOD (  13.27  )
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

Hi Heiko,

On Tue, 2 Jan 2024 at 16:31, Jagan Teki <jagan@edgeble.ai> wrote:
>
> Hi Heiko,
>
> On Sun, 26 Nov 2023 at 00:35, Jagan Teki <jagan@edgeble.ai> wrote:
> >
> > DT patch set for Edgeble NCM6A, NCM6B SoM, and IO board.
> >
> > Changes for v2:
> > - suffix -regulator in node names
> > - fix node lables
> > - update commit message
> >
> > Any inputs?
> > Jagan.
> >
> > Jagan Teki (10):
> >   arm64: dts: rockchip: Drop edgeble-neu6b dcdc-reg4 regulator-init-microvolt
> >   arm64: dts: rockchip: Add edgeble-neu6a-common DT
> >   arm64: dts: rockchip: Add common DT for edgeble-neu6b-io
> >   arm64: dts: rockchip: Add Edgeble NCM6A WiFi6 Overlay
> >   arm64: dts: rockchip: Add vdd_cpu_big reg to rk3588-edgeble-ncm6
> >   arm64: dts: rockchip: Add Edgeble NCM6A-IO 2.5G ETH
> >   arm64: dts: rockchip: Add Edgeble NCM6A-IO M.2 M-Key
> >   arm64: dts: rockchip: Add Edgeble NCM6A-IO M.2 B-Key, E-Key
> >   arm64: dts: rockchip: Add Edgeble NCM6A-IO USB2
> >   arm64: dts: rockchip: Add LED_GREEN for edgeble-neu6a
>
> Any update on this patch-set?

Can you merge this, if it's Okay? Planning to sync the DT in U-Boot before MW.

Thanks,
Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
