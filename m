Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E395C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Mar 2022 14:07:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=68hRT/hMbbn30ed7wGcXEhMP8bgpXC+f6JINYD8HDj4=; b=IiDY0JnmDREe3P
	XZsoL7oApEspKBJOiJdmZGv4RiIzROzSzkXsSlGgguLRqiaeX0aDpmaFyvPY5kZXRvXyQCmBUq9oG
	g5c9e++QFtOA18Q0oHCAwKb92cVrixNpv2iZ+gaQus0zZcqjCACTlWYhaby+95plPYJGK7S2nX60f
	7KTrlNv1sxGfy9rOfzHHQC4qeVH+a1lpTWQt2b7do9ozRll5UpO+lpQcRmPfkvdOj59S7pG+m7xFQ
	25V96HRnSW5AGgS1rfXXhDw4j7whe2hXAbeYGUrsccX6niag8q03JB3c2rs0yeyp2BeK4XoIcZyHS
	OKbnFnqIzq0wz4zpE5GQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nP39v-00GzF6-Ut; Tue, 01 Mar 2022 14:07:23 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nP39f-00GzBl-NE; Tue, 01 Mar 2022 14:07:13 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id CFBA961541;
 Tue,  1 Mar 2022 14:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39669C340FA;
 Tue,  1 Mar 2022 14:07:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646143626;
 bh=EclZqpMJR1tYEAmca7b905ZIwmOC5TaIXkHf5lThpIk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=JWjRHH8IYu+kF4Po1soEE6Ewr8+HCEUmDtGX95Ck9OyUqQML+GyWqI479v8uK9W9z
 BGHCwdZoAux+WuSQLTuoq0R1NZ4vIvelieDU7f7JCKlLsTk5R+Dohqhgt7rmyh2Gow
 DH6P5EGDBG0JvLLE40p+8eS/6YNbNIuELP3X1iUyRhgXubGx2cnEyPbWaPn9H9rpmL
 U2xpHA1g2Ekfet26kIzpkDQyIoSPwv0h0YA59GPmZASjXp1ZxNRjJYJexFunabZUGf
 wUvIfrFjgNAybe4GQAwBVuWfSoca2W6gwoqLzs0fBc/CM3L7K2LyMsi8s4hZAh3qcI
 L9kk3ISLRrdDA==
Received: by mail-ed1-f51.google.com with SMTP id s14so22197590edw.0;
 Tue, 01 Mar 2022 06:07:06 -0800 (PST)
X-Gm-Message-State: AOAM530nlq62V3qJDgZctAdjBHmg1Gfz5Fa1Rj1RNtldALgTi2elrBzM
 IPgIAuzCBZYa8i/MfDYxzh8cbZj9DlRM1hlPsw==
X-Google-Smtp-Source: ABdhPJwmaTZSRCBxdhtl1HfQ8MmkEGVxX0jRBq7/dxH/OHiYeN+U4x2bgyRCgL5udfuw1JmC1YQsVAmSw2fYxqTzjFI=
X-Received: by 2002:aa7:d415:0:b0:410:a0fa:dc40 with SMTP id
 z21-20020aa7d415000000b00410a0fadc40mr24270451edq.46.1646143624441; Tue, 01
 Mar 2022 06:07:04 -0800 (PST)
MIME-Version: 1.0
References: <20220208091326.12495-1-yifeng.zhao@rock-chips.com>
 <20220208091326.12495-3-yifeng.zhao@rock-chips.com>
 <CAL_Jsq+1ixfw4+pwPcM5azPdC_4_bYCPu50jUvKnVMr6dSncpA@mail.gmail.com>
 <CAMdYzYryTb4Gvv3XENgUOSrutr7S-5a7GOMRahXWWZOeL1qKWA@mail.gmail.com>
In-Reply-To: <CAMdYzYryTb4Gvv3XENgUOSrutr7S-5a7GOMRahXWWZOeL1qKWA@mail.gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 1 Mar 2022 08:06:52 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLsLU5-bJVRWv_TzGUZdFHOx7tdzqV2piNfacNkXg=zww@mail.gmail.com>
Message-ID: <CAL_JsqLsLU5-bJVRWv_TzGUZdFHOx7tdzqV2piNfacNkXg=zww@mail.gmail.com>
Subject: Re: [PATCH v8 2/4] dt-bindings: phy: rockchip: Add Naneng combo PHY
 bindings
To: Peter Geis <pgwipeout@gmail.com>, Vinod <vkoul@kernel.org>
Cc: Yifeng Zhao <yifeng.zhao@rock-chips.com>,
 "heiko@sntech.de" <heiko@sntech.de>, 
 Johan Jonker <jbx6244@gmail.com>, devicetree <devicetree@vger.kernel.org>, 
 Michael Riesch <michael.riesch@wolfvision.net>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
 "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Liang Chen <cl@rock-chips.com>, 
 Kever Yang <kever.yang@rock-chips.com>, Lee Jones <lee.jones@linaro.org>, 
 wulf <wulf@rock-chips.com>, David Wu <david.wu@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220301_060707_855274_642F7788 
X-CRM114-Status: GOOD (  26.54  )
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

On Mon, Feb 28, 2022 at 3:37 PM Peter Geis <pgwipeout@gmail.com> wrote:
>
> On Mon, Feb 28, 2022 at 2:18 PM Rob Herring <robh+dt@kernel.org> wrote:
> >
> > On Tue, Feb 8, 2022 at 3:15 AM Yifeng Zhao <yifeng.zhao@rock-chips.com> wrote:
> > >
> > > Add the compatible strings for the Naneng combo PHY found on rockchip SoC.
> > >
> > > Reviewed-by: Rob Herring <robh@kernel.org>
> > > Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> > > Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> > > ---
> > >
> > > Changes in v8: None
> > > Changes in v7:
> > > - remove u3otg0_port_en, u3otg1_port_en and pipe_sgmii_mac_sel
> > >
> > > Changes in v5:
> > > - modify description for ssc and ext-refclk
> > > - remove apb reset
> > >
> > > Changes in v4:
> > > - restyle
> > > - remove some minItems
> > > - add more properties
> > > - remove reset-names
> > > - move #phy-cells
> > > - add rockchip,rk3568-pipe-grf
> > > - add rockchip,rk3568-pipe-phy-grf
> > >
> > > Changes in v3: None
> > > Changes in v2:
> > > - Fix dtschema/dtc warnings/errors
> > >
> > >  .../phy/phy-rockchip-naneng-combphy.yaml      | 109 ++++++++++++++++++
> > >  1 file changed, 109 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
> >
> > This now fails in linux-next:
> >
> > /builds/robherring/linux-dt/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.example.dt.yaml:
> > syscon@fdc50000: compatible: 'oneOf' conditional failed, one must be
> > fixed:
> >  ['rockchip,rk3568-pipe-grf', 'syscon'] is too short
> >  'rockchip,rk3568-pipe-grf' is not one of ['rockchip,rk3288-sgrf',
> > 'rockchip,rk3568-usb2phy-grf', 'rockchip,rv1108-usbgrf']
> > From schema: /builds/robherring/linux-dt/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> > /builds/robherring/linux-dt/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.example.dt.yaml:
> > syscon@fdc70000: compatible: 'oneOf' conditional failed, one must be
> > fixed:
> >  ['rockchip,rk3568-pipe-phy-grf', 'syscon'] is too short
> >  'rockchip,rk3568-pipe-phy-grf' is not one of ['rockchip,rk3288-sgrf',
> > 'rockchip,rk3568-usb2phy-grf', 'rockchip,rv1108-usbgrf']
> > From schema: /builds/robherring/linux-dt/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> >
> >
> > The problem appears to be that patch 1 was applied incorrectly and the
> > compatibles ended up in the wrong section (the one requiring
> > 'simple-mfd'). Patch 1 probably conflicts as my bot will just skip the
> > patch if it conflicts which is why this had a different error report.
>
> Good Afternoon Rob,
>
> This is fixed in the first patch of my rk356x dwc3 enablement series:
> https://patchwork.kernel.org/project/linux-rockchip/patch/20220228135700.1089526-2-pgwipeout@gmail.com/

Where does that say Vinod incorrectly applied the original patch and
needs to apply it? What's the status of the series? Do we have to wait
for the rest of the series to be applied?

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
