Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA31ED3C927
	for <linux-rockchip@archiver.kernel.org>; Sun, 20 Oct 2024 03:18:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8K6gk+fpY+erta7QmE+D4RopXt7qZHsTcied7sWlDVQ=; b=Qv6cTk9dy9bKcw
	c/dIsnLhCj58u85LCAAZ+iHvPau6paOxErPJyj1wRhBNfPGxsq3rvmpqAxDey0T13/Tzpg7Ee/rHe
	ibF/fwdPzd+UYdNLp2oIREAobmoA+1a0eyQpjZtfvSM5FHmUpp5sTLxM+GkFBsnrp46/sNO/SfRKp
	c5Gus81uHgX4mlYQZWzY4ONDBCjk3gndPbPQCckXk+/kDIIHgsclJOC+iPffUpZHShnaEVMj6AHqC
	mXJ++q7vOZQV/780RiVG/5u9V3OFPeH6Asiz3UZCIcc4IAWUOUSd9S3r6tQLsIpUQQh1Oo74HpPAa
	vzLrMRUKjKDc4+1kBiFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2MSg-00000004JYb-2WfN;
	Sun, 20 Oct 2024 03:18:34 +0000
Received: from mail-oo1-xc2f.google.com ([2607:f8b0:4864:20::c2f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2MSe-00000004JXs-1F8r
	for linux-rockchip@lists.infradead.org;
	Sun, 20 Oct 2024 03:18:33 +0000
Received: by mail-oo1-xc2f.google.com with SMTP id 006d021491bc7-5e5d0a80db4so1714358eaf.3
        for <linux-rockchip@lists.infradead.org>; Sat, 19 Oct 2024 20:18:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729394311; x=1729999111; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zMNl3lXt6sftgfJYEPUYpr+Xju9I44mn/0y902I49pc=;
        b=Tg17kyK0SQUxZns5Z7zOI+C4dk6pzaml9vInPzDf91fjbXanHtBnIpr4xm3gKA3dAv
         OTYP0TqNPLDsUnccelJJX8Wh5XdY/Urb8mfamLR1p7T2Wdo4TptSNzMUxSnQ5lozjitA
         J82yTtzOV8E9Vvd62ORIFtoP/WJSYW4UiX/6xHk9mefS/E3ctFLgghJGCWL4JoELpIuu
         cxzS3qqGlQD400rtt7cLbfoOn8uRaHmxX7erzYTQJ1NIuIOwG9zqi10niLsz3U9RH2pR
         tSyuXdDp68Q2LDCh+gzP8KNDZqJSdiv6oFTFlW1Qfy6+k7ukEPi5z28gTvHGct6w2Wpr
         qzgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729394311; x=1729999111;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zMNl3lXt6sftgfJYEPUYpr+Xju9I44mn/0y902I49pc=;
        b=OA+ZoDHd2dRSLBGrlw5P25KscEgSf32y/LM3khH48eKatBOxZW4FtO0PwmIJ4+8eC5
         nVX0WGWpwhpnPPvuhAVdxSc+Xdq5PYPaK9LBwi3jxecA7NQqnJlNmtmp7hpp4BNGlObv
         7HP3SuR7m6Aeas4P+SKXuTy8BQ5dMCp47gIKW/sgZodCockBliE32ASVoSbwAXMGr491
         /tmTi3MbAFjK/prBIdrBuMY/9iB0JtiUhUwSOOr7GR9Ko9N7VDIK/qMiVcGQ2+8Gmw+3
         0dFUcIANXDuM0wZ9zbsGcha+KTvz3JHNmCdPhpoVX35R9mVQjJp0Hr0d8VZ+4LAmsv1W
         r3sA==
X-Forwarded-Encrypted: i=1; AJvYcCWTPNLiIQOWRypjwrrR/nHd8iEKpJaNHXkqURcvi7ExTwezGOL0BgQMHQIzJ3qz7mGN8bWKsRizj0bHygFVHw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzMESzA0xkE95YmmK8hU31u7Q0Pp/tUno69LwFs31n9M6ig1yiJ
	eAE2YF3WlncToJd7FzQcivWFVpS4RSzZWAlrNgCFTmtFSSLYuocHK/LiYK/yQVBSss+4styRCZH
	Srg3flcHx8Wcpu+cjJrHl+7JJnzs=
X-Google-Smtp-Source: AGHT+IGrwwBspEJuIdRw0EUY5MU+OA9HGR9uV4PbDK8TXYqRe4A45jzQegJSNnkf6eomVfzhFpwkkhVZiAAti4Ap7qs=
X-Received: by 2002:a05:6870:d88f:b0:277:f16a:97e8 with SMTP id
 586e51a60fabf-2892c4a5082mr5983257fac.38.1729394311083; Sat, 19 Oct 2024
 20:18:31 -0700 (PDT)
MIME-Version: 1.0
References: <20241011121408.89890-1-dlemoal@kernel.org> <CANAwSgQ+YmSTqJs3-53nmpmCRKuqfRysT37uHQNGibw5FZhRvg@mail.gmail.com>
 <f13618a6-0922-4fc8-af01-10be1ef95f0d@kernel.org> <CANAwSgRDbCCridYMciq=xSDPV0qGhs-OhCJ_uniXFbp-yM5CcQ@mail.gmail.com>
 <0f2cf12b-3f27-403c-802e-bb8b539766b0@kernel.org> <CANAwSgRXfZ9hgdJpSrwucHQfMToZwSC8N-b4MYLZjsryid=Fpw@mail.gmail.com>
 <6aa0a404-9bc8-4b0c-b6f9-a455a3033670@kernel.org>
In-Reply-To: <6aa0a404-9bc8-4b0c-b6f9-a455a3033670@kernel.org>
From: Anand Moon <linux.amoon@gmail.com>
Date: Sun, 20 Oct 2024 08:48:14 +0530
Message-ID: <CANAwSgRzQKAnsqqx_es5MtJy+ZwF8_y27_XGKq6PYfvF2oDOeQ@mail.gmail.com>
Subject: Re: [PATCH v4 00/12] Fix and improve the Rockchip endpoint driver
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Shawn Lin <shawn.lin@rock-chips.com>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, 
	Rick Wertenbroek <rick.wertenbroek@gmail.com>, Niklas Cassel <cassel@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241019_201832_358862_E8D97A7F 
X-CRM114-Status: GOOD (  14.44  )
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

Hi Damien

On Sun, 20 Oct 2024 at 06:36, Damien Le Moal <dlemoal@kernel.org> wrote:
>
> On 10/19/24 15:24, Anand Moon wrote:
> > I have a question can new test external low power GPU with external cables
> > which supports PCI host (RC mode) with external power supply for GPU card.
>
> I do not understand this sentence.
Sorry for my poor English,

I wanted to check the feasibility of testing external GPU on the
Rockchip platform,
Just like Jeff Gearing

[1] https://www.jeffgeerling.com/blog/2024/use-external-gpu-on-raspberry-pi-5-4k-gaming

>
> > Which mode is suitable for the PCIe endpoint controller or PCIe host controller?
>
> If you do not know/understand what PCI endpoint is, you probably do not need it
> at all. If you are using your board to simply connect and use regular PCI
> devices, you do not need the PCI endpoint framework/drivers.
>
Ok.
> --
> Damien Le Moal
> Western Digital Research

Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
