Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD4E6F5141C
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Mar 2026 15:17:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cr0TOtyKvWw1W0CmmNJfmw0K4yZZ9J1RxhfwE18S2/E=; b=u0w6ChYvQpo+UM
	gWPug9xSWOm3QUyxImhy5eWGjFEIKHvtqWuC11OvTIVxCvYYxxRkIUMBTJY9Tc6kNE7d0UmEFZI10
	jukbkonEpXLcIUyAj9rPboI/LSp5tVfU2mbE5O+xa9+TgkvAJZiJZ3tN3iSNup9BltjCc7mcX19wr
	bu8jB+sbcj552OG1oEICJGaEAUHNsQecJUJOsBb9xrczdT3x8jwu9gNla/NGXkKkxyV/CwgmAuvLz
	A4CI5M6lVrvWIKlhfrx3G7rR9WFJCh4DWRtFNXoLmdqf0zwpgp3u6iEqWgZHKI2VBGl8Rnc5BGNTQ
	bcbGZ12aFomHsUKQA1kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vytOs-00000005IG5-0YPf;
	Sat, 07 Mar 2026 15:17:07 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vytOq-00000005IFz-1Dda
	for linux-rockchip@lists.infradead.org;
	Sat, 07 Mar 2026 15:17:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 5EE946001D;
	Sat,  7 Mar 2026 15:17:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8610EC19422;
	Sat,  7 Mar 2026 15:17:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772896623;
	bh=0UnT+075J08xFSw5ayjMg4ookTNNmPK5kNEOX3Bba1s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Civrm1ki07KOZoF+DAaXctutesxEyo26q81HghJOpSHL2BKdvpIlmBfwuQpFamBd2
	 yVrpUj9M6xD/KZT/su4uRMbymopzKXjr01YdoygFIcLEVWCRGvmjeJRv+xiw1cmEVx
	 zzY0HWWE2rg6X5uajzbnItF7+h/WggLROWibSbf+8kB0PD6oQF8XBxmn83eR7feYZt
	 TbkN3ovSQofGYZfM+5CkuNhiwCFl9yt7rcKNHibSnY1YD2X1e4/XJw0I/WEoTix/uf
	 FrGDBBR/agAFHMIECAfby95z4fIMu95zT1hxiHvzTD7ClyvXjBi7PLuGB7SsiBpon7
	 +ZyCGYDlUCbdg==
Date: Sat, 7 Mar 2026 16:17:00 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: power: rockchip: Add pm_shaping support
Message-ID: <20260307-original-shrewd-mouflon-1eb07b@quoll>
References: <1772782832-216867-1-git-send-email-shawn.lin@rock-chips.com>
 <1772782832-216867-2-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1772782832-216867-2-git-send-email-shawn.lin@rock-chips.com>
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

On Fri, Mar 06, 2026 at 03:40:30PM +0800, Shawn Lin wrote:
> pm_shaping is introduced for some platforms to throttle the outstanding
> burst requests of each IP to prevent bus monopolization. Add a discription
> of it.

Isn't that interconnects?

Also which platforms? We don't add it for your downstream code. Why
there is no property restriction per variant in the binding?


> 
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
> 
>  .../devicetree/bindings/power/rockchip,power-controller.yaml      | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
> index b41db57..4af6c30 100644
> --- a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
> +++ b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
> @@ -147,6 +147,14 @@ $defs:
>            A number of phandles to qos blocks which need to be saved and restored
>            while power domain switches state.
>  
> +      pm_shaping:

Read DTS coding style. Build your code with W=2 so you will see here
warnings.

Also, read writing bindings or any docs for beginners. Missing prefix.


> +        $ref: /schemas/types.yaml#/definitions/phandle-array

so phandle? Or array? Decide...

> +        items:
> +          maxItems: 1

So how many items?

> +        description: |

Drop |

> +          A number of phandles to shaping blocks which need to be saved and restored
> +          while power domain switches state.

Wrap code according to Linux coding style.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
