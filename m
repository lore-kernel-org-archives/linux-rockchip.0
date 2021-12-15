Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCCBAC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Dec 2021 23:07:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OCexKZ/2HoinnITUlHT9v92E4ITsoeO2Ry0Mf1dzsEs=; b=wsPE/RT3Jn18cS
	C89h15HATTST3wOjGxHkao0Q6sXDMdymAH/uKVSaz3TKKCSDThScKPPzLYrrvopPa1eZcET7JI7GA
	QRK5R8C6eaufv/waIdPp3WdNbx/d8OgNly3pVAbLYy9AVZ2sdykCLs59xjCbP+4glLtwbosPCBot0
	vq8/ASukAJRg3dO6uNMcPXYzxblRFyezY+sm7JtW4D6NzQAuii4F4vG5ybMi6al5V3LlZ2JtUWK3X
	s6H3Ga6NDIkNIe/6bI2PVyvldr9iPqqyzjPcnHkB3MlZdycI9KDb1vXIoyUkmfO2HO7XkNK5ergtj
	KNooDKtq/aq7FihXIjXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxdMy-00348d-17; Wed, 15 Dec 2021 23:07:32 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxdMw-00347g-3H
 for linux-rockchip@lists.infradead.org; Wed, 15 Dec 2021 23:07:31 +0000
Received: by mail-wm1-x335.google.com with SMTP id y196so17710762wmc.3
 for <linux-rockchip@lists.infradead.org>; Wed, 15 Dec 2021 15:07:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qCnHcoZ/R6aBaHpWmv36zx8620aXgQgPQkDtHIQ1DHA=;
 b=FUdi+s/28RzQC5rEbXov+Wj7ZfBamUGXR3MkfXiwYqzbKUKaWeNPk7vfXzOuP05QkL
 f7WV6H9XI/BSp8jradCwYWfGH+BM7kDpH3wfo3Mf5MTcTwPE5rxhlnIvf2kpQ5wouQgi
 e/1fgD0x5kalDXDfZKJi/Kb6/jL9tqv0s6y4tX6c5eWLlcMKMhnj5QlZaJ0rna/FE+Pf
 GpRXkZZCFp43IykmLwmi7c/orrPeVMQKLKzPSN4yMRCdf9sUx1tS45wuWsPcHhS/M6uP
 xi6OnfzF5lMcfl4Nu2ymWUdfo52A7OhaEk88F53mKRp1KqAoSgwhbB0Xsi+S+smTtfRT
 EKng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qCnHcoZ/R6aBaHpWmv36zx8620aXgQgPQkDtHIQ1DHA=;
 b=L/dGuAIi9vGN6O43KACXD/ggoAj/nmv7BT2Qj+CawnMVc8AUk58wSQyAVIXSdo5txH
 J/3AL8iJmuyjVhE3HISfeDrJ7QGQK3UuqIBUguZf/R9Il+/abQuk04Qc24Uc2T4LBxzD
 Do/KuuHsbbm61A7Xj4UxHMYG3yG4Z2b8bNGDgCRFKARHgJr+lJdLqnXCTPqxUptaZ9+7
 2AhDebJaY26XaR5PHU/x0q6aFN/TFYY7BOqYTHtB2/yO/mS/D9Nwbv8X4AZ1eiBm/HNQ
 Ib/KH3HNUkPjFHGmpu4Z02LbuwSWY+4uXaPcVFoMUFCBmuiwkP0ofxQlxKE88p/BGtSn
 Qeew==
X-Gm-Message-State: AOAM533uKOC4x2SdhCh/cfLHvcy5rYpIlq8OOdXfIJzJiD+9zSSxtDQE
 rDXU0eWF8olrH6gyNhw7dKA=
X-Google-Smtp-Source: ABdhPJwgAJVU2co2FgMZfqw1L9nyV5xZ+wvhSyo4RLTTJengtVJ2KmdOCgHb9S2AhAXiqMTOKyd8gA==
X-Received: by 2002:a05:600c:a06:: with SMTP id z6mr2294235wmp.9.1639609647267; 
 Wed, 15 Dec 2021 15:07:27 -0800 (PST)
Received: from archbook.localnet (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id p22sm2745595wms.22.2021.12.15.15.07.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Dec 2021 15:07:26 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Lee Jones <lee.jones@linaro.org>, linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>,
 Frank Wunderlich <linux@fw-web.de>
Subject: Re: [PATCH 1/2] mfd: rk808: add reboot support to rk808 pmic
Date: Thu, 16 Dec 2021 00:07:25 +0100
Message-ID: <1933509.XRPO5POFnR@archbook>
In-Reply-To: <20211215213300.4778-2-linux@fw-web.de>
References: <20211215213300.4778-1-linux@fw-web.de>
 <20211215213300.4778-2-linux@fw-web.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_150730_195195_1D18F909 
X-CRM114-Status: GOOD (  10.49  )
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

On Mittwoch, 15. Dezember 2021 22:32:59 CET Frank Wunderlich wrote:
> From: Peter Geis <pgwipeout@gmail.com>
> 
> This adds reboot support to the rk808 pmic. This only enables if the
> rockchip,system-power-controller flag is set.
> 
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> ---
>  drivers/mfd/rk808.c       | 48 +++++++++++++++++++++++++++++++++++++++
>  include/linux/mfd/rk808.h |  2 ++
>  2 files changed, 50 insertions(+)
> 

Tested-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>

Tested with a RK817, using a Quartz64 Model A with the patch applied
on top of v5.16-rc5. Poweroff works, reboot works.



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
