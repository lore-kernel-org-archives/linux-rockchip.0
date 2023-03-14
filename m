Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F2B6C6FD1D
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Mar 2023 22:54:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XnDcEhxD3WebiCqV71AX5eDvsSih8Jf52eQ4ZR2bNwE=; b=NJx1EyCITajmeM
	FDozyK6nGX7YpZ03KhgW/RAmAC/L18clvKsx54/jfRMeSt6tfZobPykYYwXU7aYwMBSbUKFrN0xZG
	C4xVRmiwBdLIEuyVVJuD2eFOBa4Pi853my8L+qfiNQN3HGhSpFYQeaQbMExydcHMgWancL5RgkRHl
	KDnLOvC+4mboNwipjVIsJMzHnRd5fTicJhGlXG0b3CDuX8NmzVAwXl7/1By+QwMQKHu0/hE9em3rl
	XpKdarl4vChgvxmZOrkG8MhJMvp3HAi/403ZR1e24TpC8AVwwTE49Ejm38wY/OlTtvKLJEbVgTdGp
	ItF0df8axCrVIERZ32jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcDXJ-00BjpP-1V;
	Tue, 14 Mar 2023 22:54:29 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcDXF-00Bjnd-1y
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Mar 2023 22:54:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1678834465; x=1710370465;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=4mWBwFLpOe+3Lg11FkokGIfBuGEGGfu3AKmmd26Q/z8=;
  b=ekeACVuFKY+bpghAdBhj0wxyWyEa9eu8Xx0c9vvJQeFw2LKDeyO+5taE
   yUmhaIku8GGn3kRRTVguOub8gjySZGSoMOU4UXP+C4e7KPD0gwYpY/oK/
   PdymhxHTqhXHFhSO/qDdZUW1dMbi4n5zab34ywLxrGjm7rCmU7gSwwcQ/
   1YILJPWF+EidlwEH/ViV0ZhReEhSwpXU/WKZxllt+5hZQgGyAMw10XIbh
   3iL0OJDzQ6bOEnyE3Qkrov7uagR3NmpjQnwCVORbJjOOFszbAD0qYBgw4
   iegvZOzPI6LQsLiIzKrGp8OwcqHDIrWr0/CYCFeUdvtN+vxcwHl8hHb8n
   g==;
X-IronPort-AV: E=Sophos;i="5.98,261,1673884800"; 
   d="scan'208";a="225424643"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 15 Mar 2023 06:54:20 +0800
IronPort-SDR: fQZKxUGRS0Wmi5LaffvAuIAtyBuVpRLJamlAX2r4QWRoQan2Olvfa3V+3c7KrVdf5qDzxQ+fJY
 pFbRuTdGxTkEA7edmBSRsFQDFuhcc3KGDc8p96WxqOUIYLvYNy6ivhAvKR9OzwgS5T1ttxvSs6
 mqEAq00flzTgwj5tglP1k8Nn1V0OaakAYCzXCre535hMTFOecW4dn8dQhF6LnpkyOlsjDMT3Fu
 LUaZlFLhrHfo/hxumx6gvLwNVtX9sHS9H3Kf4DkkNTtqsOVnVbYHOnh1ux8yN79AmJprWaciL7
 mS4=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 14 Mar 2023 15:10:48 -0700
IronPort-SDR: DVIpsTvQPjdMXMjatRcOcrpcLqIz8DNtiu0aaabvQEoh1cvSfXnjZgMtlyGoDrfjj9DXeDnzAL
 aFReEvL7bVbwri4gJyupqdHaoTtxu/c8AAw/0YGH1P4G7JfrQsxtY71VNAK6vxCo7vNHmj6J7+
 fiRbSwBwnvDKiSjqBIK4jJ9sBUqA6bk9sYpbIWyCdJy6V8xwbII775DkNr4RoJtj6Hm0S7/BYI
 s5arVePgCcFTjKIzktoRrGa1pIWAoN6Oqkao4joJucZyYzz4X19IDHgpYiKqwIE/fFR/no+65u
 O1E=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 14 Mar 2023 15:54:21 -0700
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
	by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4Pbpk42F6bz1RtW2
	for <linux-rockchip@lists.infradead.org>; Tue, 14 Mar 2023 15:54:20 -0700 (PDT)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
	reason="pass (just generated, assumed good)"
	header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
	opensource.wdc.com; h=content-transfer-encoding:content-type
	:in-reply-to:organization:from:references:to:content-language
	:subject:user-agent:mime-version:date:message-id; s=dkim; t=
	1678834458; x=1681426459; bh=4mWBwFLpOe+3Lg11FkokGIfBuGEGGfu3AKm
	md26Q/z8=; b=L3dZG1sWWAikqJiWmwg5q3YwNB+cbQ4rqZ2QbvfzfRdZou7SOQr
	78lip1o4qHhDVm7kyyner0SSRoqWjsYLH9H8cgGIn5HxkY0fNeF5q6bUFTSAgg/e
	DPZL2Djv2bF9/ce4aFgHx8SmSBe0TKRUZB9OxwqgoCRBoPbxSSgMRDeY4pn1ERzd
	sXGtkzEQQXn6SWVRFRVXszUI6m9kkE8LHyn5nsakjNJrSdp30gZhwOW3BXQSiCEP
	kMmCQKFtfhvxidNbdVQdBS2wsBmdRiFhAvJWeU0f411vGq+h9zZb8TA/XTSEHcKL
	7d3P0WxkB0lWqwQGWF9bdKC0o288HlyG3xw==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
	by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id A54eLQi-8c8i for <linux-rockchip@lists.infradead.org>;
	Tue, 14 Mar 2023 15:54:18 -0700 (PDT)
Received: from [10.225.163.84] (unknown [10.225.163.84])
	by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4Pbpjz2ZH9z1RtVm;
	Tue, 14 Mar 2023 15:54:15 -0700 (PDT)
Message-ID: <8392a7de-666a-bce6-dc9f-b60d6dd93013@opensource.wdc.com>
Date: Wed, 15 Mar 2023 07:54:14 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2 0/9] PCI: rockchip: Fix RK3399 PCIe endpoint controller
 driver
Content-Language: en-US
To: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Cc: alberto.dassatti@heig-vd.ch, xxm@rock-chips.com,
 rick.wertenbroek@heig-vd.ch, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Jani Nikula <jani.nikula@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Mikko Kovanen <mikko.kovanen@aavamobile.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
References: <20230214140858.1133292-1-rick.wertenbroek@gmail.com>
 <ecd09f27-b799-4741-2c5a-a2de99776c51@opensource.wdc.com>
 <CAAEEuhrk4cSC312UiAL3UwoDZ=urrdDcBThcNHd1dqnAuJTzAw@mail.gmail.com>
 <3c4ed614-f088-928f-2807-deaa5e4b668a@opensource.wdc.com>
 <CAAEEuhqk0scWd3wFbVb9fSgHxPBKotpEPNi+YPG4GD9vLO94mw@mail.gmail.com>
From: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <CAAEEuhqk0scWd3wFbVb9fSgHxPBKotpEPNi+YPG4GD9vLO94mw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230314_155425_786949_E0A1559B 
X-CRM114-Status: GOOD (  37.09  )
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

On 3/14/23 23:53, Rick Wertenbroek wrote:
> Hello Damien,
> I also noticed random issues I suspect to be related to link status or power
> state, in my case it sometimes happens that the BARs (0-6) in the config
> space get reset to 0. This is not due to the driver because the driver never
> ever accesses these registers (@0xfd80'0010 to 0xfd80'0024 TRM
> 17.6.4.1.5-17.6.4.1.10).
> I don't think the host rewrites them because lspci shows the BARs as
> "[virtual]" which means they have been assigned by host but have 0
> value in the endpoint device (when lspci rereads the PCI config header).
> See https://github.com/pciutils/pciutils/blob/master/lspci.c#L422
> 
> So I suspect the controller detects something related to link status or
> power state and internally (in hardware) resets those registers. It's not
> the kernel code, it never accesses these regs. The problem occurs
> very randomly, sometimes in a few seconds, sometimes I cannot see
> it for a whole day.
> 
> Is this similar to what you are experiencing ?

Yes. I sometimes get NMIs after starting the function driver, when my function
driver starts probing the bar registers after seeing the host changing one
register. And the link also comes up with 4 lanes or 2 lanes, random.

> Do you have any idea as to what could make these registers to be reset
> (I could not find anything in the TRM, also nothing in the driver seems to
> cause it).

My thinking is that since we do not have a linkup notifier, the function driver
starts setting things up without the link established (e.g. when the host is
still powered down). Once the host start booting and pic link is established,
things may be reset in the hardware... That is the only thing I can think of.

And yes, there are definitely something going on with the power states too I
think: if I let things idle for a few minutes, everything stops working: no
activity seen on the endpoint over the BARs. I tried enabling the sys and client
interrupts to see if I can see power state changes, or if clearing the
interrupts helps (they are masked by default), but no change. And booting the
host with pci_aspm=off does not help either. Also tried to change all the
capabilities related to link & power states to "off" (not supported), and no
change either. So currently, I am out of ideas regarding that one.

I am trying to make progress on my endpoint driver (nvme function) to be sure it
is not a bug there that breaks things. I may still have something bad because
when I enable the BIOS native NVMe driver on the host, either the host does not
boot, or grub crashes with memory corruptions. Overall, not yet very stable and
still trying to sort out the root cause of that.


> Do you want me to include this patch in the V3 series or will you
> submit another patch series for the changes you applied on the RK3399 PCIe
> endpoint controller ? I don't know if you prefer to build the V3
> together or if you
> prefer to submit another patch series on top of mine. Let me know.

If it is no trouble, please include it with your series. Will be easier to
retest everything together :)

-- 
Damien Le Moal
Western Digital Research


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
