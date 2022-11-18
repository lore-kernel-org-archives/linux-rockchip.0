Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0A03C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Nov 2022 09:35:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ib+eXC9j4CnmE1Zm4BNgzznisICO+xd6wnm3pqOA/Rk=; b=nk2A8BJmoJq2mr
	8Uh2KC8GEjRKXFDu3TDgf4x4ZiGjJu+HB9gIghRbDJg1WYbM9LQvA7V0gl9cSORQDIlVQVjKic1C2
	6jB/41Ljai2B30Rb8y4nVEyQbkY9hnuk/SKOTMnv3DztHWQoj+tv3bI9YIyKdSbDS7wy2Bi+e647x
	ezDE4/a9KbjZsHGGkxnbAhbFKirCHNgl818cR3sk0awmd52/sMF6R5BI2O4GGVmQtRnds5bOcxdQb
	DVddFCUtJE7z3IduoaImsSEk+fR2zfHKMEqRLNkDneyZ6LvmDoGVP+nXpHBg9k20MDc+Ht4vgFHdO
	IagsS93XfQF36zSSYP2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovxmN-0037cV-KP; Fri, 18 Nov 2022 09:35:23 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovxmA-0037W0-5d; Fri, 18 Nov 2022 09:35:11 +0000
Received: by mail-ed1-x52e.google.com with SMTP id s12so6341811edd.5;
        Fri, 18 Nov 2022 01:35:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=fYL2lqqcJ/7e1uhSD1iCGZdR4sa0akGcGPNEmZ3Ebs8=;
        b=K7dvmblKPEYFvoyA1jXzSwVPyVsYLRCvz0SdVOTvVagx9/S+/UKtM22hbUhi3Wt301
         6mViMS3mjGCF0MOtD4UjlX6Hy2JhXZtf7yz14AAdB1SYxlD1jfqDQTToABg45kR91gee
         ZkyqKgzmiGEHSiDvTskz+j40cjTXWU81TXKQAwf/RElLLbGc/g31Mil4blhBvu1LpoaU
         8hebEeDrkbwpiS3mpeX4RrSf7NVfg7M2ierGUVgZxpM9vsK7ncZnyRONJdQI2NCbG1ac
         tOQgYYCMZ9L2pFCZg22Fo5eQ2i+MydWWET/KqPnAe0vczb77VDHZTQm6WXjgKwRnzdu/
         UikA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fYL2lqqcJ/7e1uhSD1iCGZdR4sa0akGcGPNEmZ3Ebs8=;
        b=Yfa7iad14tE9cbDytvWBKgAniaxG1TWlNFapnttKrz7o2jcdfmiMmUDrNc9+cA+hRv
         TotOlcDPUN2HlIDci4ED9eHTSK5BRNfKpEqA/BTjKyls4WOORinfCccLQeQNb+YD2kUX
         oOA72EzFqQEUIA2uiTEBaRMr4xeEwu1hyfIWRfjfUKwmscKrVzzzChcDE5FG7efsInqS
         8CoANrAHf6I3vYoNfiOguW1bxIAS5kfg5y7/6xHh+JDRNAHj2B+dtnoVrlRI9D6ohzbW
         z7fRvY0ZSODkbSIoB/MdugVHi7hCyLSfjv64BwovoPdDTDWFwFGbhBK3hWqgoUtdQAIx
         n0qw==
X-Gm-Message-State: ANoB5pl6mwyaXebXmafN8ufQDxi3/1KCPfhMLLuxnKOH1tndHvppkObF
	T9jn64MS1W4W2MiN7Ztcur2c2478oSEuNM5IdwY=
X-Google-Smtp-Source: AA0mqf6GCwrX18gDBDCF6o6ToPuYobYosdpVjryabNOZJgLVMsl/zCJpx4QbqmYhuhxpW3picNzIlMLTQcbXObBRihw=
X-Received: by 2002:a05:6402:504:b0:461:5542:6884 with SMTP id
 m4-20020a056402050400b0046155426884mr5256294edv.390.1668764102550; Fri, 18
 Nov 2022 01:35:02 -0800 (PST)
MIME-Version: 1.0
References: <20221116200150.4657-1-linux.amoon@gmail.com> <20221116200150.4657-2-linux.amoon@gmail.com>
 <bdcd2071-8f56-b829-7e78-3fc9efec09fc@wolfvision.net>
In-Reply-To: <bdcd2071-8f56-b829-7e78-3fc9efec09fc@wolfvision.net>
From: Anand Moon <linux.amoon@gmail.com>
Date: Fri, 18 Nov 2022 15:04:46 +0530
Message-ID: <CANAwSgQkwXb0KE+1856egmUyTx_pmr9hq6nk8-0YoMQJdBoDvQ@mail.gmail.com>
Subject: Re: [linux-next-v2 1/5] arm64: dts: rockchip: Fix gmac phy mode to
 rgmii on Rock 3A SBC.
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Chukun Pan <amadeus@jmu.edu.cn>, Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221118_013510_238077_21B0C1CE 
X-CRM114-Status: GOOD (  20.82  )
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

Hi Michael,

On Fri, 18 Nov 2022 at 12:33, Michael Riesch
<michael.riesch@wolfvision.net> wrote:
>
> Hi Anand,
>
> On 11/16/22 21:01, Anand Moon wrote:
> > On rk356x ethernet phy support reduced media independent interface (RMII)
> > and reduced gigabit media independent interface (RGMII).
> > So set the phy mode to rgmii to support clock delay, also
> > add TX and RX delay for phy-mode.
>
> Based on this commit message I still don't understand what you are
> actually trying to fix here. If you encounter network problems/stability
> issues, please let me know what test triggers the faulty behavior.
> Please describe the problem you are facing in detail here or in the
> cover letter.
>

Ok, Ethernet does not work on my Radxa 3A see boot logs.

[0] https://gist.github.com/moonlinux/bb56c787031226fbb9f69121564e76a2

Please find this updated commit message.

As per the schematic and datasheet PHY mode is RGMII
Use 2ns clock delay to RXC for RXD and TXC for TXD latching.

> > Fix the following warning
> >
> > [    7.365215] rk_gmac-dwmac fe010000.ethernet: Can not read property: tx_delay.
> > [    7.365219] rk_gmac-dwmac fe010000.ethernet: set tx_delay to 0x30
> > [    7.365224] rk_gmac-dwmac fe010000.ethernet: Can not read property: rx_delay.
> > [    7.365228] rk_gmac-dwmac fe010000.ethernet: set rx_delay to 0x10
>
> If the only purpose of this patch is to get rid of this warnings, it may

No, the intent is to fix the PHY mode to RGMII and fix the delay.
[ 7.066357] rk_gmac-dwmac fe010000.ethernet: init for RGMII_ID

> make sense to set them to dev_dbg as Peter pointed out.
>
Ok, will update this in the next version.

> Best regards,
> Michael
>
Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
