Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB3CDC61DA4
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Feb 2023 23:58:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=de+hj91LkJT0FBWzXL401tEt5cQZy2Yy1xZePuM5A5A=; b=QNCfIHgj6GCb3y
	tVsSpf66h8egnrRkTCYoEGMzvbuISuhqJomh8a7/wf2vZU9kK/Y/01dWZM3MANahmz7OI8n89uU/q
	m2EPEAdAlnQznYv30vuv7AvcKaudg5O6PK3FXO3Nf16JgoqMf3nAJ28P5iXhoBwfVn/3EdjR8oA/7
	1nFl8treKUWb85XYcebGC25fARjn1WfoJViP2hGVlpAt0aV/nVZZzuAvUby3rRykDwbqYM2RJI+7+
	FTqTXtz6tAbmg69hxG3uvjEsJFBGHqbxeT5gpdAsxfKP7S5UDtt5F6eY6S/85AhfHu0xmOmeaRtJo
	+b+FXTBSKy240Mem/k8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pS5C0-003yFk-G9; Tue, 14 Feb 2023 23:58:36 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pS5Bn-003y7k-My
	for linux-rockchip@lists.infradead.org; Tue, 14 Feb 2023 23:58:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1676419103; x=1707955103;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=0wzbE5dbKeg6zwPSACvcz44HHBT+V6cdN+UmWihI6ko=;
  b=AiqAtm7AXPLjWy51w8fXMXM1bvbzLgd1yCjBUEbaaPKGNn0dFmkoVp2z
   bq2f5z3gIklxKTWkn0J3s+Fsfa7Zm4tljp2o/t7KjX7LGKFc9AikuimL0
   C2/o1sWhjHMHfJT7tHyG/fDpYoa8G0DK/PaUjhzBhXzek2x6tMoNtbDkf
   oOOTmZfy3z7bMrLEalFWBNG254xHOfCP2ifOGVouvu4hureQiAD1clXWf
   pwVx/Fw0MBccfIBvMDAsI6q5K6tgHq/dBzt55jHbhS4kNWotqfuQKhFhz
   SJ8ewdWOqExOmHIyIQNAMG+03tu5RO2cPJz3ODi8MVB3atcF+nNm/P2WK
   A==;
X-IronPort-AV: E=Sophos;i="5.97,298,1669046400"; 
   d="scan'208";a="327615890"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 15 Feb 2023 07:58:21 +0800
IronPort-SDR: H7+Hef6F7Ck4viJQkWWO9VkUjoK5+AYL2ecGPt8NfO0VV7n0xNvIzSnRYjT/GHldOarqKt8h3y
 hlz9jeDkBVecrhWYj1DdzdXOCRTCuuP4X0jhaq+FS7nJokbn463abu3FUBHmnvkA3pWyTXpmk0
 Gwry8uS41pJYYR/Y+i9DTnSNtEies+c5m6Kcv0dgxAkZQLvEIP6WBPliFv0K+Yn/x9asSq45nV
 P5TH3kZkYxYvaGi8s7cQzsSiIdQXPzFYoZMfzfllwr7TFUm2Ju5XXeo1MoPa5A/z1Yn5A5BHA4
 quo=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 14 Feb 2023 15:15:29 -0800
IronPort-SDR: WRJPEmoT9biVti//D1uOLRrgxlM6GNlLEMaNaIik7+qE/yAmhYLA28Cuqmz7dI1G8h+kpNa0Mn
 Ubqj8idVVtxZCW9eTVBId6zM0/0zyZc8HNvD7gOjl8r0HeQa4GdK6rlAB2We50irVm/1fowbqA
 ZAljw+XdtytYQq6DLPazTDq45XLUNYcfDPKZjiOAy0jON4mR52bTskZVUeWbv3snSu2pJCtLpX
 +uFY0WGwnnXIuKyMRYZm48zEgsQuMZFdRsQpyXoVLH0rKgLCQRSm7HWSowmhpI2iYkUkxXctwi
 fUQ=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 14 Feb 2023 15:58:22 -0800
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
	by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4PGdSs1C8jz1RvTp
	for <linux-rockchip@lists.infradead.org>; Tue, 14 Feb 2023 15:58:21 -0800 (PST)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
	reason="pass (just generated, assumed good)"
	header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
	opensource.wdc.com; h=content-transfer-encoding:content-type
	:in-reply-to:organization:from:references:to:content-language
	:subject:user-agent:mime-version:date:message-id; s=dkim; t=
	1676419100; x=1679011101; bh=0wzbE5dbKeg6zwPSACvcz44HHBT+V6cdN+U
	mWihI6ko=; b=nhXWsH1w2yUI7rcUShKvBVvquthT7csOKjfHohg73oprsbOPmZJ
	Trnzjb3ZgU+4gk8qjDRxw2Tv+ixOPtvRt8n7rLaJzbqMg/3thVaZ7sZBr18jZUA/
	z0bg3UCtvtxN0rm793uev6UJIGaHtwItlwcdvZM0vEr9zq58xCQ4raacivhrKfUN
	HGA1RE6kMSO631u9NgPoqWoqxW17YH3kPmumVgmdLn0SAPWnqCb2QBrIREBy6oBJ
	836YHVC4u7NF6G4re+p0Twqs9a1IsJVL53mo8JU++ISQiEPHdMDhmby5ryWH4vS2
	qY0DzbxL0XEGslkDq817CK8CfgyFUqrMfdg==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
	by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id fgm_sr7q2GzX for <linux-rockchip@lists.infradead.org>;
	Tue, 14 Feb 2023 15:58:20 -0800 (PST)
Received: from [10.225.163.116] (unknown [10.225.163.116])
	by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4PGdSn36S3z1RvLy;
	Tue, 14 Feb 2023 15:58:17 -0800 (PST)
Message-ID: <f8db1d50-5771-44e0-cb39-64425966f35f@opensource.wdc.com>
Date: Wed, 15 Feb 2023 08:58:16 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 3/9] PCI: rockchip: Assert PCI Configuration Enable bit
 after probe
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
References: <20230214140858.1133292-1-rick.wertenbroek@gmail.com>
 <20230214140858.1133292-4-rick.wertenbroek@gmail.com>
From: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <20230214140858.1133292-4-rick.wertenbroek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230214_155823_835626_57226112 
X-CRM114-Status: GOOD (  13.33  )
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
> Assert PCI Configuration Enable bit after probe. When this bit is left to
> 0 in the endpoint mode, the RK3399 PCIe endpoint core will generate
> configuration request retry status (CRS) messages back to the root complex.
> Assert this bit after probe to allow the RK3399 PCIe endpoint core to reply
> to configuration requests from the root complex.
> This is documented in section 17.5.8.1.2 of the RK3399 TRM.
> 
> Fixes: cf590b078391 ("PCI: rockchip: Add EP driver for Rockchip PCIe controller")
> Cc: stable@vger.kernel.org
> Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>

Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Tested-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>

-- 
Damien Le Moal
Western Digital Research


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
