Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3B80C6FA83
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Sep 2022 19:22:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rlWVEjM0VwNOhm/E13ps6a+XQtDMpVqo/kL7PX9Vv7Y=; b=cSP5852hK3D3w9
	VRfQhLUlISwjQIyLimMT6gfSh7IGUt7YdrOuHjXZO/fYg6yi82R0d0LYDpjC5LuU4j7HPLqRSVHFu
	QYTddthX64uZTQihxNhDYvW11t9bjVDbmRZMVMEfeoE+jBzuxj2mFrHdVrGAEvv++6bsO2iNmY0Oy
	oGmQGiA/TIKgt5RrDk1TCRAETARnsk1xI3AezLwbk4PamlDQkJzlGz9xeSE168Gdc+eADK53J1SLV
	9L97XGKa8fk2VtKGV36/t3mxUZPFD3jhzCFhR869//4b+LslmLmCeOpCQfH3RhkJ8TmpTjSUUuEZi
	Cu4Vt+kPvsnlVlaIobmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXp0i-00CvMd-8n; Mon, 12 Sep 2022 19:22:24 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXp0f-00CvIm-5p
	for linux-rockchip@lists.infradead.org; Mon, 12 Sep 2022 19:22:22 +0000
Received: by mail-pj1-x102b.google.com with SMTP id z9-20020a17090a468900b001ffff693b27so9155584pjf.2
        for <linux-rockchip@lists.infradead.org>; Mon, 12 Sep 2022 12:22:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=ssS5zdl8ImzFpzzUh/59HsD/G3hcv1J/zHJhsPeEVKI=;
        b=QTNd0+iDH81yMYKwvCkapX347WklRs1UjNbmqjqu+SixUF/dyK2U/L25vDmJoSKOi3
         cldUN75Qt3pWVPV4ItiOTKw3QmVbfx2t9fO+kOp/uR+OVGSNK84/CGvdkYW2B6CYdcFW
         Wq+yE+ym4VzTjz6ZEaev54lNyuvfsYAMRbx9WBKIbKDfFApLXXh7HCbQDbOWXbuV7e/Z
         p4ZYhleNdJoMyxd/UMk4saHWkZIy8ocYbb+uic0g2UPbXa2o3re6fnkS/4PFf64IzvLj
         h5/aLBm5eprqh9XYSKn6YxzUzZrJc1ikkmR4FgUwPDRheKWQz3X4hv09w283fMWLjILy
         yfaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=ssS5zdl8ImzFpzzUh/59HsD/G3hcv1J/zHJhsPeEVKI=;
        b=Zyrstx4Oh+hbfC6nO2bEKIdqRI9qPNGCib+gzDBgGI/WH5XWzLvaJym5f2zWUn8RLn
         apKudCehS1HX6XlGLblllA3FMCMXyhncBbCt76NY+VXzauEtj9CsAhJRgfgA0RVV54NQ
         kz1X+IMnElaOvwDlOKy2I7doNkMhiqg3olR3lhfoeaKbH4IBN12Ip7Lin7dw2WcYkVpW
         52rDcexpmhBwznnMiyzT0bmkJLamUB6DGxTvP1lj1CC4AmAQWo+HU5+yHHrDwm4LWLke
         483eKHMbr6dt+NiCriuVgzFqZBUEKQRY1gQOESC5OM2bjkdKXdBtAZV8J0dlNxDqo1Qn
         vqQw==
X-Gm-Message-State: ACgBeo3B3aoOqiedLHfwdQcJmA7woqc/Wzh5iWeYUD+gCwyTMXnMIsc0
	Wvq4uTqEY53sx1K7MkNPmLwGmwdDd76UBNfAhpkV7w==
X-Google-Smtp-Source: AA6agR7HIYkNnScIvRpJFZ0Oo8uVvzZR00lzwcMhNhL2BpnUIm/nvmgBF7LUeuTXgD11N++k7tQH3Pa9XHu01N2sGa8=
X-Received: by 2002:a17:90b:4f8d:b0:202:dd39:c03a with SMTP id
 qe13-20020a17090b4f8d00b00202dd39c03amr5104418pjb.71.1663010538983; Mon, 12
 Sep 2022 12:22:18 -0700 (PDT)
MIME-Version: 1.0
References: <20220907160207.3845791-1-jagan@edgeble.ai> <20220907160207.3845791-2-jagan@edgeble.ai>
 <6158946.mvXUDI8C0e@phil>
In-Reply-To: <6158946.mvXUDI8C0e@phil>
From: Jagan Teki <jagan@edgeble.ai>
Date: Tue, 13 Sep 2022 00:52:08 +0530
Message-ID: <CA+VMnFz3+vx4b3H=v7g1q-ytKLRjohs2tGmeuA6sRfWA8J6BRw@mail.gmail.com>
Subject: Re: [PATCH v4 01/13] i2c: rk3x: Add rv1126 support
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Kever Yang <kever.yang@rock-chips.com>, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-i2c@vger.kernel.org, 
	David Wu <david.wu@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220912_122221_244262_C37C9183 
X-CRM114-Status: UNSURE (   8.14  )
X-CRM114-Notice: Please train this message.
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

Hi Heiko,

On Fri, 9 Sept 2022 at 22:58, Heiko Stuebner <heiko@sntech.de> wrote:
>
> Hi Jagan,
>
> it looks like this is missing Wolfram Sang, the i2c maintainer?

My bad. I will add him in the next version. Thanks.

Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
