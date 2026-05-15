Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25AB0CD4F25
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 May 2026 14:15:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9xj+6auGRKnfRN6yY7gTPOWx0y14XRLrLH1QBnmOWUw=; b=Pee4j9P2Q2p//P
	aV8fAYVYMDJuC6e9eKGbj9FFenYXdFkVfEg7eE93v6+7+/ILbeU7cCvB60brvUcQZ9GT8fDWKMsml
	txVRxFmKGBkl2Wvx48ExfsjI6bKPGgw1tZ0zqUNSNXNPBUy1ATjQwdRhr9FL1QzKECT7It8wBoULG
	VPRtI6n1oHzFkWgKNtfgBUL7X/d2YzGQ/cDxbBgkzovLpAyQQ7vkQCGvW+d7aWWqlqMfQunof1RPw
	OJGBMoHFk5dq1EKpxSCJ8vd3IuUe0chUYIMgUd87Aq3rMCSujbyjknho5J0fwiOnqOg4JpppEa9w2
	GS5daJYtO0E7+dD2Y3mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNtKF-00000008Y6J-1TRh;
	Fri, 15 May 2026 14:15:39 +0000
Received: from mail-oi1-x233.google.com ([2607:f8b0:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNtKD-00000008Y5Y-15bU
	for linux-rockchip@lists.infradead.org;
	Fri, 15 May 2026 14:15:38 +0000
Received: by mail-oi1-x233.google.com with SMTP id 5614622812f47-479dd56d016so6957059b6e.3
        for <linux-rockchip@lists.infradead.org>; Fri, 15 May 2026 07:15:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778854536; x=1779459336; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=X3Ba1jDpFlV6BYps4ROIqTWMi/TLCycbOgGvzvGmAoI=;
        b=bSCjuJZqPI72H+/uUq7ZkY/4DkKQWILed2RYffpUOCG+noqmYkSIhazKqZq2T9xvJ1
         1g7CM0cI1oa9yDw30jVflNBZOeJtHwVGtiYreGcqx7+g+0Ngx+b3TrsHHqGk1WTCW+oy
         PKfG1pnklJzfcrzboOa89SRX6gbDOgbzGsAf8ow0nmV1jMFGj9TVOfiOpeTJEIVCDDJX
         dfOp/A9C/H07O0TjLgMRHtBksyPIXTGyqseAV2Mb6PicgjOkZCpjI3R7IRqDzpjN+XMV
         nXKdZay+2mSkkVajDHGv59Y+suHJkdARSd0ub8cbaTUCnqhMQgMFBf31SANpLmTaX63H
         Y+Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778854536; x=1779459336;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X3Ba1jDpFlV6BYps4ROIqTWMi/TLCycbOgGvzvGmAoI=;
        b=r/RmlYflbgOgf+aiv3zlPdDdICXtSDW0SwkH8hR+emKeiQmor71jtA0rSeJN4FzCXV
         xmeL49S7G+iGVGYjAUZ7QHtGe12+MuUKSGcFjniUxtydCiGjvRXzWEHdWf/AMg6Yx5Rg
         bG0Jr0i/fXOnOG2GC/Ekxp1mc8CJq3dgAXq+slAkOxqkJYCPleUm0StNQB+zXGuQVCDt
         u/ok1y9ogP60cAYbUgiBpgJB5q2dRiWAlAkcnDcwpaZWgS+/jbRrc4O1hbSZuOc4K+i1
         16iWE85QRBR1G0myjXtj//X/dN9cHmcwRhQ+g9t/VkCxpZNFYUgRmNObfYW4kaxfw9F2
         pNmg==
X-Forwarded-Encrypted: i=1; AFNElJ8T2BQz+wWMJFMQExfg8H7qegqvsdrfEnxzMe6Y/EfqpZAiDaXBY8n1F2ayh2I1m1QXKMBsAH+k3E8AsqQDiQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzfOAdP5RarXbEu0SwdLzOfi0Oh3yMMDZo2Lg0YZ/WNzbS3ROAd
	fKfPK3Gv72E84OOZJ2T1yBLJdAN0ugiDBX0V6pvWLFEVmvb8L7XKeHgZ
X-Gm-Gg: Acq92OFWWlBnvMa3X6U4/l3CB+7lLHzyk1QyT+3BUWnBKjzUgRcqcCxrEs0AFjjMAO/
	l4xuzIfEtPxUAXW2d+7kL8Mlud4g1dX08Ci04eprOKYkVuTcAk2p3uNGfWYB3l9Wcg9GhE5qHzp
	29Qjkm5zsudGHz3kczx3EAZo1qeUr/IsMYcn8PTbZVLm58n68J+p36jGX/8g/ewiOfOsJakTpBy
	32axolUHXIXY7c0LpGXSwSJugf0ir1WtTS6wG38Grfq+P3eiucrDIguTABerxODqUD3dq/+629l
	24zEztPkoDcpU7xDW+EfcMae5B3FCL/udDpCpFNBux2cj+SCNBJA/ots9UGaQupbAofMLhWpX3z
	Amu1sGA28mGNDdBgEoQo6gndJSy2OV/GnF4iA1ul1k1qskKtSCgzt6BJOYugUAgN2unVZ56of3A
	4QY91Mxu20BB/39j2EIY+owkRheoMMFlK6dwm6wzMzhDIH
X-Received: by 2002:a05:6808:1982:b0:467:2a6e:adb3 with SMTP id 5614622812f47-482e5729bb3mr2592192b6e.23.1778854535958;
        Fri, 15 May 2026 07:15:35 -0700 (PDT)
Received: from neuromancer.localdomain ([2600:1700:fb0:1bc0:8c2e:6a8e:445a:9169])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-482ee38a5ecsm876341b6e.7.2026.05.15.07.15.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 May 2026 07:15:35 -0700 (PDT)
Date: Fri, 15 May 2026 09:15:33 -0500
From: Chris Morgan <macroalpha82@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Chris Morgan <macromorgan@hotmail.com>,
	linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	xsf@rock-chips.com, sre@kernel.org, simona@ffwll.ch,
	airlied@gmail.com, tzimmermann@suse.de, mripard@kernel.org,
	maarten.lankhorst@linux.intel.com, jesszhan0024@gmail.com,
	neil.armstrong@linaro.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org
Subject: Re: [PATCH 1/6] dt-bindings: power: supply: sgm41542: document
 sgm41542
Message-ID: <agcqhTCtrerKplSD@neuromancer.localdomain>
References: <20260427170914.5062-1-macroalpha82@gmail.com>
 <20260427170914.5062-2-macroalpha82@gmail.com>
 <20260428-bulky-nebulous-reindeer-ed45ed@quoll>
 <PH0PR19MB997338F0B06B7B99AA0ED3C6C4A5372@PH0PR19MB997338.namprd19.prod.outlook.com>
 <534f0795-0002-4c04-a83c-fa1b3ce68216@kernel.org>
 <PH0PR19MB99733813E0295B511539050BA9A5372@PH0PR19MB997338.namprd19.prod.outlook.com>
 <20260429-boisterous-cyber-hyena-ce870a@quoll>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260429-boisterous-cyber-hyena-ce870a@quoll>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_071537_312201_4E8196F5 
X-CRM114-Status: GOOD (  37.04  )
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

On Wed, Apr 29, 2026 at 01:58:22PM +0200, Krzysztof Kozlowski wrote:
> On Tue, Apr 28, 2026 at 02:54:53PM -0500, Chris Morgan wrote:
> > On Tue, Apr 28, 2026 at 05:09:49PM +0200, Krzysztof Kozlowski wrote:
> > > On 28/04/2026 16:09, Chris Morgan wrote:
> > > > On Tue, Apr 28, 2026 at 09:47:00AM +0200, Krzysztof Kozlowski wrote:
> > > >> On Mon, Apr 27, 2026 at 12:09:09PM -0500, Chris Morgan wrote:
> > > >>> From: Chris Morgan <macromorgan@hotmail.com>
> > > >>>
> > > >>> Document the SG Micro sgm41542 battery charger/boost converter.
> > > >>>
> > > >>> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > > >>> ---
> > > >>>  .../supply/sgmicro,sgm41542-charger.yaml      | 99 +++++++++++++++++++
> > > >>>  1 file changed, 99 insertions(+)
> > > >>>  create mode 100644 Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542-charger.yaml
> > > >>>
> > > >>> diff --git a/Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542-charger.yaml b/Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542-charger.yaml
> > > >>> new file mode 100644
> > > >>> index 000000000000..3e5041e5b551
> > > >>> --- /dev/null
> > > >>> +++ b/Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542-charger.yaml
> > > >>
> > > >> Filename must match compatible.
> > > > 
> > > > Acknowledged.
> > > > 
> > > >>
> > > >>> @@ -0,0 +1,99 @@
> > > >>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > >>> +%YAML 1.2
> > > >>> +---
> > > >>> +$id: http://devicetree.org/schemas/power/supply/sgmicro,sgm41542-charger.yaml#
> > > >>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > >>> +
> > > >>> +title: SGM41542 Battery Charger
> > > >>> +
> > > >>> +description: |
> > > >>
> > > >> Do not need '|' unless you need to preserve formatting.
> > > >>
> > > > 
> > > > Will fix.
> > > > 
> > > >>> +  The SGMicro SGM41542 is a single cell battery charger/boost controller.
> > > >>> +
> > > >>> +maintainers:
> > > >>> +  - Chris Morgan <macromorgan@hotmail.com>
> > > >>> +  - Xu Shengfei <xsf@rock-chips.com>
> > > >>> +
> > > >>> +properties:
> > > >>> +  compatible:
> > > >>> +    const: sgmicro,sgm41542
> > > >>> +
> > > >>> +  input-current-limit-microamp:
> > > >>
> > > >> Missing vendor prefix.
> > > >>
> > > > 
> > > > This *appears* to be a standard value (perhaps not formally, but in use by
> > > > enough devices to suggest a defacto standard), which is why I did not use
> > > > the vendor prefix here. Do I need to add that for this one?
> > > 
> > > I know, I found these other properties but I think they were just coming
> > > from old schema.
> > > 
> > > If it is really a common property, then should be defined in a common
> > > schema and this did not happen.
> > 
> > Would now be a good time to add it to the power-supply.yaml document?
> > It looks like this value is used by about 10 other devices.
> 
> I have mixed feelings. Adding it there would mean that all schemas using
> unevaluatedProperties will get that property. That suggests they have
> such limiting ability in hardware or this ABI is implemented in some
> generic part of the kernel.
> 
> None of these are true, I think.
> 
> Maybe we need some documented guidance on usage of common schemas.
> 
> Best regards,
> Krzysztof

Would you recommend I just use the vendor prefix then here? Or add this
to power supply as an option? Or is there a 3rd option you would like
for me to pursue?

Thank you,
Chris

> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
