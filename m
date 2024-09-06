Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A774C54FC6
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Sep 2024 04:13:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Cc:From:References:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o0yxzT437Emsksjs5uMb0uJgn6sMh6Qm6du6JRdr8KY=; b=dnzBfSehPNn7Xz
	1tZ7Gihusz1OVc7+9lTzZiN+JPfLdqvooAJvs4PRXkRM88cSmKLErCMOIpTRqNct3tyArxcUtmUJ3
	bLJdif18XgGYGPj6bb0ikbH5kogPSvWufqjl7GXfiecjue5pQEluvlPVQ9j62JGW94GgdEZNa1GDx
	d023qROErpOiNPpkkEmAbXkcQOtNi+9vineNmiflB0j6F4AXSq/qHZGqfJs0jtqvyMwTuDMYx/VUI
	5YZQhN9l4UGfesk5HwNwSXrO4D/Aj+OZ+PTeeGca6uQ1fRxMXIW7GhcWZot8cpr9xlgNjI3YnAwjP
	N6RAiX5JLcRmQZ0xbNTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smQLc-0000000Ab0k-1Vi5;
	Fri, 06 Sep 2024 04:13:24 +0000
Received: from [129.204.178.38] (helo=classfun.cn)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smQKd-0000000Aauj-0uDW;
	Fri, 06 Sep 2024 04:12:24 +0000
Received: from [192.168.0.160] (unknown [14.155.100.110])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id 77A91789F4;
	Fri,  6 Sep 2024 12:12:15 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn 77A91789F4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1725595938;
	bh=ds6IzWODBrExKICH8y2oyjB8XvXkyEduxo3mupqKeyw=;
	h=Date:Subject:To:References:From:Cc:In-Reply-To:From;
	b=GinKdlqYc5xokdZPpHFlWo+Vtl1vcUprTVMeaEny298H+YZHNTHVURoZq9p+IqpFG
	 gW+MonRszqcJJgoG20Puni47kWjWy1I5Q7Jal5eSQDvjAa2prxDOxTwW1kwAsMh3IT
	 tonPuHkl+GeHXiFHxbszv0P4GDo+oI4kArIuVE3I=
Message-ID: <35c25812-7ca9-46b4-bd8d-52d14e82a1fe@classfun.cn>
Date: Fri, 6 Sep 2024 12:13:27 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: add dts for Ariaboard
 Photonicat RK3568
To: Chukun Pan <amadeus@jmu.edu.cn>
References: <fd4fc7a0-7def-4f91-a64c-71689ff71d1c@classfun.cn>
 <20240906035018.33211-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: Junhao Xie <bigfoot@classfun.cn>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Chukun Pan <amadeus@jmu.edu.cn>,
 FUKAUMI Naoki <naoki@radxa.com>, Dragan Simic <dsimic@manjaro.org>,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Junhao Xie <bigfoot@classfun.cn>
In-Reply-To: <20240906035018.33211-1-amadeus@jmu.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240905_211223_671007_DB60D5D6 
X-CRM114-Status: GOOD (  11.88  )
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

On 2024/9/6 11:50, Chukun Pan wrote:
> Hi Junhao,
> 
>> I have tried rgmii-id with tx_delay/rx_delay 0x38/0x15, or 0x0/0x0,
>> or directly removed tx_delay/rx_delay, they all didn't transmit data.
>>
>> I saw in dwmac-rk.c that when using rgmii-id, the tx_delay/rx_delay
>> properties in dt are ignored?
> 
> When using rgmii-id mode, tx_delay and rx_delay can be removed directly.
> But you need to test whether the rx/tx-internal-delay-ps is appropriate.
> 

When tx_delay and rx_delay are removed, the driver prints some errors in kmsg.
Maybe we need to modify the driver?

Lines 1657 and 1668 of drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c:
 rk_gmac-dwmac fe010000.ethernet: Can not read property: tx_delay.
 rk_gmac-dwmac fe010000.ethernet: set tx_delay to 0x30
 rk_gmac-dwmac fe010000.ethernet: Can not read property: rx_delay.
 rk_gmac-dwmac fe010000.ethernet: set rx_delay to 0x10

After testing, rx/tx-internal-delay-ps 1500 seems stable:
$ ping 192.168.0.224
64 bytes from 192.168.0.224: icmp_seq=0 ttl=64 time=1.256 ms
64 bytes from 192.168.0.224: icmp_seq=1 ttl=64 time=1.146 ms
...
$ iperf3 -t 60 -c 192.168.0.224
Connecting to host 192.168.0.224, port 5201
[  4] local 192.168.0.101 port 59565 connected to 192.168.0.224 port 5201
[ ID] Interval           Transfer     Bandwidth
[  4]   0.00-1.00   sec   114 MBytes   956 Mbits/sec
...
[  4]  59.00-60.00  sec   112 MBytes   942 Mbits/sec
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bandwidth
[  4]   0.00-60.00  sec  6.58 GBytes   942 Mbits/sec                  sender
[  4]   0.00-60.00  sec  6.58 GBytes   942 Mbits/sec                  receiver

Best regards,
Junhao

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
