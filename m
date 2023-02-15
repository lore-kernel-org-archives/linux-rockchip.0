Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 999FCC05027
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Feb 2023 01:27:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rtvkkk1i3PUMEAX6pOmlnnifDl51paOpVIMROkyzE+8=; b=FnpFt79OvlKQz8
	A99+P7wTzBQamFpnLlXoEdtrz+OTHKmPDsAvq3wxu+snifRZiKLPg7hf6QAtrdBOTXNmt1p2i4hRz
	wShxnPKtmJSQ65mRK8FlGdN9C4O2NqM71l60r7BQKUI7Cr2RMSl+gDdk7v8V10wzd2CYdWR5hB5ax
	zdfPrAhAWfwWIEyWTkLa9Zenaqbc4cfCPvw7jDMx44MIR9lSjS4GNMvcty02eihVRG0wJ4TQeXvNs
	/eJkIVQXzr5ERafS4ArTmGpU5ukHQW7YuCwetPfPNA724UiyTGXIkwcctt3qG/JWICYLv3nf9BhR8
	OjCpmus/hJIw0ShMXKmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pS6Zi-004GYa-MG; Wed, 15 Feb 2023 01:27:10 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pS6ZZ-004GW5-Eu
	for linux-rockchip@lists.infradead.org; Wed, 15 Feb 2023 01:27:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1676424421; x=1707960421;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=rvloK5ngdtPCbJug6sOHC6AFBm+SqF5jOZbIHY27apo=;
  b=O3INH7ESdD7Y3z7R1e9X++7YYwhoyDFtdBy07nklKMLrzucSpJgD9FfH
   cFrjjbvPo4Ikk9mfAZsXoyIm130Ad2qmHZH1iaUm9JEcKnoCGKye6eh/C
   BJJqOXEcoS2hpw8de9IBvFN/h9d6WUkVKGPybUOZjuSz28wNdTKZe9Vkg
   5sJhZLLv/DRCbBl9A7kqvPYFcEsag+7NYNMxOpaGhsOTWJ6IT3t3GKxMv
   261mfx+NcYQ9IDwnsJ/gCFIUxPu6U9/1cy4HWNOdNP6JlMnqGsQRPCZoe
   wTyhXWLQ3frzpsBUZS3q1ueoQE8AFGorjlSjdnLQOQmTDCfrc/0KWN7hs
   g==;
X-IronPort-AV: E=Sophos;i="5.97,298,1669046400"; 
   d="scan'208";a="228296235"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 15 Feb 2023 09:26:59 +0800
IronPort-SDR: 0CDMIB33wq8oiWA51SFOlPPojZrJCW4rxjCuSvX6o335M9Lsh76AuiNQd+k3BOpQonYSdTMqvP
 yshWawH5KzsFhIw3NrukT5V8zJzzJ04mRsrsqlVglys0KfEXiCVnI2r5QyZnQRoG5ByH1eFwX2
 OqmVIbF0sUHdgGIP+gaHGl+wxzDYlT4Z8usRkiE6B2M6hv0zCJ+n/8xoaQ3n2xq7yVph53BMgg
 yXGQAjNkVW22oZB2MkdFm0k0Gcsbsrrzgg3BQYGtxkw7+NLhX9Dz1pkl+BQVBTnpIV5QyAu+po
 cF8=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 14 Feb 2023 16:44:06 -0800
IronPort-SDR: jF0/BQwdpPoH5vzSGGau5pF8HICJPRimGl+PCH/RrGiY3i7YRoepXfvgpsMftWV6BsaXhOEMQ9
 uoKRnus+BiEoOL741gEMNqmOMOBAha17vtW0n+HAR42lQn+KzJwBNhzGDjTzAD2P7AOkU/gW7b
 VeCipeKxfB5/tB0dt18PbY5uUMh4FSeTxiQ3qdnOCP1PctzfNVigY4OL7FrGYnMaaO1Y7vU0q4
 qLuujwYq1Pj+AYMkQ6e8vAz1y10+BP6IFq5cIVWDd/V0jAUfR47iM/qp/l5uVUBrzIzeQCtSmW
 jF0=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 14 Feb 2023 17:26:59 -0800
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
	by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4PGgR71qV7z1RvTr
	for <linux-rockchip@lists.infradead.org>; Tue, 14 Feb 2023 17:26:59 -0800 (PST)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
	reason="pass (just generated, assumed good)"
	header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
	opensource.wdc.com; h=content-transfer-encoding:content-type
	:in-reply-to:organization:from:references:to:content-language
	:subject:user-agent:mime-version:date:message-id; s=dkim; t=
	1676424417; x=1679016418; bh=rvloK5ngdtPCbJug6sOHC6AFBm+SqF5jOZb
	IHY27apo=; b=XROi/FN9X2gcoDt8oVw1OMORiTAwQFNEE2nYYXOd0EwCWAdf1Z3
	4p1O4qn0lqAlbnmL1rz3FlOi4yfBD8I0ck7c4yn3Wlt+/oTj7EHGSkWW/vOfntyU
	eNZavmZ9BWy66mJQ7x4sjzozwiqsR9rfMbbrtpAqb+K7uLlM8RI5zk4ESTC0Wj0/
	4kq39GdDjT9YRXEwh/FeajOcOkYuAL9dewJD66hqlXUao7ucyi3RmAdsL8KMtOc9
	j8DQUrhWMTPWiFFAmwpMaFxFgrSo1JpDp2yTREjxPKBmFuChSr03MtIlLajaa7fk
	Kwpt3AAMS+0JKDQONC9gB7HGYpWLLnVcNpQ==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
	by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id 6E3S16IE-Hyw for <linux-rockchip@lists.infradead.org>;
	Tue, 14 Feb 2023 17:26:57 -0800 (PST)
Received: from [10.225.163.116] (unknown [10.225.163.116])
	by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4PGgR14p3Jz1RvLy;
	Tue, 14 Feb 2023 17:26:53 -0800 (PST)
Message-ID: <67d08dce-4610-5e34-853a-1d09c5389607@opensource.wdc.com>
Date: Wed, 15 Feb 2023 10:26:52 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 7/9] PCI: rockchip: Fix legacy IRQ generation for
 RK3399 PCIe endpoint core
Content-Language: en-US
To: Rick Wertenbroek <rick.wertenbroek@gmail.com>, alberto.dassatti@heig-vd.ch
Cc: xxm@rock-chips.com, rick.wertenbroek@heig-vd.ch, stable@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Jani Nikula <jani.nikula@intel.com>,
 Mikko Kovanen <mikko.kovanen@aavamobile.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
References: <20230214140858.1133292-1-rick.wertenbroek@gmail.com>
 <20230214140858.1133292-8-rick.wertenbroek@gmail.com>
From: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <20230214140858.1133292-8-rick.wertenbroek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230214_172701_538007_63009C4B 
X-CRM114-Status: GOOD (  26.51  )
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
> Fix legacy IRQ generation for RK3399 PCIe endpoint core according to
> the technical reference manual (TRM). Assert and deassert legacy
> interrupt (INTx) through the legacy interrupt control register
> ("PCIE_CLIENT_LEGACY_INT_CTRL") instead of manually generating a PCIe
> message. The generation of the legacy interrupt was tested and validated
> with the PCIe endpoint test driver.
> 
> Fixes: cf590b078391 ("PCI: rockchip: Add EP driver for Rockchip PCIe controller")
> Cc: stable@vger.kernel.org
> Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>

Some nits below. But otherwise works fine for me.

> ---
>  drivers/pci/controller/pcie-rockchip-ep.c | 38 +++++------------------
>  drivers/pci/controller/pcie-rockchip.h    |  6 ++++
>  2 files changed, 14 insertions(+), 30 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
> index cbc281a6a..ca5b363ba 100644
> --- a/drivers/pci/controller/pcie-rockchip-ep.c
> +++ b/drivers/pci/controller/pcie-rockchip-ep.c
> @@ -328,45 +328,23 @@ static void rockchip_pcie_ep_assert_intx(struct rockchip_pcie_ep *ep, u8 fn,
>  					 u8 intx, bool is_asserted)
>  {
>  	struct rockchip_pcie *rockchip = &ep->rockchip;
> -	u32 r = ep->max_regions - 1;
> -	u32 offset;
> -	u32 status;
> -	u8 msg_code;
> -
> -	if (unlikely(ep->irq_pci_addr != ROCKCHIP_PCIE_EP_PCI_LEGACY_IRQ_ADDR ||
> -		     ep->irq_pci_fn != fn)) {
> -		rockchip_pcie_prog_ep_ob_atu(rockchip, fn, r,
> -					     AXI_WRAPPER_NOR_MSG,
> -					     ep->irq_phys_addr, 0, 0);
> -		ep->irq_pci_addr = ROCKCHIP_PCIE_EP_PCI_LEGACY_IRQ_ADDR;
> -		ep->irq_pci_fn = fn;
> -	}
>  
>  	intx &= 3;
>  	if (is_asserted) {
>  		ep->irq_pending |= BIT(intx);
> -		msg_code = ROCKCHIP_PCIE_MSG_CODE_ASSERT_INTA + intx;
>  	} else {
>  		ep->irq_pending &= ~BIT(intx);
> -		msg_code = ROCKCHIP_PCIE_MSG_CODE_DEASSERT_INTA + intx;
>  	}
>  
> -	status = rockchip_pcie_read(rockchip,
> -				    ROCKCHIP_PCIE_EP_FUNC_BASE(fn) +
> -				    ROCKCHIP_PCIE_EP_CMD_STATUS);
> -	status &= ROCKCHIP_PCIE_EP_CMD_STATUS_IS;
> -
> -	if ((status != 0) ^ (ep->irq_pending != 0)) {
> -		status ^= ROCKCHIP_PCIE_EP_CMD_STATUS_IS;
> -		rockchip_pcie_write(rockchip, status,
> -				    ROCKCHIP_PCIE_EP_FUNC_BASE(fn) +
> -				    ROCKCHIP_PCIE_EP_CMD_STATUS);
> +	if (is_asserted) {
> +		rockchip_pcie_write(rockchip,
> +			PCIE_CLIENT_INT_IN_ASSERT | PCIE_CLIENT_INT_PEND_ST_PEND,
> +			PCIE_CLIENT_LEGACY_INT_CTRL);
> +	} else {
> +		rockchip_pcie_write(rockchip,
> +			PCIE_CLIENT_INT_IN_DEASSERT | PCIE_CLIENT_INT_PEND_ST_NORMAL,
> +			PCIE_CLIENT_LEGACY_INT_CTRL);
>  	}

With this change, you have now twice "if (is_asserted) {", which is not
necessary. You can simplify the code a bit:

static void rockchip_pcie_ep_assert_intx(struct rockchip_pcie_ep *ep,
					 u8 fn, u8 intx, bool do_assert)
{

        u8 msg_code;



        intx &= 3;

        if (do_assert) {

                ep->irq_pending |= BIT(intx);

                msg_code = ROCKCHIP_PCIE_MSG_CODE_ASSERT_INTA + intx;

                rockchip_pcie_write(&ep->rockchip,

                        PCIE_CLIENT_INT_IN_ASSERT |

                        PCIE_CLIENT_INT_PEND_ST_PEND,

                        PCIE_CLIENT_LEGACY_INT_CTRL);

                return;

        }



        ep->irq_pending &= ~BIT(intx);

        msg_code = ROCKCHIP_PCIE_MSG_CODE_DEASSERT_INTA + intx;

        rockchip_pcie_write(&ep->rockchip,

                            PCIE_CLIENT_INT_IN_DEASSERT |

                            PCIE_CLIENT_INT_PEND_ST_NORMAL,

                            PCIE_CLIENT_LEGACY_INT_CTRL);

}

Note also the renaming of the argument "is_asserted" to "do_assert". The
name is_asserted is badly misleading considering the english meaning given
that it is true when we *must* do the assert and false when we must
deassert. So do_assert as a name better match the use of that argument I
think.

> -
> -	offset =
> -	   ROCKCHIP_PCIE_MSG_ROUTING(ROCKCHIP_PCIE_MSG_ROUTING_LOCAL_INTX) |
> -	   ROCKCHIP_PCIE_MSG_CODE(msg_code) | ROCKCHIP_PCIE_MSG_NO_DATA;
> -	writel(0, ep->irq_cpu_addr + offset);
>  }
>  
>  static int rockchip_pcie_ep_send_legacy_irq(struct rockchip_pcie_ep *ep, u8 fn,
> diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
> index 72e427a0f..e90c2a2b8 100644
> --- a/drivers/pci/controller/pcie-rockchip.h
> +++ b/drivers/pci/controller/pcie-rockchip.h
> @@ -39,6 +39,12 @@
>  #define   PCIE_CLIENT_GEN_SEL_1		  HIWORD_UPDATE(0x0080, 0)
>  #define   PCIE_CLIENT_GEN_SEL_2		  HIWORD_UPDATE_BIT(0x0080)
>  #define PCIE_CLIENT_SIDE_BAND_STATUS	(PCIE_CLIENT_BASE + 0x20)
> +#define PCIE_CLIENT_LEGACY_INT_CTRL		(PCIE_CLIENT_BASE + 0x0c)
> +#define   PCIE_CLIENT_INT_IN_ASSERT		HIWORD_UPDATE_BIT(0x0002)
> +#define   PCIE_CLIENT_INT_IN_DEASSERT	HIWORD_UPDATE(0x0002, 0)
> +#define   PCIE_CLIENT_INT_PEND_ST_PEND	HIWORD_UPDATE_BIT(0x0001)
> +#define   PCIE_CLIENT_INT_PEND_ST_NORMAL	HIWORD_UPDATE(0x0001, 0)
> +#define PCIE_CLIENT_SIDE_BAND_STATUS	(PCIE_CLIENT_BASE + 0x20)
>  #define   PCIE_CLIENT_PHY_ST			BIT(12)
>  #define PCIE_CLIENT_DEBUG_OUT_0		(PCIE_CLIENT_BASE + 0x3c)
>  #define   PCIE_CLIENT_DEBUG_LTSSM_MASK		GENMASK(5, 0)

-- 
Damien Le Moal
Western Digital Research


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
