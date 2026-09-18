Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDE7AC982DA
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Sep 2026 15:08:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HqNwzJv+HisNKTxLPKtxDQH/UpfJIaG+t4HkDsOgnzo=; b=MFBklIUYWl1jaQ
	eyEgSFFFn2/yaReAFWDep7T4UWVC73+gA96OPOLHjZiX2WZFE3PfF5TfQ6/RlC6UVERAy/Oz75ji+
	bxypIhPs8JcZvV2oQP/AqMGbKUvRPUkzCY7rPtT05HzCf09XYXLXvm0S6AuZpyoQIzEn7hvHm1YV6
	+Bverlj/jKeAcTr92NTEVFZrHdp/RtJTd+mkHLV6dHQDOrlVlbZYfJyK2KyXYTo4AqHScntYDDB8R
	frUHO5WJcSQC1u4tu7PU1Zlk0nSt+Uf30GJKNAXGgqPO41OK9KseLVmQPRDlzHZBOlENgLHQ4X3+S
	su0awiNczHLJ/kj/kJ4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7aBv-0000000EpYx-3nHI;
	Fri, 18 Sep 2026 15:07:55 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7aBt-0000000EpXj-0mz3;
	Fri, 18 Sep 2026 15:07:54 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1789744065; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=I6AW+OWNKfm4s1J1lr3yv1SWdLqkpIuUnes4bAC1oU/tIdhk8iXNdTdmVVRlsViDKJ23EjB160SMgGIV5svRWbnLU7LUqZJhQkaJG/ndOLztCQZtjNC/hVDOrgV0HDTq4srb/WtXy/ZDO9tQ3ez318TfrIqg4jD78kL2YtenAc0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1789744065; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=6DYLdUfKD8lQHyVdszF6+D1lk2bnnMb1mJc/zRkdlrQ=; 
	b=T700XLKdSf0EGDN75SihmMKYg3lAWCsUqclWVCyT6oN7KvzMiSmi8ugGG8ylbpfBEtqLjHddEh0JBfDj5lIQwQSSGDMZ/zg/U/ZsTBUJitrdGLvIP9saHZVnFQhEPexxtIsQqDm5Eg24LQGLJp8azKalhSJDgNZy3ufDuaZo0r8=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=michael.riesch@collabora.com;
	dmarc=pass header.from=<michael.riesch@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1789744065;
	s=zohomail; d=collabora.com; i=michael.riesch@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=6DYLdUfKD8lQHyVdszF6+D1lk2bnnMb1mJc/zRkdlrQ=;
	b=Iveo383UsiLdY2oMy62uJysUNVHEvUOdK4YiiR0HmfG3LJ82de/K91VgKfFIqFzJ
	2MuWVDpTt3ko9gQQz6FdUrfvDMCVIYFYOfSPZzXxgmydGBHb1Amt2X77NPqlkoWJgah
	BfXG4l1kNpj/N4L5Kd3/Haz+kEBfSW3C+IrZ+XG4=
Received: by smtp.zohomail.com with SMTPS id 1789744062457111.72786165405773;
	Fri, 18 Sep 2026 08:07:42 -0700 (PDT)
Message-ID: <eee3fd59-adfc-4f36-b467-e1e7c2ad38de@collabora.com>
Date: Fri, 18 Sep 2026 17:07:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/4] phy: rockchip: add support for the RK3576 MIPI
 CSI-2 DPHYs
To: Amin Gattout <amin.gattout@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, Conor Dooley <conor.dooley@microchip.com>
References: <20260915-rk3576-dphy-v2-0-b56e68b54b8c@gmail.com>
Content-Language: en-US
From: Michael Riesch <michael.riesch@collabora.com>
In-Reply-To: <20260915-rk3576-dphy-v2-0-b56e68b54b8c@gmail.com>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260918_080753_302985_9684BA37 
X-CRM114-Status: GOOD (  19.88  )
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

Hi Amin,

Thanks for your work, very nice!

On 9/15/26 12:42, Amin Gattout wrote:
> Hi all,
> 
> The Rockchip RK3576 features two MIPI CSI-2 DPHYs. The CSI-2 DPHYs can be
> supported using the existing phy-rockchip-inno-csidphy driver.
> 
> This patch series adds support for this variant.
> 
> As you may have guessed, this is part of the efforts to bring the
> support for the RK3576 camera pipeline (VICAP) mainline.
> 
> Looking forward to your comments!
> 
> ---
> Changes in v2:
> - Patch 3: drop the RK3576 GRF register table, which duplicated the
>   RK3588 one, and reuse rk3588_grf_dphy_regs instead, so that the reset
>   names are now the only difference between the two variants (Michael)
> - Patch 3: reword the commit message accordingly
> - Patch 2: spell out in the commit message why the RK3576 compatible
>   cannot use a fallback (Conor)
> - Collected Acked-by from Conor on patches 1 and 2
> - Link to v1: https://patch.msgid.link/20260820-rk3576-dphy-v1-0-70e25e8d5e78@gmail.com
> 
> ---
> Amin Gattout (4):
>       dt-bindings: soc: rockchip: add rk3576 csidphy grf syscon
>       dt-bindings: phy: rockchip-inno-csi-dphy: add rk3576 variant
>       phy: rockchip: phy-rockchip-inno-csidphy: add support for rk3576 variant
>       arm64: dts: rockchip: add csi dphy nodes to rk3576


For the complete series:

Reviewed-by: Michael Riesch <michael.riesch@collabora.com>

Best regards,
Michael

> 
>  .../bindings/phy/rockchip-inno-csi-dphy.yaml       |  2 ++
>  .../devicetree/bindings/soc/rockchip/grf.yaml      |  1 +
>  arch/arm64/boot/dts/rockchip/rk3576.dtsi           | 34 ++++++++++++++++++++++
>  drivers/phy/rockchip/phy-rockchip-inno-csidphy.c   | 15 ++++++++++
>  4 files changed, 52 insertions(+)
> ---
> base-commit: bd5f485f3f026225b86573e559af0b7254ef4184
> change-id: 20260819-rk3576-dphy-2304f848215b
> 
> Best regards,
> --  
> Amin Gattout <amin.gattout@gmail.com>
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
