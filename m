Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E98CBD2A543
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Oct 2024 19:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iR+DeyPuzwcyrlqWDU3DtRnX7/NFWRA27P53JPyp18I=; b=sqmlVIxxp31x+8
	9yxmGzu1+5XsVFV/9N4okEUcxXAEt02+l+Rn+aURaXRvSm0ioXZJlxxBGpkt3DW6NuFUUaq3oDx/O
	FA7Sx6dmjaF9IuZIwI+5JnTqNCR4cjMQkGDeR3/XhZ62nkYUXGrSZ6xWvQP+BpHWtCpuYcoxszXjl
	9B+CQgbPW7zfza+fNv0nAD7k0LXO/ckLYl+Pn1fiYGQoNb35Ag/dWTvyMq5pu3gm7xl+wI2giN7qL
	Q50nGOC1jOr71EveyaNgqL7xcyyqDmUkxaZlu8PawHK4sEeSzHPpeMk0AW13OFGDrKywD7oNVCdmM
	xYkquh8L2+g2RKPDvGWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t19jN-0000000CoAu-1d0E;
	Wed, 16 Oct 2024 19:30:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t18j2-0000000Cfui-1tnj;
	Wed, 16 Oct 2024 18:26:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Date:To:Cc:From:Subject:References:
	In-Reply-To:Content-Transfer-Encoding:MIME-Version:Content-Type:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=0oOymLDvhYXs67gpgWJ7cSTf1poXhsQHPnLDygcjXWE=; b=IkEAo/p+Kxg/Jhxln5JyOsi/69
	dFnOq9PdNAgVHN7DtR1Y++nOby1gUw3xrc0bePsNhTZdc9LI1MbT717xSoCV2UeRtNDQjvqURHc4m
	HIo1SZtSpF5K/k9KqAQCTgsJTf9+bAS9qGgTEFIGowCaPCWuRHjOKNwsUaSFi+xn/q/DRS0/m8OUV
	pzb4oE91v1rmX8cOtlQsxhvcQi6jWhmT5L0yQ65VjeyCWJyYcZa+7iPIM90hkbhYE8Lum4E1J7Yaj
	xUtzAaC007IE8bWEuE2opm2C91ePTUCEMD12LM5Rum6sXa4m+aGG/hN+1O6bFpRHFKzshnOTAFebQ
	ievIp69w==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t18iz-00000006s3P-1jUn;
	Wed, 16 Oct 2024 18:26:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 771035C4BC9;
	Wed, 16 Oct 2024 18:26:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F39DC4CEC5;
	Wed, 16 Oct 2024 18:26:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729103176;
	bh=0oOymLDvhYXs67gpgWJ7cSTf1poXhsQHPnLDygcjXWE=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=j4UBKIapkJ18PQGiD2O4MFifu/7QTmBxotnxoTem5aP0htkDpXaO1bNX2GQEjCGHF
	 ymzVYc/CP1tSr+zhecym373anXwrXJ9S8xR1wHovo6McbxsoMPF57Tj0oL4Q1jjm28
	 5M8yYVutya9PrdEgAl+lzaiVR5/pkRaNnAYLCaNVZd90c6Eu4z10rchUFo7VH9iWoG
	 CZntDe1SDYbDdPZwM6zHQsGh3wUuGNLaXApfvtSOiKvNDxBmS31jKD3AuWlh25vXFG
	 kDINH+/4eRMhEkUsOlr1NDVeNaWMvZpm24nrKx/aivAoC6aIoyWHr3A5CLoU3Iowxg
	 IJw5bBmeqJi4A==
Message-ID: <b586b57f597897cecde26054db4d5fa1.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20240906082511.2963890-3-heiko@sntech.de>
References: <20240906082511.2963890-1-heiko@sntech.de> <20240906082511.2963890-3-heiko@sntech.de>
Subject: Re: [PATCH v4 2/5] clk: clk-gpio: update documentation for gpio-gate clock
From: Stephen Boyd <sboyd@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, linux-clk@vger.kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com
Date: Wed, 16 Oct 2024 11:26:14 -0700
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_192621_726243_40D01D3D 
X-CRM114-Status: UNSURE (   8.40  )
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

Quoting Heiko Stuebner (2024-09-06 01:25:08)
> The main documentation block seems to be from a time before the driver
> handled sleeping and non-sleeping gpios and with that change it seems
> updating the doc was overlooked. So do that now.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---

Applied to clk-next

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
