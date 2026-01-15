Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82502D46600
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jan 2026 17:18:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fDigXa52JBRdVrOj+mwpk2gSSRP4NNIBjWDzrqg/VTU=; b=W8x0Eb67ZwVE3G
	O2AicbEIQHxHjapxBCncVy2CxDaJxVFYl1sX96sMPqxCKsVDK4LKC8gAWxzFejirwwlcTkceY3tOP
	ctLYF3X83HwIf9KvOykOxbTJQkr79SU4FD1b7ZEl7ELyamR1juFg4dQaC3ojtzS+uIdbmbPHLj/VJ
	GQio8F57ysqQTSDsRQJQG90JbKbY4Q58DQeBgl6gyZFvELpHD8tCCQGJmBgmyeJ+6bOgYWWt4kTp4
	8GrbmfX9Arn1fuzIFOxhWU8dTCBjAWi06OnMJVyoHY7BYaJKVfzPsFRGRdYzIBiNQwQ/3jdLdXCWo
	RjWDeZBKVKh2KVJ4KlRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgQz6-0000000Cq0B-3deK;
	Thu, 15 Jan 2026 17:18:12 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgQz1-0000000CpzG-1lM2;
	Thu, 15 Jan 2026 17:18:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id A11D040E25;
	Thu, 15 Jan 2026 17:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 59700C116D0;
	Thu, 15 Jan 2026 17:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768497486;
	bh=tlBpdMlQBYBLhVmEgUbSIOIS5UI2VXeT9ZB6zSWIxfM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qVtLmSXjo6FvIftTAePkjMMLYNqnHXAPCPRIa7DqU14V+8o3w+FBwz+BiGQnqr0/2
	 UGqn/mQNnRRVeh2KonGBrK9BEtHlocbBpBsHSksMlFKqnTDIJuVPrzbUwkBrSNdlJV
	 4dcJ8bcNjnXbpFPGzs4XWvfIPjxYcrZWo61PllT94t8xxvcutq6myX3Bj++3oKRGGU
	 8KY7fBXvOliTtwAn9Z7S5zVXgjzCpfUX4D9NtgpxnlPMqGGH7FdV0o5LvmpEXQ6xji
	 h7My1VZziSebUI/weJ0pgoX77FjOCHsTuz5jLlveDNby9+xU1TnktE3QU/bJpqRN3t
	 jxH+XHvLWF+Gg==
Date: Thu, 15 Jan 2026 11:18:05 -0600
From: Rob Herring <robh@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH 1/5] dt-bindings: display: rockchip: Add rk3576
 DisplayPort
Message-ID: <20260115171805.GA907039-robh@kernel.org>
References: <20260109080054.228671-1-andyshrk@163.com>
 <20260109080054.228671-2-andyshrk@163.com>
 <aWa5i52PTNQ_QTQ7@venus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aWa5i52PTNQ_QTQ7@venus>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_091807_632156_0FED4D22 
X-CRM114-Status: GOOD (  19.57  )
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
Cc: dmitry.baryshkov@oss.qualcomm.com, devicetree@vger.kernel.org, conor+dt@kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Andy Yan <andyshrk@163.com>, mripard@kernel.org, hjc@rock-chips.com, linux-rockchip@lists.infradead.org, Laurent.pinchart@ideasonboard.com, tzimmermann@suse.de, Andy Yan <andy.yan@rock-chips.com>, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Jan 13, 2026 at 10:33:52PM +0100, Sebastian Reichel wrote:
> Hi,
> 
> On Fri, Jan 09, 2026 at 04:00:44PM +0800, Andy Yan wrote:
> > From: Andy Yan <andy.yan@rock-chips.com>
> > 
> > The DisplayPort found on RK3576 is very similar to that of RK3588,
> > but work in dual pixel mode. And itself does not depend on the I2S
> > clock or the SPDIF clock when transmit audio.
> > 
> > Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> > 
> > ---
> > 
> >  .../display/rockchip/rockchip,dw-dp.yaml      | 29 +++++++++++++++++--
> >  1 file changed, 26 insertions(+), 3 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-dp.yaml
> > index 6345f0132d43..1bfe1bd6404a 100644
> > --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-dp.yaml
> > +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-dp.yaml
> > @@ -27,13 +27,11 @@ description: |
> >    * Pixel clock up to 594MHz
> >    * I2S, SPDIF audio interface
> >  
> > -allOf:
> > -  - $ref: /schemas/sound/dai-common.yaml#
> > -
> >  properties:
> >    compatible:
> >      enum:
> >        - rockchip,rk3588-dp
> > +      - rockchip,rk3576-dp
> >  
> >    reg:
> >      maxItems: 1
> > @@ -42,6 +40,7 @@ properties:
> >      maxItems: 1
> >  
> >    clocks:
> > +    minItems: 3
> >      items:
> >        - description: Peripheral/APB bus clock
> >        - description: DisplayPort AUX clock
> > @@ -50,6 +49,7 @@ properties:
> >        - description: SPDIF interfce clock
> >  
> >    clock-names:
> > +    minItems: 3
> >      items:
> >        - const: apb
> >        - const: aux
> > @@ -95,6 +95,29 @@ required:
> >    - ports
> >    - resets
> >  
> > +allOf:
> > +  - $ref: /schemas/sound/dai-common.yaml#
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - rockchip,rk3588-dp
> > +    then:
> > +      properties:
> > +        clocks:
> > +          minItems: 5
> > +          maxItems: 5
> > +        clock-names:
> > +          minItems: 5
> > +          maxItems: 5
> 
> I think maxItems is not needed, since 6 items would not work for the
> specified items list anyways. Otherwise:

Correct.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
