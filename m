Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E48AFC021B6
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Feb 2025 21:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IOD65LwylMvAO61Qg7o7bZCE/KubnMJxGHX1lF7Jzb8=; b=0QXCFg6zSIp000
	MINnqOQRaimV0CCj3oEgcrEy7h8ujh0My9VUKHX5rGx2a9dnFEq9jhTD2PRCBjjwvaVdD5BnEjy9T
	42gwCTsQRJSZVQBjQaXQ8NP9zafRB4JfiRCmnZ1i+1+lGpfVq+UlH1KdD6dlokV0TV5SNpk9TwfRy
	zunewvOtVRFvAvyZQGfk+NSRCn950OSP8xje+mvtY0K1BnX3VCJeBMnlM+cxpYEgARwKouTQuSv7t
	Ly9m5HX7n8pZDuh1OLS4rQiBOx0CGiOm94uVgXQdVXYKn6uvYbQM671+NqiYq87IJW9mxDonjPmbJ
	19t2OxffZtePStojPdXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlwzY-00000008odX-3kUc;
	Sat, 22 Feb 2025 21:24:56 +0000
Received: from out.bound.email ([141.193.244.10])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlwy3-00000008oHH-0u3o;
	Sat, 22 Feb 2025 21:23:24 +0000
Received: from mail.sventech.com (localhost [127.0.0.1])
	by out.bound.email (Postfix) with ESMTP id 7C96A8A312A;
	Sat, 22 Feb 2025 13:18:20 -0800 (PST)
Received: by mail.sventech.com (Postfix, from userid 1000)
	id 6507F160036F; Sat, 22 Feb 2025 13:18:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=erdfelt.com;
	s=default; t=1740259100;
	bh=+ItGVJzpd1QRW4jASymNDd3wly+TTYF2ez5OzcIPSMM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZSFAjdv+pu427UJdUHib5bkweP10aVAhDVu9aZwGjrsZ/d06XlnHlttdcPg0Q5iWV
	 e3LKQrSpDU2jsZ6LYf3DuJX68If9Ubl+Wth2lJie0oS0jxGxzxCySmAfDePxSZ82rX
	 6Om4uJqyfZvDVg4DlGruvHzq0Y/sof5wAUJGiA7w=
Date: Sat, 22 Feb 2025 13:18:20 -0800
From: Johannes Erdfelt <johannes@erdfelt.com>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v7 4/5] arm64: dts: rockchip: Enable HDMI1 on Orange Pi 5
 Ultra
Message-ID: <20250222211820.GY16911@sventech.com>
References: <20250222193332.1761-1-honyuenkwun@gmail.com>
 <20250222193332.1761-5-honyuenkwun@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250222193332.1761-5-honyuenkwun@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250222_132323_412411_62F6CD44 
X-CRM114-Status: GOOD (  10.83  )
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

On Sat, Feb 22, 2025, Jimmy Hon <honyuenkwun@gmail.com> wrote:
> Enable the only HDMI output port on the Orange Pi 5 Ultra
> 
> Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
> ---
>  .../dts/rockchip/rk3588-orangepi-5-ultra.dts  | 42 +++++++++++++++++++
>  1 file changed, 42 insertions(+)

I've tested this patchset up to this patch. I unfortunately don't have a
way to test audio on the HDMI port currently.

All of the issues I had previously are fixed in this patchset.

Thanks for the work in putting this together, especially without access
to hardware.

JE


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
