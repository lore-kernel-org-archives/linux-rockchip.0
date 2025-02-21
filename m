Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4FF6C021B3
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Feb 2025 23:20:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XWjVPC7G8f1/y9xzvpDyaJ3CfdPpBcK46KSIiaRbV0g=; b=Kas/qBND//w6Q5
	6mFav3HcusM16r/sIwGf0n68ZCDOfNoQu/WmBn3Ap1Zitj6QVq2jbK4ECgT1RTbRITUKjLb2MEY2Q
	a3R01N9/oR5tTqsVJy4ntvYXkbsaEt/Es2xE65nq2x+W6t0AM8tE/eePmB+ShbjauKp1JkVS1Sk8h
	0ZinShmnblMhbepM55ahVtWiFbxHM2knLO/ElZRU6RebDfwfwFqJhZ7EaWNuSMedP5h2XsI4wIhPI
	jjZ2S27WXRmoWzr3YELwVyIhAEH+1iTqTI2sDrhdg5b7zY0RiHaTHehEfy+fyoQLqFuzFGV2TUJEQ
	enEkNjabmdNJVVN31dwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlcJc-0000000783Z-0bMr;
	Fri, 21 Feb 2025 23:20:16 +0000
Received: from out.bound.email ([141.193.244.10])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlcI8-000000077xk-2meW;
	Fri, 21 Feb 2025 23:18:46 +0000
Received: from mail.sventech.com (localhost [127.0.0.1])
	by out.bound.email (Postfix) with ESMTP id C15528A0A03;
	Fri, 21 Feb 2025 15:13:40 -0800 (PST)
Received: by mail.sventech.com (Postfix, from userid 1000)
	id AA9A3160036F; Fri, 21 Feb 2025 15:13:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=erdfelt.com;
	s=default; t=1740179620;
	bh=vyhNgeOrYGbDnImKc/jEWBJHmyIIcC5LBYoCURsL4I8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vocGKBdt41/eCeMu4YU+CArZ78x0+Z6/Yq+IyO5iYGUXepO/opn0ydttE0nRqJZqx
	 t3RJJtpU/sTaXAiB73iUozN03MYw6M53uRcz9x9RcmFOuzrmx9nK21+UHD5VRbdSAF
	 KU/zTDvmuJLrpyrpf8w4fS5xqipCkBBwSrI+TOZ8=
Date: Fri, 21 Feb 2025 15:13:40 -0800
From: Johannes Erdfelt <johannes@erdfelt.com>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH UNTESTED v5 0/4] Orange Pi 5 Ultra
Message-ID: <20250221231340.GS16911@sventech.com>
References: <20250220041010.3801-1-honyuenkwun@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250220041010.3801-1-honyuenkwun@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250221_151844_959913_328B462E 
X-CRM114-Status: GOOD (  11.59  )
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

On Wed, Feb 19, 2025, Jimmy Hon <honyuenkwun@gmail.com> wrote:
> This patchset is looking for testers. I do not have the hardware to test.

I do have hardware and I gave your branch[1] a test.

The following things tested successfully for me:
- Kernel boots
- Ethernet
- SPI NOR
- Micro SD card
- eMMC
- Bottom M.2 M-key slot (using an NVME drive)
- USB 2.0 ports
- Blue LED (using heartbeat trigger at least)

I did not test:
- RTC
- UART
- HDMI1
- HDMI IN
- Analog audio
- Mali GPU
- Heat sink fan

However, neither of the USB 3.0 ports work. There are no XHCI messages
during boot. I confirmed my kernel config does build XHCI. I haven't
ruled out a mistake on my end yet.

Also, the green LED is constantly lit even when the trigger is set to
none and the brightness is set to 0. This made is a bit harder to
confirm that the blue LED was working. I haven't ruled out a mistake on
my end for this one yet either.

I'll also see if I can give HDMI a test.

JE

[1] https://github.com/jimmyhon/linux/tree/integrate-6.15


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
