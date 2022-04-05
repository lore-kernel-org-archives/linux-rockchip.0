Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8B78C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Apr 2022 18:37:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RoR/qDIqDD6li++xEUFLu/XzIOocIQgbfrQZWh/bK/0=; b=2I2fuYiTXZ9vPl
	GJEJSXSV89+dBet3HrDJrrT0OuL/ENohlbfSrw9s79g1WSMSbdbFxDzgSDyczIbgj62kk6ECMVs++
	lELYz++XF17ww0Kp8T6O92bEWjwSFGtEKCbQ5+M+8RXHVcybw5vPchqE56qzDCP29mpHE2xqiBU9D
	J29dewsHa7mKfTdTaGGCKqC2gvVeyuhTWEbyVuLxeSYashIgrkgDhZDExXRKPYYaHrHlcYdLtzEEd
	2j36W3EIiFl+0j4FB+jeyQ/1GqntTDJvuIw2CGNoQXW+skWw2FQd/JhTe4mCb8f8OIJorIaV0IcvT
	69imc85MngvB0u5kAanQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nbo3Q-002EKf-LY; Tue, 05 Apr 2022 18:37:24 +0000
Received: from mail-ot1-x336.google.com ([2607:f8b0:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbo3O-002EJp-4Z
 for linux-rockchip@lists.infradead.org; Tue, 05 Apr 2022 18:37:23 +0000
Received: by mail-ot1-x336.google.com with SMTP id
 y3-20020a056830070300b005cd9c4d03feso136517ots.3
 for <linux-rockchip@lists.infradead.org>; Tue, 05 Apr 2022 11:37:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=+KbWd7V0K71eJ7YcPU2pSOmsRiOHZCWb39tTThHrGDU=;
 b=Ek7jB5nSnvX8nkKurboNskrrBPBblu+4jqRUXkbMh3ca8FuApH6Rb6FgVhfqE9grkW
 NjJ5Md7xQ7RlZDLu9Gze+AeK09cSBJ664PdQCRLHC6gF+t9qW9aOLSX78FegGO3k7jVk
 rFUZQ7MqGeybfSVIZNDENxpzlYmk5eIBf9Dr1b8ZAP7tLQJWyyxhgJQ5qj5aQFl6oPXr
 xDA1zcBqdJd/2Me1mtUAtEAO87UryhKJkjIbIjtLhHLbDmJdeL4BbAp6qVf5StQ/XioJ
 NLPoNwaRwM0O2LZWv+WuuTdFIK9+HwlEYAIiosdi0Ei0P23jrhVrqHwM7+UINS9faAdR
 mRNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+KbWd7V0K71eJ7YcPU2pSOmsRiOHZCWb39tTThHrGDU=;
 b=4zOLuBrLRR+BE3FYaXBeojl23OHEEYRNhR9tM9inenYdGWH5FL2Dc//kUgdEbJ0min
 7MaN54XYWu75iNBHRrMj1LW5OhFT1aMT0THYOSJpv6RQhoVflpfUbrE9DDlUpFcsPzkc
 zDtpThf1BvMiDzYAWh4hQ8uReMcfrGgj5M6LWDD3sAGpE6Mh8wYM/9P2X3kxcAu5ZfYT
 GkEgwRHHgQtZxkPy+rg2YhpcCgxcUz/Z7FhLZW/Aa1eWFlzsN2ALoA5oUwa+jASHtm4v
 2rNjQ44xzAjgy3AYu44tC+75MfwcVQ6lbvIp1vypw9WLi+cPMPg5BD4tNKttgjsdT+Iv
 aBVQ==
X-Gm-Message-State: AOAM531WE0P3wivue47qYWEWiwN8/gsXHj+B+w0zUX7SRbEWcK+oTBi5
 E8cbmtbehUsXgO+3i0vE0zI=
X-Google-Smtp-Source: ABdhPJwzgIOB0kzAyeyofI6976mKnX78Ud7ePRgE6hN60K0Iq7zqsIgAXR9NtfXTu0KgHLJfGGpn4g==
X-Received: by 2002:a9d:6047:0:b0:5b2:4003:cfcb with SMTP id
 v7-20020a9d6047000000b005b24003cfcbmr1723411otj.59.1649183840894; 
 Tue, 05 Apr 2022 11:37:20 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35]) by smtp.gmail.com with ESMTPSA id
 n35-20020a05687055a300b000e1e2ab91e4sm3780056oao.39.2022.04.05.11.37.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Apr 2022 11:37:20 -0700 (PDT)
Date: Tue, 5 Apr 2022 13:37:18 -0500
From: Chris Morgan <macroalpha82@gmail.com>
To: Rob Herring <robh@kernel.org>
Cc: linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, zhangqing@rock-chips.com,
 zyw@rock-chips.com, jon.lin@rock-chips.com, maccraft123mc@gmail.com,
 sre@kernel.org, heiko@sntech.de, krzk+dt@kernel.org,
 lee.jones@linaro.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 1/4 v5] dt-bindings: Add Rockchip rk817 battery charger
 support
Message-ID: <20220405183718.GA5929@wintermute.localdomain>
References: <20220404215754.30126-1-macroalpha82@gmail.com>
 <20220404215754.30126-2-macroalpha82@gmail.com>
 <YkyJPKuG1s5pLR+t@robh.at.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YkyJPKuG1s5pLR+t@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220405_113722_213587_32584CC8 
X-CRM114-Status: GOOD (  14.45  )
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

On Tue, Apr 05, 2022 at 01:23:56PM -0500, Rob Herring wrote:
> On Mon, Apr 04, 2022 at 04:57:51PM -0500, Chris Morgan wrote:
> > From: Chris Morgan <macromorgan@hotmail.com>
> > 
> > Create dt-binding documentation to document rk817 battery and charger
> > usage. New device-tree properties have been added.
> > 
> > - rockchip,resistor-sense-micro-ohms: The value in microohms of the
> >                                       sample resistor.
> > - rockchip,sleep-enter-current-microamp: The value in microamps of the
> >                                          sleep enter current.
> > - rockchip,sleep-filter-current: The value in microamps of the sleep
> >                                  filter current.
> > 
> > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> > ---
> >  .../bindings/mfd/rockchip,rk817.yaml          | 48 +++++++++++++++++++
> >  1 file changed, 48 insertions(+)
> 
> Doesn't apply for me. What tree is this based on?

Sorry, it relies on the following being applied (all the prerequisites
are now in master, but this one is still absent):

https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20220303203958.4904-5-macroalpha82@gmail.com/

> 
> Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
