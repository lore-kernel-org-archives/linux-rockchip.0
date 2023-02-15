Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82516C05027
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Feb 2023 01:04:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xY/GNc6YKyqvoc7KvK5F7m5A9W3ZKAnX17FXyo4Sfh0=; b=UaV60imH3E8/4Y
	sBdrdlyTLZlrcLpdJsnzgO8AwkQwP01SJEuuOIB76nF3h8mtf7CIc3BgphqeWSLAx4RECQd+c3dl3
	aAZqhFOIXvgMpJlAwg2yDrAyCzK9dBeeOEO3i/N7mkXd8ncPZhvqw1hb81eoXTSq/uAylZQ+94Np5
	P+YgUBJbo8XS/CjTptC5s5d/iLF2a4MDCSsnitkIlUaV3ag1VPY5JnwTVf0hVl4daJuj45UMEPSxn
	4zOop7OXiWW3fhQxw5u3420ILJd8TE3M/1yW4zh7ek6QgUyKVTSQQYpKf920l1BedIZI2FDI69DFG
	hnqTxetZE9NqZLdakjIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pS6Dj-0048FE-En; Wed, 15 Feb 2023 01:04:27 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pS6DZ-0048Ab-Hf
	for linux-rockchip@lists.infradead.org; Wed, 15 Feb 2023 01:04:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1676423057; x=1707959057;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=IL5gc63/fDsz5QiSOYrQinbaMAqccro2o4wNnnC1ado=;
  b=j3ZYefMX7H04Squ/5HVvofriUOT/Ezph1B0QyLqxeyN+Tscnq+GdQoaK
   sIB3ovOICIDpS7Ay79aPY7QLWePwu0N4bAWAZMEXLzB/yYNta9sOg9sA3
   9Er8OO8JouqYgFsSEp47inlR34T0lsrcKE65WetK3/wQZBbARK2VHxr1t
   dcb909ii5H7x9QV6uQmz/iaXqx4s/YhNHuEDLz6yEodR6mN3RZoOwzKEv
   SEHlus7MMkN9GfRNxUbZtdqNaeFMO/ddTcAIHRAn5Q3sIq4kLpGYGySau
   hdeN7D+FZJWuaEQjFSK9d/L1rllRETyLp1iPRF09Y//xD17t+0mngqf4q
   A==;
X-IronPort-AV: E=Sophos;i="5.97,298,1669046400"; 
   d="scan'208";a="327620443"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 15 Feb 2023 09:04:02 +0800
IronPort-SDR: nru8pbVhP7Ucpq5Y1f1AcrgYdlH3zD1RFT4r2ffsVB1Krx9BxDgzWzFvcKAMWCBFz8yf1/QcyG
 +2ePg12xksEHfgz3txNlPt5RHh0ephXmbFKiF98LOFRev/Hl3iViOBK1+DQcP/jj+9lFV/iz2t
 tm6Ib4pCfN/BOUouWMT0BRk/GiWWqm9Db0F3t2EaTvwdrcEv8MptGCbj/bMFuJhiavlj5aUY9A
 YBuwAdVYi1ET9OoPbrboazo0dSH94uFIXyraV/ryvCl4jfJriVGUn7sKl9sAGfKSEOUGsHWnsF
 Ybs=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 14 Feb 2023 16:21:09 -0800
IronPort-SDR: KrUHE8sK5ijBy03Wtgw7h0pe8TEjWTq5A3zDpbnZIYpvr/pr09vqp6j2+Re009BkjSww7sMfZM
 b4c4QSLLIlg1PZDOTsBNNeCxBrYdcg/cnZbv8Q31kN65CqwOexxeVsN6kG6mlRehNm3iTvcgYx
 5g9APRB2YI7IzHlOKeYG9iLBW8G3gP3m4SZmHFN92eqnC8GhIn/lcVcYwPGFKonqm+QoJcgob1
 bPz6qX/TXLemkzh2wM9FMRJEWHD6XXXS0yB0A+VmCQrO5j/AINhdiHFqwHwJ70rZtdSmv24LaM
 YPU=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 14 Feb 2023 17:04:03 -0800
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
	by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4PGfwd5jzgz1RWy3
	for <linux-rockchip@lists.infradead.org>; Tue, 14 Feb 2023 17:04:01 -0800 (PST)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
	reason="pass (just generated, assumed good)"
	header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
	opensource.wdc.com; h=content-transfer-encoding:content-type
	:in-reply-to:organization:from:references:to:content-language
	:subject:user-agent:mime-version:date:message-id; s=dkim; t=
	1676423040; x=1679015041; bh=IL5gc63/fDsz5QiSOYrQinbaMAqccro2o4w
	NnnC1ado=; b=Agj6HOTfciGHKemaC/kKz7iwb6CDxRZwvQyJXZ4r8/Wi/iu/Y5x
	CTHrTb+EYd1DfG81IRn+J5CowQcgNzU1UKMaSDpRmLucwnr0O/xoD9HuTSMt/y5n
	v0DHHwlbDtB0Y9RGwLVWfbNN0OXginU5IkqIA+wNb6wubkR4SonTbnAvEjNFwr6E
	Kt2dhee0G2LAQxBksA/ZC+A9yzPK87kxbzXPYEwwj6ZEukAmZFo9iqNMPblIx/TB
	HExIgo5b8PRezGXV0HLOTck0/6XCBpFIAA7mca8M2bDhHCXYHI4RXs/SQKs1vVfQ
	QLDkDMoKI9VONS4oU/tZrzHOGztVTmacCUw==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
	by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id EThuPY8OZOEq for <linux-rockchip@lists.infradead.org>;
	Tue, 14 Feb 2023 17:04:00 -0800 (PST)
Received: from [10.225.163.116] (unknown [10.225.163.116])
	by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4PGfwY4pZ0z1RvLy;
	Tue, 14 Feb 2023 17:03:57 -0800 (PST)
Message-ID: <a0a2afa5-e364-b7af-958f-3d4a34672337@opensource.wdc.com>
Date: Wed, 15 Feb 2023 10:03:56 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 5/9] arm64: dts: rockchip: Add dtsi entry for RK3399
 PCIe endpoint core
Content-Language: en-US
To: Rick Wertenbroek <rick.wertenbroek@gmail.com>, alberto.dassatti@heig-vd.ch
Cc: xxm@rock-chips.com, rick.wertenbroek@heig-vd.ch,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Jani Nikula <jani.nikula@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mikko Kovanen <mikko.kovanen@aavamobile.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
References: <20230214140858.1133292-1-rick.wertenbroek@gmail.com>
 <20230214140858.1133292-6-rick.wertenbroek@gmail.com>
From: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <20230214140858.1133292-6-rick.wertenbroek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230214_170417_655355_08407984 
X-CRM114-Status: GOOD (  15.59  )
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
> Add dtsi entry for RK3399 PCIe endpoint core in the device tree.
> The status is "disabled" by default, so it will not be loaded unless
> explicitly chosen to. The RK3399 PCIe endpoit core should be enabled
> with the RK3399 PCIe root complex disabled because the RK3399 PCIe
> controller can only work one mode at the time, either in "root complex"
> mode or in "endpoint" mode.
> 
> Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>

You should also update the file:

Documentation/devicetree/bindings/pci/rockchip-pcie-ep.txt

The example there is broken...

Otherwise, this works great for me.

-- 
Damien Le Moal
Western Digital Research


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
