Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3533CEF371A
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Mar 2026 09:02:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gkQLL+PUOSrwXNy7Zls0truyjbsh2gNdejcwvZvNh9g=; b=q8tgsGyArXDVfT
	LrPlXnhXANcToaKOIoXZVpIrNdHBq5HeyGGma2rFhC34jwcnm5h1FzKIHJJYVzxnnRi34MRpcEJIz
	kQa7y/YQ8ElSmozb2y+bIVT7hBUDNwNYOLKUFQ73tKO4k4EwkFQrgd28IfUlBNpq61zS2Jy/CrHJ6
	6urQEX7aE6xDPJlP2eFy1XmxRRI7BQZqLQ/rwvL/MSKORmQAnhXxpl2pkWCRiliqq0034vx96PmXs
	M3UJe5SuAKAd9XAPo+WyEVK6+GCznoh3KKSq7PpjkeGZkLon6qVf85fwUi12OA3Rk3JzCU+ayqt8+
	tzjdZoQjotvmcY6uaYzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzWVf-00000006vYk-3oTz;
	Mon, 09 Mar 2026 09:02:43 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzWVc-00000006vY5-3yNA;
	Mon, 09 Mar 2026 09:02:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1773046956;
	bh=pMsimM0jrkN9TClCZtebv47wyhydHL/nRiqxAuKIOX4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=kGAJK6pZNHnQh5u7UzYcZET/DCDJE/EIbrUvrqe2ovExMpFvnCGAYGpBYR5QzZ9FM
	 FlqoKEyBFyYNeHgSKX8IUaZgMpU2xuZW4b1/RzRSS1mSrxlHjz30bch7QHvDnHODc0
	 z0heRGeyJ1UqNnFZci0T4W9QR7tajqWb/uWEKU3IY1zKDqSUZfVJLwEukfAOVBTB5u
	 whNBUy9UwE8BbmCp90sQFzvQUty3jwkC3hMa3ANaXNDGU1+6vJTTXFfKiPOEPyzLje
	 xNwzRS7TeaNQFj8NOunvoF3NYZnpBIeh+7A8nNFfgISwHYKqjALFYTEH9ApC6qiC1u
	 F0Pqd1WmJX4XQ==
Received: from [10.40.0.100] (185-67-175-126.lampert.tv [185.67.175.126])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: mriesch)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 33C2717E0EFE;
	Mon,  9 Mar 2026 10:02:36 +0100 (CET)
Message-ID: <d670a203-6fc1-4fbc-a7b2-c2366745d794@collabora.com>
Date: Mon, 9 Mar 2026 10:02:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] arm64: defconfig: enable designware mipi csi-2
 receiver
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Frank Li <Frank.li@nxp.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kever Yang <kever.yang@rock-chips.com>,
 Collabora Kernel Team <kernel@collabora.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260305-rk3588-csi2rx-v1-0-0cd8d2bf28c0@collabora.com>
 <20260305-rk3588-csi2rx-v1-4-0cd8d2bf28c0@collabora.com>
 <20260307-majestic-otter-of-contentment-eeba71@quoll>
Content-Language: en-US
From: Michael Riesch <michael.riesch@collabora.com>
In-Reply-To: <20260307-majestic-otter-of-contentment-eeba71@quoll>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260309_020241_181589_F2A9B360 
X-CRM114-Status: GOOD (  14.97  )
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

Hi Krzysztof,

On 3/7/26 16:34, Krzysztof Kozlowski wrote:
> On Fri, Mar 06, 2026 at 03:09:51PM +0100, Michael Riesch wrote:
>> The Synopsys DesignWare MIPI CSI-2 Receiver is integrated into
>> recent Rockchip SoCs, such as the RK3568 and the RK3588.
> 
> ... and used on boards foo bar.

foo bar = pretty much any recent board with a Rockchip SoC on it...
(plus NXP users, as there is a series by Frank in the works)

> 
> (becuse we take defconfig for boards, not for SoCs - if there is no
> single board using it, then it should not be enabled because it means
> you do it for downstream which simply does not exist for us).

... but there is not yet a mainline example. Next item on my TODO list
is to send out basic RK3588 VICAP support including the device tree bits
for the Radxa ROCK 5B+ plus camera modules. Should I include the patch
in that series? Or wait until that series has been accepted? Or will you
just take my word for it that there will be plenty of boards using that
receiver in near future?

Best regards,
Michael


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
