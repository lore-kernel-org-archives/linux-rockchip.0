Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BA03CCD1A5
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 12:17:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:From:To:Cc:MIME-Version:Date:Message-ID:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xLyq9beC0SCZIi/hCYf1E/7M1udTru20QVpPrPfBK4A=; b=18poCxV+ichFYUI5A2AEDCgmYd
	odN6Kx+YGWLIIwCtI0Xjd9FuLEggRBMgayJ2UmGT7aVZs1hf+UVInLvRBl029dMqNIlBU3ea3LFwq
	bW7u0R72ufkU8LwiCFLyVsFHr+DYSTpukthEJ+WffGwrIux19wl2DCtHEYjjOQWxKJdcFtvbajmsm
	lFPZxw/PQbAQjUi6iOdGzGO/HMMS4zram74sqxAEP7i+3UYjW/6evHGjHBdHEnZxK5TnZMDjYIlPI
	BfyJ/BygE+dlanxJ+nY0on+M/Imy5C5Dff7j48tPnki8tnn8Z/fPqvnw09EPj9EYeU9xjr5+YTW6O
	MyY24Xdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAoor-0000000DMVv-1NuN;
	Mon, 20 Oct 2025 12:16:57 +0000
Received: from mail-m3280.qiye.163.com ([220.197.32.80])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seB06-00000006X2V-06v1
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Aug 2024 10:13:08 +0000
DKIM-Signature: a=rsa-sha256;
	b=bfFmdQ2JOyRtEM8Haweg5FGlJmlqS4Jm/rCbQjBX08K827IQQQFjQw9nMddgOGtkZNosiOSkCXQFIwIJLREmr/gJZIAYlykkK4xF0cT2nKiAOlMmkmRHPD6Qf7UX+7n6g04xqJLN9HwMIiLStj2HhueMbA6CT0Tt1PQJXVAmL2k=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=o8T7XJcjR9eOeMW62BDQdgaQ5z2uFScakm2eov4tfpQ=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.45] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id B090C460862;
	Wed, 14 Aug 2024 18:12:38 +0800 (CST)
Message-ID: <3dd691bc-d13d-483b-96d1-7aae79ea6671@rock-chips.com>
Date: Wed, 14 Aug 2024 18:12:38 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Lucas Stach <l.stach@pengutronix.de>, Bjorn Helgaas <bhelgaas@google.com>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jingoo Han <jingoohan1@gmail.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Language: en-GB
To: Andrey Smirnov <andrew.smirnov@gmail.com>,
 Jisheng Zhang <jszhang@kernel.org>, Joao Pinto <Joao.Pinto@synopsys.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [v4,05/11] PCI: dwc: imx6: Share PHY debug register definitions
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUMYGFZPTkxMGU9CSxhPHh1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a915060139903aekunmb090c460862
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PCo6KRw*NzIzH01WKAoMNRYW
	GFEwFAxVSlVKTElITUhLSE5CQkpMVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUhKQ0o3Bg++
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_031306_596939_7A60EF24 
X-CRM114-Status: UNSURE (   6.54  )
X-CRM114-Notice: Please train this message.
X-Mailman-Approved-At: Mon, 20 Oct 2025 05:16:52 -0700
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi folks,

       DWC PCIe driver introduced a default method to check link up for
DWC controller. However, this is broken by test and can't work 100%
reliably. It was first added by commit 1 and fixed by commit 2. Finally
commit 3 moved PHY debug regs to PCIE_PORT_DEBUG1 which checks
cxpl_debug_info[63:32].

Quoted from DWC databook, section 8.2.3 AXI Bridge Initialization, 
Clocking and Reset:

"In RC Mode, your AXI application must not generate any MEM or I/O
requests, until the host software has enabled the Memory Space Enable
(MSE), and IO Space Enable (ISE) bits respectively. Your RC application
should not generate CFG requests until it has confirmed that the link is
up by sampling the smlh_link_up and rdlh_link_up outputs."


So the problem is very clear that cxpl_debug_info from DWC core is
missing rdlh_link_up. So reading PCIE_PORT_DEBUG1 and check smlh_link_up
isn't enough. But I don't know what PCIE_PHY_DEBUG_R1 means. Does it
means both of smlh_link_up and rdlh_link_up? If yes, than commit 3 
should be removed. Otherwise it was broken already from the beginning
commit 1.

[1]: commit dac29e6c5460 ("PCI: designware: Add default link up check if
sub-driver doesn't override")

[2]: commit 01c076732e82 ("PCI: designware: Check LTSSM training bit
before deciding link is up")

[3]: commit 60ef4b072ba0 ("PCI: dwc: imx6: Share PHY debug register
definitions")

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
