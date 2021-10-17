Return-Path: <SRS0=g7df=PF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF495C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Oct 2021 10:03:57 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 90CDE60FF2
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Oct 2021 10:03:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 90CDE60FF2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=canonical.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hrzsVJdBlyBQTG6Wz3h/V67qwFM7qCmbfJMefWQtfvY=; b=VnTJzFO9GhIvAI
	OKUtIXmQ03Ohyp60FTKHcvmH/AXIkpMD+IUNXlj8zO9MAfmSYjpZTm7/Ou6jDOReh2DnpuBePabXJ
	vmHKCHrC//oqNZGRlho33nq4ye4sBZx+7iS8aNj70Pvr7/3fm8CboJ/8EcSMfnoFneLYlUtxlKu1b
	2DsS3IxVaWeiUf8VUfEcrUxV/1mD2/GpcLl11obFLs0jp17RqLKpoNW9OqjEKD7+CAh3bmLgWtJuP
	6fqX/KJ2wM0zqK9+rC5RDbYSdBGQAEOxeDASoCx8DqtiCK6/lS1XgKxwbsDCi3nivPRYuzLa0uj+b
	PJg3+m8sdHu8qfwxL4uQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mc31D-00C4L0-Sd; Sun, 17 Oct 2021 10:03:51 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mc31A-00C4Jn-TC
 for linux-rockchip@lists.infradead.org; Sun, 17 Oct 2021 10:03:50 +0000
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 5E4774005E
 for <linux-rockchip@lists.infradead.org>; Sun, 17 Oct 2021 10:03:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1634465018;
 bh=/w7rnLVxUNTURGieCGfqqQ4bUB62VIx19Vc4b3uH07U=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=Syw6PWxsIVg+9BACtbHhY5TDfantVSxI0kxK5HdqsqcaGMp7pF41vluGvmCvwlb65
 5m8ARYmZCf1ed+3HMcwUzLkq3y5pDfH3qyxEJZHjonblt4LB7ZRQhpIRPISzW/6AnP
 hJm2tG9cGfVqUZu9ZGcdtj0ly47Rx6xtZm4B9+2IVVQdvjMb7l1X8bqr5Wt+xqYNUx
 pNvskuFcuQWVHtRONNK+zA/qgSopQ0G4m7/oc3EAOepruh7fkKs66R7ywbpfmCjIsL
 5jHx9HrhCJAnbj/0h4IauikaMhErQwSIhjYuWGnrQuJUnoP6O60MYTgYaSl+qJTJE0
 O2KCgEpHdbmwQ==
Received: by mail-ed1-f71.google.com with SMTP id
 d3-20020a056402516300b003db863a248eso11757810ede.16
 for <linux-rockchip@lists.infradead.org>; Sun, 17 Oct 2021 03:03:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/w7rnLVxUNTURGieCGfqqQ4bUB62VIx19Vc4b3uH07U=;
 b=s+jmEBer3OUr0JVr/51mvuNcRWIaAQ6Jb1E0VgxMft+qEB34aa4cEUyu0dt99ClrCy
 GV5vIuIsbBujrTuk9nGAGSBB4bA6NUpPyWWVWAzNxcAaCbOXfo8zKt+2yHIKhRULXthC
 iiGgVovDc5u7UNxwFqumaswOw7zLhMNnQ3HkHh093JhycdmTBVyP+Abp2Ot3RMNvNgkP
 f/QgTAMTdCLm6B4vkinwNGLlyeQRuWfMolYNH+yC9jXcRjaBC0HxlsnRcT5gCllzvoyT
 za59ABw3lGf3nX5kbsuCH4FtIGqxpvI51KdgmpbVOvMh1+V81DsUs5tNPT4gM/5MNf/w
 dxdQ==
X-Gm-Message-State: AOAM531azqk1/MxnTR6Ux3zys+X7/guQBt17AG0Eo1fcJSVV1kCGM/ku
 9NA5cBNojfD2G95UASlAFpuWy35YHNmqlhiW9EG7kq1ehLn6LDsK2Gup40OjvAKE6iGp16MxALY
 LsTSsYaVTazMS8aMUpzgUih4n4zaIbl0VCoxkJeCncp2djLGTpwpn2AX8BtAp3nCpVQ==
X-Received: by 2002:a17:906:919:: with SMTP id
 i25mr21077542ejd.171.1634465017812; 
 Sun, 17 Oct 2021 03:03:37 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxBD4IVI+3m1jDS1GLi//iCI68rTkdNzvWdP8PXY93uSfBu2PzfjILpnco+k3Rb/r6y11YH8kKxYU50YYZPaHc=
X-Received: by 2002:a17:906:919:: with SMTP id
 i25mr21077516ejd.171.1634465017650; 
 Sun, 17 Oct 2021 03:03:37 -0700 (PDT)
MIME-Version: 1.0
References: <20211016102025.23346-1-arnaud.ferraris@collabora.com>
In-Reply-To: <20211016102025.23346-1-arnaud.ferraris@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Date: Sun, 17 Oct 2021 12:03:26 +0200
Message-ID: <CA+Eumj5zqbk7Vn7dAvjNWXKK6pCNgu34-VZGudP=BmO0_+0Tgw@mail.gmail.com>
Subject: Re: [PATCH 0/4] arm64: dts: add 'chassis-type' property
To: Arnaud Ferraris <arnaud.ferraris@collabora.com>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-rockchip@lists.infradead.org, 
 linux-arm-msm@vger.kernel.org, linux-sunxi@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 Martin Kepplinger <martink@posteo.de>, Heiko Stuebner <heiko@sntech.de>, 
 Bjorn Andersson <bjorn.andersson@linaro.org>, Andy Gross <agross@kernel.org>, 
 Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, Chen-Yu Tsai <wens@csie.org>, 
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Lucas Stach <dev@lynxeye.de>, 
 Angus Ainslie <angus@akkea.ca>, Guido Gunther <agx@sigxcpu.org>,
 Tomasz Figa <tfiga@chromium.org>, 
 Johan Jonker <jbx6244@gmail.com>, Eddie Cai <eddie.cai.linux@gmail.com>, 
 Shunqian Zheng <zhengsq@rock-chips.com>,
 Brian Norris <briannorris@chromium.org>, 
 Dan Johansen <strit@manjaro.org>, Simon South <simon@simonsouth.net>, 
 Matthias Brugger <mbrugger@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211017_030349_101349_11E38528 
X-CRM114-Status: GOOD (  12.27  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Sat, 16 Oct 2021 at 12:20, Arnaud Ferraris
<arnaud.ferraris@collabora.com> wrote:
>
> Hello,
>
> A new root node property named 'chassis-type' has recently been approved
> added to the device tree specification[1]. This will allow userspace to
> easily detect the device form factor on DT-based devices, and act
> accordingly.
>
> This patchset fills in this property for existing ARM64 consumer
> devices (laptops, phones, tablets...).
>
> [1] https://github.com/devicetree-org/devicetree-specification/blob/main/source/chapter3-devicenodes.rst#root-node
>

I'll add the same for Exynos, S3C and S5P. Do you know by any chance
what is the meaning of "embedded"? How a development board should be
classified?


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
