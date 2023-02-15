Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35B51C61DA4
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Feb 2023 01:01:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iGbXT6vuBCJQ3m17FOuA3s/bRxnd4zI+lO8PDOGUBzc=; b=U1gyVRAYDHSf5Z
	OcmTSRtiPyDriyePgKrBxNVZVTSH9TMPTsTWXQ0QMZcokD7JrbiCCoEwcLw0u4RFwBTxKyT/bC7er
	yhOuTtrnwtjLUd6kE7fFQOmEMnJLxoczQNTVoAM7RIWaJTdlSjXV3NzzIgRd4o7qcOSgOB5HudqK9
	NpV6Lf4/vnoiDCtX8BQXEI00uCtbtzBC1M35yUBZ3cdj2BUivTsw1JXtL/Ro57at/egLhX94tIP4t
	XZ+XrQLDA9p+3DqzEWWo9gE4dFRnzsUiY1KCMfXwOv0XCDr2TP5OPvPMkIQHkIroWpoP6MHMHqrFA
	xX+tE7vm+IQ03i2zf5gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pS6Aj-0047PS-HM; Wed, 15 Feb 2023 01:01:21 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pS6Ag-0047Ne-1B
	for linux-rockchip@lists.infradead.org; Wed, 15 Feb 2023 01:01:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1676422877; x=1707958877;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=XOcFePDBSO8jCjv36R6D31rgCgrBpc9VWxAmEMfwpY4=;
  b=d3ExIEqi1V+j0zyRhKMirqA9HhNvRK7jlfB5jdtkxlkLEJgiYCgBK69w
   BkK9Ou3jqBl1tIp0frOoKEnSjmbwQo8rXSTk94Fm7wdRko0aSNc/o0udZ
   64gD/mvJDzkoGGGtJFQp7mMiDNGF1gWrcuBiYr0Xr6HGA6S8hOeg3MF55
   VINldJpfkVFHZFNdasoIyWDw1KNWOjqJBMtw4SJstrnHlznQRLeUgyEWB
   BrX1x3GFtfvwYeUMakQjZlDFrQ7izRHkyWvaHpArFUB5qenXmfvUrJsRS
   Cux/fKAgkPWnZwO3O7Q1e1lKq4bTIOv+QEljfNCDZN6eeeITCAiWYdCDK
   w==;
X-IronPort-AV: E=Sophos;i="5.97,298,1669046400"; 
   d="scan'208";a="335288769"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 15 Feb 2023 09:01:10 +0800
IronPort-SDR: NFfSYa7sodhZuQbC2rIsPQVLosvUsA0j64cawEPFKo/FPLr2ZsVd9Ijs9An3VWEZAaWzuBiP53
 HF/WltU2Sp65Fzx+i/NJ7DJGiIG7buxPwKSIRjNW7FH5F1s5K3y+rwhSwPqd7Vp77qqGwf0aTw
 uUXbMc5fCNLp+8RCzd0I5wINNs/x4CzSRfBGxBq6DNs87TZh99CywRZtyNVnBEtzvrEkpFkpo9
 penr2HA60ANnLyGsZtotZbo5bFFhfRSh9yL9OKXD0AMXQY/r1k33Y6aL9RikcyX56qhv+afiKZ
 e7A=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 14 Feb 2023 16:18:17 -0800
IronPort-SDR: JD1MZ9F+s/al8XJRKXEaEGHlU55ZSFTIRxvBmUl9gHTcMTQ51f5AYTxGUd1qJ7AdfAwGwXemyD
 HY9cpnhHRaNTxzDLCMQQOLd9qGRjoF2a4bBFGNc7a/E+tHsedYnlFGyp2t6wDTkl9B4zQBRmRD
 zHvlSygxDbXdPyZGD2LHPfbQyKlCCtbF0pQfCrqoktCi1sAGtDxwEFC/HqBD3ukoVAB7EPx1FR
 wBx+Bjf9P09joAjJWAfeODGDffJ3xFhMosHPEElXGAAaSHDTNJ9hXYGntR/SEVh7HeJTdyod8z
 rv4=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 14 Feb 2023 17:01:11 -0800
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
	by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4PGfsK2ml8z1RwvL
	for <linux-rockchip@lists.infradead.org>; Tue, 14 Feb 2023 17:01:09 -0800 (PST)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
	reason="pass (just generated, assumed good)"
	header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
	opensource.wdc.com; h=content-transfer-encoding:content-type
	:in-reply-to:organization:from:references:to:content-language
	:subject:user-agent:mime-version:date:message-id; s=dkim; t=
	1676422868; x=1679014869; bh=XOcFePDBSO8jCjv36R6D31rgCgrBpc9VWxA
	mEMfwpY4=; b=CWyGVs8vvV8V9TroMGTaXUrq6Dk5LKKI05WQCVteluiqIHuQR3/
	KipJSou78EOtFXvraqsQfwe3sXXpfCfDnlzWxEKHgGxMSo7a+uHIRToYKdNN6OZP
	mgkERlXieonQr5tNTcfwecodSCCjr5yV/KxlbEjzc6Gg+09u6eR1fyZjZcs+mmOb
	IJUiceCuMikYRvouEdxoKNS7q/a30gK1wj51E8y8NIQaN94u2CYOx12zLJJQDMFv
	dEO/CdCQnKqXn28iAA7Y0MYiGtjNSeOgBDL8raHjVMxkmK0NGL0ypF7IgoBKzzpY
	JrSQWeqzyoPkBxSkCaWwrx1pFFDRSOuwhnA==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
	by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id TfLJHIL282mG for <linux-rockchip@lists.infradead.org>;
	Tue, 14 Feb 2023 17:01:08 -0800 (PST)
Received: from [10.225.163.116] (unknown [10.225.163.116])
	by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4PGfsD4tpXz1RvLy;
	Tue, 14 Feb 2023 17:01:04 -0800 (PST)
Message-ID: <adfcf9a9-8607-9778-1c83-de0092c70e0b@opensource.wdc.com>
Date: Wed, 15 Feb 2023 10:01:03 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 4/9] PCI: rockchip: Add poll and timeout to wait for
 PHY PLLs to be locked
Content-Language: en-US
To: Rick Wertenbroek <rick.wertenbroek@gmail.com>, alberto.dassatti@heig-vd.ch
Cc: xxm@rock-chips.com, rick.wertenbroek@heig-vd.ch, stable@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Jani Nikula <jani.nikula@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Mikko Kovanen <mikko.kovanen@aavamobile.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
References: <20230214140858.1133292-1-rick.wertenbroek@gmail.com>
 <20230214140858.1133292-5-rick.wertenbroek@gmail.com>
From: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <20230214140858.1133292-5-rick.wertenbroek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230214_170118_114292_A6DDBFAC 
X-CRM114-Status: GOOD (  19.64  )
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

On 2/14/23 23:08, Rick Wertenbroek wrote:
> The RK3399 PCIe controller should wait until the PHY PLLs are locked.
> Add poll and timeout to wait for PHY PLLs to be locked. If they cannot
> be locked generate error message and jump to error handler. Accessing
> registers in the PHY clock domain when PLLs are not locked causes hang
> The PHY PLLs status is checked through a side channel register.
> This is documented in the TRM section 17.5.8.1 "PCIe Initialization
> Sequence".
> 
> Fixes: cf590b078391 ("PCI: rockchip: Add EP driver for Rockchip PCIe controller")
> Cc: stable@vger.kernel.org
> Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>

A couple of nits below. Otherwise:

Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Tested-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>

> ---
>  drivers/pci/controller/pcie-rockchip.c | 16 ++++++++++++++++
>  drivers/pci/controller/pcie-rockchip.h |  2 ++
>  2 files changed, 18 insertions(+)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
> index 990a00e08..5f2e2dd5d 100644
> --- a/drivers/pci/controller/pcie-rockchip.c
> +++ b/drivers/pci/controller/pcie-rockchip.c

[...]

> +	err = readx_poll_timeout(rockchip_pcie_read_addr, PCIE_CLIENT_SIDE_BAND_STATUS,

Nit: long line. Split it after the first comma.

> +		regs, !(regs & PCIE_CLIENT_PHY_ST), RK_PHY_PLL_LOCK_SLEEP_US,
> +		RK_PHY_PLL_LOCK_TIMEOUT_US);
> +

Nit: no need for this blank line.

> +	if (err) {
> +		dev_err(dev, "PHY PLLs could not lock, %d\n", err);
> +		goto err_power_off_phy;
> +	}
> +

-- 
Damien Le Moal
Western Digital Research


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
