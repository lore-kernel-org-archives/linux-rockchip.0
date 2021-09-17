Return-Path: <SRS0=N4HT=OH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0A19C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Sep 2021 01:31:41 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 843D960EE0
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Sep 2021 01:31:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 843D960EE0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KPCc/kDovrn3waPmxVAjUBLEqHqdcQ6MgMnlr2Yk8YM=; b=WtFhDtAhM4WjMu
	BIpl5hno4vE+1LD+KwT90t3dR1gEwNWPfW1rdgTtwHGXVSNPmopoeGxugLYxxO6OqPZ5ZmhF4blMW
	YnCUtQYYvFupHyWG+6xH3THzQ7SwVq5rESYTI+Vc75s3GoU4mpr0MYmirMc4DXd/Eo/nk51PEAGUQ
	yVOF4N/C0WgiPLlmsyY0jXufpvMvYA/JtksnE3bTNPbzkH8Fuwe4bkENNFCZEu3/iTpDH33xK6ktt
	1q+9hOmtpnP1f52nGXnfGQcFbtoZ+vIWt0Kx/4eRfVNah/x0RVnPWQaITYnUUB6a0BjvAagX68/wp
	iDsCpw6NFkWDdA5N2atg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mR2j1-00CtLv-Gd; Fri, 17 Sep 2021 01:31:35 +0000
Received: from mail-oi1-x230.google.com ([2607:f8b0:4864:20::230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mR2iy-00CtLQ-FJ
 for linux-rockchip@lists.infradead.org; Fri, 17 Sep 2021 01:31:34 +0000
Received: by mail-oi1-x230.google.com with SMTP id w206so110843oiw.4
 for <linux-rockchip@lists.infradead.org>; Thu, 16 Sep 2021 18:31:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=f57u0A/QcXB9Uc7ywKqPgF1+a3SXXQ/NQC+jmV4WsJI=;
 b=UszOX13r//yuKwayXPHevyhJm1/hLmvOOlm99g/9vqe6EU0P7RwfzzZjeXwfg2E7cM
 aEfy2fMwutqjNxv8ZwPhKvafBceGe9ve8lKqS5Ak75rdUYALNmcGICwM6gYLeC5hUi0x
 mTwrrpIU49RA+D2nWnKJ8QDpKxK9uUaijmjX0Po1LE1HwIqaH/UJ4NCaWVCUA6BzKuLV
 2hvoSLGkKICFQ8y/uZUWPms1X+Rc+Nk4KT8cvVplPjyB49rPEcoqd+U8QQ5v+V2tyChx
 k02lHdDAoYjmhrSQ5PXYZoywNJYYmY2sXNAcoyH/m8nkXL9/uBTPHoqKk5R5g/vg9Tr4
 N/Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=f57u0A/QcXB9Uc7ywKqPgF1+a3SXXQ/NQC+jmV4WsJI=;
 b=aSAqcu3luwO2B8Dp2bvnEtazkjzTS+WXo9sWOOQ1wjaRhtGB1QadZRotBj/w5GoJup
 WJB8gaVC/BgpZMnwcxl3hPzwouTV9diLCvwhiVmI1vGQPuJv9kssu1FUq7cWJyLq5u4p
 OkEJSO25EqiSn2xv73nI1lFkizPlfmi+g4JJKDyr05IwrUY21piAN9tQb+DHrKmJk9fl
 OVFvqvBHKQkUJZ2GYkaVahNC9nVBnH7jgPLW2sDCiZkQ73ExeNBFBUeZZ/tFnsaRQcdk
 ZkZKy76M9QtuhHpQNvWkJTfKBEF1XUWV6nSW2x73QhvppMGCKfWCoEINB22xOUlQH0Bf
 hSSw==
X-Gm-Message-State: AOAM5319xXaQRhrHOYdGWATHt7E7CyOo/iyTMqqP8BTymuS5ZDB5g236
 FOodMagMLpGmDYjz6+8/XfbK700bn1I=
X-Google-Smtp-Source: ABdhPJzPE8xeK6Qls1N3K85Pd7QO4u+kZK6xIKc89ErochxrBtGoWHHXThQ+A/nsdOSkD3GemQvcAg==
X-Received: by 2002:a54:4589:: with SMTP id z9mr11266921oib.22.1631842291380; 
 Thu, 16 Sep 2021 18:31:31 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id w9sm1103518oti.35.2021.09.16.18.31.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Sep 2021 18:31:30 -0700 (PDT)
Date: Thu, 16 Sep 2021 20:31:28 -0500
From: Chris Morgan <macroalpha82@gmail.com>
To: Rob Herring <robh@kernel.org>
Cc: lee.jones@linaro.org, Chris Morgan <macromorgan@hotmail.com>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 zyw@rock-chips.com, zhangqing@rock-chips.com, heiko@sntech.de,
 robh+dt@kernel.org
Subject: Re: [PATCH v2] dt-bindings: mfd: rk808: Convert bindings to yaml
Message-ID: <20210917013128.GA19894@wintermute.localdomain>
References: <20210916201947.18237-1-macroalpha82@gmail.com>
 <1631839746.891478.1484029.nullmailer@robh.at.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1631839746.891478.1484029.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210916_183132_586154_40A49336 
X-CRM114-Status: GOOD (  36.00  )
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

On Thu, Sep 16, 2021 at 07:49:06PM -0500, Rob Herring wrote:
> On Thu, 16 Sep 2021 15:19:47 -0500, Chris Morgan wrote:
> > From: Chris Morgan <macromorgan@hotmail.com>
> > 
> > Convert the rk808 bindings into yaml format. Please note that currently
> > there are a few errors that appear when performing a make dtbs_check.
> > However, after looking at the errors it appears in most cases it occurs
> > on device trees which are not following the current rk808.txt document
> > today. For example for the rk808 there are multiple errors regarding
> > vcc13-supply, vcc14-supply, and vddio-supply; however these supplies
> > are not listed in the current driver or cared for in any way.
> > 
> > For the moment the rk817 is the only MFD that will support a battery.
> > I believe the rk818 also supports a batter but I do not have one to
> > test or write the code for. When it is supported we can split off
> > the battery to its own document. Note that the battery is being added
> > in a separate commit series.
> > 
> > Changes from V1:
> > 
> >  - Removed generic descriptions.
> >  - Added maxItems to clock-output-names. Max items is 2 per the driver.
> >  - Added unevaluatedProperties as false to regulators.
> >  - Correct i2c node.
> >  - Added note about the battery.
> > 
> > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > ---
> >  .../devicetree/bindings/mfd/rk808.txt         | 465 ------------------
> >  .../bindings/mfd/rockchip,rk805.yaml          |  84 ++++
> >  .../bindings/mfd/rockchip,rk808.yaml          | 253 ++++++++++
> >  .../bindings/mfd/rockchip,rk809.yaml          |  98 ++++
> >  .../bindings/mfd/rockchip,rk817.yaml          | 362 ++++++++++++++
> >  .../bindings/mfd/rockchip,rk818.yaml          | 106 ++++
> >  6 files changed, 903 insertions(+), 465 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/mfd/rk808.txt
> >  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
> >  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
> >  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
> >  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
> >  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml
> > 
> 
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mfd/rockchip,rk808.example.dt.yaml: pmic@1b: 'vddio-supply' does not match any of the regexes: 'pinctrl-[0-9]+'
> 	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
> 
> doc reference errors (make refcheckdocs):
> Documentation/devicetree/bindings/pinctrl/pinctrl-rk805.txt: Documentation/devicetree/bindings/mfd/rk808.txt
> 
> See https://patchwork.ozlabs.org/patch/1529027
> 
> This check can fail if there are any dependencies. The base for a patch
> series is generally the most recent rc1.
> 
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
> 
> pip3 install dtschema --upgrade
> 
> Please check and re-submit.

What would be the best way to handle this? I can confirm that there
is no vddio cared for in the driver, however the datasheet appears
to show that one exists (vddio appears to be the supply for the
BUCK1 and BUCK2 DVS voltage). Should I update the yaml to reflect what
already exists today in the various device trees, should I only allow
what the driver cares for today, or should I "meet halfway" and allow
that which the datasheet permits (such as this) even if it's not
implemented in the driver? Note that there will also be some other
errors that are expected, because the existing device trees didn't
always follow the previous rk808.txt file (there is at least one board
with the wrong clock-cells value).

Thank you.

> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
