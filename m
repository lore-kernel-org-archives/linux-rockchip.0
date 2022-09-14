Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3AF5ECAAD8
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Sep 2022 09:55:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z/Dqp0f+QQyGF35DYby9GpAvOXFuuRCl75YGuqJBa6s=; b=U24cyByXSDe9Jy
	UZirO7jdpiEe5f5z94l3B5jDwtghRG2ZAROZs4fZfxgX5hls4qKd00Bmw5UQgEdzusgeNpOofv95a
	b5Jg1ybXZG/NcGm8Dq8TYPMLGaY3FAeA11N2+y4QCecCAV9bX+0TjPPSLVviaOY1DZJI8VTRcwYmD
	CSfku12qq+mPFoF4Uy66l7Lanidu5klP/+DCFPGIMJncj7gLemHkpnqxWh7E7k8flPWXA60QDzw8J
	a3VuwlorFz60Tc0JdHd2ZZVHs/zAd/6c5Wpao2ayW3S85mHLRru2jfd9LAi+fOo1ew9Paz6pEIt0r
	+CKhNadNFyTfYwk3lkNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYP6y-00EYH6-CL; Wed, 14 Sep 2022 09:55:16 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYP1j-00EU4B-34
	for linux-rockchip@lists.infradead.org; Wed, 14 Sep 2022 09:49:53 +0000
Received: by mail-wr1-x42c.google.com with SMTP id t7so24753260wrm.10
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Sep 2022 02:49:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=bbq4/4T4JjPGUfth20drkaf18DSxlzxy1kFL2s5Skkk=;
        b=ExcJVlbc0ZagiH+Rt7hA0bIVbTU/NxhHDjFnmOG97vfk7AfET8oP8YY+6s84+Q+Kob
         AJ5rZVaCR4FSyyotJ+Um7fBWBWoMhnq6QmyyFF+rO62RqwDs2N4Cn46ksL+KGnpwh78j
         S9EN8XhjlqB4zz8tP/9vhz/LY6UjBPfju8CSPIQ4BAqdnZkjw88ejZd09ya3aFzcPlFx
         1+nPK7TEXW2EAEnjLYIuPT+P98eFpC+AhVnQvUCuPinG4F1UA1iUwSzMXBNZ6rOAIuA5
         rt96dfG3b4g5SHEDUERGZ840y1RY/kPx0dSau+lT3vebZafJpjfn+RBOIRHaCUGx6/1o
         JI8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=bbq4/4T4JjPGUfth20drkaf18DSxlzxy1kFL2s5Skkk=;
        b=JGgTl98RCCEKpLTA2dwPYLyl1hfk1VOygrFCu2zgVgC+3Pu6AMhKu5oPE345AnJziq
         h08DEEcA7Y9oj95eDQXfSV0f1SIxuQDy4hDNt7qNWjDKqhKtV1rQ+Qr7Y4iJDHwJSQdx
         euKiGyDKXFZh1WjE2yKBcgN7d/i7wdNiqHleCCzwr2PadavaQNXW+ItYxWm/kRuneRFw
         /lPGgsaRRB+pgtyMjxEyPjG0/nGYUf7E2/GLF3t9zuSEb6AOwaWNYJsB6VN8VTxyMGrO
         T2WfuxqtZKmUIDfW1vpcVgwMwmYD2X+DHoZrJuwBMvjpcyEyY/vmfFOXFwLmTG6qt26Z
         ISXA==
X-Gm-Message-State: ACgBeo1NTNRlGAIk6WUpkb303AsW06smNGCHkFUqlTHdAbkPxyxykS9u
	I/kGOBvSdl8HBQ4cvA9pxbaGdQ==
X-Google-Smtp-Source: AA6agR44NE7mkRWSZbkSxz7tUVdtOhV3Q3E9t0A41MbdOWdyWfvzOmpa8UdB3Zu6U/6tZw10e5zx/A==
X-Received: by 2002:adf:e199:0:b0:228:60f6:f775 with SMTP id az25-20020adfe199000000b0022860f6f775mr20581130wrb.478.1663148987482;
        Wed, 14 Sep 2022 02:49:47 -0700 (PDT)
Received: from myrica (cpc92880-cmbg19-2-0-cust679.5-4.cable.virginm.net. [82.27.106.168])
        by smtp.gmail.com with ESMTPSA id v12-20020adfe4cc000000b00228c8ed21c8sm13192128wrm.17.2022.09.14.02.49.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Sep 2022 02:49:47 -0700 (PDT)
Date: Wed, 14 Sep 2022 10:49:42 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Jason Gunthorpe <jgg@nvidia.com>
Cc: Nicolin Chen <nicolinc@nvidia.com>, joro@8bytes.org,
	suravee.suthikulpanit@amd.com, will@kernel.org,
	robin.murphy@arm.com, robdclark@gmail.com, dwmw2@infradead.org,
	baolu.lu@linux.intel.com, agross@kernel.org,
	bjorn.andersson@linaro.org, konrad.dybcio@somainline.org,
	matthias.bgg@gmail.com, heiko@sntech.de, orsonzhai@gmail.com,
	baolin.wang@linux.alibaba.com, zhang.lyra@gmail.com,
	thierry.reding@gmail.com, sricharan@codeaurora.org,
	yong.wu@mediatek.com, vdumpa@nvidia.com, jonathanh@nvidia.com,
	tglx@linutronix.de, shameerali.kolothum.thodi@huawei.com,
	thunder.leizhen@huawei.com, christophe.jaillet@wanadoo.fr,
	yangyingliang@huawei.com, jon@solid-run.com, iommu@lists.linux.dev,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-arm-msm@vger.kernel.org, linux-mediatek@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-tegra@vger.kernel.org,
	virtualization@lists.linux-foundation.org
Subject: Re: [PATCH 4/5] iommu: Regulate errno in ->attach_dev callback
 functions
Message-ID: <YyGjtsB2Yq4fQICS@myrica>
References: <20220913082448.31120-1-nicolinc@nvidia.com>
 <20220913082448.31120-5-nicolinc@nvidia.com>
 <YyB3F/o3RfymqiFW@myrica>
 <YyGaqsXSDMn8R12R@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YyGaqsXSDMn8R12R@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220914_024951_260801_BB9F9E76 
X-CRM114-Status: GOOD (  16.92  )
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

On Wed, Sep 14, 2022 at 06:11:06AM -0300, Jason Gunthorpe wrote:
> On Tue, Sep 13, 2022 at 01:27:03PM +0100, Jean-Philippe Brucker wrote:
> > I think in the future it will be too easy to forget about the constrained
> > return value of attach() while modifying some other part of the driver,
> > and let an external helper return EINVAL. So I'd rather not propagate ret
> > from outside of viommu_domain_attach() and finalise().
> 
> Fortunately, if -EINVAL is wrongly returned it only creates an
> inefficiency, not a functional problem. So we do not need to be
> precise here.

Ah fair. In that case the attach_dev() documentation should indicate that
EINVAL is a hint, so that callers don't rely on it (currently words "must"
and "exclusively" indicate that returning EINVAL for anything other than
device-domain incompatibility is unacceptable). The virtio-iommu
implementation may well return EINVAL from the virtio stack or from the
host response.

Thanks,
Jean

> 
> > Since we can't guarantee that APIs like virtio or ida won't ever return
> > EINVAL, we should set all return values:
> 
> I dislike this alot, it squashes all return codes to try to optimize
> an obscure failure path :(
> 
> Jason

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
