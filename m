Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78580C3DA60
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Jul 2024 07:52:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iyHgwhPLPEIieoej24kTeWDN5dQzh7iKWFsceoWk9bM=; b=PRQlRH34rqlg2N
	j/ooZIJc+B84u6p6xOS/qfqGjHi9nRO9jIUVcvAzjPPA3pvlHfZ+s0KtX1tmwX5VxYeibbKDNtHe+
	4N4q3OJPawROjkws5aiSt9zDTZCmyvXbFX71eh+S86HzfRLPKtZo4pipGGf/VtpWhHIELiMC1v82z
	xEbVgPKXpqZf/bORzWa+sHwh4265HJnVxr9P3cWBPVRkqKNRa9Iu0h7xDrYcEg9InRvg0Xg8pEsnk
	iCyNBvkxjT+pUEUMnsInlgluIlHHr5ktgY/vKeymjbCmjhcBXUius34Iwtu3icd5OVNfzYATsD1rf
	WhJ9j5DdVGNRZWvUEZMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sULwR-0000000GIRy-2gNm;
	Thu, 18 Jul 2024 07:52:43 +0000
Received: from mail-oo1-xc31.google.com ([2607:f8b0:4864:20::c31])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sULw6-0000000GIMo-01uy;
	Thu, 18 Jul 2024 07:52:23 +0000
Received: by mail-oo1-xc31.google.com with SMTP id 006d021491bc7-5cebd3bd468so233371eaf.1;
        Thu, 18 Jul 2024 00:52:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721289141; x=1721893941; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=HeudbiUTX343qNiEURPI5YAOVpjxRDTmOUF5CU1l3Yg=;
        b=iuXKXfzLEcXSKACqVQCFHIRDK2ADQ/ScMmSWVfPFtbGReAthuwuDaRPoxomMU0CYtE
         c3DHenIKUT/zqWZqt2xbz7Rqdt8/VRJ8rI2tdV6DFrIHOw4khS9N/O5rt8RYRWWH1y6o
         Y8z+KM322tbwE4D6xFD7P3NY7jp63cja4QsZLRPCSYL4yoOQxP25tIW+a9CoRxlxKQAi
         Q2zVfBgUFIObYafjejIL9wtoqKXwsMf4+d8c7dYuZ0ykLrSu0azhoRGA9pgb1c9AAUt6
         fvM/r6/tsLD3aac28DRW+CXUJbsDtGbxwDExH4eGQ0etQrtoWNDYPP0ii6NecdlGXWgv
         IycA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721289141; x=1721893941;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HeudbiUTX343qNiEURPI5YAOVpjxRDTmOUF5CU1l3Yg=;
        b=SR8pyEfpNaHWfukD5u9qSgAgGmpw5gxBGkQkXLMU98rElYpYVn+Ur+WG0LvDmS3UMr
         1La5uoBaO0/ydkrNc3FO8esOPdovO3CYOLQD+Pa0IkZA8UE9V5U57RjtyPIV2gm3hDI0
         P0DVy5gB0nFEoABBLn7/tq5Z9UCdewf7J/WK6K4oUXLXyEVj6G8hxqFcm6yS19p+7n8n
         QhnDeJ5TCTQ5M5IhCsNyZlgStbi20plkMMf1LrtEHlvhNLW6cVO3R7l1TXp5oJeEzBfV
         5PaUztK3FjHK66XaPiZcvzaf70GGo0Ri37kygcY30VYyp/uhPLAknhaKHAfP1Zdl4TsA
         l9zw==
X-Forwarded-Encrypted: i=1; AJvYcCUlMfiG/IPea+e8bxLj/S9isgOAm6f7lcwJXfvXTU1M1LKf3BUzNPg71QqVGiYMFksmHJu+2kvDIevgjC2mx+9YWRf0NUpKkujAzS/NGzX6fFVBTHfkyldzqX8vpfMBjB69+OHSXbQ0jihaMsyw5cUR+DTShF2Fbxo=
X-Gm-Message-State: AOJu0YyE1sv62IZEyPAWl0m80ov/ajSwwy5ZlfCvGsxQIu4Rvk8Zo4Q0
	CV/ffSXzgqUNoQURF0PpCejkkYVUPIe53xG8ixLksxyHla9+IyMXAFPYS/v7BrV2kCrOYf0a0U8
	QaOvLi5fIoDB+z0liglUiflWEdsqRDvar
X-Google-Smtp-Source: AGHT+IElzIEx7wtVYpF6wTHWDFLynANwFo8IX6K7B+fK3JlWZ76v8o9Oz+rqmBzF/VNzFntcaCU7zaa6RIubG5h0QfU=
X-Received: by 2002:a05:6820:270f:b0:5cd:2e7:cc6 with SMTP id
 006d021491bc7-5d41cade049mr4827457eaf.8.1721289140922; Thu, 18 Jul 2024
 00:52:20 -0700 (PDT)
MIME-Version: 1.0
References: <20240715110251.261844-1-heiko@sntech.de> <20240715110251.261844-4-heiko@sntech.de>
 <CANAwSgS_ZaEkt5-kKud9OwdN4za+xvW5SoBr34EmOdU2OQJWnw@mail.gmail.com> <8a16eb6a29a39719ba4e4c43bae3b6ec@manjaro.org>
In-Reply-To: <8a16eb6a29a39719ba4e4c43bae3b6ec@manjaro.org>
From: Anand Moon <linux.amoon@gmail.com>
Date: Thu, 18 Jul 2024 13:22:03 +0530
Message-ID: <CANAwSgRZR8cM9qDD0Xn5ims4GX+PNMQ1+PEMBDQtZq2GxFd6Rw@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: fix the pcie refclock
 oscillator on Rock 5 ITX
To: Dragan Simic <dsimic@manjaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com, sboyd@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240718_005222_068042_581C70B0 
X-CRM114-Status: GOOD (  22.21  )
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

Hi Dragan,

On Thu, 18 Jul 2024 at 13:02, Dragan Simic <dsimic@manjaro.org> wrote:
>
> Hello Anand,
>
> On 2024-07-18 09:26, Anand Moon wrote:
> > On Mon, 15 Jul 2024 at 16:35, Heiko Stuebner <heiko@sntech.de> wrote:
> >>
> >> The Rock 5 ITX uses two PCIe controllers to drive both a M.2 slot and
> >> its
> >> SATA controller with 2 lanes each. The supply for the refclk
> >> oscillator is
> >> the same that supplies the M.2 slot, but the SATA controller port is
> >> supplied by a different rail.
> >>
> >> This leads to the effect that if the PCIe30x4 controller for the M.2
> >> probes first, everything works normally. But if the PCIe30x2
> >> controller
> >> that is connected to the SATA controller probes first, it will hang on
> >> the first DBI read as nothing will have enabled the refclock before.
> >
> > I just checked the rk3588-rock-5-itx.dts in the linux-next.
> > You have not enabled sata0 and sata2, which might be the problem
> > for the SATA controller not getting initialized.
>
> Rock 5 ITX doesn't use RK5588's built-in SATA interfaces, so that's
> fine.
> Please have a look at the board schematic, it uses a separate PCI
> Express
> SATA controller for its four SATA ports.
>
yes, But I am referring to sata node not enabled which enable the PHY_TYPE_SATA.

see rk3588-coolpi-cm5-evb.dts and rk3588-edgeble-neu6a-io.dtsi
rk3588-quartzpro64.dts
which have sata port on board.

&sata0 {
        status = "okay";
};

Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
