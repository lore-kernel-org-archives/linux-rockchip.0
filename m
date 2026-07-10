Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DFD5C43458
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jul 2026 09:28:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d49XGrxvLx4aHkf93nQhpCzy1TQYCKNX93jIVnz10K0=; b=C7HcDtvFIE7DWd
	qOEIarS5E7LrQ1qYkat3aJGEgW3gyJ/PZ4s4CiD1CuMoXbmzBnP/4isiI/newkT2LnC9mDANK8m4g
	jaA2kZm3/eV4Ugwk5Niip2TIPbNRjkt50zhsxrh7oCb8AOauynO4Am1X33y/e8pyY3fnFgKLD/c1j
	+IADP8DPzh4ySbtMnycTOBHLws3g+nihI6OcAoXeMYHcYtRatYtS+0Arn3rDabsRP05yO1bQtsCAh
	Om6r77wP1zHinqM78DgXmfutzirE1EwzD9SqqHmfg2RxGXBi9QchiPbsEkzk2hxfnggNz3OZLM8f7
	+Pa6VtpVZsepJEfEJczw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wi7XF-00000004ZcO-45xd;
	Fri, 10 Jul 2026 09:28:41 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wi7XC-00000004ZbV-3eoA;
	Fri, 10 Jul 2026 09:28:40 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1783675711; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=fDBdrajC6dWpdTAPHLp6XUftta9JPXlcrSWiob5sFP4lTxC9j3nTLbSA+CAg2xX3T09JhigFLBQaYlMt+pSHuN7NGZLUtWBu/o44wQuxVajLLKa8WNlO9pAe20W+awImDVDXW/5RBK0ApXkf5mji8NFwY3qYWSzXSJFshTyhvUQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1783675711; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=Fw/fy3UoHLfUYgga6EEL6C47y2bXn7ggaSSiSrjCLtc=; 
	b=MKDV4Wjohs0/c7b92RwXmwayvARNhIjdXBlSwTZSGwl4P4oAgUpN1i2PhpdBo/27b1u96SDzedat0QMNCk5IKUdteZ+RRKL1ZZnG9hiaIWUCM4NzXEl3di2nZyHLp7wombGfESywc0YUefqIy4BiuBTXxz9eJnvWWviEITNsrII=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=michael.riesch@collabora.com;
	dmarc=pass header.from=<michael.riesch@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1783675711;
	s=zohomail; d=collabora.com; i=michael.riesch@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=Fw/fy3UoHLfUYgga6EEL6C47y2bXn7ggaSSiSrjCLtc=;
	b=LUDiahPo1uiRU9vDQVYU+OFRhDkQahT0ybvnAezfY4H3qbRqmw/gC3sYDiwGzbgT
	ONNOjgc4vhnP/N/dN1fL4vGcB5b+YgweeHJ+C0WD4K5/HWL8w3mPIwClVamrVwL09AD
	bwP9mrHhj9P4Wxyzjt/TLON9mFCyB/dj2eWeaTwg=
Received: by mx.zohomail.com with SMTPS id 1783675708973953.0877608836702;
	Fri, 10 Jul 2026 02:28:28 -0700 (PDT)
Message-ID: <29e2a6f6-c086-4d86-91d6-7d8dd39eb1c9@collabora.com>
Date: Fri, 10 Jul 2026 11:28:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] phy: rockchip: phy-rockchip-inno-csidphy: fix
 rk1808 hsfreq table
To: Gerald Loacker <gerald.loacker@wolfvision.net>,
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20260630-feature-mipi-csi-dphy-4k60-v3-0-176792ab71fa@wolfvision.net>
 <20260630-feature-mipi-csi-dphy-4k60-v3-1-176792ab71fa@wolfvision.net>
Content-Language: en-US
From: Michael Riesch <michael.riesch@collabora.com>
In-Reply-To: <20260630-feature-mipi-csi-dphy-4k60-v3-1-176792ab71fa@wolfvision.net>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260710_022838_957776_19104590 
X-CRM114-Status: GOOD (  14.53  )
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

Hi Gerald,

Thanks for your work.

On 6/30/26 09:48, Gerald Loacker wrote:
> The rk1808 hsfreq table capped at 2499 Mbps, preventing a data rate of
> exactly 2500 Mbps. Extend the final entry to 2500 Mbps to support this
> rate.
> 
> This is essential for RK3588 reusing this array and fully supporting
> rates up to 2500 Mbps.

Makes sense to me.

> 
> Fixes: bd1f775d6027 ("phy/rockchip: add Innosilicon-based CSI dphy")
> Signed-off-by: Gerald Loacker <gerald.loacker@wolfvision.net>

Reviewed-by: Michael Riesch <michael.riesch@collabora.com>

Best regards,
Michael

> ---
>  drivers/phy/rockchip/phy-rockchip-inno-csidphy.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-csidphy.c b/drivers/phy/rockchip/phy-rockchip-inno-csidphy.c
> index c79fb53d8ee5c..5281f8dea0ad3 100644
> --- a/drivers/phy/rockchip/phy-rockchip-inno-csidphy.c
> +++ b/drivers/phy/rockchip/phy-rockchip-inno-csidphy.c
> @@ -170,7 +170,7 @@ static const struct hsfreq_range rk1808_mipidphy_hsfreq_ranges[] = {
>  	{ 299, 0x06}, { 399, 0x08}, { 499, 0x0b}, { 599, 0x0e},
>  	{ 699, 0x10}, { 799, 0x12}, { 999, 0x16}, {1199, 0x1e},
>  	{1399, 0x23}, {1599, 0x2d}, {1799, 0x32}, {1999, 0x37},
> -	{2199, 0x3c}, {2399, 0x41}, {2499, 0x46}
> +	{2199, 0x3c}, {2399, 0x41}, {2500, 0x46}
>  };
>  
>  static const struct hsfreq_range rk3326_mipidphy_hsfreq_ranges[] = {
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
