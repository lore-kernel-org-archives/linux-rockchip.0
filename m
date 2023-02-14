Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B51ADC6379F
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Feb 2023 23:56:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ILTSI0HXyfow14k8m1wymj8iGUqj0PMo/wSW0Rarsr4=; b=m71mx32cPXl62Y
	zjp1J/5ZFW2nV9QtJVTDhrOF3s3wgvzzWkylp2bdoHfNG2wV5/NxzkIz4fPdihnLYd50SoVXWKlBB
	XXPH/yRPne56FHN4MwqjlnuPbxMpKR4Wwy2v1tnpIfhlsix+HoQ56JI4a8Z0ktrEPKrSdY+BLZHWx
	elaKVAoN2EK2fp0JSuwn6TZElGSnk3UdyhK9Bv9qIndALH7rSMwZvXAh5xxvjVXzlBwfFf0N/jgTh
	fXOl5/C685thDa2htB7Q3lkRx+ih+ofU6JtKBFvjrpvupieUw2vyjPKCZwip3Pm9GDGLeocxazvkA
	7tv9qs8nnocQ2uU4/Olg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pS59p-003xUV-Ph; Tue, 14 Feb 2023 23:56:21 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pS59g-003xS6-CA
	for linux-rockchip@lists.infradead.org; Tue, 14 Feb 2023 23:56:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1676418972; x=1707954972;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=pEnLWNUeiDXooxyuVty+8cCKql27+XR1BGKYZjuILOw=;
  b=RgmGB/bqIasDreCCl8xZlgrOI/JciWEz3yCBS0aBFn83xxayJigu7E3Y
   M75ZRYESXOlvg3BZ9jn/i0fXLuQVhEGoPfQQb3aoH7dNEbQ7jsJCY6jyL
   DhWZMQmQnbAEiCR6hdLlm1dopCNAUUNdkRBvnLAT7TAAUmXwRRNuButpa
   S19RCkCp6xqyecJKvGw0WVU9k0FuDm1OY9aLy/u0bS+PzbouVtbr+n9pX
   IuKuSOs208Z/GgHr53TCEY+9bXEZkpjPbukyTkgO56xJUP6Up+o3LL3ls
   XcAwFhAOkYDo3j7MiiNs/tOkfGXiGwGLoJEnegarnRD1hACszqo0dfWS8
   w==;
X-IronPort-AV: E=Sophos;i="5.97,298,1669046400"; 
   d="scan'208";a="327615798"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 15 Feb 2023 07:56:08 +0800
IronPort-SDR: /oepbpCRU42DNHqwSnjpwrnGkhUlyys+lS7GuBLW/yGpk/vq461VcHxU6x76hhrSrXvQcf2Iug
 /Y428QXWzhhwCGCjtQTmn0GzlnCggz4VNNlSTPR//uvtR8EepjWZDqF09aWQfSjEZw4b/OXcJY
 L9jBzZdYOTEN8Rw4JuYq8NxG1t/ztIZPpzgGzHeC+1qyTXwZUEdiXz3dUCWxC1gWd5d+QprGCp
 Zdam7HUQIFAqsKIFNIwzXTkZOg5SqV0mZI2DSol7oA51/p5U+gF+LYaSCxVv2TIpc1XrVfoaTD
 FDQ=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 14 Feb 2023 15:13:15 -0800
IronPort-SDR: s78FGkI97nEx/mFsm1uMpkNChMN7dZbgPg+V1jy6pFUA4uy+h0caf5JCv8sKp/9QEjAtFnlQVT
 jO4Pp7PHciMTcBUQQm/pxtOzvlz7W5RGLtyzB+IAonxmfs29BNlAVV7D56W+R6PBefManh6mvo
 weDtfE90boR36fTznG6xIsML0vU2b0xx2FKuUrrBZpmwK6UKKtZXxV7NzqMi0xDSTHkXN6srPl
 u0VI2REAVn6bWMDiYpfEiRaJBvH/g/uqBzb+EtfrMka3P8DgHGDxtHulIARG30aFjOP3hzBDH1
 yx4=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 14 Feb 2023 15:56:08 -0800
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
	by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4PGdQH5b4dz1Rwrq
	for <linux-rockchip@lists.infradead.org>; Tue, 14 Feb 2023 15:56:07 -0800 (PST)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
	reason="pass (just generated, assumed good)"
	header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
	opensource.wdc.com; h=content-transfer-encoding:content-type
	:in-reply-to:organization:from:references:to:content-language
	:subject:user-agent:mime-version:date:message-id; s=dkim; t=
	1676418966; x=1679010967; bh=pEnLWNUeiDXooxyuVty+8cCKql27+XR1BGK
	YZjuILOw=; b=ikPUjaoUBrwQzD0XtJBdPMNlUgHr9DIs/NZUcygVDiRPAgQWpRN
	GH4ICJUSMCYC73uHMjkCKsKzF/v5w/QgmRt9hR5POPV32S8hDk220xWZdU0oytDo
	qAXQpf2021exeZ5/ZTgO0BKKx5ohsspoKFwX5lt9UG1261LW/spWaQ9aKHmZyDzZ
	9878KXRrPX1hX+KRVSQQaJAG1W4BMGJfjhr0fi6WShB7hQbZAPVUYL9gcbzXx08f
	vGwpE77XRMOM5EmEnA7j+ciioKnKW4vvEa9U0NCHvV3NcWiQgsHVz4y6C6RjUmO5
	Yp62eaCXHahoZbnK4blMKgmZZ8ikXQketbA==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
	by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id LVfofl7aHJFV for <linux-rockchip@lists.infradead.org>;
	Tue, 14 Feb 2023 15:56:06 -0800 (PST)
Received: from [10.225.163.116] (unknown [10.225.163.116])
	by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4PGdQC15SSz1RvLy;
	Tue, 14 Feb 2023 15:56:02 -0800 (PST)
Message-ID: <2ebd33e2-46ef-356d-ff4c-81b74950d02f@opensource.wdc.com>
Date: Wed, 15 Feb 2023 08:56:01 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 1/9] PCI: rockchip: Remove writes to unused registers
Content-Language: en-US
To: Rick Wertenbroek <rick.wertenbroek@gmail.com>, alberto.dassatti@heig-vd.ch
Cc: xxm@rock-chips.com, rick.wertenbroek@heig-vd.ch,
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
 <20230214140858.1133292-2-rick.wertenbroek@gmail.com>
From: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <20230214140858.1133292-2-rick.wertenbroek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230214_155612_484255_E798FD21 
X-CRM114-Status: GOOD (  19.35  )
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
> Remove write accesses to registers that are marked "unused" (and
> therefore read-only) in the technical reference manual (TRM)
> (see RK3399 TRM 17.6.8.1)
> 
> Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>

I checked the TRM and indeed these registers are listed as unused.
However, with this patch, nothing work for me using a Pine rockpro64
board. Keeping this patch, your series (modulo some other fixes, more
emails coming) is making things work !

So I think the bug is with the TRM, not the code. THinking logically about
htis, it makes sense: this is programming the address translation unit to
translate mmio & dma between host PCI address and local CPU space address.
If we never set the PU address, how can that unit possibly ever translate
anything ?

> ---
>  drivers/pci/controller/pcie-rockchip-ep.c | 10 ----------
>  1 file changed, 10 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
> index d1a200b93..d5c477020 100644
> --- a/drivers/pci/controller/pcie-rockchip-ep.c
> +++ b/drivers/pci/controller/pcie-rockchip-ep.c
> @@ -61,10 +61,6 @@ static void rockchip_pcie_clear_ep_ob_atu(struct rockchip_pcie *rockchip,
>  			    ROCKCHIP_PCIE_AT_OB_REGION_DESC0(region));
>  	rockchip_pcie_write(rockchip, 0,
>  			    ROCKCHIP_PCIE_AT_OB_REGION_DESC1(region));
> -	rockchip_pcie_write(rockchip, 0,
> -			    ROCKCHIP_PCIE_AT_OB_REGION_CPU_ADDR0(region));
> -	rockchip_pcie_write(rockchip, 0,
> -			    ROCKCHIP_PCIE_AT_OB_REGION_CPU_ADDR1(region));
>  }
>  
>  static void rockchip_pcie_prog_ep_ob_atu(struct rockchip_pcie *rockchip, u8 fn,
> @@ -114,12 +110,6 @@ static void rockchip_pcie_prog_ep_ob_atu(struct rockchip_pcie *rockchip, u8 fn,
>  		     PCIE_CORE_OB_REGION_ADDR0_LO_ADDR);
>  		addr1 = upper_32_bits(cpu_addr);
>  	}
> -
> -	/* CPU bus address region */
> -	rockchip_pcie_write(rockchip, addr0,
> -			    ROCKCHIP_PCIE_AT_OB_REGION_CPU_ADDR0(r));
> -	rockchip_pcie_write(rockchip, addr1,
> -			    ROCKCHIP_PCIE_AT_OB_REGION_CPU_ADDR1(r));
>  }
>  
>  static int rockchip_pcie_ep_write_header(struct pci_epc *epc, u8 fn, u8 vfn,

-- 
Damien Le Moal
Western Digital Research


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
