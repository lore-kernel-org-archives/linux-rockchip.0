Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A10D9C636CC
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Feb 2023 10:42:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9I8/usZEgy1gGKxcE2aVf0rOEG+8jCFrVpLwA9oy9x0=; b=oYezWvRbJfMWqt
	rxWxVqy/766t6t3Jc7/q5RGwLiLyQTcmWCfqa3dPdPq8nRY8EmzWPXkfWGhuZfZTtC8pIKTFdloId
	gsi1N/xZff/hsiiii1HsBoxKECMprUxDaPd9WxFEwjaHGzzVqPtN78RucXyMSEHpdAalGdBI4raP4
	tFJzIaBcyDH+9bdFQdFi3A2HJldQTg2A83Prz6u/7Xii+jfV8RyjvjQL0xrtZj+ofDDhrtAOTIYhN
	9CQRcbRF9B6gXKMNP6NS9NtaM7UJ77wtq/odys6eZxddzrD/puqLN1vM8S1e1tjTag5/6HCsHPctC
	P+MPksm11oRJeJ8gD4JA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSFF0-005UQM-Oy; Wed, 15 Feb 2023 10:42:22 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSFEq-005UNJ-RP
	for linux-rockchip@lists.infradead.org; Wed, 15 Feb 2023 10:42:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1676457732; x=1707993732;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=bYOeNaHyaVrirbdon1Wxef62nvktUzAM/kkBHGbdOTg=;
  b=NIlB9e8SGYtuK19ZQw6CRcWWvpkLH91rL3+1sdiQZwI//4u1kRAAUrIS
   KyNZpEA1j0aSnWvKFW25ljbJMhpT9q2xrd9wzRl//Bzur+8YmI/H5hTpu
   cqq5Gff6gFotYfPukkPUgpnZh58yR2rMqH1B4SrPbi0wfd6vuAqi2S9vp
   Zo8X2lbKlNWFe79OCXp6ZyDEHuH+MhHPe7BOcTa49zp6c6ZHBOxGhPMiG
   vhXRVCpZz2U9rN2XKNBfWY2oWvNPVeQ9cQaIhKEwMlbyC1b7cqL+5LtO9
   2uSls0sRf8ZSWX3qxfmhUDiGBnC7OQvTtpX6ST6959NBjNjCXeop3N6/C
   g==;
X-IronPort-AV: E=Sophos;i="5.97,299,1669046400"; 
   d="scan'208";a="223379562"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 15 Feb 2023 18:42:05 +0800
IronPort-SDR: sxiByLuykQ0x2MVY0oDqdNwWQgNWkdO0yXdGMxsNL+9ykSf6/VmCo3bvsRkbgmCXxIIl9MH53+
 hDpQ2P8iBzbNmwJTlTKdeRhvezZUgt6sVqmTBXnTLHjRldEeR06D5BSTCV6bPqewjuCaXJF6O1
 jRJvFbURiV97ynoWXiyJco1IW3OINOAtQXLp7T+jkXnn7dWLRASCIn1CF8rAO3W4d1NLk6nYSJ
 7XkU/TQGpyVmbZHA/rmyeF70eX/pgM90XpZDoK0tyaCmbyZiUSikL4FYNSZq0qOncqpGbpGMno
 NJs=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 15 Feb 2023 01:59:12 -0800
IronPort-SDR: 8vq15IwTM2qPbr5JnSSjGVpj2n2Jr+WBk0DIiwR6Z9mmG/Nr8td3b9Ew+8RUjHWjjhWeezc/Cd
 VOKRmYqVJrIoIy2O3UxOK5iU3vXxX63j13eiLMOUMkCC7zNwGhbhllmGxpIcpJ+O8jeud7YIu5
 VlyFFHDetCqxFJJojYGEyYS8chVTtQTsTR2YM0S/c5Ixs9t8qgxIwQLbJqiXZJdmvU/iHz0ekp
 JZF3Y2N59PKQBNkex8+bYzf491fKicbGyRSlJ7rRqMtIpN6+qYNyvQZVhGMBKwiMXQ0KzVgdWW
 nIk=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 15 Feb 2023 02:42:06 -0800
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
	by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4PGvld3rLNz1RvTp
	for <linux-rockchip@lists.infradead.org>; Wed, 15 Feb 2023 02:42:05 -0800 (PST)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
	reason="pass (just generated, assumed good)"
	header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
	opensource.wdc.com; h=content-transfer-encoding:content-type
	:in-reply-to:organization:from:references:to:content-language
	:subject:user-agent:mime-version:date:message-id; s=dkim; t=
	1676457723; x=1679049724; bh=bYOeNaHyaVrirbdon1Wxef62nvktUzAM/kk
	BHGbdOTg=; b=ON0F5Q+U0+QUO1m86MIM9DQ+JEo1a4jPVOzjn2HAs3UFHdAcLAf
	o4KQbxqw0O85vE3RBMc65JsQa/sedcCwupRT57p3GhDI/IC4MGt2FMyjiQlNWa/u
	sZXhXUga6EWCiuWpPzu6tBCM+4Pv61gIvrGMj9BywTXz9v+ozRvuzt8/H6trmUB6
	hOkHQiQYeyWLU5jrKd0RblnJWtINh6I2uiU/Lw36/ctdbumiHMUUDJXALMZF8AR3
	KGAokSFa0Mpc8W4hB0gDma+uGUexGFZbCZhw0Eqe0g2BcyodtSvs0yxYt4o+FUn2
	TMpa8PWVJ5TgBYgPFZoUd8CFrMWuEN2tKGg==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
	by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id 5AbQy89HeJHD for <linux-rockchip@lists.infradead.org>;
	Wed, 15 Feb 2023 02:42:03 -0800 (PST)
Received: from [10.225.163.116] (unknown [10.225.163.116])
	by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4PGvlW6T6dz1RvLy;
	Wed, 15 Feb 2023 02:41:59 -0800 (PST)
Message-ID: <b0219543-dec3-dfa2-8bba-93e4bc32eee2@opensource.wdc.com>
Date: Wed, 15 Feb 2023 19:41:58 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
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
 <7b8a8d38-feef-d2af-f23f-6b2b46f78110@opensource.wdc.com>
 <CAAEEuhrzysR-xfx7X-gVqUdi17R1YiWxyBM+0asQxtyZ9PQozg@mail.gmail.com>
From: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <CAAEEuhrzysR-xfx7X-gVqUdi17R1YiWxyBM+0asQxtyZ9PQozg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230215_024212_967089_FC38912F 
X-CRM114-Status: GOOD (  48.11  )
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

On 2/15/23 19:28, Rick Wertenbroek wrote:
> On Wed, Feb 15, 2023 at 2:51 AM Damien Le Moal
> <damien.lemoal@opensource.wdc.com> wrote:
>>
>> Note about that: with your series applied, nothing was working for me on
>> my pine Rockpro64 board (AMD Ryzen host). I got weird/unstable behavior
>> and the host IOMMU screaming about IO page faults due to the endpoint
>> doing weird pci accesses. Running the host with IOMMU on really helps in
>> debugging this stuff :)
> 
> Thank you for testing, I have also tested with a Ryzen host, I have IOMMU
> enabled as well.
> 
>>
>> With the few fixes to your series I commented about, things started to
>> work better, but still very unstable. More debugging and I found out that
>> the pci-epf-test drivers, both host and endpoint sides, have nasty
>> problems that lead to reporting failures when things are actually working,
>> or outright dummy things being done that trigger errors (e.g. bad DMA
>> synchronization triggers IOMMU page faults reports). I have a dozen fix
>> patches for these drivers. Will clean them up and post ASAP.
>>
>> With the test drivers fixed + the fixes to your series, I have the
>> pci_test.sh tests passing 100% of the time, repeatedly (in a loop). All solid.
>>
> 
> Good to hear that it now works, I'll try them as well.
> 
>> However, I am still seeing issues with my ongoing work with a NVMe
>> endpoint driver function: I see everything working when the host BIOS
>> pokes at the NVMe "drive" it sees (all good, that is normal), but once
>> Linux nvme driver probe kicks in, IRQs are essentially dead: the nvme
>> driver does not see anything strange and allocates IRQs (1 first, which
>> ends up being INTX, then multiple MSI one for each completion queue), but
>> on the endpoint side, attempting to raise MSI or INTX IRQs result in error
>> as the rockchip-ep driver sees both INTX and MSI as disabled. No clue what
>> is going on. I suspect that a pci reset may have happened and corrupted
>> the core configuration. However, the EPC/EPF infrastructure does not
>> catch/process PCI resets as far as I can tell. That may be the issue.
>> I do not see this issue with the epf test driver, because I suspect the
>> host BIOS not knowing anything about that device, it does not touch it.
>> This all may depend on the host & BIOS. Not sure. Need to try with
>> different hosts. Just FYI :)
>>
> 
> Interesting that you are working on this, I started to patch the RK3399 PCIe
> endpoint controller driver for a similar project, I want to run our NVMe
> firmware in a Linux PCIe endpoint function.
> 
> For the IRQs there are two things that come to mind:
> 1) The host driver could actually disable them and work in polling mode,
> I have seen that with different versions of the Linux kernel NVMe driver
> sometimes it would choose to use polling instead of IRQs for the queues.
> So maybe it's just the
> 2) The RK3399 PCIe endpoint controller is said to be able only to generate
> one type of interrupt at a given time. "It is capable of generating MSI or
> Legacy interrupt if the PCIe is configured as EP. Notes that one PCIe
> component can't generate both types of interrupts. It is either one or the
> other." (see TRM 17.5.9 Interrupt Support).
> I don't know exactly what the TRM means the the controller cannot
> use both interrupts at the same time, but this might be a path to explore

The host says that both INTX is enabled and MSI disabled when the nvme driver
starts probing. That driver starts probe with a single vector to enable the
device first and use the admin SQ/CQ for indentify etc. Then, that IRQ is freed
and multiple MSI vectors allocated, one for each admin + IO queue pair.
The problem is that on the endpoint, the driver says that both INTX and MSI are
disabled but the host at least sees INTX enabled, and the first IRQ allocated
for the probe enables MSI and gets one vector. But that MSI enable is not seen
by the EP, and the EP also says that INTX is disabled, contrary to what the host
says.

When the BIOS probe the drive, both INTX and MSI are OK. Only one IRQ is used by
the BIOS and I tried both by setting & disabling MSI. What I think happens is
that there may be a PCI reset/FLR or something similar, and that screws up the
core config... I do not have a PCI bus analyzer, so hard to debug :)

I did hack both the host nvme driver and EP driver to print PCI link status etc,
but I do not see anything strange there. Furthermore, the BAR accesses and admin
SQ/CQ commands and cqe exchange is working as I get the identify commands from
the host and the host sees the cqe, but after a timeout as it never receives any
IRQ... I would like to try testing without the BIOS touching the EP nvme
controller. But not sure how to do that. Probably should ignore the first CC.EN
enable event I see, which is from the BIOS.

-- 
Damien Le Moal
Western Digital Research


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
