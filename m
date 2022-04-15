Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E536C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Apr 2022 20:15:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M3hZSdlBNc9ForKhUYV+PPx87AWKeCFXCheEqYoOLgE=; b=SBB7qcljWpv1hQ
	6Grx31Y9MzYGwFak4ZZwnPgpWn7pzcpeuKFpRvAM95/cz6F/aUeF01xDiwpLk1QbGk7p9W22cgKl0
	r6WKzLCujyH9eCsq9pZ9y/OSGzbqNxWu6/MwmJAVioMiY/DLLy8wlWOl+0EbAAyBx3rdUuYQsIt9w
	qu9XmpL5dVNF4G5BcFoPLGGbWbtsDcggX6dqO1Ii5OTdu8GbZ84nm8BRYZXqYRnBjD7g/ZbsfHdVc
	3I8BfkcxREgBUF4Joc4HyFNzIzqhqnbmDqIUMZQGMlky7xA/VbNFku5eIj6/jykqMA4m9wPeITIOq
	9AWczLj4so9oAmTOJBNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nfSLM-00BFf8-Lj; Fri, 15 Apr 2022 20:15:00 +0000
Received: from mail-yw1-x1134.google.com ([2607:f8b0:4864:20::1134])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nfSLJ-00BFeS-HX; Fri, 15 Apr 2022 20:14:58 +0000
Received: by mail-yw1-x1134.google.com with SMTP id
 00721157ae682-2ebebe631ccso92624807b3.4; 
 Fri, 15 Apr 2022 13:14:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QfGuix9eHPmBVHieE98IkajLKskzJOMJS9YG04aHQEc=;
 b=iGv/flgytSZZleWCwY3NfgAeABaSuaArYoDgbbyezprnLZw33y0kzKJpeR9Gx9v9j8
 yFRmIdUedGm0HRsRtV32in/5wzKY3OEwLQz0XdDCGaSuyHnCwh72egU+U4iwYcbW9th9
 ZKICA5oZfdknC+kjfvqFyYCN3GWi4iRmsOk63DjRkDu+7T/iy/EytvEQwti6DLvBD5EM
 qrgBDVWoJ/xAybNrqyt7gzEuEQiprAYuNDk0mr8bIFllnk7Bs/wkqO/jKC/DCEGuEmnx
 evxd5S5zqC0gxcUIul8XvHC2vxr4NXxCVHg+Ns2XXdM+3Mz5FuN2MbmRBzdVzZtJIrjw
 /TSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QfGuix9eHPmBVHieE98IkajLKskzJOMJS9YG04aHQEc=;
 b=4CWSQhxgeMb0QyzjFczNFFu3iq+5K4xxAlGTtVLKs4X6zNWJbvz+UPV3Lf549UfPNO
 aMgNzN1KePdlasm2VQ3lf/2lKIHAOyOmKYbTvSL1OWJXrugfKCLPMNtxAcA/LnH6iCLT
 CPtGoBOr1TSYTE6zMcY5P3e0rpVRNkH4froKhlX+BSHsnn4LSAjiUGbRnuCkmA/QImQp
 jRFIwSbwPlpgN9cWs49vX74p1+fRKc8ulMc+rMHiEB4mM7ukmak74GTuJkZ+rBnhCa9v
 4BDM9XYSk1bq5HwEVB1rxtL0rSV06pHZ/6Gt0Oa7B2bTDNj8hG/qlz/jOZ4/egpm9HdA
 aPKA==
X-Gm-Message-State: AOAM5305pXfAQOSG8IP35Aguc+3SqgSu5FBhNsZl9PuSaa17wH+XxMkS
 qey4Vo0OsTrwhv4qJho4kX66kMPJ6rgtJvG41fzpZjfW24A=
X-Google-Smtp-Source: ABdhPJzcXxbnRTmhCv9tZrtZ2aIi9BPp22b40umIvHYfXdY0pL99IaBj4TVrT7UkE5UtWBG4pMeIorfwsGjNVX/TrWw=
X-Received: by 2002:a81:3a8f:0:b0:2e8:7e2c:95a5 with SMTP id
 h137-20020a813a8f000000b002e87e2c95a5mr589827ywa.241.1650053695984; Fri, 15
 Apr 2022 13:14:55 -0700 (PDT)
MIME-Version: 1.0
References: <20220413133731.242870-1-pgwipeout@gmail.com>
 <20220413133731.242870-2-pgwipeout@gmail.com>
 <Ylhfr51RME+YAjOG@robh.at.kernel.org>
In-Reply-To: <Ylhfr51RME+YAjOG@robh.at.kernel.org>
From: Peter Geis <pgwipeout@gmail.com>
Date: Fri, 15 Apr 2022 16:14:43 -0400
Message-ID: <CAMdYzYpwKE3cCPZfDehnN0Lv1k7DstUh2y4PoEv6=6e6ejAtSQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: pci: remove fallback from Rockchip
 DesignWare binding
To: Rob Herring <robh@kernel.org>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>, 
 Simon Xue <xxm@rock-chips.com>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 PCI <linux-pci@vger.kernel.org>, devicetree <devicetree@vger.kernel.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220415_131457_640127_12D8158F 
X-CRM114-Status: GOOD (  19.39  )
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

On Thu, Apr 14, 2022 at 1:53 PM Rob Herring <robh@kernel.org> wrote:
>
> On Wed, Apr 13, 2022 at 09:37:28AM -0400, Peter Geis wrote:
> > The snps,dw-pcie binds to a standalone driver.
> > It is not fully compatible with the Rockchip implementation and causes a
> > hang if it binds to the device.
> >
> > Remove this binding as a valid fallback.
> >
> > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > ---
> >  Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> > index 142bbe577763..8dc11fed8a3c 100644
> > --- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> > +++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> > @@ -32,7 +32,6 @@ properties:
> >    compatible:
> >      items:
> >        - const: rockchip,rk3568-pcie
> > -      - const: snps,dw-pcie
>
> With this, you no longer need 'select' so please drop it too.

Thanks! Will do.

>
> >
> >    reg:
> >      items:
> > @@ -110,7 +109,7 @@ examples:
> >          #size-cells = <2>;
> >
> >          pcie3x2: pcie@fe280000 {
> > -            compatible = "rockchip,rk3568-pcie", "snps,dw-pcie";
> > +            compatible = "rockchip,rk3568-pcie";
> >              reg = <0x3 0xc0800000 0x0 0x390000>,
> >                    <0x0 0xfe280000 0x0 0x10000>,
> >                    <0x3 0x80000000 0x0 0x100000>;
> > --
> > 2.25.1
> >
> >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
