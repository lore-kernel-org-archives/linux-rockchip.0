Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12B3DC636D4
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Feb 2023 09:18:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fuyNX8Qw6BVzwOZIMAGkpOh+C9wL8sxQPzhKKuEpHaU=; b=NSLGBr2yTU5wFi
	RHEw9vJeKZW+xVwtVIF8SGGimC776EXHKxCPLKU6Mozz/tGYV1E3ZR1zwru6WaMrDYudUQ8pSgqKN
	qgK9+wlxFJJz9L1Nrrkc0yqsSqZxt31pktCTEdolqPhI4jxyyV562XU0wvc+0ceBY+B9ioi3UpVtg
	LA6nUPXwl+Y2+JHKF2diMsrMK0RHQsKTniKRY2N9roxBWa0tGenSX/HnCebasGjzs1LnA2+adf2UO
	3meT9bImvwPEBV71ojkqy8E/lwCFqyfIC3vHmo9IBFpm9piwrlweAq4WYAT9OUR/uYlVcGcvT4c1f
	tQ8pf9DFAKpbUri8dQqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSDvD-005IkM-RM; Wed, 15 Feb 2023 09:17:51 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSDv4-005Iei-JO
	for linux-rockchip@lists.infradead.org; Wed, 15 Feb 2023 09:17:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1676452662; x=1707988662;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=e3HD0nrhTESjQnCb3qI75cEUboW40Vk12cqIYJvudOo=;
  b=G2VVJLx15dgHBlfGUy8Pn52fyYGKxk91x9XKTa4gPxz7DdzvAW/QnfXO
   rRzbE1nci0DMJkvCp/qFcEIyDMLvaPScRUlJMvbevDr05IIG+n9yUVU8P
   dpTiNn7JKLVMVYfOcfPy62cDgpB5qc/9VRy4PIY6oVw0UpJTixbU2uU4X
   wyvkRVMwGaSTi/40aun+B37PVjRfCS/0Tr4ffO1Hw7f3iNaglkbrTxhWx
   DQ+38YYWH1Y6eHhZEvwbDpx8Cw3KdO8oEppggT0V4k76daBt2kdWFTtck
   tph5AtcWCl1UhciS+eA3LfdW7qAqCUcXC8rH89ZfxX08BtRFTo4/QuQHu
   Q==;
X-IronPort-AV: E=Sophos;i="5.97,299,1669046400"; 
   d="scan'208";a="335322427"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 15 Feb 2023 17:17:35 +0800
IronPort-SDR: R3wD2iGF8g0PZ2WQO/zbF7wT7HlerrsytNBomBBU5PbPTZtGfHANGUz3tYgIjnydoBR9xV/3kR
 WRmUeWFCxe7ttSOmCZBlMuEzBzlShdZeITnwCN42aufqaWtp6ya9oCpEMzWVOjWd89UNdwS0TQ
 bnu4OdsyxK6h5oRgGh5D1bXf7mMHQ16H9LSD7mDBpgHAl0lLXNN0V9vNOGqJ5RcQyZxSmGFhQQ
 R8h1XgNl1JYB4LSs5l47qKbjz4q73+GeODoT/Em/HnsGxLHw4WFP/jFiTa/qag2zUVJOVjW+Rq
 iJo=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 15 Feb 2023 00:34:42 -0800
IronPort-SDR: bc8JK8nzv87Yy1HcVUwSzRRsGUhrMkYrQvxE5Owf7lvw1kmzObLFT/R4zq9PFG8FoOMoCVU0if
 kfTUAdlqHRO51VaWPQZDxK+GzEXQX1ndghx4ZbDhsEoJ4ZD9tIqzySzg/RP/b3PvV9M3vXtl5X
 Dj1VmXwkGbHxCOXRy6JWKnMp2AKcok2xgahofd8V1yN0w9YdavFIZ0E+8ALLd9UeQBVuniVGKk
 V75TV4LRBB49nUhe/N8gFkGR1qFPcHgjVtL5rX9Np9YQ8zYfqowBRwOzCJoYPuSvcIdnGlQlm2
 FU4=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 15 Feb 2023 01:17:35 -0800
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
	by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4PGst65d1Gz1RwtC
	for <linux-rockchip@lists.infradead.org>; Wed, 15 Feb 2023 01:17:34 -0800 (PST)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
	reason="pass (just generated, assumed good)"
	header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
	opensource.wdc.com; h=content-transfer-encoding:content-type
	:in-reply-to:organization:from:references:to:content-language
	:subject:user-agent:mime-version:date:message-id; s=dkim; t=
	1676452653; x=1679044654; bh=e3HD0nrhTESjQnCb3qI75cEUboW40Vk12cq
	IYJvudOo=; b=nDZEO1ZM7QF4jlcp7gBrFMpxYURLKJ2rnZo7kU/M5A9Wfk837Ky
	ml35zjdtUHJgG+n96YKOKM8W/F7h6oWMrtBTYi5Sbn/ZDrEvr5onQoh2oRMiuLPo
	E+rErSBAVb4eppkPiigetAEK/69SahtrS6GNNCIwe8WV7jIPaHVj76wd7cx1ZctJ
	lZzzJl36Sxhw6kpx+pUVqk1/lmF94ZLx3c8T9T20Ais1QZ3wIj5qDGIha5C29aMC
	xZrtF5LEPKIqreC10K+xSXUkra8PLcw+9Pely1huaPNEmbqyrfgF+SfV+EwTDjyg
	cTuWHc8KO6VNLlqYBRLLWfOG4KwwIAOTK7g==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
	by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id iIFuPRQpW1QW for <linux-rockchip@lists.infradead.org>;
	Wed, 15 Feb 2023 01:17:33 -0800 (PST)
Received: from [10.225.163.116] (unknown [10.225.163.116])
	by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4PGst20hHrz1RvLy;
	Wed, 15 Feb 2023 01:17:29 -0800 (PST)
Message-ID: <f607214d-6ad3-7475-0d3c-76268893aaf5@opensource.wdc.com>
Date: Wed, 15 Feb 2023 18:17:28 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 1/9] PCI: rockchip: Remove writes to unused registers
Content-Language: en-US
To: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Cc: alberto.dassatti@heig-vd.ch, xxm@rock-chips.com,
 rick.wertenbroek@heig-vd.ch, Rob Herring <robh+dt@kernel.org>,
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
 <2ebd33e2-46ef-356d-ff4c-81b74950d02f@opensource.wdc.com>
 <CAAEEuhr273bKFBWiTVyTjhHhxjuTK=TVd+5K2B07WfWMD+N7mA@mail.gmail.com>
From: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <CAAEEuhr273bKFBWiTVyTjhHhxjuTK=TVd+5K2B07WfWMD+N7mA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230215_011742_665730_979C8356 
X-CRM114-Status: GOOD (  33.19  )
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

On 2/15/23 18:04, Rick Wertenbroek wrote:
> On Wed, Feb 15, 2023 at 12:56 AM Damien Le Moal
> <damien.lemoal@opensource.wdc.com> wrote:
>>
>> I checked the TRM and indeed these registers are listed as unused.
>> However, with this patch, nothing work for me using a Pine rockpro64
>> board. Keeping this patch, your series (modulo some other fixes, more
>> emails coming) is making things work !
> 
> Hello, Thank you for testing the driver and commenting, I'll incorporate your
> suggestions in the next version of this series.
> 
> This patch alone does not make the driver work. Without the fixes to the
> address windows and translation found in [PATCH v2 6/9] ("PCI: rockchip:
> Fix window mapping and address translation for endpoint") transfers will not
> work. However, as you said, with the patch series, the driver works.
> Good to see that you have the driver working on the rockpro64 which is a
> very similar but different board than the one I used (FriendlyElec NanoPC-T4).
> 
>> So I think the bug is with the TRM, not the code. THinking logically about
>> htis, it makes sense: this is programming the address translation unit to
>> translate mmio & dma between host PCI address and local CPU space address.
>> If we never set the PU address, how can that unit possibly ever translate
>> anything ?
> 
> No, the bug is not in the TRM:
> The RK3399 PCIe endpoint core has the physical address space of 64MB
> @ 0xF800'0000 to access the PCIe address space (TRM 17.5.4).
> This space is split into 33 windows, one of 32MBytes and 32 of 1MByte.
> Read-write accesses by the CPU to that region will be translated. Each
> window has a mapping that is configured through the ATR Configuration
> Register Address Map (TRM 17.6.8) and the registers addr0 and addr1
> will dictate the translation between the window (a physical CPU addr)
> into a PCI space address (with this the unit can translate). The other
> registers are for the PCIe header descriptor.
> The translation process is documented in TRM 17.5.5.1.1
> The core will translate all read-write accesses to the windows that fall
> in the 64MB space @ 0xF800'0000 and generate the PCIe addresses
> and headers according to the values in the registers in the ATR
> Configuration Register Address Map (@ 0xFDC0'0000).
> 
> Translation does indeed take place and works
> but requires the changes in [PATCH v2 6/9] ("PCI: rockchip:
> Fix window mapping and address translation for endpoint")
> because it was broken from the start...
> 
> The two writes that were removed are to unused (read-only) registers.
> The writes don't do anything, manually writing and reading back these
> addresses will always lead to 0 (they are read-only). So they are removed.

OK. I tried so many things to get something working that I probably got
confused with this one :) Let me retry with this patch 1 to see if I get
the same results, which is: pci-epf-test solidly working (with the patches
I sent earlier today), and my on-going nvme epf driver working-ish (BIOS
OK, but IRQs to Linux miserably failing to be sent from EP).

-- 
Damien Le Moal
Western Digital Research


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
