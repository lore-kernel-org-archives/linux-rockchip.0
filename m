Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9B34C27C54
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Jun 2024 17:26:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/CF6mkMctrs98D+7UCvnkMsmbfk7KlcMYc8WF4VUTHY=; b=qF4g2+WWtatiyL
	IfUG4Grh6+/BbkTc4J+YY9+EzqRZV7KJkfGIxTuRxMnBCt8jSdnxMDI8LmLQvUN5/F2S7elCz69PY
	XYLr5vlFTYUhS8krTIkwDdQpv9IMq/dWabs6Kn7NxW63dXQ44U91hsFW9WYyfc/XMcMLIXMx309lk
	689xdUorSVFjlW0tr61bl9eSHOCFrpG/fyKt+/ZtoHc3EITkjS4H41INqcokdYvwOZXmfm5pAuhlv
	0tP1RmDFLq8MkKqkItrL1SVRRyr0auDX4LVRqLv22FBHOdWnhr/DukKdD+HIZAb4EIpI53Axn2pa3
	PT0li5xFLTp/g5Tt/J2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFGsT-0000000Ak4B-02Ol;
	Thu, 06 Jun 2024 17:26:17 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFGsO-0000000Ak0M-2LI8;
	Thu, 06 Jun 2024 17:26:14 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-a63359aaacaso192722566b.1;
        Thu, 06 Jun 2024 10:26:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717694768; x=1718299568; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VqnNKmLSC1RD6dHJs9bd0MVxv0ddr88QmVM8jgunJ+I=;
        b=MSg9lQwcct15mn5ouXNNCF2UiO9TMpTXVDitNHWoa/ZmZJGCLA+1oYLjbkOLRMwPSP
         R+V48piFGOIe/aXg40Buy4d7xjXxAqGKanBHJMrkkF60dMW44Gw3KcRIu3Q6kHfuKEIb
         M/uP1kC4O60+Fqg6f30MX8uyBb3qozEzDS33/4r3n4WtlGBe9rOiWMYA7F6g+g78PeMt
         IOeeuXafHUwhRNU/g/FzTBsD6c7q8qlrmatJtRpWe/HFSViUZHaTtnnxz9xFS+n9/d3/
         SpEbDvnlYK9A5Pe7X7CdAlXF8oAkculfq9oWRKkYJQXz5OvEMeUcAzztyKb8K4FPYz2U
         tRHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717694768; x=1718299568;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VqnNKmLSC1RD6dHJs9bd0MVxv0ddr88QmVM8jgunJ+I=;
        b=flu2Glo1Pbex65nBNNsvN3nkJDLoYcqR1PvNCYA7ZkYDY5oiUhBzOuSwQHRVQD2Xui
         8hkac1NDienLwJWKllDIs3EeOCFuA6jNgo2ufEeGh12E0qXpeyYr0MfDTKGS2XY0Fo9N
         Nn0mR4kHLJ4fq7pK/bGkWvQLaT8taMKi3hpkCtkI1ECI4AlGI34+I4HOo6QzwNX/NIqI
         epM8HHiRmJz3TK950XKFw2iecP3GY6hAd5M5x/N/FK6bfv1RGcqw7ES8/LvxwuzbXuAl
         vjAFqC1gr5BHUuRzfmUm1QwqqlFbHJyOs0YwhjTLc2g/9gnleQwwdj/f8yy3SJXW1dbm
         pgsA==
X-Forwarded-Encrypted: i=1; AJvYcCWxyzG/ZjY+pfohtEtt7CWvKcU6WmvLICOEOpozabi3DZRzfRxw6jg6d1x5RCpaJnrx6Ftgy3h+yhyFkt7Xyc057jpiLMmcbGASvczmKccgmxzufqOhXPvK+e4nnIB1HWhVXql/Fe7QW+OAYe6d7nNtaFwuNrFikS8=
X-Gm-Message-State: AOJu0YwqQDAxTgJSMZdsXlJ4soiUg7K8mcYyro0BYjoNbcTPV8tolaoA
	qMffevmpFjNkCyXyzNMVb1eTvGsTggu0On2kFNRkCN/3YSXa71ql4wcT
X-Google-Smtp-Source: AGHT+IEWHpUP1OjNuBxbT3hNUewpxmHFYSGB8WmlQsIDkOOC1DBOurNrQViCNgd74rDrnr8oHEdemA==
X-Received: by 2002:a17:906:446:b0:a68:cc34:87d8 with SMTP id a640c23a62f3a-a6cdbfec41cmr13492866b.67.1717694767849;
        Thu, 06 Jun 2024 10:26:07 -0700 (PDT)
Received: from ?IPV6:2a02:810b:f40:4600:ed9f:91b7:21f2:3109? ([2a02:810b:f40:4600:ed9f:91b7:21f2:3109])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6c805ccb11sm120939166b.78.2024.06.06.10.26.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Jun 2024 10:26:07 -0700 (PDT)
Message-ID: <1f549cba-a754-4256-aa4b-dbc630e5e451@gmail.com>
Date: Thu, 6 Jun 2024 19:26:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/5 RESEND] dt-bindings: clock: rk3128: Drop
 CLK_NR_CLKS
To: Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
References: <20240605210049.232284-1-knaerzche@gmail.com>
 <20240605210049.232284-3-knaerzche@gmail.com>
 <20240606-dispersal-buffed-27a6e7540d4c@spud>
Content-Language: en-US
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <20240606-dispersal-buffed-27a6e7540d4c@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240606_102612_640870_899A57BF 
X-CRM114-Status: GOOD (  10.40  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


Am 06.06.24 um 18:09 schrieb Conor Dooley:
> On Wed, Jun 05, 2024 at 11:00:46PM +0200, Alex Bee wrote:
>> CLK_NR_CLKS should not be part of the binding. Let's drop it, since
>> the kernel code no longer uses it either.
> What about other operating systems etc, e.g. U-Boot or barebox?
For u-boot: RK3128 hasn't been switched to OF_UPSTREAM yet and it still
uses it's own (dated) copy of the dt-bindings headers [0] and besides this
macro isn't used there. Barebox doesn't support RK3128 at all and I'm
generally not aware of any other bootloader/OS does which does and
especially none which uses this macro.

[0]
https://github.com/u-boot/u-boot/blob/master/include/dt-bindings/clock/rk3128-cru.h

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
