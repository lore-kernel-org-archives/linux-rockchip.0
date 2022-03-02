Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FAB3C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Mar 2022 08:17:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kj/C0Bsxd0VR5SC4ldPTPij5K00u+43TXarfHzZjBWk=; b=hAfQjchMvTknRw
	6DXOU8B6TysB+xbaA5KdbNoZ0hzPPdKeJVerqvduHrR3vmbmFkljPEJMq06pAy1QhCaM09CHN6Ld7
	eLayKZXFD64Qqujg8t0avVtvIBMG6Gec4AxQ7+JfxYQNO8i6Ykq+ENzNsrVUMg2s+8+nk6GaWiDmk
	25S6D14XVUnb2yQXOGZaHUQpBrT2z7u00wUaHYKX8Qe75y706HWTX3MJJc93bQ1By4m90ULBZ7e4z
	2/SWfiUfKzKVzCCZAcYTFZ3C+xGiZefAHWVwPSWOsPanQORcxRC5k6rzJ9OIW/IdF5qAF0k3Y3J13
	V2JtFVkZzd2lGg1iHD6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPKAS-001peN-Mo; Wed, 02 Mar 2022 08:17:04 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPKAF-001pYh-6s; Wed, 02 Mar 2022 08:16:52 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 6890B60C86;
 Wed,  2 Mar 2022 08:16:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4FFD3C004E1;
 Wed,  2 Mar 2022 08:16:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646209009;
 bh=j/M+KM/hpKriMRzOM0YFytccklDLw/uBr/iU+aPoPNs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=X928t27XR5ga6kw7vwiJbm3wCrhyqGlxAa9AbnfGXol1barx7MvmNwxIsEJDpM5Zd
 gPQSh7EqPlTkgLi/6Oe8+YxtjJG/JMSltB1LCX2+Q+946sSUOXROCfjESk9XrQ8mnl
 u+KqqYSylrRABlh+Rkxmti5Gpko+6dqYL8Wuy4AAbM7uuUB81pQVFszLvRFe20K5VA
 pKZC7GPqstWHFt6WdRYJz6ltJzEvAEK5Yz+P+/Dxv8J+kbIKEcIDDOwrW+72JoILsf
 0e65h+/j/YM4KFjSFckwXLXM4i/h5lHSpDszqzi1KLoOOA+WQQEUXHShe7irh9Xpu/
 zysa5Dj28Psug==
Date: Wed, 2 Mar 2022 13:46:45 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Heiko Stuebner <heiko@sntech.de>, Yifeng Zhao <yifeng.zhao@rock-chips.com>,
 Johan Jonker <jbx6244@gmail.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Rob Herring <robh@kernel.org>, devicetree <devicetree@vger.kernel.org>,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v4 1/8] dt-bindings: soc: grf: fix rk3568 usb definitions
Message-ID: <Yh8n7XiJbaT4pZGD@matsya>
References: <20220228135700.1089526-1-pgwipeout@gmail.com>
 <20220228135700.1089526-2-pgwipeout@gmail.com>
 <CAMdYzYqs=iRY6uNzVSkHrrhPYFixXdbZjtwSpPOjf-6f8TXutw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMdYzYqs=iRY6uNzVSkHrrhPYFixXdbZjtwSpPOjf-6f8TXutw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_001651_311872_68A039A8 
X-CRM114-Status: GOOD (  22.76  )
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

On 01-03-22, 09:52, Peter Geis wrote:
> Good Morning,
> 
> Would it be possible to pull this patch individually, to fix the
> current error reported by Rob?

This does not apply for me on phy-next. What was this based on..?

> 
> Thanks,
> Peter
> 
> On Mon, Feb 28, 2022 at 8:57 AM Peter Geis <pgwipeout@gmail.com> wrote:
> >
> > The rockchip,rk3568-pipe-grf and rockchip,rk3568-pipe-phy-grf
> > compatibles were incorrectly assigned to the syscon, simple-mfd
> > enumeration, vice only the syscon enumeration.
> > This leads a dtbs_check failure.
> >
> > Move these to the syscon enumeration.
> >
> > Fixes: b3df807e1fb0 ("dt-bindings: soc: grf: add naneng combo phy register compatible")
> >
> > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > ---
> >  Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> > index 072318fcd57b..5079e9d24af6 100644
> > --- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> > +++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> > @@ -15,6 +15,8 @@ properties:
> >        - items:
> >            - enum:
> >                - rockchip,rk3288-sgrf
> > +              - rockchip,rk3568-pipe-grf
> > +              - rockchip,rk3568-pipe-phy-grf
> >                - rockchip,rk3568-usb2phy-grf
> >                - rockchip,rv1108-usbgrf
> >            - const: syscon
> > @@ -39,8 +41,6 @@ properties:
> >                - rockchip,rk3399-grf
> >                - rockchip,rk3399-pmugrf
> >                - rockchip,rk3568-grf
> > -              - rockchip,rk3568-pipe-grf
> > -              - rockchip,rk3568-pipe-phy-grf
> >                - rockchip,rk3568-pmugrf
> >                - rockchip,rv1108-grf
> >                - rockchip,rv1108-pmugrf
> > --
> > 2.25.1
> >

-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
