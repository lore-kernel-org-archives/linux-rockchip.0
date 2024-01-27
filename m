Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EDD0C47422
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Jan 2024 01:56:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rc+8xtvUqhM+TjWyb1kQIgh7vQ2lZcIlQCeFTbBogIQ=; b=oabn3qOMGFDLF9
	QI4MW/skLSjGezrSSzxEQV5RENnBA3k0xglu5xF7ikVZCWTeEuFUl5RSkiVqIPElbZg+kUossIMtD
	4I2miMQMpg4R6CjUbVbiu5UhyrjLi4N0WvotVF5R+flNNaHSUsuV2Z3pcsowdaciZoepcNnTWGjWI
	mr8ikfZ8WXT68DFu9FAiZNqGQAz0O/XK9qcpIOpQYGGh7ys+YfIxrhKZ2bzwKOV8ucK0uXlU2jjtv
	WQVJ5uf8us7+yJPFepkKhvNXQzsbEdXUMEWJC7/PkuYwSzJWgjFvi4MO3XDsJyhA+ME9vmYIvpL3x
	OnityPPavpoPC/Olh7aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTXvy-00000006BnY-0fgh;
	Sat, 27 Jan 2024 01:56:38 +0000
Received: from mail-qv1-xf2f.google.com ([2607:f8b0:4864:20::f2f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTXvv-00000006BmS-0yyv;
	Sat, 27 Jan 2024 01:56:36 +0000
Received: by mail-qv1-xf2f.google.com with SMTP id 6a1803df08f44-6818a9fe380so6135116d6.2;
        Fri, 26 Jan 2024 17:56:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706320592; x=1706925392; darn=lists.infradead.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/afVxJVRAH/Hka426Kik5pPJmKRNBFsEk7DBPTNKyGs=;
        b=Ry4pYUInlcFWZtf1/9hOZq/iKul9Y0oxbjYy6yDKRvRQenWUKkSUgTdmZ/1JN1xQOy
         86bWHnBX1il6fA8KkL4wk8AHAE+rhG6NA8RtKW21ITU4jkTKQmj+Tw/2boUuapY+KJQe
         XaGhfa5rzQtnmNGr5dAKoNSJfRRLzdKEjYk2BII1DhFUz7rG3h7bwBTLUo9Vu7ZFpXaG
         DAvbwiyMUr7VNQixFBLGXAp3RcV0ogDSde6azJJxMiotqH3mL5p1yp6QJU41ZCvWKghk
         9L0tPVn+n7D9Frh41vyl9hmPWFmJEIcklbxWcGG8so8qaRRwbcp9gHNeeE8Jk20yKBNh
         vlKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706320592; x=1706925392;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/afVxJVRAH/Hka426Kik5pPJmKRNBFsEk7DBPTNKyGs=;
        b=YsQkc5DFimB2hz5C2Oe8Saoc/iCS3sQW6tqL8qR8EzQWfQjMhECaPkltnvKbu42kM2
         EeDorVfuPbq2Ql5fcTMChwZeizDDrVEbJVFFvWOSj3gWicqg3xHPUI706bztrbkHV4kV
         EHFHnEooNcaP2DktO3t2MOSUV7LC053OOv0Hgnlg1/V9xD4AwrmSlf1MtvGVjmF/olwc
         CTLdHvoB0RXTLLySa/aU3S6w0TPRHRMfgvhbtviXhOnR6Cbxejn9rY6274YnUHpRa5Kx
         FoHlZl8d/V4RCHWEuDafcGkYUh4LCIHsOhsOnsXkBnyE9Ih/pNIJf6ziMgwl9mnBD1qo
         fqsA==
X-Gm-Message-State: AOJu0YzBJtHEgPQheUrCJfee411onFZPTq+CxYLJeQ+wKrQRwmnOh/2f
	eMYvxHStoC6UseRTRlDkEGGzFACgwSeFirfwuQlSmj9hrqlAjaZx
X-Google-Smtp-Source: AGHT+IFkNflH+BD21PMssYPhDkGtjPw/IUQ5epAxGPBNdBEmXmNHE/6kB23j0pbiLNRS52u4ol6Y4g==
X-Received: by 2002:ad4:5c8b:0:b0:683:c2b7:bee8 with SMTP id o11-20020ad45c8b000000b00683c2b7bee8mr1017615qvh.72.1706320592406;
        Fri, 26 Jan 2024 17:56:32 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id dk6-20020a056214092600b0067f339c0c16sm1015924qvb.134.2024.01.26.17.56.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jan 2024 17:56:31 -0800 (PST)
Date: Fri, 26 Jan 2024 20:56:29 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Jonas Karlman <jonas@kwiboo.se>, Chen-Yu Tsai <wens@csie.org>,
	linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: rock-pi-e: fix location of
 snps properties
Message-ID: <20240127015629.GA36077@localhost>
References: <20240116204103.29318-1-twoerner@gmail.com>
 <df78489b-7546-46ea-b09f-39a80692a962@kwiboo.se>
 <20240118230312.GB14779@localhost>
 <1976352.usQuhbGJ8B@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1976352.usQuhbGJ8B@phil>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240126_175635_302464_67DC7498 
X-CRM114-Status: GOOD (  15.54  )
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

On Thu 2024-01-25 @ 09:12:46 PM, Heiko Stuebner wrote:
> Hi,
> 
> Am Freitag, 19. Januar 2024, 00:03:12 CET schrieb Trevor Woerner:
> > On Thu 2024-01-18 @ 08:31:30 AM, Jonas Karlman wrote:
> > > On 2024-01-17 09:15, Jonas Karlman wrote:
> > > I have just sent out a U-Boot series that fix ethernet on the v1.21
> > > revision of the ROCK Pi E board, see [2].
> > 
> > Thank you! I have tested your patches both in U-Boot and Linux and they work
> > perfectly.
> 
> if I'm reading this correctly, this patch is not needed anymore, right?

True, patch 2/2 is not needed (or correct).

> I'm not yet sure about the first patch, as it really is
> just a cosmetic ;-)

I wouldn't say it's entirely cosmetic. Some rock-pi-e boards come with the
8211e PHY and others come with the 8211f PHY. Labelling the phandle as
"rtl8211e" would be misleading/confusing for people who had boards whose boot
logs would report otherwise.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
