Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4D88C433FE
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Oct 2022 19:31:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wBgh6aEivRNCXQvwazpsI9WegKzDOlUmsvA1e/Y+POE=; b=jbucqWBr1Ux0L+
	8qXz0gEWo0+KvzomCJ1xN13eNVJwrGRybfWb5d5mxPnsCbwqTFXQtajRxiXa7cY+Zrh/hBFuDw89n
	4A4DJVj6PHIFyZ0hhGHJ60cgT4QsfGIjgjKYejwBo5TCOB34YGaIkgjPa3rXyCUVug8CyPIrcGVMQ
	LY5a4Kt3Cpe80Fhwq1BFwnqE2YZDGKtdK5rM7BxcA9UuhN4kN80+kFlBRgPb9aoCvpBKrJ9qvO3xj
	EjkjRIDbY6wHFKyK37yZ88fBJxAnzTSDKCNHzz83tcnVFwSKl3BG7IDmVcxqvehqsdtzZhWohEVS9
	U4Kkjlb5BDGM0f4skvLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohc11-00G5Nc-Jn; Sun, 09 Oct 2022 19:31:11 +0000
Received: from 31-193-140-172.static.as29550.net ([31.193.140.172] helo=mail.pscan.uk)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohc0y-00G5MW-3u
	for linux-rockchip@lists.infradead.org; Sun, 09 Oct 2022 19:31:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=pscan.uk;
	s=2016050301; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=6oLnNueRxi+mtFXD26hVJeTumst0RJeKigOrilwsKKc=; b=dwYSfYRGL7xs2gZcksYaRNb11P
	+L0XPeP6li6OVdsESkMaWgsELrS8KdBB6/4K27PyDeQgCNV982hVAUWVFiEFxbIq813b4tYWoIfDL
	pQBq20Rq5mN058yxjhSkFYihN4j/aL0gIfZfRRBlVWxynlWB48zIJvgt+LAXmlf0i0cM=;
Received: from host86-153-126-124.range86-153.btcentralplus.com ([86.153.126.124] helo=[192.168.1.77])
	by mail.pscan.eu with esmtpsa  (TLS1.3) tls TLS_AES_128_GCM_SHA256
	(Exim 4.94.2 (FreeBSD))
	(envelope-from <subs@pscan.uk>)
	id 1ohasm-000Brb-4b; Sun, 09 Oct 2022 19:18:36 +0100
Message-ID: <53f7b344-8029-1346-c5f7-ea471a3e8157@pscan.uk>
Date: Sun, 9 Oct 2022 20:30:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Subject: Re: [PATCH V10 3/4] power: supply: Add charger driver for Rockchip
 RK817
To: Peter Geis <pgwipeout@gmail.com>
Cc: linux-rockchip@lists.infradead.org
References: <20220827021623.23829-1-macroalpha82@gmail.com>
 <20220827021623.23829-4-macroalpha82@gmail.com>
 <abba3972-fdd3-e783-8333-c81ed1f724e4@pscan.uk>
 <CAMdYzYqaxvNsCz5KwFeGH_BKN_A3qpOjjkz5pVVzvWDNEytvLg@mail.gmail.com>
From: Philip C <subs@pscan.uk>
In-Reply-To: <CAMdYzYqaxvNsCz5KwFeGH_BKN_A3qpOjjkz5pVVzvWDNEytvLg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221009_123108_371183_62C1BA39 
X-CRM114-Status: GOOD (  13.92  )
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

> 
> In the Rockchip inno usb2 phy implementation, the extcon is an
> optional property that depends on your hardware design. If you have
> wired up the vbus det and id lines correctly and have a simple usb
> port, then you can leave this property out and the phy provides the
> state to itself. If you have a complicated design, such as a usb-c
> controller, or either the id or vbus det lines are broken, you'll need
> to provide the extcon with a pointer to the device that is providing
> this state.
> 
> The rk817 is not a valid extcon provider.
> 

Thank you for your reply Peter.  I have been thinking about this and 
looking at datasheets and schematics.  I think that the point is that 
the usb phy is inside the SoC, and not in the RK817 and so any logic 
concerning whether the port is in OTG mode or host mode must take place 
in the SoC, basically I guess in 
/drivers/phy/rockchip/phy-rockchip-inno-usb2.c

Given that I have a device that works in BSP but not in mainline I think 
that the secret of why may be somewhere in that c code, so that's where 
I need to look and play.

Your reply helped me to realise that.  Thanks, Philip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
