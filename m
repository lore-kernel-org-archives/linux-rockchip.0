Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53344C07CA9
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 09:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dtd+SyCXW3y0fQHz05fqjjC+HxcBm7+8zOHsGw1TfSI=; b=jgP8iB8UNWWBp8
	7mBQH6w2FTTiilPSOBpOOT7ashYRGXg+VcfVIpyQ27YLtbRDxpStAD2qS7b0OzFr1IOblrwllDxVd
	utLnBjjxEVqYNYVpmiz7gm6+08aR+xM8obEuR62XT89Rgm5A9we8hrt7jzPIqTWtl/H1tuhqfeK7L
	LvQOirPkNnxOAsqc2BmJ6yPFcGNypT1pM8RIj2grFtljKE4eaOg6MZU4zGT0SccMuWmpW11luUjDD
	HzJguNXGupUtup8yt4VSFVlwrXtUU8y0SU/Go21CKvuKoS7mFCasD/Fn22Z2X4fP4npViBmNGy5gm
	Ior7ZaVQuqdYdCFhhg+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7urK-004ngr-0C;
	Tue, 28 Nov 2023 09:58:26 +0000
Received: from mail5.25mail.st ([74.50.62.9])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7urG-004nf4-0c;
	Tue, 28 Nov 2023 09:58:23 +0000
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id 5F8CB60871;
	Tue, 28 Nov 2023 09:57:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1701165497;
	bh=tQeGP10H+YEMxkuCC5ZqSkRKdCu2iitVcPgC9MNPInw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AYmiUMy8dYEV7WMSG8R47pS4cwSRZGb57lAqPqzGSy1KN/QAHCmrBq77dhO37/XIw
	 92e7Y96w9hEDK3crftRvhDeItlLEFq+QLOaPxBOzdf/UFxE31G3OXrAEMcez6AYv/H
	 DMM/MEcax9+vqpHEm+fuperg9bltVq44y7oQ8n34Fl7ToXsJ+mFxDRg+8pk6l1XWQd
	 jhaBkRij7yW855egwUrCkrN150vnaUckxwGUCr6jHcfPkvBzjMTNENanSimwgl908r
	 i31l3fYuxM8nzegFXrLWQ98WupHJWl+/Q9tw/Vx+52mUveW7aYfX1EG/scSbq5RPLf
	 X9wK6/D6/shUw==
Date: Tue, 28 Nov 2023 11:57:26 +0200
From: Tony Lindgren <tony@atomide.com>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: MyungJoo Ham <myungjoo.ham@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	=?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-mediatek@lists.infradead.org,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 2/6] ARM: dts: ti/omap: Replace deprecated
 extcon-usb-gpio id-gpio/vbus-gpio properties
Message-ID: <20231128095726.GQ5169@atomide.com>
References: <20230724103914.1779027-1-alexander.stein@ew.tq-group.com>
 <20230724103914.1779027-3-alexander.stein@ew.tq-group.com>
 <10373360.nUPlyArG6x@steina-w>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <10373360.nUPlyArG6x@steina-w>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_015822_290923_D5A9438F 
X-CRM114-Status: UNSURE (   8.58  )
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

* Alexander Stein <alexander.stein@ew.tq-group.com> [231117 12:08]:
> Hi everybody,
> 
> any feedback on this? Patch 3,4 and 6 have already been merged.

Sorry I did not know I'm supposed to pick it from the series.
Applying into omap-for-v6,8/dt thanks.

Tony

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
