Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EE3EEFB7E5
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Feb 2026 02:08:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4fnhE3YWERHiPkk1v6ByuVLrnzsxLlZZI7FgUy7TOhs=; b=4s3n3DoF3eLIda
	D8nWeFVA1NfE3rZRKiFpzJPWWlDD8HgPLoER60mXlSbTNLlHCt1PazS0TowfIwTw++8Gtx87e3A5i
	WqOmE2KU2yWe76ZV+HoUmZOY6JAlAkVxVKKkFYRQ9Lq+qtVoTI3QvNpOZbGXCmZLNdvUgunDqtsQY
	osz/YzgqxkRBH9/E8lnVygmCtz7dhrAvTbUXN4qpALFjTSXQlN78FJAZ+yJiezmfo6Z1Fs8KM6SB8
	x1/VrUFd2kUUNZachEvSDAzYCAp+R/kMOZRPQOVqPY4IkqeY9pqfA3Qio0rsUcAYvNM3j2cno/I8b
	zvo0Q7Ybf2FcKnrNvsvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuhqi-00000001Kpw-1uA8;
	Tue, 24 Feb 2026 02:08:32 +0000
Received: from mail-m21472.qiye.163.com ([117.135.214.72])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuhqf-00000001KpW-3H74;
	Tue, 24 Feb 2026 02:08:31 +0000
Received: from [127.0.0.1] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 34bd766c9;
	Tue, 24 Feb 2026 10:08:16 +0800 (GMT+08:00)
Message-ID: <e0c180ae-22b7-4151-a655-74f83161deb8@rock-chips.com>
Date: Tue, 24 Feb 2026 10:08:00 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Problematic understanding of phy-mode in Rockchip DWMAC driver
To: Diederik de Haas <diederik@cknow-tech.com>,
 "Russell King (Oracle)" <linux@armlinux.org.uk>, Andrew Lunn <andrew@lunn.ch>
Cc: Yao Zi <me@ziyao.cc>, Heiko Stuebner <heiko@sntech.de>,
 Heiner Kallweit <hkallweit1@gmail.com>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, netdev@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
References: <aY9s5PXP4zZ7R6fa@pie> <aY9xsslT56D9LGLe@shell.armlinux.org.uk>
 <f1e047e1-3f1c-4562-ab43-af2fe358fe04@lunn.ch>
 <aZDGsJNLZIty0242@shell.armlinux.org.uk>
 <a4aebacc-c273-4e42-97ff-0cdd88d771dd@lunn.ch>
 <aZMxKdkl2Qa7e1WU@shell.armlinux.org.uk>
 <DGGK56T574F0.TJSLQL9P1SM@cknow-tech.com>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <DGGK56T574F0.TJSLQL9P1SM@cknow-tech.com>
X-HM-Tid: 0a9c8d677e7303abkunm282acd41e78e52
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQhpDT1ZCQh1LQxlLGkkaQ05WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=YLGrRVTYXYwJ78iiZ/DQI2fHLRiYr025TGHy3A3AHdE80kecqRFIsnllhhGoByhzUL5aPHOlAcb34VOOcpOOk4xagSKOFFoHtm5VN9dMan8jLwXRHM9lMM64M1RQFiG5po0AiS8Z7/N/zQZ4T0iovsY4S6BMJwQHXcrVVmbcPP4=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=7X1iUhAUWuFURylZjRz/UYuilzjOVBho6gFijhNRoZI=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_180830_450035_4BAE3696 
X-CRM114-Status: GOOD (  13.66  )
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

Hi all,

On 2/17/2026 1:21 AM, Diederik de Haas wrote:
> On Mon Feb 16, 2026 at 4:00 PM CET, Russell King (Oracle) wrote:
>> On Mon, Feb 16, 2026 at 02:57:48AM +0100, Andrew Lunn wrote:
>>> On Sat, Feb 14, 2026 at 07:02:08PM +0000, Russell King (Oracle) wrote:
>>>> On Sat, Feb 14, 2026 at 05:50:15PM +0100, Andrew Lunn wrote:
>>>>> Rockchip have recently started adding support for a new version, and
>>>>> appear to of listened to what we have been saying. So it could be the
>>>>> next generation of chips get this correct.
>>>>
>>>> Have you seen any proposed code from Rockchip for their new scheme?
>>>
>>> There was a patch, including a rather odd formulae to convert register
>>> value to delay. I gave some feedback, but it has been silence
>>> afterwards.
>>
>> Searching lore's netdev archive doesn't seem to bring anything up.
> 
> https://patch.msgid.link/b25d6eb2-e105-4060-86fa-c1a06396ca92@lunn.ch/
> 

I am the author of this patch series. My understanding is that
"rgmii-id" should be adopted first, and for any delays that may
need to be introduced, they should be implemented in the PHY rather
than in the GMAC, although I did try to do so. 

Did I miss something?

-- 
Best, 
Chaoyi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
