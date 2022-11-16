Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A5B7C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Nov 2022 18:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NASdxZHGhVJ0p8J1ZHBlGjfz/De4vJcqFavMGVT4Yl4=; b=YYajCCr5gvfFRu
	0iIwdOtjZUtZbO4hHNl2UYHqaLh+32L/XS4ynRFAFbfmddKedfZsbzEdtcHZlmhy3oEvjuyWENCjm
	g+HRHoeEhSWzNh0hpqfl0G7lAi6iYUg+tZMbyBan4RqxS8+GPpFVQ758haivA6mA4hENL6ta6FCU+
	OMS68ckgp4mYvVmaKd36Pz+H1H2RLi2Rfr0v8fOZDCJmwbsYSl75TLxOQ4fSOmVKyiHSNIayzHBYK
	tGfIedzMzoHlOsN9J49bWwxqQOFnhWGV/pSBmID04vz1NdnifVefCcoeCv2WjlHsP9FVDzKhXyhbo
	pr3DRjD87rqIB5hkN5aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovMsu-006ppB-0E; Wed, 16 Nov 2022 18:11:40 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovMsi-006pln-PW; Wed, 16 Nov 2022 18:11:30 +0000
Received: by mail-ed1-x531.google.com with SMTP id 21so27839354edv.3;
        Wed, 16 Nov 2022 10:11:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Z2yhRXVWHTwKqB0FAJ5JUXE/Hz7ioVpMavCshhyMXsA=;
        b=RPE8BLJERTy3CP/G8HJ1kDaEpVIZsegVbKYnKx/AsCuLJM4ebPoHnNLJdGYsLQGA5j
         HiQ1nbJMi6MP66u3GGqNocQJFZV42ApmRmmXLV5DlO5eRvjykAWwU7OZDzdORScHJMuy
         0QBgsp73dq2+23N0GSicJ7YrVPGatFPWaSs6+4nMO0tdY0RICfRt4B4gJZPEN8l400ty
         FGBphV6hwkp2pmtZyUcdj5qu+NDPEDhgAJQgUwcy7qXY3PRwZ9mQu/Xbbh7SYDMRHLjl
         PsCqL6kUbodcXQpdoJmlD2YPZTKCO6gVkVtQGSoT7/4cNlg377eVFay+bUuWqdi9YDKv
         Mf9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z2yhRXVWHTwKqB0FAJ5JUXE/Hz7ioVpMavCshhyMXsA=;
        b=tJO50vJxceJ8Bg65IDOzCqRmx5ZaPyCxzYx5ekQMPITvLPalP7dcu+R1/VulBz22t9
         8QND7p1wPwXYosFdc4GIf/fWF8y6bsMBgSf97U81pVC9q1ut6PxakL9XDgFi8RlEbMcB
         vLU94HpEYEit7iV6aam7WHsnckrxCeuYLfAAbAMbRlvMu2UrzoFJJBrdb+K3s9AzbfzB
         hbEtSMPkYSLvioaIGxeaBksjJ90jzvEqv9uEk5kMNyf6H73L0WH9wT67gcT5oqjttZN7
         qk+nArXZA4pQ6lLd0BypzmVD8PS1SXJItdQ9PcNtpXN4ARpbQBpYuYa6MXwKt+Pe8d2u
         XRQA==
X-Gm-Message-State: ANoB5pmC2RH4c4QuAMf5OyOgBla2tJ0RIDbg4f8a/u5WBuUtub44GcNT
	Gnyd+vg2E29SGws9Zg1CJHbthDv6U8vKIfH6qmWrJtuR+LA=
X-Google-Smtp-Source: AA0mqf6gDG3miNAiZS+xe0nj1OeHIg9P1WFIChg40NgZQaIuVQPE7S24TE+7gcWVGhg13lPy618bdkXQL5++ztKW7wg=
X-Received: by 2002:a05:6402:f19:b0:461:a1c1:b667 with SMTP id
 i25-20020a0564020f1900b00461a1c1b667mr20586171eda.191.1668622283369; Wed, 16
 Nov 2022 10:11:23 -0800 (PST)
MIME-Version: 1.0
References: <20221111094238.1640-1-linux.amoon@gmail.com> <CAMdYzYp2wSrkOEh-v6Wye32TA9imfNF4CrUdKL7q8pOCQU307g@mail.gmail.com>
In-Reply-To: <CAMdYzYp2wSrkOEh-v6Wye32TA9imfNF4CrUdKL7q8pOCQU307g@mail.gmail.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Wed, 16 Nov 2022 23:41:07 +0530
Message-ID: <CANAwSgTNYDrkvUw_r_CQbgQ9KpzMqi9NP5Wfx5UvJeDvsyrTcQ@mail.gmail.com>
Subject: Re: [linux-next-v1 1/3] arm64: dts: rockchip: Fix gmac phy mode to
 rgmii on Rock 3A sbc
To: Peter Geis <pgwipeout@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Chukun Pan <amadeus@jmu.edu.cn>, Michael Riesch <michael.riesch@wolfvision.net>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221116_101128_844423_4097A333 
X-CRM114-Status: GOOD (  20.56  )
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

 Hi Petter / Michael.

Thanks for your review comments.

On Fri, 11 Nov 2022 at 18:26, Peter Geis <pgwipeout@gmail.com> wrote:
>
> On Fri, Nov 11, 2022 at 4:43 AM Anand Moon <linux.amoon@gmail.com> wrote:
> >
> > On rk356x ethernet phy support reduced media independent interface (RMII)
> > and reduced gigabit media independent interface (RGMII).
> > So set the phy mode to rgmii.
>
> The RTL8211 supports rgmii-id just fine, you only need to go to rgmii
> on these boards if you need to tune the delays manually.

Ok rgmii supports internal rx and tx clock delay
whereas rgmii-id does not supports internal clock delay.

>
> >
> > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> > index ea74ba32fbbd..72e410e3aca8 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> > @@ -253,7 +253,7 @@ &gmac1 {
> >         assigned-clock-rates = <0>, <125000000>;
> >         clock_in_out = "output";
> >         phy-handle = <&rgmii_phy1>;
> > -       phy-mode = "rgmii-id";
> > +       phy-mode = "rgmii";
>
> You should be setting the delay tuning in this patch as well.

I will try to fix this in the next version.

>
> >         pinctrl-names = "default";
> >         pinctrl-0 = <&gmac1m1_miim
> >                      &gmac1m1_tx_bus2
> > --
> > 2.38.1
Thanks


-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
