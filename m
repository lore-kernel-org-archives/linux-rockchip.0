Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F28AC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Nov 2021 11:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U7DoKj3/qsG3wQybNGC2EdlO0qo6kaIzZQl0hQqQBr8=; b=q52FPMjhBh9wRP
	ISaPxKigLJIvf8vzz0ROEETy1QZwUeOqUeotA9oz2zNeKZi78b1MFkhzu3cNoUmKGccTMx9f+VAms
	3D49gp+qCcmeczp6SGb48zIylGHIMGWfkG4T1H7foGJad/VIg62NGPcRZI6Q5hyci/F+R7NPUWA8S
	DwtDwFoHiN8B8Dk4R4NH+FJRLW3Lm5dYE0eP9ag1W4t2MYtQOrRCxk0/lXTU7HbO4CuTw/8EAlhND
	ehVbhd0EpD7J9WCnB1IoJYj+7FP/IskiwFLjxaZOB+o5M4Ac9yCG0KFIYOItTSImqhJzK8Kqg0T+e
	zcBBFuBhAj0bk/Rgj3Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqDFH-007IBu-8Z; Thu, 25 Nov 2021 11:48:55 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqDFE-007IAd-2x; Thu, 25 Nov 2021 11:48:53 +0000
Received: by mail-wr1-x42a.google.com with SMTP id b12so11032185wrh.4;
 Thu, 25 Nov 2021 03:48:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zGTZSlpnGm2n22lxkSJEMVFE+t4NAH4c6Xl/p/baCNU=;
 b=ggxDlHYdO+nCmw8YUmoTmFXUdtbKl0mS9AliK8qS1pDShNbNhw4sCm8M7F+WbLrHrR
 QjTnc3i0ghnf46wkkbFOyw9SIiOr656jb8zkJ60WYFAdg2gT+laqeCk9gHAFSaS44Fww
 Auxyyi63Uo4FKYqTOrabXLVQOlng6hAdeMofcFiUlgVf6f4fRzfdVlqQbcy7g6uKpWin
 1Nq//GBDfbtiBr3xAVJnJ7qdcBc2y0uw1x6ywo8UGrpYUDhz+SfSq0YQxSHiZDUp3Vf0
 CPR57y+lqyYN5O27weZ9v7GO0YynKW9NOKDrc0p0w/T1A3RYt8K3Ncj/s1ukEB7+d3hQ
 5cUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zGTZSlpnGm2n22lxkSJEMVFE+t4NAH4c6Xl/p/baCNU=;
 b=uld4b4ZmsUCEdeo7O+NU3/DHuVo/nBPRW6eQhWt3g9G9am7ize4GanadGO1Pr1OOgB
 8hAo0BV5s562nije0ze5855svnrjP1BoW6C7KkZg7dVhXz0pYBQCJ28m4dPBAqpKVCR0
 Oa60GSINV9CDPEPj4AiW2DqALC+kDHw/e4L9gXGeFCQU1ft+HCp9R2bRJjMTlpXXB4Sp
 WSnkdS5zwy3o8xCw3MxIH5dExIXxCXF3E6W49eZnKcOd36YX0QJGeH1puBdUk8KqVuTe
 v3KX54WqLobFTA3fPv1/ed0xGhXLTkUdXlVw2nL6SF2k542bl8qEXigXDzozLjhhdDb+
 RngQ==
X-Gm-Message-State: AOAM533HbaX8bsI0DJUrfo8ChWJRCByinwAdl/wGx8XvFIwU9Hegwu9L
 udI9Bo6FMzK5i2tdLBbwVJs=
X-Google-Smtp-Source: ABdhPJwGaIlEzWSzYkOIFmFGYLa8i4k+7ojXDZzjuWLF9TI9gTOa0UaEeu8MeB+7/DzoNwcWBPOppw==
X-Received: by 2002:a5d:64c4:: with SMTP id f4mr5748349wri.6.1637840928209;
 Thu, 25 Nov 2021 03:48:48 -0800 (PST)
Received: from archbook.localnet (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id o10sm3285079wri.15.2021.11.25.03.48.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Nov 2021 03:48:47 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: linux-mmc@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: John Keeping <john@metanate.com>, Heiko Stuebner <heiko@sntech.de>,
 Jaehoon Chung <jh80.chung@samsung.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, John Keeping <john@metanate.com>
Subject: Re: [PATCH 0/4] mmc: dw_mmc: start deprecating mshcN aliases
Date: Thu, 25 Nov 2021 12:48:46 +0100
Message-ID: <1727408.1NuWAi7hEM@archbook>
In-Reply-To: <20211124184603.3897245-1-john@metanate.com>
References: <20211124184603.3897245-1-john@metanate.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211125_034852_164890_000EFFC7 
X-CRM114-Status: GOOD (  17.97  )
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

On Mittwoch, 24. November 2021 19:45:58 CET John Keeping wrote:
> This series is prompted by discussion on a previous patch set [1] but is
> a totally different approach and only a partial solution.
> 
> With these patches, the dependency on the mshcN alias is totally removed
> from dw_mmc-hi3798cv200 and dw_mmc-rockchip and dw_mmc-exynos moves
> towards being able to consider the mshcN aliases deprecated.
> 
> I haven't changed dw_mci_hi6220_caps here, although it looks like it's
> possible to apply MMC_CAP_CMD23 to all controllers there with no change
> in behaviour as the final entry is SDIO for which CMD23 is not
> applicable IIUC.  But I'm not familiar with that hardware and don't feel
> confident making that change.
> 
> [1] https://lore.kernel.org/all/20211116190244.1417591-1-john@metanate.com/
> 
> John Keeping (4):
>   mmc: dw_mmc: add common capabilities to replace caps
>   mmc: dw_mmc: hi3798cv200: use common_caps
>   mmc: dw_mmc: rockchip: use common_caps
>   mmc: dw_mmc: exynos: use common_caps
> 
>  drivers/mmc/host/dw_mmc-exynos.c      |  9 +++++----
>  drivers/mmc/host/dw_mmc-hi3798cv200.c |  9 +--------
>  drivers/mmc/host/dw_mmc-rockchip.c    | 11 +----------
>  drivers/mmc/host/dw_mmc.c             |  3 +++
>  drivers/mmc/host/dw_mmc.h             |  3 +++
>  5 files changed, 13 insertions(+), 22 deletions(-)
> 
> 

For rockchip:

Tested-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>

Tested on a rk3566 with no obvious issues arising.

Regards,
Nicolas Frattaroli



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
