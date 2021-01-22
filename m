Return-Path: <SRS0=to3J=GZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 687A3C433E0
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Jan 2021 15:55:15 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0EA28221FF
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Jan 2021 15:55:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0EA28221FF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mNaFWTyK3VXkNRXOdR15602n91NT0f5ne6upZGSIcio=; b=2FLvGZT/ul0YORCzzUM50lfPE
	EhRBXEZvXwARJLpZezvI5sUYoyYprMIzsVO1R2OVtPNpkjg0DrM+qmOkwQ+1HmSdKb4QkWRjVX3x7
	eKtPCWHU9CirsWwTt4iP8BYTL6guwvRsv2BPZz8y7VF7yI3GFNDBQ3qIGiBDrgAlL11s4T3NSZXja
	0nDiU56jTXT3EKk9yydOSYdgknBakXW00/UtOK5vweWMxqpgCziMHqegidSlaCqNAxDdi/QB3wj5p
	jE8q17k6fYaWPJy4wODzUt/+qxjKRVL7tJ2JDwfVDLBCXdFxHlTPdLE2qupZX5CLJlcFj+SWr1YQV
	xad6rzSgg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l2ymF-0000ul-0Q; Fri, 22 Jan 2021 15:55:11 +0000
Received: from mail-ot1-f44.google.com ([209.85.210.44])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2ymB-0000uO-O2
 for linux-rockchip@lists.infradead.org; Fri, 22 Jan 2021 15:55:08 +0000
Received: by mail-ot1-f44.google.com with SMTP id k8so5476487otr.8
 for <linux-rockchip@lists.infradead.org>; Fri, 22 Jan 2021 07:55:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=b+Blmlo5/G343X4GJ/Rd6bvnggbhUWj/TZr//zejW8U=;
 b=E+THFF3RwvFDL2XkLqCo+3/mx7d9KkaiDYkZFv8HVRPKtwOidY9FeRUgnVfUo84lNn
 YtQpr5mi47DTXx5XVGpP0Wj/tktx1V2nvgfgr4M/+fJw510qQMQM+HGdvpo5GqhbaWHm
 oJlUvCPaw7KF0FUZZRdLjLYYps1d9avpc1YuK3IWjv25NcxsBcTJZCeVZjtSjHS2BkIx
 FAYdpJ9FW4l5sv8mZiR0DV+KKuqWoTdUi5Cq4NgIH6JNDFJrRMSgep6fjr5w+MKlswm8
 WDjSWL09TvMw+XbqQwksb4zNPgxSvXuWJiyW+V0yqaIXYzGxMzH7dwtGtTvi/j8pifui
 Kfkw==
X-Gm-Message-State: AOAM532b6VseAP1nFOTPKd4BFTf+dFw3DqvHwgBtD8KlAOT+ar8ZEAmF
 s0GOIapcyfApG86Ku3H6EA==
X-Google-Smtp-Source: ABdhPJyJqKvwJn/o/cYm8DTTbgPOgWIx77c0lSo5V9uwOCGEsJ1kcCpBGX5Hh5syHMjZTSUFVXb5RA==
X-Received: by 2002:a9d:66d1:: with SMTP id t17mr3651979otm.163.1611330905408; 
 Fri, 22 Jan 2021 07:55:05 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id j1sm1751786oiw.50.2021.01.22.07.55.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Jan 2021 07:55:04 -0800 (PST)
Received: (nullmailer pid 864183 invoked by uid 1000);
 Fri, 22 Jan 2021 15:55:03 -0000
Date: Fri, 22 Jan 2021 09:55:03 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: rockchip: Add DesignWare based PCIe
 controller
Message-ID: <20210122155503.GA860027@robh.at.kernel.org>
References: <20210120101554.241029-1-xxm@rock-chips.com>
 <3af70037-c05d-1759-2bae-41db1e8e2768@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3af70037-c05d-1759-2bae-41db1e8e2768@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210122_105507_860242_CE9D171F 
X-CRM114-Status: GOOD (  28.89  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Simon Xue <xxm@rock-chips.com>, linux-pci@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Jan 20, 2021 at 06:07:29PM +0100, Johan Jonker wrote:
> Hi Simon,
> 
> Thanks you for version 2.
> A few comments, have a look if it is useful or that you disagree.
> 
> This patch has no commit message. Add one in version 3.
> 
> Submit all patches in one batch with the same sort message ID to all
> maintainers including Heiko.
> 
> Heiko Stuebner <heiko@sntech.de>
> 
> Example message ID:
> 20210120101554.241029-1-xxm@rock-chips.com
> 
> /////
> 
> Included is a copy of the Rockchip pcie nodes in a sort of test.dts below.
> Could you confirm that the properties in that dts are the one that we
> can expect for Linux mainline and can base our YAML document on?
> 
> With rk3568-cru.h and rk3568-power.h manualy added we do some tests with
> the following commands:
> 
> make ARCH=arm64 dt_binding_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> 
> make ARCH=arm64 dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> 
> make ARCH=arm64 dtbs_check
> DT_SCHEMA_FILES=~/.local/lib/python3.5/site-packages/dtschema/schemas/pci/pci-bus.yaml
> 
> /////
> 
> Example notifications:
> 
> /arch/arm64/boot/dts/rockchip/test.dt.yaml: pcie@fe270000: reg: [[3,
> 3225419776, 0, 4194304], [0, 4263968768, 0, 65536]] is too long
> 
> /arch/arm64/boot/dts/rockchip/test.dt.yaml: pcie@fe270000: ranges:
> 'oneOf' conditional failed, one must be fixed:
> 
> Before you submit version 3 make sure that all warnings gone as much as
> possible.
> 
> On 1/20/21 11:15 AM, Simon Xue wrote:
> > Signed-off-by: Simon Xue <xxm@rock-chips.com>
> > ---
> >  .../bindings/pci/rockchip-dw-pcie.yaml        | 140 ++++++++++++++++++
> >  1 file changed, 140 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> > new file mode 100644
> > index 000000000000..9d3a57f5305e
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> > @@ -0,0 +1,140 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/pci/rockchip-dw-pcie.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: DesignWare based PCIe RC controller on Rockchip SoCs
> > +
> > +maintainers:
> > +  - Shawn Lin <shawn.lin@rock-chips.com>
> > +  - Simon Xue <xxm@rock-chips.com>
>      - Heiko Stuebner <heiko@sntech.de> ;)
> > +
> > +description: |+
> > +  RK3568 SoC PCIe host controller is based on the Synopsys DesignWare
> > +  PCIe IP and thus inherits all the common properties defined in
> > +  designware-pcie.txt.
> > +
> > +allOf:
> > +  - $ref: /schemas/pci/pci-bus.yaml#
> > +
> > +# We need a select here so we don't match all nodes with 'snps,dw-pcie'
> > +select:
> > +  properties:
> > +    compatible:
> > +      contains:
> > +        const: rockchip,rk3568-pcie
> > +  required:
> > +    - compatible
> > +
> > +properties:
> > +  compatible:
> 
> > +    item:
> 
>     items:
> 
> > +      - const: rockchip,rk3568-pcie
> > +      - const: snps,dw-pcie
> 
> Add empty line
> 
> > +  reg:    items:
>       - description:
>       - description:
> 
> Add some description for regs.
> 
> > +    maxItems: 1
> remove
> 
> This reg maxItems gives errors.
> 
> > +
> 
> > +  interrupt:
> interrupts:
>    items:
> 
> > +      - description: system information
> > +      - description: power management control
> > +      - description: PCIe message
> > +      - description: legacy interrupt
> > +      - description: error report
> > +
> > +  interrupt-names:
> > +    items:
> > +      - const: sys
> > +      - const: pmc
> > +      - const: msg

MSI? If so, use 'msi'. The DWC core will handle setting it up now.

> > +      - const: legacy
> > +      - const: err
> > +
> > +  clocks:
> > +    items:
> > +      - description: AHB clock for PCIe master
> > +      - description: AHB clock for PCIe slave
> > +      - description: AHB clock for PCIe dbi
> > +      - description: APB clock for PCIe
> > +      - description: Auxiliary clock for PCIe
> > +
> > +  clock-names:
> > +    items:
> > +      - const: aclk_mst
> > +      - const: aclk_slv
> > +      - const: aclk_dbi
> > +      - const: pclk
> > +      - const: aux
> > +
> > +  msi-map: true
> > +
> > +  power-domains:
> > +    maxItems: 1
> 
> /////
> These properties come from designware-pcie.txt
> Maybe add them here for now till there's a common yaml?
> 
>   num-ib-windows: number of inbound address translation windows
>   num-ob-windows: number of outbound address translation windows

These can be and are now detected at runtime.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
