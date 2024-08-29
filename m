Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80038CCD199
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 11:57:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Cc:Date:Message-Id:Subject:
	Mime-Version:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=48wJ5ICO8ZDDJzAV+9HWBJmV2GCkho3R/DEdi73NUWI=; b=iW8
	kLyErUKYAFeYTMd3acmUMvP58awX7qsXV9kHr+zh2FI6wP3hSsPthRxRRpLXQkxkJOz2A/bZKIJ1c
	HeW+9vsAQl90JhCDwLZVPW4i0tgORI4QMrDvRy4Om4/JcGydidA649hYlHuaUpeDGrgMwZFibBHS+
	xJ0mDenCw2n7eH/3p40lERlbm2vNPgLnofS6CETgKIg8/uumtGJRP03y6V5hqVu7fFZHj63OUTgj7
	nM+TIVgXZuhGQKdu+fg+LKlJpjNCHCW0RdE0gtz467NZmvrnIIHScSMRSgvQbo32b8oAFS5eu3YXr
	sJzlhrTuNh3kPFKwPn0nKCv+vD0LcFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAoVg-0000000D91i-31VN;
	Mon, 20 Oct 2025 11:57:08 +0000
Received: from mr85p00im-ztdg06011101.me.com ([17.58.23.185])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjedi-000000021cB-3jXr
	for linux-rockchip@lists.infradead.org;
	Thu, 29 Aug 2024 12:52:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1724935957;
	bh=2cXhdJ3/UFWEPRmCi/i3aEfO8vHgg6Y/swisVUDxXtM=;
	h=From:Content-Type:Mime-Version:Subject:Message-Id:Date:To;
	b=JDcffAa8BjoWlO7TdG5QEFOkZ2BqkZaRuOUiDE504OlKWhMgj5PfwWgPZ/jU0KAUn
	 zdW/FTJB7mckXXdh6JNKH/fcVz05bTw+D3Bi3sXGD66lReHo2nh7fsrzoJyNEPSEkv
	 +VbEVp7YdEsshCdFE/hhh66bEiG9gKZyobb6E4h7xL8TSXjrwGCxgMu0yGDw4aU75U
	 4laS0YVPjLwxCTSUl7G51CxWkwZ6NMZxN0pzk9nuffCNwBzHx7NdTyzGWrmeKzLZN4
	 eKzVTCSFQbKiP+Ji2HXc56bwcqXK7YISJ8d6mMI//n8zPwynK3NNZBdOIkXndUBPOD
	 gzusrwvIrglvQ==
Received: from smtpclient.apple (mr38p00im-dlb-asmtp-mailmevip.me.com [17.57.152.18])
	by mr85p00im-ztdg06011101.me.com (Postfix) with ESMTPSA id 75CF3DA0352;
	Thu, 29 Aug 2024 12:52:35 +0000 (UTC)
From: jonesthefox@icloud.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3776.700.51\))
Subject: Re: [PATCH v2 0/4] arm64: dts: rockchip: Add Hardkernel ODROID-M1S
Message-Id: <44115846-F7A9-47F5-899B-A8146E20BC31@icloud.com>
Date: Thu, 29 Aug 2024 14:52:21 +0200
Cc: linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
To: jonas@kwiboo.se
X-Mailer: Apple Mail (2.3776.700.51)
X-Proofpoint-GUID: 7gotTrT_7AE3shnOv2uvWMV9FhuA-3jx
X-Proofpoint-ORIG-GUID: 7gotTrT_7AE3shnOv2uvWMV9FhuA-3jx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-08-29_02,2024-08-29_02,2024-05-17_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1011 mlxlogscore=999
 adultscore=0 phishscore=0 spamscore=0 suspectscore=0 malwarescore=0
 bulkscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2408290088
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_055239_026744_0EFC473D 
X-CRM114-Status: GOOD (  13.16  )
X-Mailman-Approved-At: Mon, 20 Oct 2025 04:56:04 -0700
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

Hi Jonas,

I applied your four patches for the Odroid M1S to the mainline kernel [1], 
compiled it using the kernel configuration from the Hardkernel Ubuntu 
Server Image [2], and then attempted to boot into the official Generic 
AArch64 image on mmcblk0 using a dtb file and an Arch Linux initrd by 
manually copying the kernel and dtb file to the boot partition and 
booting manually with the vendor's U-Boot [3]. 

The booting process was successful!

However, the network interface is not working. Here is the relevant 
dmesg output:

----
[ 6.694455] rk_gmac-dwmac fe010000.ethernet: IRQ eth_lpi not found
[ 6.695030] rk_gmac-dwmac fe010000.ethernet: IRQ sfty not found
[ 6.702424] rk_gmac-dwmac fe010000.ethernet: clock input or output? (input).
[ 6.703064] rk_gmac-dwmac fe010000.ethernet: Can not read property: tx_delay.
[ 6.704461] rk_gmac-dwmac fe010000.ethernet: set tx_delay to 0x30
[ 6.705002] rk_gmac-dwmac fe010000.ethernet: Can not read property: rx_delay.
[ 6.709919] rk_gmac-dwmac fe010000.ethernet: set rx_delay to 0x10
[ 6.710579] rk_gmac-dwmac fe010000.ethernet: integrated PHY? (no).
[ 6.711180] rk_gmac-dwmac fe010000.ethernet: clock input from PHY
[ 6.716749] rk_gmac-dwmac fe010000.ethernet: init for RGMII_ID
[ 6.718117] rk_gmac-dwmac fe010000.ethernet: User ID: 0x30, Synopsys ID: 0x51
[ 6.719022] rk_gmac-dwmac fe010000.ethernet: DWMAC4/5
[ 6.719540] rk_gmac-dwmac fe010000.ethernet: DMA HW capability register supported
[ 6.720204] rk_gmac-dwmac fe010000.ethernet: RX Checksum Offload Engine supported
[ 6.720864] rk_gmac-dwmac fe010000.ethernet: TX Checksum insertion supported
[ 6.721484] rk_gmac-dwmac fe010000.ethernet: Wake-Up On Lan supported
[ 6.722155] rk_gmac-dwmac fe010000.ethernet: TSO supported
[ 6.723019] rk_gmac-dwmac fe010000.ethernet: Enable RX Mitigation via HW Watchdog Timer
[ 6.723761] rk_gmac-dwmac fe010000.ethernet: device MAC address 0e:c7:69:a9:f2:61
[ 6.724436] rk_gmac-dwmac fe010000.ethernet: Enabled RFS Flow TC (entries=10)
[ 6.725073] rk_gmac-dwmac fe010000.ethernet: TSO feature enabled
[ 6.725609] rk_gmac-dwmac fe010000.ethernet: Using 32/32 bits DMA host/device width
[ 6.998073] rk_gmac-dwmac fe010000.ethernet end0: renamed from eth0
[ 7.096335] rk_gmac-dwmac fe010000.ethernet end0: Register MEM_TYPE_PAGE_POOL RxQ-0
[ 7.097618] rk_gmac-dwmac fe010000.ethernet end0: __stmmac_open: Cannot attach to PHY (error: -19)
----

Does anyone have any idea what could be causing this issue, or if there 
is anything I could try to get the network interface up and running?

Thanks for your help!

Best regards,
Patrick

[1] Linux Kernel Repository: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
Version: v6.11-rc5-50-g3ec3f5fc4a91

[2] Semi-official Hardkernel Ubuntu Server Preview Image for Odroid M1S: 
https://forum.odroid.com/viewtopic.php?t=48230

[3] U-Boot Version: U-Boot 2017.09-g97ab962d1ed-230719 #tobetter (Oct 27 2023 - 14:54:41 +0900)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
