Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5960ECA0FF0
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Sep 2025 12:07:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+VLNGHW195pC0L3UUfaDMBEnsRHxvzWVGG+eVGXNbMs=; b=NiAyTQ1RNwekp/
	dp40YYWuUOZ+8gI/A2A4srXXsrlJHSFMQ3AMpABfSUe+k+19ZSEcQvaYT4gb9x2pBXZaIWhh3wBjG
	QcBkj+4oiSVuUzJXS2Uqx5yWUdDTdV9A/P8K8hV4jV7o151oZyfwq54ZbFXJLyronBnfsv8IzIhKl
	kBMQYOfJGL2ILkcgfBfVMehCBKe53IPcLXAenmLwMxlFSa/qWH/9OcjTbUOF2xdE2idFuE6KQi44a
	RhH4Qert1TC21Oz6lhQL3lJE4VNHl8ww4mFzxRg4ix9thQRmt6hLYXFGogdqgcmpFU7lyrtbZQdAW
	Ia/cNbgBZ7R5lSojyq0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ut3K5-0000000CCUT-3zZo;
	Mon, 01 Sep 2025 12:07:45 +0000
Received: from chumsalmon.baetis.net ([209.222.21.150])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ut1iK-0000000BtwX-2Ee8;
	Mon, 01 Sep 2025 10:24:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tahomasoft.com;
	s=default; t=1756722278;
	bh=u7YCD9fr0ldbGVoQNxWglQgoPoPk6uWhscfR4YAgSE4=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=MEkLwsitD11xl2cD3/PnCGFmrbkuPWWYg4uyCHww4j27rrZgEcRG4VFMr+pv2ypYA
	 VSRMs4cWKiZhYipgzNh+khUe1OTde+q8WVLOTwD+ZANLp53bn7pyUpt6JuWozpiCIo
	 vD1TmzSPwLH9QsS3oJAGZh5EDylfAZuEVDFYobhliLoTJ0jbMUSi9BG3LBaYOOhbLZ
	 sjPu1leMqMcNo5Y3NsHUMs2OoVDlB5SlhozYqdP0vxsT6wEtyDMON2R+sm8kqq3mlR
	 1HOEdvMUQbNwqq10W2tLiLDfCt62c/pWcRnocMNwU++Fzmqsov5d1zLYHnEmMYv/BE
	 WRqoXtBZ9waRQ==
Received: from WahpenayoPeak.tahoma.link (unknown [IPv6:2600:4040:50be:5a04:19eb:3ff6:89a2:9ef0])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by chumsalmon.baetis.net (Postfix) with ESMTPSA id A49DF27E468;
	Mon,  1 Sep 2025 10:24:38 +0000 (UTC)
Date: Mon, 1 Sep 2025 06:24:37 -0400
From: Erik Beck <xunil@tahomasoft.com>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, heiko@sntech.de,
 krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Andrew
 Lunn <andrew@lunn.ch>
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: Add HINLINK H68K
Message-ID: <20250901062437.780cc71a.xunil@tahomasoft.com>
In-Reply-To: <20250901070008.68662-1-amadeus@jmu.edu.cn>
References: <20250830171409.592c1f63.xunil@tahomasoft.com>
	<20250901070008.68662-1-amadeus@jmu.edu.cn>
Organization: Tahoma Soft
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250901_032440_704032_7C47DBA5 
X-CRM114-Status: GOOD (  18.87  )
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

On Mon,  1 Sep 2025 15:00:08 +0800
Chukun Pan <amadeus@jmu.edu.cn> wrote:

> Hi,
> 
> > Please change phy-mode here to "rgmii". This change will yield an
> > ethernet speed throughput change of a factor of 100+.   
> 
> > Same as above: Please change phy-mode here to "rgmii". This change
> > will yield an ethernet speed throughput change of a factor of 100+.   
> 
> This doesn't make sense. When I first submitted it to coolsnowwolf/lede
> in 2022, I used "rgmii-id" as the phy-mode, and it worked:
> https://github.com/coolsnowwolf/lede/blob/master/target/linux/rockchip/files/arch/arm64/boot/dts/rockchip/rk3568-opc-h68k.dts#L24
> 
> Are you experiencing issues with both eth0 and eth1 or just one of them?
> Are you using the generic-rk3568 target for U-Boot?
> 

Hi Chukun, thanks for your response. 

At Andrew Lunn's suggestion, I'm doing
more granular and rigorous testing, now using iperf3. I'll post more details
of results here after I retest a couple of scenarios. 

However, I will report now that so far, I'm getting better (faster) and more
consistent results using iperf3.

~Erik

> I can't reproduce your problem in my test.
> 
> eth0/gmac1 (as lan):
> root@OpenWrt:~# iperf3 -c 192.168.1.100
> Connecting to host 192.168.1.100, port 5201
> [ ID] Interval           Transfer     Bitrate         Retr
> [  5]   0.00-10.00  sec  1.10 GBytes   942 Mbits/sec   29            sender
> [  5]   0.00-10.04  sec  1.10 GBytes   936 Mbits/sec
> receiver
> 
> root@OpenWrt:~# iperf3 -c 192.168.1.100 -R
> Connecting to host 192.168.1.100, port 5201
> Reverse mode, remote host 192.168.1.100 is sending
> [ ID] Interval           Transfer     Bitrate         Retr
> [  5]   0.00-10.04  sec  1.10 GBytes   939 Mbits/sec    1            sender
> [  5]   0.00-10.00  sec  1.10 GBytes   941 Mbits/sec
> receiver
> 
> eth1/gmac0 (as wan):
> root@OpenWrt:~# iperf3 -c 192.168.0.2 -P 4
> Connecting to host 192.168.0.2, port 5201
> [ ID] Interval           Transfer     Bitrate         Retr
> [SUM]   0.00-10.00  sec  1.10 GBytes   945 Mbits/sec  1191
> sender [SUM]   0.00-10.05  sec  1.09 GBytes   935 Mbits/sec
>  receiver
> 
> root@OpenWrt:~# iperf3 -c 192.168.0.2 -R
> Connecting to host 192.168.0.2, port 5201
> Reverse mode, remote host 192.168.0.2 is sending
> [ ID] Interval           Transfer     Bitrate         Retr
> [  5]   0.00-10.06  sec  1.10 GBytes   939 Mbits/sec    6            sender
> [  5]   0.00-10.00  sec  1.10 GBytes   941 Mbits/sec
> receiver
> 
> --
> 2.25.1
> 
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
