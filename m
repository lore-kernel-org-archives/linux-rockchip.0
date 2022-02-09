Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0B9CC433FE
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Feb 2022 16:28:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v32mApYVDXG8JEWhGszi06SAQyOzxETKAKq7G4yLSFw=; b=dEWoZDtzgDKMNH
	HZzZEi5TMXUvocLomuFH1yCQbF1mOG0hYes+CLw5ST8sEgwER7aJi18zFq+JlnASBNNOmfBh+i5J6
	5GXSKeIAp/PhdqACD6L3Rq5sHShTeaxhyNF8JsvQtg3JhoSJ27E2fL7VlLmoQaODgOg883AVBVrDZ
	mPJ1gmWGacN09rfO6QeQaAehPzd/CMx9FDRPfwa8Ne/0oEce7PAVJdS7F/thnQ7TDEybSTsXPb5GJ
	4uEh43Yb7sml5k0Z/9xp8sf7+DuO97XmDU3IMjWENQU93IDTArZ+fwmAzRMFrLw7dIUuD4EOgXOF2
	042mSvTEwL4r1fQ/CXtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHppT-000nlJ-2A; Wed, 09 Feb 2022 16:28:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHppF-000ngx-Bi; Wed, 09 Feb 2022 16:28:14 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nHpp8-0002r1-Gg; Wed, 09 Feb 2022 17:28:06 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
 Michael Riesch <michael.riesch@wolfvision.net>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org,
 Peter Geis <pgwipeout@gmail.com>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, linux-kernel@vger.kernel.org,
 Liang Chen <cl@rock-chips.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, Alex Bee <knaerzche@gmail.com>,
 Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v5 1/5] dt-bindings: gpu: mali-bifrost: describe clocks
 for the rk356x gpu
Date: Wed, 09 Feb 2022 17:28:05 +0100
Message-ID: <3297396.uCXnvZdJcx@diego>
In-Reply-To: <01b78d95-fdf3-060a-831d-dae2abbc7109@wolfvision.net>
References: <20220209085110.3588035-1-michael.riesch@wolfvision.net>
 <1644420908.380944.391811.nullmailer@robh.at.kernel.org>
 <01b78d95-fdf3-060a-831d-dae2abbc7109@wolfvision.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_082813_439687_84DD49B5 
X-CRM114-Status: GOOD (  29.69  )
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

Hi Michael,

Am Mittwoch, 9. Februar 2022, 16:46:28 CET schrieb Michael Riesch:
> Hi Rob,
> 
> On 2/9/22 16:35, Rob Herring wrote:
> > On Wed, 09 Feb 2022 09:51:06 +0100, Michael Riesch wrote:
> >> From: Alex Bee <knaerzche@gmail.com>
> >>
> >> The Bifrost GPU in Rockchip RK356x SoCs has a core and a bus clock.
> >> Reflect this in the SoC specific part of the binding.
> >>
> >> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> >> [move the changes to the SoC section]
> >> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> >> ---
> >>  .../devicetree/bindings/gpu/arm,mali-bifrost.yaml | 15 +++++++++++++++
> >>  1 file changed, 15 insertions(+)
> >>
> > 
> > My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> > on your patch (DT_CHECKER_FLAGS is new in v5.13):
> > 
> > yamllint warnings/errors:
> > ./Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml:173:12: [warning] wrong indentation: expected 12 but found 11 (indentation)
> 
> D'oh! Sorry for the stupid mistake, I found that yamllint was indeed
> missing.
> 
> Lines 173 and 174 need an extra space. In the case that a v6 is required
> I'll fix this. But of course I wouldn't say no if this could be fixed
> when the patch is applied :-)

My guess is, Rob's bot filters out the easy wrongs, so I'm not sure if he
actually looks at these in person.

So doing a v6 might actually be better for a Review :-)


Heiko


> > 
> > dtschema/dtc warnings/errors:
> > 
> > doc reference errors (make refcheckdocs):
> > 
> > See https://patchwork.ozlabs.org/patch/1590238
> > 
> > This check can fail if there are any dependencies. The base for a patch
> > series is generally the most recent rc1.
> > 
> > If you already ran 'make dt_binding_check' and didn't see the above
> > error(s), then make sure 'yamllint' is installed and dt-schema is up to
> > date:
> > 
> > pip3 install dtschema --upgrade
> > 
> > Please check and re-submit.
> > 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
