Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8142AC4332F
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Nov 2022 06:34:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=23ng9dA8pDiMcviKbz6abie1UtLhw9zT/Dv+Be4V9ds=; b=x8/EJposqQyxSF
	Z1+ns6BdztbBhtNjXEwquZTq8HFc7jMvRGTCZ4XJHasLLVAh94AA5hx0XUJineQUza0bZmzHnXOPB
	/XzYToRZLsxRUGJ/xKsBN6R+J2nrQ1yLnnk4Nf3LhHVw/SGLig93XEy9blM6PG6Zw7DhkubqnqDtt
	8n4B1Iy0LMFulQ6sljIz1517bfGhnlRmNyLxxUFnhWBs5E4LDnj5I3dAzowpw/W0vh+/ymHPIAp1H
	zq1Q+un+y2VmNgbhqVlPeWCpsI6UK9DtBe3wfHlMrqYr9jNBtu+1QcqHtuhGQit3A4nVoFfTkuIhK
	4nLKc1C2tNvLflJqlp9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1owHQM-00BfuA-Ho; Sat, 19 Nov 2022 06:33:58 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1owHQ9-00Bfqc-8Y; Sat, 19 Nov 2022 06:33:46 +0000
Received: from pyrite.rasen.tech (unknown [IPv6:2001:268:c210:aac1:54ed:fa5d:b703:111a])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 9B9D3749;
	Sat, 19 Nov 2022 07:33:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1668839623;
	bh=Ic82wUkZuLtGFavTFu6myb5mSBksTXz8qGgcf1Ma+h8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bpOhL2sbe2n0TAY0Pz5xQPEHawykiv47TbHLlg/aFa1G5QPNWo/aYpwHXckBE3q1e
	 WearvTYAR8U0LFWjLgjInOveUezMfJVX9h7zyxw3c7IVFe+cSPxtoHKlHXGQyDF1/D
	 KzqDs2OFuyB+h7xaje0m0LfffojbjlV04y96VOfo=
Date: Sat, 19 Nov 2022 15:33:32 +0900
From: Paul Elder <paul.elder@ideasonboard.com>
To: Rob Herring <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Helen Koike <helen.koike@collabora.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	linux-media@vger.kernel.org
Subject: Re: [PATCH v3 02/14] dt-bindings: media: rkisp1: Add i.MX8MP ISP
 example
Message-ID: <Y3h4vBWJRr7NkoPm@pyrite.rasen.tech>
References: <20221118093931.1284465-1-paul.elder@ideasonboard.com>
 <20221118093931.1284465-3-paul.elder@ideasonboard.com>
 <166877740033.1426068.13359373358036408238.robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <166877740033.1426068.13359373358036408238.robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221118_223345_468977_81891919 
X-CRM114-Status: GOOD (  20.91  )
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

On Fri, Nov 18, 2022 at 07:31:19AM -0600, Rob Herring wrote:
> 
> On Fri, 18 Nov 2022 18:39:19 +0900, Paul Elder wrote:
> > From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > 
> > Add an example to the rockchip-isp1 DT binding that showcases usage of
> > the parallel input of the ISP, connected to the CSI-2 receiver internal
> > to the i.MX8MP.
> > 
> > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > ---
> >  .../bindings/media/rockchip-isp1.yaml         | 72 +++++++++++++++++++
> >  1 file changed, 72 insertions(+)
> > 
> 
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> Documentation/devicetree/bindings/media/rockchip-isp1.example.dts:199:18: fatal error: dt-bindings/media/video-interfaces.h: No such file or directory
>   199 |         #include <dt-bindings/media/video-interfaces.h>
>       |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> compilation terminated.
> make[1]: *** [scripts/Makefile.lib:406: Documentation/devicetree/bindings/media/rockchip-isp1.example.dtb] Error 1
> make[1]: *** Waiting for unfinished jobs....
> make: *** [Makefile:1492: dt_binding_check] Error 2
> 
> doc reference errors (make refcheckdocs):
> 
> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20221118093931.1284465-3-paul.elder@ideasonboard.com
> 
> This check can fail if there are any dependencies. The base for a patch
> series is generally the most recent rc1.

In the cover letter I mention:

"This series depends on v3 of "dt-bindings: media: Add macros for video
interface bus types" [1]."

[1] https://lore.kernel.org/linux-media/20220615221410.27459-2-laurent.pinchart@ideasonboard.com/


Paul

> 
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
> 
> pip3 install dtschema --upgrade
> 
> Please check and re-submit after running the above command.
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
