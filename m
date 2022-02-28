Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4E0DC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Feb 2022 19:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l/qBaTeKwSAHa4lTZPmTONp3OUwTuVa493JKcpFOZxY=; b=QnOasAy3M+o9DI
	2wXUOnYhIDJoi0J4HDR2dh4vncUqi/JAbIaabasE6JHuLMNBjSPEtWyh5/SewqZtTPjRRe3KPgkC2
	3TbcpWhBM8kzMEmciKiDTG7eluAymFIT50o2Za4JAPy6aOZZSwaB7ww19/NGJIp+mAacS8Vgeaj4Z
	vTpgfcWVb17COWtL2asqL3u+5hADl1S4FYFGvH/MMbcS7s0jQ2CEiw/kd31sMGn1lk6anzK8fGeYO
	ZUWhG7MolaNOTiv1jFzoScSxIPCrTGK9TS5j6wmvgXOfqf2HoBr1ZbWHwkmnVCnxSFt24GdFVQooA
	0ZMvHF9pdLqFCL/Yqvog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOlWh-00Dlx9-IZ; Mon, 28 Feb 2022 19:17:43 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOlWU-00Dluj-Ot; Mon, 28 Feb 2022 19:17:32 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 34AF8615A3;
 Mon, 28 Feb 2022 19:17:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0556FC340F8;
 Mon, 28 Feb 2022 19:17:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646075849;
 bh=JkDmyeEmmXea1GNMh+ea50O5xH/GdJK7J/MFl2xT9pI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=djTdNfeTL3LbWpIEva3rozWzny67Oyxu6ochk1nNAFFFrsfxCq4Sea5UTy7Tf4Ucu
 QLpWXT4xIlkT6JlS6lFkITuCRChcL86RwMpoOu3dkWYLQpl1waqwRGLXSHb7X5DI/M
 3dxTCn98o2WS46HTlNPaQtb/JqaDKv3dSGyhk/TJj0RLe4vxKoOzl+8ipVRMgN/L0+
 cv86OYDCfwOwci+MaqL9E3OZAtb4ukKCNUK5tNlhHxjKvZvHdaJpQLvVVMFnSGqi+y
 ysfOK1/RmHBc7l1NeOnJvIi3T78SGUzffGeO8nEMTV0TYpYp/R/08PMV+6Fg7io1cz
 YuyC5kn6UA75Q==
Received: by mail-ej1-f44.google.com with SMTP id bg10so26895863ejb.4;
 Mon, 28 Feb 2022 11:17:28 -0800 (PST)
X-Gm-Message-State: AOAM532sotR9mvgDNdzPYz3XWCMmYTi3E3pg4TecqzokXhxnU/hTzhDW
 8XjLKOKHqZl61f53TpTjQLtvWdoZpf67pJeq6g==
X-Google-Smtp-Source: ABdhPJzemuH2iSFIpM+lnwxjfrCpLm5SpZx3xhmzJ4VXFjGtpP47wRGXYUIVlALLhQ7zhzIrLyZ4SCgcqaxUDQf2muc=
X-Received: by 2002:a17:906:d204:b0:6d6:df17:835e with SMTP id
 w4-20020a170906d20400b006d6df17835emr1262347ejz.20.1646075847094; Mon, 28 Feb
 2022 11:17:27 -0800 (PST)
MIME-Version: 1.0
References: <20220208091326.12495-1-yifeng.zhao@rock-chips.com>
 <20220208091326.12495-3-yifeng.zhao@rock-chips.com>
In-Reply-To: <20220208091326.12495-3-yifeng.zhao@rock-chips.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 28 Feb 2022 13:17:15 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+1ixfw4+pwPcM5azPdC_4_bYCPu50jUvKnVMr6dSncpA@mail.gmail.com>
Message-ID: <CAL_Jsq+1ixfw4+pwPcM5azPdC_4_bYCPu50jUvKnVMr6dSncpA@mail.gmail.com>
Subject: Re: [PATCH v8 2/4] dt-bindings: phy: rockchip: Add Naneng combo PHY
 bindings
To: Yifeng Zhao <yifeng.zhao@rock-chips.com>, Vinod <vkoul@kernel.org>
Cc: "heiko@sntech.de" <heiko@sntech.de>, Johan Jonker <jbx6244@gmail.com>,
 devicetree@vger.kernel.org, 
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
X-CRM114-CacheID: sfid-20220228_111730_908316_25972B99 
X-CRM114-Status: GOOD (  15.99  )
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

On Tue, Feb 8, 2022 at 3:15 AM Yifeng Zhao <yifeng.zhao@rock-chips.com> wrote:
>
> Add the compatible strings for the Naneng combo PHY found on rockchip SoC.
>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>
> Changes in v8: None
> Changes in v7:
> - remove u3otg0_port_en, u3otg1_port_en and pipe_sgmii_mac_sel
>
> Changes in v5:
> - modify description for ssc and ext-refclk
> - remove apb reset
>
> Changes in v4:
> - restyle
> - remove some minItems
> - add more properties
> - remove reset-names
> - move #phy-cells
> - add rockchip,rk3568-pipe-grf
> - add rockchip,rk3568-pipe-phy-grf
>
> Changes in v3: None
> Changes in v2:
> - Fix dtschema/dtc warnings/errors
>
>  .../phy/phy-rockchip-naneng-combphy.yaml      | 109 ++++++++++++++++++
>  1 file changed, 109 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml

This now fails in linux-next:

/builds/robherring/linux-dt/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.example.dt.yaml:
syscon@fdc50000: compatible: 'oneOf' conditional failed, one must be
fixed:
 ['rockchip,rk3568-pipe-grf', 'syscon'] is too short
 'rockchip,rk3568-pipe-grf' is not one of ['rockchip,rk3288-sgrf',
'rockchip,rk3568-usb2phy-grf', 'rockchip,rv1108-usbgrf']
From schema: /builds/robherring/linux-dt/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
/builds/robherring/linux-dt/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.example.dt.yaml:
syscon@fdc70000: compatible: 'oneOf' conditional failed, one must be
fixed:
 ['rockchip,rk3568-pipe-phy-grf', 'syscon'] is too short
 'rockchip,rk3568-pipe-phy-grf' is not one of ['rockchip,rk3288-sgrf',
'rockchip,rk3568-usb2phy-grf', 'rockchip,rv1108-usbgrf']
From schema: /builds/robherring/linux-dt/Documentation/devicetree/bindings/soc/rockchip/grf.yaml


The problem appears to be that patch 1 was applied incorrectly and the
compatibles ended up in the wrong section (the one requiring
'simple-mfd'). Patch 1 probably conflicts as my bot will just skip the
patch if it conflicts which is why this had a different error report.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
