Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6E1BD6554E
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Dec 2025 11:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xy15+yS/tnBBIp2Fl8TDZJ2LgXPja358M1zlyusc9YY=; b=uMjxKeZuuP1s7+
	nG8E1J3BN8VdTRecQ/jQQSH6L6kVik/m5k+m7jpVOuE/2/E0El51krD/KlH6CnbgwlVqNZe0qo2W5
	/pM4a3Rc0JCQMDPX/UpXleedXKR93pwYid2EU8BaCyuZPILyiJQdgAk5KIm+VE4xQNo778LQVCl/W
	kEuY5PeVK8fXj5DBZpbRe+PcVE/dbUYXcD3usOSho76Hu0LcjBfFiLJIpEvWy92litxkEk3AvZTES
	Nn/eSefxzaLdtFdbUG9NcDpKYvY/1LUk11BPEHhq8R5fa3JMyyzr7Gt070JChfkSFnrOWasPPUFf/
	bRZBRl/E1It/atv4v7Rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVpgF-00000006iHe-14f5;
	Wed, 17 Dec 2025 11:26:55 +0000
Received: from fout-b3-smtp.messagingengine.com ([202.12.124.146])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVpgC-00000006iHJ-19Ck
	for linux-rockchip@lists.infradead.org;
	Wed, 17 Dec 2025 11:26:54 +0000
Received: from phl-compute-03.internal (phl-compute-03.internal [10.202.2.43])
	by mailfout.stl.internal (Postfix) with ESMTP id E755B1D000DD;
	Wed, 17 Dec 2025 06:26:48 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-03.internal (MEProxy); Wed, 17 Dec 2025 06:26:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-type:content-type:date:date:from:from:in-reply-to
	:message-id:mime-version:reply-to:subject:subject:to:to; s=fm1;
	 t=1765970808; x=1766057208; bh=DE5Bvhxhc1rgAK67jZ1MRYKyF9U9W66g
	zdVfZbVHM7M=; b=R9qP/nIvPjGh1mx0PQnFG0fc8lXNqSt9wTcb80vkLlAEzwNN
	vZpTisoER9CmVmABxzjHXlIJGG0VbnqEPMBB1cwGB9OiDBJ2ad7J7iS3VYlNPVQs
	ThNuC0kUKACTPR3+o21OheOEUaBQIUmjTR2nALGIAMrQZe1jfu9ikGB1dv7ThqcG
	psRmDwGTw6ZDVSpb66r0KGGDRNQ28ey9bgnXF/2Gx/Zdy6jsIf0HTEPliaLrUVd6
	w69Ad0Byvg7Fjx+nMBsrHFn/LPHfPMbgGCvFesF50KtiXSZ7xIepWxJ9PehiTXJF
	AoP9iWMYIRNSvm8jlEHUJZXHmPNOPyRavTKJPg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:message-id
	:mime-version:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1765970808; x=
	1766057208; bh=DE5Bvhxhc1rgAK67jZ1MRYKyF9U9W66gzdVfZbVHM7M=; b=B
	ILGBxIJAMcWXp0/BKe3zaC6zA/7dr7Jc3oc9Fg+T1n0hJqCSqfrjsJfrRawuTuD6
	G0YaFMoWUjiYjqXHySWpzd7EInFvG9q485ZbWbfy5LDtpUy6D9NW1roXfjSOO3bY
	Gep/Kyy/Gpro6wP26jAQruuwXpCPINBtxPDl77jrILRydUCstbvJDwrbl2H3t/K8
	9pCVlrVTavvJ2J852XEpD3YxdZfqfNmp5j3DQhdjXXOKFeJEEiJr5rpQIbT54HI/
	OuuwlitbIuRBwFrlyCzUyXLLHvl8gzmGT58duQkTbd1+XVx6ZzX0JeHS28A1U5id
	i0/yW3EbwSTdRQWLGvQOQ==
X-ME-Sender: <xms:eJNCad_HGsj4HD0Z04hi0x9KwkXcTt2lGCbYDR3X4XVN2pwr0S1J4g>
    <xme:eJNCafiBrb82rO7NYtAGuFQU6os3_gdcgufRM21SFXb0USxJdIA5VXBwDWe9dWJ5N
    R6V1sPD_fuM4lJ0gKAYMZ6tPIP34V5KI_fmONx2LyoJGV5cWWJDfQ>
X-ME-Received: <xmr:eJNCaVdchg2fc81VNiKoCXuSUzWtDRVG59Q64qpfAo26AOPmYPnCzosECFfw8KKCOzGQkcrYfmcqik-tIwiMvqUMjg-gFYAlKA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdegvdeggecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpeffhffvvefukfggtggufgesthdtredttderjeenucfhrhhomheplfgrnhcurfgrlhhu
    shcuoehjphgrlhhushesfhgrshhtmhgrihhlrdgtohhmqeenucggtffrrghtthgvrhhnpe
    efjeeuveejueejledvteekieevueeffeevkeffkefhvefhuddvjedvudffgfeuvdenucff
    ohhmrghinhepkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrg
    hrrghmpehmrghilhhfrhhomhepjhhprghluhhssehfrghsthhmrghilhdrtghomhdpnhgs
    pghrtghpthhtohepgedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtoheplhhinhhugi
    dqrhhotghktghhihhpsehlihhsthhsrdhinhhfrhgruggvrggurdhorhhgpdhrtghpthht
    ohepphgsrhhosghinhhsohhnsehgmhgrihhlrdgtohhmpdhrtghpthhtohephhgvihhkoh
    esshhnthgvtghhrdguvgdprhgtphhtthhopehrvghgrhgvshhsihhonhhssehlihhsthhs
    rdhlihhnuhigrdguvghv
X-ME-Proxy: <xmx:eJNCaerI9VlT1LS6t-L2CGkHOLQ8DfqoTyrATa6aK7dIZx8zVq6Jbg>
    <xmx:eJNCaSDby8vxCQZtxgAXZOaRVPFECyQwXojF2YMDOCtkoKJ0Ufv-xw>
    <xmx:eJNCaTbzV8mJAg4SrFrN_V0j_lKb2rB4ihIRULAJFCXVKseFH8H2lw>
    <xmx:eJNCad6kz2vZvZtQ6nHEyUkNI7DgGhZRUiaohw5kTrojPSqvdeCcRA>
    <xmx:eJNCafPSEQeyJyH-ulyzUyuJxv5QQF0eW7hZ4s12U2o3W5Cbolbf8gYi>
Feedback-ID: i01894241:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 17 Dec 2025 06:26:48 -0500 (EST)
Date: Wed, 17 Dec 2025 12:26:46 +0100
From: Jan Palus <jpalus@fastmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Peter Robinson <pbrobinson@gmail.com>, 
	Heiko Stuebner <heiko@sntech.de>, regressions@lists.linux.dev
Subject: [REGRESSION][BISECTED] wifi broken on pinebook pro
Message-ID: <aUKOlj-RvTYlrpiS@rock.grzadka>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20251211
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251217_032652_878694_BDE0E94C 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
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

WiFi no longer works on Pinebook Pro after upgrade to kernel 6.18. It
appears firmware fails to load:

...
mmc_host mmc0: card is non-removable.
mmc_host mmc0: Bus speed (slot 0) = 400000Hz (slot req 400000Hz, actual 400000HZ div = 0)
Bluetooth: hci0: BCM: features 0x0f
Bluetooth: hci0: BCM4345C5 Ampak_CL1 UART 37.4 MHz BT 5.0 [Version: Version: 0039.0089]
Bluetooth: hci0: BCM4345C5 (003.006.006) build 0089
mmc_host mmc0: Bus speed (slot 0) = 148500000Hz (slot req 150000000Hz, actual 148500000HZ div = 0)
dwmmc_rockchip fe310000.mmc: Successfully tuned phase to 55
mmc0: new UHS-I speed SDR104 SDIO card at address 0001
brcmfmac: brcmf_fw_alloc_request: using brcm/brcmfmac43456-sdio for chip BCM4345/9
usbcore: registered new interface driver brcmfmac
brcmfmac mmc0:0001:1: Direct firmware load for brcm/brcmfmac43456-sdio.pine64,pinebook-pro.bin failed with error -2
brcmfmac: brcmf_sdio_bus_rxctl: resumed on timeout
ieee80211 phy0: brcmf_bus_started: failed: -110
ieee80211 phy0: brcmf_attach: dongle is not responding: err=-110
brcmfmac: brcmf_sdio_firmware_callback: brcmf_attach failed

compared to 6.17 instead of last 4 lines with errors there's single one
with info about loaded firmware:

brcmfmac: brcmf_c_preinit_dcmds: Firmware: BCM4345/9 wl0: May 14 2020 17:26:08 version 7.84.17.1 (r871554) FWID 01-3d9e1d87

Bisected to:

6d54d935062e2d4a7d3f779ceb9eeff108d0535d is the first new commit
commit 6d54d935062e2d4a7d3f779ceb9eeff108d0535d (HEAD)
Author: Peter Robinson <pbrobinson@gmail.com>
Date:   Wed Aug 27 16:30:37 2025

    arm64: dts: rockchip: Further describe the WiFi for the Pinebook Pro
    
    Update the wake-up pin and associated interupt details for the
    Pinebook Pro WiFi module.
    
    Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
    Link: https://lore.kernel.org/r/20250827143040.1644867-1-pbrobinson@gmail.com
    Signed-off-by: Heiko Stuebner <heiko@sntech.de>

 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)


With this commit reverted on top of 6.18.1 wireless connection works
fine.

Not sure what could be relevant but:
- it's an early model, I think second batch, delivered end of 2019
- mainline uboot 2025.10 is used


#regzbot introduced: 6d54d93506

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
