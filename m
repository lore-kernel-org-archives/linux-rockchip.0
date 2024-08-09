Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4009C52D7C
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Aug 2024 17:26:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6FQPuDgFcR19YbqjPP5s6NqrbCVgyrXFF0rnVMUgupY=; b=a5oYN8+6Cnbv3i
	Q0ZqRG2JslmwniEudUVyRM9eR0F2H2RxJo5gkyQjYS1Zpnzj/PpfgIctgL5xkO032H6dCOt6YvPd+
	TLznQ8SqfdeTJ6O8TdlqLfBMT0kvkLAiNZgqKCBZ3G6tEDbcE2RyuKhXwHphBYaPvlxP3MDq+yQ6J
	E8wZ287NZH4geTSugSNaxQwu650LODd3n2pARrlZxrcVKuPFUPiD3mecx6FyVMj1TlXBgfZzDMVZW
	AMFdau+Wgk7NpoUpOplTmyMGxMD+Xjz/T2ibury+r0YZT3w8c28N05L+J3in2XLj3o/hHuZd2uTWe
	+64yE88YN1D0odpO1upQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scTNf-0000000C3nB-3qw4;
	Fri, 09 Aug 2024 17:26:23 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scTNT-0000000C3lR-3tOm;
	Fri, 09 Aug 2024 17:26:13 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1723224360; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=iQBBvpC8vMJ99e7tPEJeC1lrhmU+/jexmlTqOoZ+995lMWieOIKa/s5uDT9qXsjWf8zbCmSTshziCVldb3YGDNMPxPMCC0CxD2wiBS8K25JTJrCAXZwkk4g5S9llOyHhQ3ieDE5XPC2cv/hU9G/MRT0893l3SFiUXLzMRBYzXHk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1723224360; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=MlUROrStYAoAJMglAHXmhXbY9RBE077SVTGfqsg6ysY=; 
	b=R/1KB4AjFWPrhfm0PTCJmc1udbrhIScvCEelUDcMcAN+K95GEIVQe3Mef0ESN7xBXHeUo8BemfLOUk58A4+TPj1NrlynxjrdunusR6icUouuOE6cQwUCl5q8WOv+nfFz62/zRas73EE9RVYdmW2MbubJwl4hSet+q++ohPR8phs=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1723224360;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=MlUROrStYAoAJMglAHXmhXbY9RBE077SVTGfqsg6ysY=;
	b=Hi/QJeSMAgrDib/xF0r0jqeTdhA/dx5DYQRYIqiN/kKk+tEj7N40lK5lSGQbz/I7
	xHJcJty4BTWS/oGygqhUnh38BJdmcvM0nZI5oLrGMTqTSxWYIcylKqxhckllaCcdZsc
	KbfRapariThTbf4Rm3Wung1JlRuwJyV/mMimDmNY=
Received: by mx.zohomail.com with SMTPS id 1723224359034870.4612231906191;
	Fri, 9 Aug 2024 10:25:59 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: Conor Dooley <conor@kernel.org>
Cc: linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Ulf Hansson <ulf.hansson@linaro.org>,
 Finley Xiao <finley.xiao@rock-chips.com>, Jagan Teki <jagan@edgeble.ai>,
 Arnd Bergmann <arnd@arndb.de>, Elaine Zhang <zhangqing@rock-chips.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org,
 kernel@collabora.com
Subject: Re: [PATCH v2 1/2] dt-bindings: power: Add support for RK3576 SoC
Date: Fri, 09 Aug 2024 13:27:18 -0400
Message-ID: <2276665.iZASKD2KPV@trenzalore>
In-Reply-To: <20240809-constant-oxidize-8aed145179c7@spud>
References: <20240808163451.80750-1-detlev.casanova@collabora.com>
 <20240808163451.80750-2-detlev.casanova@collabora.com>
 <20240809-constant-oxidize-8aed145179c7@spud>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240809_102612_065375_11571509 
X-CRM114-Status: GOOD (  20.68  )
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

On Friday, 9 August 2024 10:59:58 EDT Conor Dooley wrote:
> On Thu, Aug 08, 2024 at 12:31:04PM -0400, Detlev Casanova wrote:
> > From: Finley Xiao <finley.xiao@rock-chips.com>
> > 
> > Define power domain IDs as described in the TRM and add compatible for
> > rockchip,rk3576-power-controller
> > 
> > Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> > [reword, add yaml]
> 
> To be honest, both here and in your other patch, you should remove this
> [] section and add a co-develop-ed-by instead.

That seems to be used quite often though, I like how it gives an idea of what 
has been adapted from downstream patches.

> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> 
> > Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> > ---
> > 
> >  .../power/rockchip,power-controller.yaml      |  1 +
> >  .../dt-bindings/power/rockchip,rk3576-power.h | 30 +++++++++++++++++++
> >  2 files changed, 31 insertions(+)
> >  create mode 100644 include/dt-bindings/power/rockchip,rk3576-power.h
> > 
> > diff --git
> > a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
> > b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
> > index 0d5e999a58f1b..650dc0aae6f51 100644
> > ---
> > a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
> > +++
> > b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml> 
> > @@ -41,6 +41,7 @@ properties:
> >        - rockchip,rk3368-power-controller
> >        - rockchip,rk3399-power-controller
> >        - rockchip,rk3568-power-controller
> > 
> > +      - rockchip,rk3576-power-controller
> > 
> >        - rockchip,rk3588-power-controller
> >        - rockchip,rv1126-power-controller
> > 
> > diff --git a/include/dt-bindings/power/rockchip,rk3576-power.h
> > b/include/dt-bindings/power/rockchip,rk3576-power.h new file mode 100644
> > index 0000000000000..324a056aa8512
> > --- /dev/null
> > +++ b/include/dt-bindings/power/rockchip,rk3576-power.h
> > @@ -0,0 +1,30 @@
> > +/* SPDX-License-Identifier: (GPL-2.0 OR MIT) */
> > +#ifndef __DT_BINDINGS_POWER_RK3576_POWER_H__
> > +#define __DT_BINDINGS_POWER_RK3576_POWER_H__
> > +
> > +/* VD_NPU */
> > +#define RK3576_PD_NPU		0
> > +#define RK3576_PD_NPUTOP	1
> > +#define RK3576_PD_NPU0		2
> > +#define RK3576_PD_NPU1		3
> > +
> > +/* VD_GPU */
> > +#define RK3576_PD_GPU		4
> > +
> > +/* VD_LOGIC */
> > +#define RK3576_PD_NVM		5
> > +#define RK3576_PD_SDGMAC	6
> > +#define RK3576_PD_USB		7
> > +#define RK3576_PD_PHP		8
> > +#define RK3576_PD_SUBPHP	9
> > +#define RK3576_PD_AUDIO		10
> > +#define RK3576_PD_VEPU0		11
> > +#define RK3576_PD_VEPU1		12
> > +#define RK3576_PD_VPU		13
> > +#define RK3576_PD_VDEC		14
> > +#define RK3576_PD_VI		15
> > +#define RK3576_PD_VO0		16
> > +#define RK3576_PD_VO1		17
> > +#define RK3576_PD_VOP		18
> > +
> > +#endif





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
