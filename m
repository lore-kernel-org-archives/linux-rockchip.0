Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F12FDC433FE
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Nov 2022 17:26:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+hxxcTBYOoamfpC35SxC+9szFQrpOwMKYQt/c6men0M=; b=u8ASPmiDp3BdeY
	09XthrxyDWGzcKXcsqtZA80/8m7vX0CyHdAeeAtZF97aeVCrDZo/VRUizvLGtQa/Nxfsukj5ZEUJ0
	KGnUT3VVK8s+5wCIZucmK2LKta+tP/YjeXkFKrMgJfA+Fph9nYU7dDnVnis8PrJFnaO7M4h8EO0Zg
	G+ruv4E4TLBqI0BVaod4OPbmo39S7EF54pJOh61hGUyEtt5OVONRH2lCWDNW68oxH9phbXQhKwUbm
	zLuylt5fLWRfSdb/VMH0vXutERrXRpA4ZZzZUy+cEFk75ybDMwr34DG7B6PC8pUr1sGLqLacViuXK
	HvXgMSnnSBRsvupb0ouQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opv1C-006GLT-CQ; Tue, 01 Nov 2022 17:25:42 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opv12-006GH6-I6; Tue, 01 Nov 2022 17:25:33 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 83CBB616BE;
	Tue,  1 Nov 2022 17:25:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E6921C433B5;
	Tue,  1 Nov 2022 17:25:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667323530;
	bh=8+n4wVebR2DVuEojd5dP66y68blMgawXTlygiHM3C3U=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=rqOvYUINww1OL9aIVCml6YmBOqIBtEMoIYgtttINotNKlQwLbfpRMK5NCZUpv0X5S
	 Of5f/TrHzuY6kZy6oT4fTWsRrcV30bBT03hOYusflJqIBvwiEwoNXV+F7bj+vVYjP+
	 ERdbTXfa01pjQ7F40gygClpdyWyyUi9lDDCnUk3ck2PHKH+6Q+tYs60fyYj5oy+ge5
	 iVQhfstCW2Le1c642M2KDmdOokqdQRCZehRkEIRATR8fg5RPUoDaRwYHqtxYWmvPnz
	 xlbH5P+kxecwZ8WrsegM/RmEVIW/5UY9syiYAbaPZ2GGGIFAywgjPGQRwoyfHegdE0
	 3848hpMImO8Rw==
Received: by mail-lj1-f177.google.com with SMTP id l8so10966883ljh.13;
        Tue, 01 Nov 2022 10:25:30 -0700 (PDT)
X-Gm-Message-State: ACrzQf0GNduP84h0mTkdgsvdA3HY2iqEkSCZsEnEAlKMcLQLvnFo4kcr
	TUzKoEurQz710GOEZQJxNdAbDxQ51+uufi0KXA==
X-Google-Smtp-Source: AMsMyM76Gx3gpIDmB0YWloxakt3kNIrl0ft6hshAFByvsLqfn6Hp/4L00+ft8BqwrQoWEk8oeG8xE59btzfpwteVooE=
X-Received: by 2002:a2e:b16b:0:b0:277:3946:7611 with SMTP id
 a11-20020a2eb16b000000b0027739467611mr8104831ljm.392.1667323528960; Tue, 01
 Nov 2022 10:25:28 -0700 (PDT)
MIME-Version: 1.0
References: <20221028231309.565451-1-krzysztof.kozlowski@linaro.org>
 <Y1+MNL+fCfreAqMh@google.com> <20221031192658.GA3286587-robh@kernel.org> <Y2D0As4ezi/031lL@google.com>
In-Reply-To: <Y2D0As4ezi/031lL@google.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 1 Nov 2022 12:25:19 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJUx2FtpYWSkx3cOFcywSux7P2sPpvbVmaryMdo1+xA_Q@mail.gmail.com>
Message-ID: <CAL_JsqJUx2FtpYWSkx3cOFcywSux7P2sPpvbVmaryMdo1+xA_Q@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mfd: Expect specific type for monitored-battery
To: Lee Jones <lee@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Dmitry Osipenko <digetx@gmail.com>, Chris Zhong <zyw@rock-chips.com>, 
	Zhang Qing <zhangqing@rock-chips.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221101_102532_653764_7CDE1D76 
X-CRM114-Status: GOOD (  20.66  )
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

On Tue, Nov 1, 2022 at 5:25 AM Lee Jones <lee@kernel.org> wrote:
>
> On Mon, 31 Oct 2022, Rob Herring wrote:
>
> > On Mon, Oct 31, 2022 at 08:49:56AM +0000, Lee Jones wrote:
> > > On Fri, 28 Oct 2022, Krzysztof Kozlowski wrote:
> > >
> > > > Core schema does not define type of monitored-battery, so the schemas
> > > > are expected to reference proper type.
> > > >
> > > > Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > > > ---
> > > >  Documentation/devicetree/bindings/mfd/ene-kb930.yaml      | 4 +++-
> > > >  Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml | 1 +
> > > >  2 files changed, 4 insertions(+), 1 deletion(-)
> > >
> > > Applied, thanks.
> >
> > NAK. Please drop or revert.
>
> Dropping is not a problem.
>
> Would you mind providing some context?

I did elsewhere in the series, but simply we don't want to define a
type for a property multiple times. It should be defined once
somewhere common.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
