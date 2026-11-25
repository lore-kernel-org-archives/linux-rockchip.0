Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7C2A606A31E
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2026 20:40:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ougFZ25P;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=vTXwCkwD
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=OQG5QlWd1WIA+4LrTUjLlhg/wNNEJsKOpoSrXtN1vpU=; b=ougFZ25PCpa6vyTXyyMsyvsw9Z
	/qgPOnETISyGSIgh9vCsBuyOziQhG2zgInvRGRYmXT/3I8vsaT+5E3SKUX7DQRwRRw9soS9lRrG4z
	vs29pHR+TMhLph7Qi1U5uHEYkdgivaG775/Ua+d8TrvCQIJwZ+Im79eqC4+9Wpoy6o7t3m+VeWs2w
	kgcOf+ALBznI5/sDh/W/ee8K7M9Yj218y0+9a+mZpn0uMRiXuFw+aqbq676OksKST2XNmHV9uimbi
	kkxjl0Hn9lhgsYRK0AGW20uo4Bc6LQ+dCphL1L1VierRrRehJi33eKr5u2CPrgtNjrk7dpzHnUFU5
	GLRP94LA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWJnI-0000000BIYf-1GJH;
	Wed, 25 Nov 2026 20:40:44 +0000
Received: from mail-ot1-x334.google.com ([2607:f8b0:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWJnF-0000000BIYE-1OV6
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Nov 2026 20:40:42 +0000
Received: by mail-ot1-x334.google.com with SMTP id 46e09a7af769-833e671ee9fso5564589a34.0
        for <linux-rockchip@lists.infradead.org>; Wed, 25 Nov 2026 12:40:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795639240; x=1796244040; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=8hi1KZiya0UHcnzPSX4a+krak37ozdn0IOzf8OkNJyc=;
        b=vTXwCkwDoe/N4594Rlz57uKrAnwZAT+KDqt2ExA5bMtWTrMwCDR4Q3FQPZljN0oPFK
         JZdPsjD1p/u9Mn0hxY0QbNjTC/IcazoXuFV2CQv8kE2zARRczYMqeOZXP1N/h17SGDxP
         8TW6KHqc5ONkfcd7UcTQ4i+pIwU99uSYCN6AgM+CwTuLhSXN6lx7hX5VuaSUrkT2CiXA
         ZM4H1G81rk6Qt0FGHoeDHuGNiquJBzfZA8JoS7SgUMeRVOZVwpveWKMSQH4J3bafhd34
         0yES+gSQh8J3crAq9RhWUwAeZSHKKiuMlOnc6y4+kW2NLugNNYD9iHzWMiDlXC1Rdlq/
         zeaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795639240; x=1796244040;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=8hi1KZiya0UHcnzPSX4a+krak37ozdn0IOzf8OkNJyc=;
        b=ItPxjkbxs0U0N2q3nQVlKFliVSKw0YsLTfnzeA8wADKdOswYATFu/HWOsYyWXaGO37
         lq/vY7IHQOl6gujTV1dTdiNS0J6ik0uwX+y4IRrbLN4NV1M4RF/VdWiot3gEm9/O0081
         Jnn4IRmdoUUJAeagPt0iJHzpZHoVBOFtJ9KngKzshQfevqGSl5mZF3HCcIH/kCjZL1Qj
         qRmVQw3MheExOT0fYeSCyXu95eSaQ8MZeVheM6zGsrSGxTGifZ8i5QgdfRsu077KJTGP
         CUzrxIq+wuaE/a6uhXZ1vFAroa6joHJEzs064MGEA1mfjdQsGhmApGZ1cVX7EJsi5I5R
         WNhQ==
X-Gm-Message-State: APuU4Z87zBdIaTa9WvxLezl+Zox2fnC6BZXLjmWS7y41u9x3oArqidg6
	4orE51eSwL6IQxfrkjFenj0PMvy5bzfP5bBOja7gqiAavPWNT2WZ9qIC
X-Gm-Gg: AZFdTZcNdjOLhuYTEhdAnJG6HGu2R6DT+xAs7aUOme13l2BDcL+RGg59GoiLaC6hLGx
	ChwpyGSAIV5PEHyEdHBpnmUJlQRv8YaIlWgh3MrQH7EehYDjHEnH+edMhxkk94S7Utlok2qhIrD
	JHj7VDCeSO+fkY+wCYcqVernFnSNjZvNCb18ovJUF3blO4vyppqZMF9IcM0foQwYHntyNDVKmOO
	9YJRgIdiLMOmcW2VG5IQvuLtOOKJ+QGlijXpJchaT9f4Gqr4J3svEKo1Lwu3kXmYPnPiPrQ04h+
	8sSFGegkpNbDCi/K7/jgOX/vgOZ9uLuVCirHmALOmTOwywwDqvYzSkALg8u1vC6Tcpj+qrBU7xL
	sapi9YDulkl72SzPcgLGuaKX0xonw5NcA1I4GY9v8uZ0ke7IiuJFOxlMTz7AZgu7u4q9tkYoRtV
	QUEvxguzVsk6jq2QIm8wUCxwnG3CA3d0oxposxNkxqfFE5Cr6ynDFV71zouC9UWjrsMyuDtmcdN
	S1P0h89HrAhnYebD2w2NQXIw7suX/gWTjOTxKBRqp6nOiqmGdXzPzqgPOmMpsMpCUcFAettDA45
	0+hIfPvdZycZ0GBCumHnq+0kaa4CJZRMKF9UiNn+kWqDlw==
X-Received: by 2002:a05:6830:4411:b0:862:bc33:da9d with SMTP id 46e09a7af769-86315939b41mr19156987a34.23.1795639239726;
        Wed, 25 Nov 2026 12:40:39 -0800 (PST)
Received: from neuromancer.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-863168dd6d8sm13477219a34.10.2026.11.25.12.40.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Nov 2026 12:40:39 -0800 (PST)
Date: Wed, 25 Nov 2026 14:40:36 -0600
From: Chris Morgan <macroalpha82@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	shawn.lin@rock-chips.com, linux-pm@vger.kernel.org, heiko@sntech.de,
	conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
	sre@kernel.org, t.schramm@manjaro.org, xsf@rock-chips.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V4 1/3] dt-bindings: power: cw2015: add cw2215, cw2217,
 and cw2218
Message-ID: <awdHxIQ7AMNUtiq_@neuromancer.localdomain>
References: <20261124191346.434143-1-macroalpha82@gmail.com>
 <20261124191346.434143-2-macroalpha82@gmail.com>
 <179560806608.84329.5895350466243051992.b4-reply@b4>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <179560806608.84329.5895350466243051992.b4-reply@b4>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_124041_378987_E6DE4ACE 
X-CRM114-Status: GOOD (  27.93  )
X-Spam-Score: -1.8 (-)
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
X-Spam-Status: No, score=-10.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Wed, Nov 25, 2026 at 01:01:06PM +0100, Krzysztof Kozlowski wrote:
> On 2026-11-24 13:13 -0600, Chris Morgan wrote:
> > From: Chris Morgan <macromorgan@hotmail.com>
> > 
> > Add bindings for the Cellwise cw2215/cw2217/cw2218 i2C interface
> > battery gauge. It is similar in function to the existing cw2015 but
> > with a different register layout. Each of the cw2215, cw2217 and cw2218
> > only really differ in the minor specs and the hardware ID they display
> > when queried. shunt-resistor-micro-ohms is a property in use for
> > multiple devices so not appending a vendor prefix to it.
> > 
> > Move the minItems and maxItems for the battery profile to a conditional
> > based on the compatible string, as the new monitors require 80 bytes of
> > firmware instead of 64 bytes.
> > 
> > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > ---
> >  .../bindings/power/supply/cw2015_battery.yaml | 41 ++++++++++++++++---
> >  1 file changed, 35 insertions(+), 6 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/power/supply/cw2015_battery.yaml b/Documentation/devicetree/bindings/power/supply/cw2015_battery.yaml
> > index f7bde324153d..992cd5f6a216 100644
> > --- a/Documentation/devicetree/bindings/power/supply/cw2015_battery.yaml
> > +++ b/Documentation/devicetree/bindings/power/supply/cw2015_battery.yaml
> > @@ -14,12 +14,13 @@ description: |
> >    phandle in monitored-battery. If specified the driver uses the
> >    charge-full-design-microamp-hours property of the battery.
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
> Nothing improved. Broadest constraints always stay here (explained also
> in writing bindings).
> 
> Best regards,
> Krzysztof
> 
> -- 
> Krzysztof Kozlowski <krzk@kernel.org>

I think I get it, sorry for being thick. So this would have 64 as the
minimum and 80 as the maximum, then further down for the cw2015 we'd
have 64 as both the min and max, and for the others we'd have 80 as the
min and max.

Thank you,
Chris

> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
