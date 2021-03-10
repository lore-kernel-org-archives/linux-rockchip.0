Return-Path: <SRS0=2K8y=II=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F207FC433E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Mar 2021 03:01:02 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5932D64FE8
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Mar 2021 03:01:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5932D64FE8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=l623SzmOdJfIKW84/u8K5buh80KQNSeglsxK8LwAE3k=; b=ZISYCppK5sPLqX6scKU2WrxKV
	f5r/EwybIooUSnXUlDbdbY8gcXCUpNGk6XVtTbKYfbxrnfkoCu36+YQK2nF7Qv2r02lWTzHQ1rUHH
	wd8kxGbh2AzdY6Bc/6vwWBkinGmjPYOY79WCuyCddVUhM+KyD+kkO7haadMXbWuZjtMWyQgn0IRy4
	PlUCpvN/WuLAzfhPStjldJXi9tYbNSWLV/O6cQfOSvIntJ3Dk06R6aaQvWfTX86i1cEbFw+c5+FEw
	pnItV5isDs/DkpT8gwYHMT0VUHXGkGr5AE2qquCqAYBHlH4ODkVTb1vsZItrMVXVF965CGSTI/HOH
	90XLHJH6Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJp5k-005rF2-9T; Wed, 10 Mar 2021 03:00:56 +0000
Received: from mail-io1-f48.google.com ([209.85.166.48])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJp5Q-005rC5-J5
 for linux-rockchip@lists.infradead.org; Wed, 10 Mar 2021 03:00:41 +0000
Received: by mail-io1-f48.google.com with SMTP id i8so16322537iog.7
 for <linux-rockchip@lists.infradead.org>; Tue, 09 Mar 2021 19:00:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=LfhlochrZTWGK80UR6RfSyTUFWd+yCoZ99GJcthSJuU=;
 b=sC8Ov5KgkiNpPBuo2khooMj7doTszKxyRG7HOl/q97/it/4aPbGtn4hk/mliSz/NGv
 GMt396DM+TvUWGTdn4NhmdFrY7ZTvsySSW2U0yq0fu2Nk7OSBmgkvf3aiEy2DuRzLpJq
 G7+G+YHRbTQ+nKm351n6QrQ58ezy2TfZGWsGuLXFmo4WzGpz85VJltSmoiP1T9MnkrsO
 cBRQeJP+4wPQ6YrYkaCOCxDisZi3D+bpLO3YAnDDMAJ3yeuqAoRG+zfgZy8lqm6ohfeX
 zOJVqNLDHfN8Nhgic/ITbMbO1NVMYzG1p13tEri3Emo0ML8ZpKmiU0KXnMn7sdKpS0zZ
 uKxg==
X-Gm-Message-State: AOAM532gM7udOmHSRk5qfOmVojI1F5optfDt7hf7dPuLRnFIKJp1JMDJ
 uBVL7RzoTPH6hgjeEONWTQ==
X-Google-Smtp-Source: ABdhPJzTN7TyhY1opAmGZ9GDZCdtC36F56Xyywem07xi/n5y0tpqt1VNNsj/4JdYC4OnXlQ30SfAZA==
X-Received: by 2002:a5d:9510:: with SMTP id d16mr992361iom.81.1615345233390;
 Tue, 09 Mar 2021 19:00:33 -0800 (PST)
Received: from robh.at.kernel.org ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id r15sm8474952iot.5.2021.03.09.19.00.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Mar 2021 19:00:32 -0800 (PST)
Received: (nullmailer pid 1664120 invoked by uid 1000);
 Wed, 10 Mar 2021 03:00:31 -0000
Date: Tue, 9 Mar 2021 20:00:31 -0700
From: Rob Herring <robh@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Adrian Hunter <adrian.hunter@intel.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v3 1/3] dt-bindings: mmc: sdhci-of-dwcmhsc: Convert to
 yaml file
Message-ID: <20210310030031.GA1664061@robh.at.kernel.org>
References: <1615254990-192784-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1615254990-192784-1-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_030039_637452_67F08E49 
X-CRM114-Status: GOOD (  12.52  )
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

On Tue, 09 Mar 2021 09:56:28 +0800, Shawn Lin wrote:
> This patch converts sdhci-of-dwcmshc.txt to sdhci-of-dwcmshc.yaml
> 
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> 
> ---
> 
> Changes in v3:
> - fix filename and other improvments suggested by Rob
> 
>  .../devicetree/bindings/mmc/sdhci-of-dwcmshc.txt   | 20 -------
>  .../bindings/mmc/snps,dwcmshc-sdhci.yaml           | 63 ++++++++++++++++++++++
>  2 files changed, 63 insertions(+), 20 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mmc/sdhci-of-dwcmshc.txt
>  create mode 100644 Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
