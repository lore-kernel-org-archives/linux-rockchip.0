Return-Path: <SRS0=aLnl=J7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 373A4C433B4
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 May 2021 10:16:21 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C27A961164
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 May 2021 10:16:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C27A961164
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:Date:
	In-Reply-To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=buvbUEC5o0Bu3fZlhE0wZ/PdgJMN/PZ3XsIYH8J0NsU=; b=o0UQYwdrlZgq7X
	wbZJPex3RZIISMDSjqjBw+aG6EyivB1LPnqZAerwB7LpoeqKcUXpJpMso5P5dzO8SsHX1mZfwL7DC
	UcYn8eoZc3LlHcrW/v/ItYt/u/K9YdpufZ5aZ5tnC37eF6YMplkswmgPRJD/zUFEiSFCLZofHiyvS
	xtjpw6XdAhvOgNVBsudKIPIgj9QX3FNpvJ4hvtq+FIhonDzHjou6OygXaQdmuhFgtbsWYLn5ud6Tt
	ksSR2xLrc1HIMqVK9NcLVhZvms7xklELjFnyjETKd2Jly54xHawYE89isu8v0axZ+Qs6G/9oAhnh0
	IOE6ZegDV1XSDE/v5xUg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lds6B-00Fwb1-5F; Tue, 04 May 2021 10:16:15 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lds5y-00FwaH-8B; Tue, 04 May 2021 10:16:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:Subject:
 Message-ID:MIME-Version:To:Cc:Date:Content-Type:In-Reply-To:From:Sender:
 Reply-To:Content-ID:Content-Description:References;
 bh=Tzm8z80ShT+vARyAStiII2+vit8dV+Qo0Ub3BXOuhFM=; b=Y/D8Q1n64Qx70w5Try6PJ4iMpG
 oEMUxtScfmsxzLI500hYwzbsvLWvHYbYPwoExwOUP4In8q0ndff5P7JvxvbblrAo6r17ZvGTDcsZ0
 siPOj8/IO07kk7tjG+1B3hQRr6ahNlOd3rYi764zLt9rIwCAhZfuhH5LkE1SL0wGEbmmT1ZrOcKFQ
 gtDU5ybcdVxa8/1zM8Ic+A5/EkT/hD1RoVNLRzM7bQoHlRtOSrRO48DzOHR3dJbDLhvgW8RrxxF9e
 FC8QOcFo9MiiFkzvwJKkGt1vuw7cE20He3TYGk38NxAm6wV8j0gzF/L4YHeHt5XhDHdhpYNJOJ1qE
 XrZ8MVIQ==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lds5v-003t2J-Ea; Tue, 04 May 2021 10:16:00 +0000
Received: from chickenburger.collabora.co.uk (chickenburger.collabora.co.uk
 [46.235.227.242])
 by bhuna.collabora.co.uk (Postfix) with ESMTP id ED5DA1F42458;
 Tue,  4 May 2021 11:15:54 +0100 (BST)
From: "Ezequiel Garcia" <ezequiel.garcia@collabora.com>
In-Reply-To: <20210501013448.GA4001859@robh.at.kernel.org>
X-Forward: 190.2.109.197
Date: Tue, 04 May 2021 11:15:54 +0100
Cc: "Benjamin Gaignard" <benjamin.gaignard@collabora.com>, joro@8bytes.org,
 will@kernel.org, heiko@sntech.de, xxm@rock-chips.com,
 iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
To: "Rob Herring" <robh@kernel.org>
MIME-Version: 1.0
Message-ID: <4bee-60911f00-11-7473f580@227440849>
Subject: =?utf-8?q?Re=3A?= [PATCH v2 2/4] =?utf-8?q?dt-bindings=3A?=
 =?utf-8?q?_iommu=3A?==?utf-8?q?_rockchip=3A?= Add compatible for v2
User-Agent: SOGoMail 5.0.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210504_031559_638536_41639E21 
X-CRM114-Status: GOOD (  15.24  )
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

Hi Rob,
 
On Friday, April 30, 2021 22:34 -03, Rob Herring <robh@kernel.org> wrote: 
 
> On Thu, Apr 22, 2021 at 04:16:00PM +0200, Benjamin Gaignard wrote:
> > Add compatible for the second version of IOMMU hardware block.
> > RK356x IOMMU can also be link to a power domain.
> > 
> > Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> > ---
> > version 2:
> >  - Add power-domains property
> > 
> >  .../devicetree/bindings/iommu/rockchip,iommu.yaml          | 7 ++++++-
> >  1 file changed, 6 insertions(+), 1 deletion(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
> > index 0db208cf724a..e54353ccd1ec 100644
> > --- a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
> > +++ b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
> > @@ -19,7 +19,9 @@ description: |+
> >  
> >  properties:
> >    compatible:
> > -    const: rockchip,iommu
> > +    enum:
> > +      - rockchip,iommu
> > +      - rockchip,iommu-v2
> 
> This should be SoC specific.
> 

It seems iommu-v2 is really the name Rockchip gives to this IOMMU IP core.
Can we keep the "rockchip,iommu-v2" compatible, and add SoC-specific ones, as we normally do:

compatible = "rockchip,rk3568-iommu", "rockchip,iommu-v2";

Just like we'd do with any peripheral:

compatible = "st,stm32-dwmac", "snps,dwmac-3.50a";

Thanks!
Ezequiel


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
