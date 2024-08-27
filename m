Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C044C5320E
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Aug 2024 09:52:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WVaZm+XHQkS82PI+sYeCoBfX+HjVm9J5AEafhNTskn0=; b=bdo072auqOmcWr
	VMhmoJnYmmXgBZgEozAfXcYrlykvfHftelNW7Wgcx1EUwZw/IEXxdeMrN7Q6ks2KoqkjcKPD2egsp
	4DNHfQ5+jWdlImQBxIlerUO6pDeg6sKwS/pYjdFXA8Pcz23GVibgvGk/gKoR+TQWpTG2A6e9+t1XL
	dmQpGP8LL/n0XmP0aOdUFib0zf8lu6K9CiX12o/gQQVUSx/SVxMq9irvHn/v/zf6VChr7Ogn1KQMr
	qA+6FPUbi1l8TjAl55Po0yJGTVPj7zLSkL3wBXtIwiUgbusLvMv5eJ/J6Pfqwwh7SI/rv6/OBswid
	vo0esn3BeR5KtTdgV31A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sisrv-0000000Afbf-06pH;
	Tue, 27 Aug 2024 09:52:07 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sisly-0000000AeBW-1lYV;
	Tue, 27 Aug 2024 09:45:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 2D271A4168A;
	Tue, 27 Aug 2024 09:45:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C31CC8B7AE;
	Tue, 27 Aug 2024 09:45:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724751956;
	bh=pa1uUMzxapFwOzulx/0qiK3diOx9wGmg2r0PnQpb3Po=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=r0/g4DkFoNMeZQXr+c7nIt9HCMpHNwLaAeWhQHQpmpmWs6LKkloAc9FjNT7oOVWEp
	 wrFkD2+Ss1W1sQ9L8xTj3/4LywM59VuX5qIbBfP7YnRPoIyY8P6Cb5hPZgaOIft+GN
	 kLSXCVV6xFYYRGykeo334KMdH1XPcFmmo00aH7eoSp+fxvfP46NNp9LC/aaLsRO5jr
	 Uxb1OLzXHLwoehorA2mRV3eBWFiV+2xn+E2ur2DbybxBQ2TCIKk+eTqw82AzEiDs2g
	 J6KF2/XHf82qYk/HAuxkXQ69hLGDkr8O+okf2h4D3xV4RUVwe/ESgZgtsilVPLhj3E
	 PbtN5N4RgltWA==
Message-ID: <38f54537-7ed3-4f6d-acac-1704c004a349@kernel.org>
Date: Tue, 27 Aug 2024 11:45:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/10] pmdomain: qcom: cpr: Simplify with dev_err_probe()
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>
Cc: linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 imx@lists.linux.dev, linux-arm-msm@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org
References: <20240823-cleanup-h-guard-pm-domain-v1-0-8320722eaf39@linaro.org>
 <20240823-cleanup-h-guard-pm-domain-v1-5-8320722eaf39@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konradybcio@kernel.org>
In-Reply-To: <20240823-cleanup-h-guard-pm-domain-v1-5-8320722eaf39@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_024558_555850_A23E7198 
X-CRM114-Status: UNSURE (   6.72  )
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

On 23.08.2024 2:51 PM, Krzysztof Kozlowski wrote:
> Use dev_err_probe() to make defer code handling simpler.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konradybcio@kernel.org>

Konrad

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
