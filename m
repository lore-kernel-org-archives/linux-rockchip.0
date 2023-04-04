Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A74AC6FD1D
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Apr 2023 07:53:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xEJ4srxiYWNM1U9vxiORbQuTrS32yPlxvMb+lYJjBqM=; b=VWqZ8V0jiqN6Xk
	R83yOuL/7dTXb/k3BWx0tS6Tg4f53aXA8OMeecIJTZ7dGziuHYeDkxxNUX8WD0azXufIcKpptJaTA
	B59exwzX3RAnB4XNpOqSRMoJjoPuWe2UagPfXgyAWYi/VbuhnWiDSjovKQoNCeVdYQ+ZDCidFegJY
	Kd+AMu6hyKq0AykG1G8DQdtMSxyTF7b4HAvNpnoAEMJQG+86TdAbzy/ollnVjyK3WyzhWJrxjDJUU
	R2kZjcAEYEy1PS9dc+JXHkmTFbCuNRGvuaK+nrClu8tzuZd00hinfxEZvBaN5IZC4tgsCOqkjWTKo
	P/I8BmXF8FcI5QDq9y3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjbSj-000Mtw-1I;
	Tue, 04 Apr 2023 07:52:17 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjbSK-000MnV-1q;
	Tue, 04 Apr 2023 07:52:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=0GfWR++YzLDNzMoRJqQDCE2tL0zNiAj+mShJ5J30wnI=; b=h479f0u8P+Q+eXv3062OtsUbVt
	4yFjCw2x7nrCPig9eNU5uEZW8+xe8IF6GpsrQCJEXhhsRZuwMirX84LaFfBL3lSMG9a8oc5BE0s/5
	Exy5Ob8epdyt8BVQV3w7l5+WUJZKzaRiqqNF+OlK2BvvzySaXl9dlXgHsHvqCfeLf6C4u4njwcRLI
	Nt+ZdxsYGffQkpRCi6aTO3prWt3iJrLDu9ieQOn95UmT4bF3x8V0lEXALIJ0FtxQ10CFh80PDCWs/
	8EMSumDfwclTbEAy4Y9n+VRExKGvcEhRB+UCGd+iqCFh9Lrg98i9YGlB9/IMd36r1bj9EoD4iuyBo
	LYJb3oEQ==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjbSE-009CEY-0V;
	Tue, 04 Apr 2023 07:51:49 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pjbRg-0004x9-HG; Tue, 04 Apr 2023 09:51:12 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-kernel@vger.kernel.org,
 Javier Martinez Canillas <javierm@redhat.com>
Cc: Peter Robinson <pbrobinson@gmail.com>,
 Javier Martinez Canillas <javierm@redhat.com>,
 Caleb Connolly <kc@postmarketos.org>, Jarrah Gosbell <kernel@undef.tools>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Martijn Braam <martijn@brixit.nl>, Ondrej Jirman <megi@xff.cz>,
 Rob Herring <robh+dt@kernel.org>, Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject:  Re: [PATCH] arm64: dts: rockchip: Change serial baud rate for Pinephone Pro
 to 1.5 MB
Date: Tue, 04 Apr 2023 09:51:11 +0200
Message-ID: <3738011.44csPzL39Z@diego>
In-Reply-To: <20230403175937.2842085-1-javierm@redhat.com>
References: <20230403175937.2842085-1-javierm@redhat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_085146_420068_47DA9882 
X-CRM114-Status: GOOD (  27.82  )
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

Hi,

Am Montag, 3. April 2023, 19:59:37 CEST schrieb Javier Martinez Canillas:
> This baud rate is set for the device by mainline u-boot and is also what
> is set in the Pinebook Pro Device Tree, which is a device similar to the
> PinePhone Pro but with a different form factor.
> 
> Otherwise, the baud rate of the firmware and Linux don't match by default
> and a 'console=ttyS2,1500000n8' kernel command line parameter is required
> to have proper output for both.

The interesting question is always if this will break someone else's setup.
I've never really understood the strange setting of 1.5MBps, but on the
other hand it _is_ a reality on most boards.

Personally I don't care that much either way, but would like a comment
from the other people working on that device - if possible.

I guess if we don't hear anything, I'll apply it nevertheless at some point


Heiko


> Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
> ---
> 
> I tried to instead get rid of the baud rate altogether, as suggested by
> Peter Robinson. AFAIU that should just pick whatever bad rate has been
> using by the early console.
> 
> But neither using 'stdout-path = "serial2" nor 'stdout-path = &uart2'
> worked for me.
> 
> In both cases I didn't have any output unless setting a baud rate using
> the 'console='param.
> 
>  arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> index a0795a2b1cb1..6bbe65bd5bd4 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> @@ -26,7 +26,7 @@ aliases {
>  	};
>  
>  	chosen {
> -		stdout-path = "serial2:115200n8";
> +		stdout-path = "serial2:1500000n8";
>  	};
>  
>  	gpio-keys {
> 
> base-commit: 3adf89324a2b2a9dbc2c12d8895021e7e34e3346
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
