Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB615CEB2C9
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Nov 2025 09:56:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U5pjHX82GpQf4au5CyqriAcvyJpdNph09OSS6KG+zIk=; b=2lDrYncAU/fQe7
	CPya5J1OdNsXMxvkF1twxQPkNRNKm1jS5jrKik7DCWl4F03D+H2OQZxHfvrYj5DaAhwia/yzZrdZj
	B8YlU/XUjkmQ7c1fmmEBWEeZyMjTyoOfki5ykn2+n5DFhhp9Ui17nQnhXrUpfLwqhLxIEdxtzaCmA
	Gf0dWn5d9qxxTfezweWJd83hZJDTNsd73sIaj00T9cCz1nSESyBU0PWYeuiu/Zn7L4OYPtox+NErC
	DOTG4UuqNJHut2vNMRxPCyj/mLKtOaZjjTiQiQBZbymfSpBzP12jWdJC1jAAJwJ5qneNLK7vOKvL2
	M30Fei8aWYx2Jy3N28jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKD0p-0000000Dg5Z-2RjC;
	Sat, 15 Nov 2025 09:56:07 +0000
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKD0m-0000000Dg4d-0SWG
	for linux-rockchip@lists.infradead.org;
	Sat, 15 Nov 2025 09:56:06 +0000
Received: by mail-pg1-x532.google.com with SMTP id 41be03b00d2f7-b8c0c0cdd61so2238069a12.2
        for <linux-rockchip@lists.infradead.org>; Sat, 15 Nov 2025 01:56:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763200563; x=1763805363; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xXnS95zIUe4oTXytX7J90dCvdMH5uRG/iOxKBN187eo=;
        b=d4+YlvqCPXRaAulmbaopwUWYYzU6pBlGjbPXrCPr30uFft0XjBwx7IXekwQU16XMZp
         JM1qaLqLURxE4OX405Rqxgsp/G1p9UNcTojHSDUL48WCR9VGIFKhBF0Bph8/SxVyk/jk
         Kwwd2d6rzjfXQlI7u5dzsj4p0UNs61HGkuP0/fsp8wa3IMtBDZakt7uRrefGkkYnc/mC
         qPi6kin8mKmkeYNzDuffOeIUgZLDbuY2uWxQceCiAnBNGqvi+Nvb5BpDSgq4NET6zbNN
         PgWY+lJi3YCi2W1CSWzWvDT4DcA+cbjiveywtZzHR4j/udxm99fykhns8AzzbB76iY1E
         Q4Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763200563; x=1763805363;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xXnS95zIUe4oTXytX7J90dCvdMH5uRG/iOxKBN187eo=;
        b=U/s5xmjSbfs+EMRHj+8X7QW3OK6aevq9i0stRct+9mbNBeBz/D9fAGzLr/dFl7NLV5
         JXEs/XpzYZUUGGn6EtiGZgxUpq5jjM/pangscvsot24PvGWWJBSvgkUIBkcy+eY968bN
         OOZ2z2GpEf+V4VLQFcNIkzuzKLSXVczuy6cPFXMnqhQXHBqg2ZkJW5LS23i1MZKhWtMq
         vG6NvagZObZe5O93Xp8xX9uUI0DAPTAf2wO2yWrg6IbA2IMxbo75tpRvRcjGpA7DvvFo
         YSd37DEVrFlR8m6AZP+knDs7lPd1J39hNNqaBxGOGfdYN7DnBJmzAUdmZSfS0mhHAcPY
         MqfA==
X-Gm-Message-State: AOJu0YxEQ35Zcq5Fa6Neoc2niilrsU9GbxHsK8WRXHOmYVkbhA5PweV8
	TylnKXQR9cjOiz8omHIB0+RhuBizAkEVg+A1vXae0gNbaT7b5AX3jHtE
X-Gm-Gg: ASbGncsw7ILdqkq/6QbOxV7m585G3XHDVIftvmuLtUrFJm1b4scHER9QhA+ZAG/nmcW
	4x2f8VJTqtZzlZni0rRA5Umt/g8vS/T4wtDRJIGAkn6GtNtpeIOzyjtODpDLO1LkbbwQAqCG89f
	QxuXWilefVJMt3CZHbBr1DAfN+MUU1fNzB1CjFpFtQobePHHI2etYiCDwhsujQ3/sl0DTl31B3h
	I886hba90aycmP1WMMz9ZhO5Sq/wBTEbx8hApVuFvQ6ewb8EQQNa7DDVZnYCDQrMr06ytsBwlVN
	iR0inc1WP5Gnwo813VKP/AUAQq9mwIpqpReWPFyFNYJYBA6GNbc8/d68QcV7DE4gPG1mkRFg5bw
	2dJDiPj7Dsr2MzQrL8G6GkP5Xzw0TZH3SK8AZ6Gaknzxp9ajqGB66Yyi7riQZNzgG/FdbDRBL1h
	IbKGYhfGBXcj+y5S4E8Gs=
X-Google-Smtp-Source: AGHT+IHUlupuM7szZcYDg9/TlMwVZ71HSLpjpZExx6vY1jp09oOh8FYjiJ3nZkXQKy+o63KI20P1NQ==
X-Received: by 2002:a05:7300:ec89:b0:2a4:3592:cf6d with SMTP id 5a478bee46e88-2a4ab8a9516mr1719763eec.17.1763200563112;
        Sat, 15 Nov 2025 01:56:03 -0800 (PST)
Received: from geday ([2804:7f2:800b:a121::dead:c001])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2a49db102f5sm16240515eec.4.2025.11.15.01.55.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Nov 2025 01:56:02 -0800 (PST)
Date: Sat, 15 Nov 2025 06:55:55 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: drop max-link-speed = <2> in
 helios64 PCIe
Message-ID: <aRhOK_aDoJYfgbRJ@geday>
References: <cover.1763197368.git.geraldogabriel@gmail.com>
 <53332edec449b84d8a962f2b5995667766359772.1763197368.git.geraldogabriel@gmail.com>
 <3f13841d-030b-0202-61be-412c0ab9df6b@manjaro.org>
 <7d300769-9803-9c0c-60bb-4a724619d8e0@manjaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7d300769-9803-9c0c-60bb-4a724619d8e0@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251115_015604_832639_305E3B0A 
X-CRM114-Status: GOOD (  24.53  )
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

On Sat, Nov 15, 2025 at 10:42:40AM +0100, Dragan Simic wrote:
> On Saturday, November 15, 2025 10:36 CET, "Dragan Simic" <dsimic@manjaro.org> wrote:
> > On Saturday, November 15, 2025 10:10 CET, Geraldo Nascimento <geraldogabriel@gmail.com> wrote:
> > > Shawn Lin from Rockchip strongly discourages attempts to use their
> > > RK3399 PCIe core at 5.0 GT/s speed, citing concerns about catastrophic
> > > failures that may happen. Even if the odds are low, drop from last user
> > > of this property for the RK3399 platform, helios64.
> > > 
> > > Fixes: 755fff528b1b ("arm64: dts: rockchip: add variables for pcie completion to helios64")
> > > Link: https://lore.kernel.org/all/ffd05070-9879-4468-94e3-b88968b4c21b@rock-chips.com/
> > > Reported-by: Shawn Lin <shawn.lin@rock-chips.com>
> > > Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
> > > ---
> > >  arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts | 1 -
> > >  1 file changed, 1 deletion(-)
> > > 
> > > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
> > > index e7d4a2f9a95e..78a7775c3b22 100644
> > > --- a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
> > > +++ b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
> > > @@ -424,7 +424,6 @@ &pcie_phy {
> > >  
> > >  &pcie0 {
> > >  	ep-gpios = <&gpio2 RK_PD4 GPIO_ACTIVE_HIGH>;
> > > -	max-link-speed = <2>;
> > >  	num-lanes = <2>;
> > >  	pinctrl-names = "default";
> > >  	status = "okay";
> > 
> > Looking good to me, this rounds up the prevention of issues
> > coming from buggy PCIe Gen2 on RK3399.
> > 
> > Please feel free to include
> > 
> > Reviewed-by: Dragan Simic <dsimic@manjaro.org>
> > 
> > Though, could you, please, add patch 4/3 to this series, which
> > would remove the redundant parameter "max-link-speed = <1>" from
> > rk3399-nanopi-r4s.dtsi?
> 
> Sorry, I forgot to note that the patch summary would read a bit
> better if it were reworded like this:
> 
>   arm64: dts: rockchip: Remove redundant max-link-speed from helios64 board dts
>

No, I think:

arm64: dts: rockchip: Remove dangerous max-link-speed from helios64 board dts

Is more accurately described. With focus on the dangerous, we're not
liable.

Redudant max-link-speed only for nanopi-r4s include definitions I think!

Thanks,
Geraldo Nascimento

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
