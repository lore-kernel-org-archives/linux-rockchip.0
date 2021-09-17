Return-Path: <SRS0=N4HT=OH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 493CBC433FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Sep 2021 09:25:53 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 91FE4611C3
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Sep 2021 09:25:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 91FE4611C3
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4fMhVAXaN+cIol+1i+qTeQeOSMbkqVtHsJ+TEYneCRE=; b=sN17/w3N6gU3Lv
	G2/ir34cR1Do7+Q+zdC3SmNcZ//oJoX4Nm7DhoZeudaDgKlMGfXTHulsiuvJ/uqo7YUdMM9iXihjY
	caX49wb+hywZPHIKyHTI8/LFYhJZl8Xcj9jCMuWgeSfzcBLTXqBgQbH8T8lrcRM2zvr+15myarklT
	TZxzsG8TKPMNjQLvvHK1JziA0Yb5P/x1SLalGcpUCAUb5is9qAs68Wl1HfML/C7kviWcRwvRpkEMf
	tutZJ+uwtp+8tnaDJtflgPgnMDq1Ry48LdzsgJPer8AeaPrpVidYM29tqDTh5fbG5jNNbduF9DziS
	OT7zZmJKBnwDK0/0kbkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mRA7u-00Dcrg-I1; Fri, 17 Sep 2021 09:25:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mRA7r-00DcrF-7w
 for linux-rockchip@lists.infradead.org; Fri, 17 Sep 2021 09:25:44 +0000
Received: from ip5f5a6e92.dynamic.kabel-deutschland.de ([95.90.110.146]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mRA7l-0004kb-PP; Fri, 17 Sep 2021 11:25:37 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Chris Morgan <macroalpha82@gmail.com>
Cc: lee.jones@linaro.org, Chris Morgan <macromorgan@hotmail.com>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 zyw@rock-chips.com, zhangqing@rock-chips.com, robh+dt@kernel.org
Subject: Re: [PATCH v2] dt-bindings: mfd: rk808: Convert bindings to yaml
Date: Fri, 17 Sep 2021 11:25:36 +0200
Message-ID: <3328068.ev5ScgHGsB@diego>
In-Reply-To: <20210917013128.GA19894@wintermute.localdomain>
References: <20210916201947.18237-1-macroalpha82@gmail.com>
 <1631839746.891478.1484029.nullmailer@robh.at.kernel.org>
 <20210917013128.GA19894@wintermute.localdomain>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210917_022543_348525_028B92DE 
X-CRM114-Status: GOOD (  45.80  )
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

Hi Chris,

Am Freitag, 17. September 2021, 03:31:28 CEST schrieb Chris Morgan:
> On Thu, Sep 16, 2021 at 07:49:06PM -0500, Rob Herring wrote:
> > On Thu, 16 Sep 2021 15:19:47 -0500, Chris Morgan wrote:
> > > From: Chris Morgan <macromorgan@hotmail.com>
> > > 
> > > Convert the rk808 bindings into yaml format. Please note that currently
> > > there are a few errors that appear when performing a make dtbs_check.
> > > However, after looking at the errors it appears in most cases it occurs
> > > on device trees which are not following the current rk808.txt document
> > > today. For example for the rk808 there are multiple errors regarding
> > > vcc13-supply, vcc14-supply, and vddio-supply; however these supplies
> > > are not listed in the current driver or cared for in any way.
> > > 
> > > For the moment the rk817 is the only MFD that will support a battery.
> > > I believe the rk818 also supports a batter but I do not have one to
> > > test or write the code for. When it is supported we can split off
> > > the battery to its own document. Note that the battery is being added
> > > in a separate commit series.
> > > 
> > > Changes from V1:
> > > 
> > >  - Removed generic descriptions.
> > >  - Added maxItems to clock-output-names. Max items is 2 per the driver.
> > >  - Added unevaluatedProperties as false to regulators.
> > >  - Correct i2c node.
> > >  - Added note about the battery.
> > > 
> > > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > > ---
> > >  .../devicetree/bindings/mfd/rk808.txt         | 465 ------------------
> > >  .../bindings/mfd/rockchip,rk805.yaml          |  84 ++++
> > >  .../bindings/mfd/rockchip,rk808.yaml          | 253 ++++++++++
> > >  .../bindings/mfd/rockchip,rk809.yaml          |  98 ++++
> > >  .../bindings/mfd/rockchip,rk817.yaml          | 362 ++++++++++++++
> > >  .../bindings/mfd/rockchip,rk818.yaml          | 106 ++++
> > >  6 files changed, 903 insertions(+), 465 deletions(-)
> > >  delete mode 100644 Documentation/devicetree/bindings/mfd/rk808.txt
> > >  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
> > >  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
> > >  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
> > >  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
> > >  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml
> > > 
> > 
> > My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> > on your patch (DT_CHECKER_FLAGS is new in v5.13):
> > 
> > yamllint warnings/errors:
> > 
> > dtschema/dtc warnings/errors:
> > /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mfd/rockchip,rk808.example.dt.yaml: pmic@1b: 'vddio-supply' does not match any of the regexes: 'pinctrl-[0-9]+'
> > 	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
> > 
> > doc reference errors (make refcheckdocs):
> > Documentation/devicetree/bindings/pinctrl/pinctrl-rk805.txt: Documentation/devicetree/bindings/mfd/rk808.txt
> > 
> > See https://patchwork.ozlabs.org/patch/1529027
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
> 
> What would be the best way to handle this? I can confirm that there
> is no vddio cared for in the driver, however the datasheet appears
> to show that one exists (vddio appears to be the supply for the
> BUCK1 and BUCK2 DVS voltage). Should I update the yaml to reflect what
> already exists today in the various device trees, should I only allow
> what the driver cares for today, or should I "meet halfway" and allow
> that which the datasheet permits (such as this) even if it's not
> implemented in the driver? Note that there will also be some other
> errors that are expected, because the existing device trees didn't
> always follow the previous rk808.txt file (there is at least one board
> with the wrong clock-cells value).

For devicetree in general, the hardware is always the defining element.

So a Linux "implementation detail" does not matter for a dt-binding, but
instead it should always be what the hardware datasheet says.

So if there is a vddio supply specified, it should be in the binding.
I looked it up and vddio is the "digital i/o power supply" of the chip
itself, so should definitly be specified I think :-)

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
