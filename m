Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E553CC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Apr 2022 07:38:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S/NHC6dNiKbqXj4HwLjSXnx6bqFGJEn8HqhbxNApZj0=; b=Qvt9ZriQ6HWYGt
	8H5SG0GMA6flTAcizlYt01hABQcOBimKILYOxzphcl/icRfWXCnJGi7fh0qR1hRzCiP8htGl+6aR5
	C4OxNmB+UmhOmdNSb63sCPCSWzVEpa/X0sFGhQh2k9hlXQpcEkYG5DOgJ1hdeKwnPT+ZUZPqot/1W
	fDbFYMjTbeUWUGH1ngfPA6VZxvtLKapcZexziXf2Dx0VsQE3Pu7AIdiH0aieZ4Dh7K3dkGI45Gbeg
	a6pyUVm6SuLJzMXjsO3yUqpODIWgMrbqdE/Rv6IxglAAfB3dMt3T37I4J++weI08KlfNXrgVuH4Mm
	/W0dn3SPyOQCuWwrBduw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njyjf-005G6H-3r; Thu, 28 Apr 2022 07:38:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njyjc-005G19-A8
 for linux-rockchip@lists.infradead.org; Thu, 28 Apr 2022 07:38:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1njyjA-0002DT-UD; Thu, 28 Apr 2022 09:38:16 +0200
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1njyjA-005iCB-4B; Thu, 28 Apr 2022 09:38:14 +0200
Received: from pza by lupine with local (Exim 4.94.2)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1njyj7-0002Na-Pf; Thu, 28 Apr 2022 09:38:13 +0200
Message-ID: <b0bc0d0a4c1b7b19e0c6c30802fb2f622bae65de.camel@pengutronix.de>
Subject: Re: [RFC/RFT v2 04/11] phy: rockchip: Support PCIe v3
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Frank Wunderlich <linux@fw-web.de>, linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>, Bjorn Helgaas
 <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner
 <heiko@sntech.de>,  Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul
 <vkoul@kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Krzysztof =?UTF-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Johan Jonker
 <jbx6244@gmail.com>, Peter Geis <pgwipeout@gmail.com>,  Michael Riesch
 <michael.riesch@wolfvision.net>, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org,  linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,  linux-phy@lists.infradead.org
Date: Thu, 28 Apr 2022 09:38:13 +0200
In-Reply-To: <20220426132139.26761-5-linux@fw-web.de>
References: <20220426132139.26761-1-linux@fw-web.de>
 <20220426132139.26761-5-linux@fw-web.de>
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220428_003844_368111_7B7F713F 
X-CRM114-Status: UNSURE (   6.95  )
X-CRM114-Notice: Please train this message.
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

Hi Frank,

On Di, 2022-04-26 at 15:21 +0200, Frank Wunderlich wrote:
> +	priv->p30phy = devm_reset_control_get_exclusive(dev, "phy");
> +	if (IS_ERR(priv->p30phy)) {
> +		dev_warn(dev, "no phy reset control specified\n");
> +		priv->p30phy = NULL;
> +	}

Please use devm_reset_control_get_optional_exclusive() [1] instead,
which already returns NULL if no reset control is specified, and return
on errors.

[1] https://docs.kernel.org/driver-api/reset.html#c.devm_reset_control_get_optional_exclusive

regards
Philipp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
