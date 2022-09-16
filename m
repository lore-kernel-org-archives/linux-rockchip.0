Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8925ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Sep 2022 16:00:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4kPJu/mlpSdQSQr+P/3wIMTIWIn3yrF3nDCiVJXfKrw=; b=LVIOqFrkg9fQtN
	9YIvgMvs0S6mhtRP5oiD3dOXW3TwK14rGlaJwmBYWqDMhzpyviQlbOM1C/ar8mOOk0f8mOcbj95Wr
	WiDUujxxvJT1jfg8SbgMw5qEOna+2StgcPPQ4MPPNZTfXVfxfUIAA1SOIwb5Mh6cbpWhtfIQw2e8f
	xPff7iTQtpwyy499CEGWazvNbelNzk+6wTdPpsMu3MxCj4VMmztQGSY02rMzQYE+oYPHennaXhrI0
	nzGec1mzgNglhv+LtLs5oP48HVtO8FhXdx4KkXNRZ1eGy/ZuIvIvXHDr8FPZymRUnP+w2GZPr50KH
	igcBRwud7yrd4TWqjBsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZDkh-00Eo49-Qc; Fri, 16 Sep 2022 15:59:39 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZDkT-00Eny5-Dj; Fri, 16 Sep 2022 15:59:26 +0000
Received: by mail-ej1-x635.google.com with SMTP id bj12so50322258ejb.13;
        Fri, 16 Sep 2022 08:59:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=0eOqMrsEPlo8wf0Kb/kFeTkXHYSCkhl/zlKEpzl3GUU=;
        b=gmfWSQs3LmqC3lPZz6lRjnb/2ggeGEEHLUBxU1OLJpLVLP4A7WoN54WvtK4PvmRago
         DJ9oDYAR4M8yLdwcNKjJEqQrw2KjX20ioimVvQ+pgFXJsBbEYSKFYcD1ILYkCEV453tS
         Jfaoy30nBTJHahfepA+1qFu9skK6DuZMvkYFOgrXUAmvuznVk1HPyPUVudHJNgg4w5Et
         KKyGAz2tHFco7JBCiAn2U1suRoxbPiErP4StNYJdTevGeqKHu606Uj/UithsHYQkYqLA
         kw+V+dTqrFrMDlXCZZ63vPwUH5+R8XvRfjoVwMeH5wmpQvpWeNardHMOtp444A5WTeee
         rnzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=0eOqMrsEPlo8wf0Kb/kFeTkXHYSCkhl/zlKEpzl3GUU=;
        b=FeeNew1Y0PYRDeLgQYJzkkcZhMJiXXBTmglXT2uCvmqEycOJX8gI2sFDH2/aHYibnK
         On7AOGDrYcBwjiOi4IcIhI34GVuIvYncvuRv3MQ2LTnyeOZOMVE0los5YvDr6f8Cnxzg
         vUbga8T9qeCh62JUWbRpcVOA1yZaxg7A9PO09ApcCyHyFhsvcttN8XJBjww18z0quzUI
         vRHQc6Mh2GFcIGFvI4OzVK+F2mc+viGRmy1DiqnfChDThp4Xg42QaAuvNkyPMDdytvvR
         QGeZOHJIPlKIQKSGg/zdNTidqblnrFlKmg5DM51gedVFwupH0s73ETFK2w/p6D8ZsqtW
         rGyg==
X-Gm-Message-State: ACrzQf3e/XGLFEH715voxxDxVYwL/UByjTL3HsgPLJbmDzArZ/Hc0YXt
	17dyIBWB36kZ8L+ieH8MRB4=
X-Google-Smtp-Source: AMsMyM7d7ML3/4FI57O/qGJTqdztH/7vmNeZp6oIqHbhq3K1SwPiHviL8jifBmzWTeiZcHwH/46FZQ==
X-Received: by 2002:a17:906:7945:b0:73b:e605:f31 with SMTP id l5-20020a170906794500b0073be6050f31mr4090685ejo.129.1663343959977;
        Fri, 16 Sep 2022 08:59:19 -0700 (PDT)
Received: from lab.hqhome163.com ([194.183.10.152])
        by smtp.gmail.com with ESMTPSA id u3-20020a05640207c300b00451e3160451sm9437675edy.89.2022.09.16.08.59.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Sep 2022 08:59:18 -0700 (PDT)
Date: Fri, 16 Sep 2022 15:54:31 +0000
From: Alessandro Carminati <alessandro.carminati@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] Add sata version of the quartz64-a board
Message-ID: <YyScN7ezdngpRxq/@lab.hqhome163.com>
References: <YyRxx4zovhMMeQYV@lab.hqhome163.com>
 <2385186.jE0xQCEvom@phil>
 <2145659.NgBsaNRSFp@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2145659.NgBsaNRSFp@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220916_085925_494481_8A650590 
X-CRM114-Status: GOOD (  12.58  )
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

Thank you for the review.
While I wait for the dt-maintainers direction, I will fix the patch following your advice.
Shortly, I'll post the new version.

Alessandro


On Fri, Sep 16, 2022 at 03:18:28PM +0200, Heiko Stuebner wrote:
> Hi again,
> 
> Am Freitag, 16. September 2022, 15:12:10 CEST schrieb Heiko Stuebner:
> > > +&sata1 {
> > > +	status = "okay";
> > > +};
> > 
> > I guess you may want to disable the now unused usb controller?
> 
> ignore that ... I just realized that is was kept disabled by patch1
> 
> 
> Heiko
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
