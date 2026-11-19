Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54AD8606A332
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Nov 2026 19:12:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=fr+xd8lE;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=SxnitvcN
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=nGkHvITD2K8op61TbIn8ohu5Q6F9G52jsCsiVl+hXaw=; b=fr+xd8lEAJa01ix4gaFvEaEQJ1
	RBQTi6GOhqRvdGE/769nw6w7i8Om849hn1DWTb1u+sRaIAm6IBhYqxxsqOEAZXDmlVqeWGbmng15Y
	tQ8HUkFETRwWSjUz5yf+C6l39GDdpKe/z0j93ba+I1arv+aMK+9SF4zfQQykktCAGzdGgT9IUz46j
	MVDdJwzCMs9M/74KYIaXE/U+ITlbBuiM+rHGb4ASUhgqZI76ppqogCl2V7jTUWFusSh4V6Gnvn/u4
	DWSqLx7vfl2Y49q4nPVs6VNT9QgtGdV/jF+M+BcpT8jUxRsbCLui5BHim/4q75wAhKpSIDvP7U11s
	U5/yWWEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU7Yd-0000000DAl7-3578;
	Thu, 19 Nov 2026 19:12:31 +0000
Received: from mail-oa1-x29.google.com ([2001:4860:4864:20::29])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU7Ya-0000000DAkl-11oZ
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Nov 2026 19:12:30 +0000
Received: by mail-oa1-x29.google.com with SMTP id 586e51a60fabf-4932b13c4ccso84866fac.3
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Nov 2026 11:12:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795115547; x=1795720347; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=cPRlIWoU3nedg5UMks9BflBLw1pyZb+IzsqBpWtRPsw=;
        b=SxnitvcN5MNq1kxLthMtVrYoAyOAvkAjCIaT+9v1XtZK/ZqeGPR8SIPhczCsG7YmRy
         8kGiIWUWCrzSYcaamdgAw4Ez2RmYMiyx5OfC9nIKZID+PYpwk6y68uW+hDpgVNgx/1YW
         jMVEKlAHc/YwOPjGhawN0rfKyfNjBqfmeuI9hf9BwWh4+xCvpmKeXeB+F23byAkXcDbC
         +UWP/Bwf1QPxIBjnu5UJJiodMVFa86TairVVCjGc1N3Tm1Af74VPG0LTiESv9AZtWWAX
         nowqviMlY/kDbh+ommobD0F4GpUqUefTtL5Oee5VBxm1HwEBwKkeL7sC4Ob8PTt5ZdWb
         PkVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795115547; x=1795720347;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=cPRlIWoU3nedg5UMks9BflBLw1pyZb+IzsqBpWtRPsw=;
        b=oc3v5V5CAwM8JAz5FIg4dqfLU80TKnU4K9O8qFT/vWCauP1hKlVWeXmPyW5hc93CHD
         jtIORYmUYBUkFU+a+746WAGlX9Z++LEFMRVwwW1qlJUGZxRTgw+Wscpe4s+SGE35kpyY
         12SBbBXXIu7ZMans52Ne1m2GqqgCDHF36NhpfnG142FxEY1ZIiDbrpEFpHoEzpJSKL4t
         1x7lhinpj5b03GKklnOfohZBdG6Vx9NwmYFI/4nzObwxpuMCFFOmLed2MNjZhxJRPWc7
         P1plhSuJAT7ft7UoP4BoBjMMHpdITrKIBp4MmnYRRAa7TjPHBlyk+KHcEL2KJiihI2sC
         DSmw==
X-Forwarded-Encrypted: i=1; AL+hErF0jk8qQgffUw+0wC0ukJY+dFgupvEXRbHFD3XJNVmzbNVyA58bFbss576q4Vrx00WxbCVzYsjlF9GA6Av5Eg==@lists.infradead.org
X-Gm-Message-State: APuU4Z8J9ZaUD+BpIdw5s4GLUVtNQhRhOONNHZ9/j+egZUWqpGtHYZW8
	OSw1yBxYdDbPWVVFFzZXR+G+R+OjKInG1Uby+H7QnHAcrAvc+bQucH3q
X-Gm-Gg: AYBFou2fOs2veNMIo8nI5LLvednnb/u0Fwa4QxkQru+LX1ytOKd4OIAq3aOFiSsMIgl
	TAT2McT3TRAxuBxuxhHax4gZcydRVPO+HKdSzhQlCZCGUd8I3XKOtQDE0ETNZt/XFqrd/9a6pAL
	hZBFTVx9qBcFJ3hVpcU6jza4hHiClZnU8ybhmZO4c8xUkFRUut3S98O/XIINdwHAT7es8wjYuA7
	Ex9Q/J74QRw3FTg9VYn2n947mgQmU1mEzu4nqSiMIqXo9gqh5aknKWb+PMYRR6ivHfPqEBTd6oZ
	Qyy7QkBEfvl28gPrInsvwEghbsEpfjIUO1KoArlFjEYV0Q2Q1O+fzOG80GB9aS1TWk4ejAd+2dg
	yi12/PVsxQRXGhvYsP0Pz63oQ/lSse6vipAAG/lK75lejx60gmQ7qQnwKbsp35RkSrJOgh5qTtX
	1c6f6MRBZV4h1FbMZwWUALp3NJByQEEqXrUFIhbjnvXF70iL9ot7KGPU8/s+MhyeXPiT3hRI1/k
	AV0DTtFhdbSkrhioKEoLl3rzOsLkCRvV3MoCu2hfjbfkzFbt86PJ0DMjYTlvlBaNYdgw6CovHiw
	VkS8PpAl9TpD5FvLdv3o+w58k3lFPbgt6NJwXvOtlj2I4g==
X-Received: by 2002:a05:6808:c3d2:b0:4e9:3412:14ac with SMTP id 5614622812f47-57a0af3421bmr1094077b6e.33.1795115546794;
        Thu, 19 Nov 2026 11:12:26 -0800 (PST)
Received: from neuromancer.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-57a347636b9sm223450b6e.7.2026.11.19.11.12.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Nov 2026 11:12:26 -0800 (PST)
Date: Thu, 19 Nov 2026 13:12:24 -0600
From: Chris Morgan <macroalpha82@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org, heiko@sntech.de,
	conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
	sre@kernel.org, t.schramm@manjaro.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: power: cw2015: add cw2215, cw2217, and
 cw2218
Message-ID: <av9KGG70s_UAkKJO@neuromancer.localdomain>
References: <20261027131751.1724448-1-macroalpha82@gmail.com>
 <20261027131751.1724448-2-macroalpha82@gmail.com>
 <83695285-207e-4d0f-ada0-2273953e2eb9@kernel.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <83695285-207e-4d0f-ada0-2273953e2eb9@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261119_111229_055427_6BEC15E3 
X-CRM114-Status: GOOD (  20.81  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Tue, Oct 27, 2026 at 04:57:12PM +0100, Krzysztof Kozlowski wrote:
> On 27/10/2026 14:17, Chris Morgan wrote:
> >  
> > -allOf:
> > -  - $ref: power-supply.yaml#
> > -
> >  properties:
> >    compatible:
> > -    const: cellwise,cw2015
> > +    enum:
> > +      - cellwise,cw2015
> > +      - cellwise,cw2215
> > +      - cellwise,cw2217
> > +      - cellwise,cw2218
> >  
> >    reg:
> >      maxItems: 1
> > @@ -31,8 +32,6 @@ properties:
> >        it is to mail two batteries to a test facility of CellWise and receive
> >        back a test report with the binary blob.
> >      $ref: /schemas/types.yaml#/definitions/uint8-array
> > -    minItems: 64
> > -    maxItems: 64
> 
> This needs min/maxItems constraints.

I'm removing the constraints here and pushing it down below where there is
logic based on the compatible string. For the new cellwise,cw2217 the
constraint is 80, while the constraint remains 64 for other implementations.

> 
> >  
> >    cellwise,monitor-interval-ms:
> >      description:
> > @@ -41,7 +40,14 @@ properties:
> >  
> >    power-supplies:
> >      minItems: 1
> > -    maxItems: 8 # Should be enough
> > +    maxItems: 8  # Should be enough
> 
> Why changing? yamllint complained?
> 

Yes, it did. Should I not fix it and ignore yamllint (since I'm not
actually modifying this line)?

> > +
> > +  shunt-resistor-micro-ohms:
> > +    description: |
> 
> Do not need '|' unless you need to preserve formatting.

Understood, thank you.

> 
> > +      The value, in micro-ohms, of the shunt resistor used for sampling
> > +      the battery current.
> > +    minimum: 1000000
> > +    maximum: 50000000
> >  
> >    monitored-battery: true
> >  
> > @@ -49,6 +55,28 @@ required:
> >    - compatible
> >    - reg
> >  
> > +allOf:
> > +  - $ref: power-supply.yaml#
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - cellwise,cw2015
> > +    then:
> > +      properties:
> > +        shunt-resistor-micro-ohms: false
> > +
> > +        cellwise,battery-profile:
> > +          minItems: 64
> > +          maxItems: 64
> > +
> > +    else:
> > +      properties:
> > +        cellwise,battery-profile:
> > +          minItems: 80
> > +          maxItems: 80
> 
> default for shunt-resistor-micro-ohms? or is it required for new devices?

I'll add a default, since there is a default value in the driver.

> 
> 
> Best regards,
> Krzysztof
> 

Thank you,
Chris

> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
