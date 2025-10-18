Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFA98CCD1A2
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Oct 2025 05:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y+ru20ILZvlREGBhSXIyLksuhiXTlxMdHMCv1yf0j48=; b=URWGeTr5OCxANs
	LS+U22lVFCsYQZBfE+BT+JvhE/U/j2Vnv1B9clMxjEpWs+URzqXtzkgnrsZGplL8xDEzaJyYqkZEH
	uxT3zxj6992ybYLzuSeT5Y54AS/FmtyYKeBm0HUdJpbIj34WBdGqTtaVN5MI27BznpGy+deqpBqiY
	i0gZIF7BXycCoN09ga/TEcr6vTmoWkcRjmwBHIyCHHv/5d7BYPjTOAsv0x/9rQ0EztBMmY6eWkz8y
	LC4yoIJ5HQ0FLqr8ZeY7tFHHcLSjj/0L35I0or3uIOt3dOZDo9HE/RV9VWJvfAWOcCv/5jAhjZYuy
	53ZW4N8X4uFNEc5LxIZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9zAM-00000009XzD-1UcU;
	Sat, 18 Oct 2025 05:07:42 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9zAL-00000009Xyw-0Axk;
	Sat, 18 Oct 2025 05:07:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id DBDDE605E5;
	Sat, 18 Oct 2025 05:07:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 591CFC4CEF8;
	Sat, 18 Oct 2025 05:07:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760764059;
	bh=7HQHgRhKu2K+O3M8/DReLJ1cTm/7JJq+iftVZzfodks=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:From;
	b=jcEHkju89gP9MlVd3XBTlA+BScjCk+KCEnMgkB4zIPwOOC0l/A5XDJPg5jj/NflSA
	 Z7ysfdXwfMUqMTe5iGk+EQWG7ZtpW4kvZNGnOARN+E7motMWAkmFFkMPhEqPCtwmra
	 1tk+HuLpFxzT4CzhyKXN8Dy5TWW/tkz40UmdVW8ZARYMhjVLnBySZw+vaY0R2G+zjC
	 TUPKDLDxcJINO6nvFyaTLMKTo/GjKXoGiNwQ9LhAM0eukm9VX8f3GMkYldjruOPyse
	 6rgf4ZX7k8VksAgHMcXyCBhEywUPHV3Rjl9q83Q46IcDI5Tp6OsgE4+c881I3IYC5C
	 X89baa+iOWsAw==
Date: Sat, 18 Oct 2025 07:07:35 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Bjorn Helgaas <helgaas@kernel.org>
CC: Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>,
 Shawn Lin <shawn.lin@rock-chips.com>, Kever Yang <kever.yang@rock-chips.com>,
 Simon Xue <xxm@rock-chips.com>, Damien Le Moal <dlemoal@kernel.org>,
 Dragan Simic <dsimic@manjaro.org>, FUKAUMI Naoki <naoki@radxa.com>,
 Diederik de Haas <diederik@cknow-tech.com>, stable@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_v3=5D_PCI=3A_dw-rockchip=3A_Pre?=
 =?US-ASCII?Q?vent_advertising_L1_Substates_support?=
User-Agent: Thunderbird for Android
In-Reply-To: <20251017164558.GA1034609@bhelgaas>
References: <20251017164558.GA1034609@bhelgaas>
Message-ID: <54FD6159-AE45-432B-8F0E-4654721D16A6@kernel.org>
MIME-Version: 1.0
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

On 17 October 2025 18:45:58 CEST, Bjorn Helgaas <helgaas@kernel.org> wrote:

(snip)

>> 
>> Thus, prevent advertising L1 Substates support until proper driver support
>> is added.
>
>I think Mani is planning a change so we don't try to enable L1
>Substates by default, which should avoid the regression even without a
>patch like this.

Sounds good, I suggested the same:
https://lore.kernel.org/linux-pci/aO9tWjgHnkATroNa@ryzen/


>
>That will still leave the existing CONFIG_PCIEASPM_POWER_SUPERSAVE=y
>and sysfs l1_1_aspm problems.

Indeed, which is why I think that this patch is v6.18 material.


>
>And we'll need to figure out a way to allow L1.x to be enabled based
>on 'supports-clkreq' and possibly other info.  That would likely be
>v6.19 material since it's new functionality.

I agree.


Kind regards,
Niklas


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
