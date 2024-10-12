Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 699DFD1A442
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Oct 2024 07:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/3E07pKgBrSIIThdMK8i/mTfIrdoJjcJp6JbnNuMn2I=; b=qfgnJunkhp1gdb
	NUF4jsrFSi6hZSbJzb5Mzm3wjw+G9kl5aKf8o43iRAxN8gi28acPrQrKlLW4mk/+XRlvjlpRApNrY
	vOf41GfqFwKLtbfslzzm6cFxRsqPt0osP/6+RidaPE5xAjkqcvMriYWEbbWz/5dcm/+KQ89hgFvQz
	D69Rq6Aj8CHBWwqNJVM/gBbQDsDdLfBvVb06lB4fPhRsTt5tBtpOzHPW1CIDNEb1SyJaxTB9byJIy
	aX51b4HbPeEZq14xZqJb7NfksCZ4/HfR0UbNlP+pbue1/Zb2+ZeJka7P2ErZsIFdGkgRyf3h0KFa5
	I8sZCWw4GmA0FVvWeVsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szWYy-00000000iG5-1Gic;
	Sat, 12 Oct 2024 07:29:20 +0000
Received: from mail-oa1-x36.google.com ([2001:4860:4864:20::36])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szWVN-00000000hjk-40vw;
	Sat, 12 Oct 2024 07:25:39 +0000
Received: by mail-oa1-x36.google.com with SMTP id 586e51a60fabf-288642376bcso1087992fac.1;
        Sat, 12 Oct 2024 00:25:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728717937; x=1729322737; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qFJHXmWUByEds8clTC1LQB9D0Bv72AC54JwvOCu5Qpc=;
        b=D1ftbZNFBSHb9GEWiPm7OHUxNHGvMhy+EiJMc9nfRD3UZnyVnyfYg3dopgne+CqoRF
         4bI9GgExqRqPN5trkAkZS1GrhjN5euJx/OK4eHjgkQIaucn4TAJmtqF2oBIv++3bkioU
         Z1xBzefXRX7Q/0qtel8wtshO1r5DcxsutJ4yn+kVWFMyNSCu4tjTSct1FXZ5V5tHRhXj
         dyIpyomq/2jdRv92344oGQLSBskpLN5UrEg01DoxMZGdd52SdJajasLCxgWaU3P4EmdG
         RZ4F6nzNNMI+hSjIHhuTFKEuiwgSeaxdB2BO8qv7TzNdf2g68sbcDAGzmZFDhf0NNd6i
         EDUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728717937; x=1729322737;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qFJHXmWUByEds8clTC1LQB9D0Bv72AC54JwvOCu5Qpc=;
        b=n5Xu7VjsXq0wDfSuMq184QBcCk8EdsrOmXN3hC1W51CdCm/W5FAUen239k0OKlT3BT
         Wz6d3FzImxnKwcxBhzFPRvEkgIPYUl9h3zDhEKiBuWrprwUeGb+Z8yydvGut02Rg8Ujo
         NPAQWF7ig/GY4Y42h3DcanEAecgck+zQMRmSk+osOQJIuSud8pdIJynWBgB2fnZGCjgd
         dfP9eowEb3figT7irzM2AiWT0IXlnvyPc0zmrZwUpfcGpzssQ3JZaAkVy+WYWsggxMcx
         mOn5oQKMbqwhQJbI6ziuNDnIBVt4FD7PRFCyHek55KA93MI/uDUoxXiNkOJ6riCTldTc
         8wJQ==
X-Forwarded-Encrypted: i=1; AJvYcCVB5U90TR6D7UY0DkMcuNbKgMsfVAp74zwWkWVaQ3PKlgV4eqCxQp1O0cnQE+1n415NjJiqnOheCFs8MLXzKAv3@lists.infradead.org, AJvYcCWrOKza4YguC1whjdl5H2c85Qr+GW/lp089O3Md8XR/QuTf3o4bBDL+q5AiXXrIUdzJLGZ3f8jnHJKL45QFtZk=@lists.infradead.org
X-Gm-Message-State: AOJu0YzZjxVV7D5XW09g1cZwFBgRz0jz6FXBwLZocpOtD4ZYK2OxaR8A
	rCoUCSDeVms2bTzfqJGTMxauIX7TvKML1kuK+O/yLFc+nrbY0R/POiad0AgxnjXGVdz6NyrkWo5
	KnIqlOECxOW0Ch+4Oiis9H4AULNk=
X-Google-Smtp-Source: AGHT+IGxcoo7XIEg/2VGJljTTQoQCqCwZmD3zSNnB3DUpI3w85snogReGnHlzl7eFuZJLLQZl2U++xeT9L1aIakhcwc=
X-Received: by 2002:a05:6870:d88e:b0:26c:5312:a145 with SMTP id
 586e51a60fabf-28887328507mr1145574fac.16.1728717936765; Sat, 12 Oct 2024
 00:25:36 -0700 (PDT)
MIME-Version: 1.0
References: <20241012050611.1908-1-linux.amoon@gmail.com> <20241012050611.1908-2-linux.amoon@gmail.com>
 <20241012060847.6teuutvy2u2es2qw@thinkpad>
In-Reply-To: <20241012060847.6teuutvy2u2es2qw@thinkpad>
From: Anand Moon <linux.amoon@gmail.com>
Date: Sat, 12 Oct 2024 12:55:20 +0530
Message-ID: <CANAwSgQLi5zW4+95-ZRbpm05bzs8tjr2Sr-PpgMxTPAEzjSj9Q@mail.gmail.com>
Subject: Re: [PATCH v7 1/3] PCI: rockchip: Simplify clock handling by using
 clk_bulk*() function
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
	Philipp Zabel <p.zabel@pengutronix.de>, 
	"open list:PCIE DRIVER FOR ROCKCHIP" <linux-pci@vger.kernel.org>, 
	"open list:PCIE DRIVER FOR ROCKCHIP" <linux-rockchip@lists.infradead.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241012_002538_025767_293BEEEA 
X-CRM114-Status: GOOD (  16.97  )
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

Hi Manivannan,

Thanks for your review comments.

On Sat, 12 Oct 2024 at 11:38, Manivannan Sadhasivam
<manivannan.sadhasivam@linaro.org> wrote:
>
> On Sat, Oct 12, 2024 at 10:36:03AM +0530, Anand Moon wrote:
> > Refactor the clock handling in the Rockchip PCIe driver,
> > introducing a more robust and efficient method for enabling and
> > disabling clocks using clk_bulk*() API. Using the clk_bulk APIs,
>
> I think I mentioned earlier to use impreative tone in commit messages.
>
I missed your point.
> > the clock handling for the core clocks becomes much simpler.
Will improve this. my focus is just I don't break the functionally.
> >
>
> Could you please elaborate how? i.e., devm_clk_bulk_get_all() allows the driver
> to get all clocks defined in the DT thereby removing the hardcoded clock names
> in the driver.
>
Ok,  I will elaborate on this in the next version.

> > - Replace devm_clk_get() with devm_clk_bulk_get_all().
> > - Replace clk_prepare_enable() with clk_bulk_prepare_enable().
> > - Replace clk_disable_unprepare() with clk_bulk_disable_unprepare().
> >
> > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
>
> With above changes,
>
> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>
> - Mani

I will try to improve the next version.

Thanks



-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
