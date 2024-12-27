Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF17AE7718B
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Dec 2024 09:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lcPUYOBpz3yl5ZHZg0sWx3msjwgCh9eu4wR+YTbtYBs=; b=VvKvKWUUvfNipm
	dCXe1usIKxi+y0ChunjG3Vcr0DeM0KcmrOKKb4evWZAxnR5YIveCco9BL1rS/8oY6M0Z97tiW0URG
	L61mUXu6N8qX+a+JD5wra6zIbCFl5cyWW2VvTlIvG1mo2/i8yuo3kN3MPWsUww6Sj5BVGze9L/JmD
	rssWHXZnHGHSvVc4uRJT/nNeS41tdiOM8EUHlytHvYMtGuTaeS+oEt3sCrvTfOYmBbNZsIRb/O6LR
	QO7+YgJOvc3jjVXBP3Vy+NC2fYVUn6srA3b+r1D6QfrJF8ltiHj8M2x2CUTGtQ/HCDxd4yv5dgXUA
	wy4D9i0KTvFzAYzzd93Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tR6EA-0000000HRh4-0DM0;
	Fri, 27 Dec 2024 09:01:50 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tR6Bs-0000000HRCN-18jC;
	Fri, 27 Dec 2024 08:59:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0EF485C622C;
	Fri, 27 Dec 2024 08:58:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EFF63C4CEDD;
	Fri, 27 Dec 2024 08:59:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735289967;
	bh=MsEyQkHLXLf/JnBqgmJeJTfFqqMERbxMGqu8n1OLFxI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eJPsqtSjGiTF6ifyH+l9LUgEb065c7UgKsk3TnaY9T2pwVmzysscMSrmXtkJfpqSR
	 fbd8vUfmygHv1wxWv06EFEgmHLDDrt3rRhIB+T44ktnWBqMH/hJmZnhJgz0/hvVDLg
	 wCRShUfa+/eiWOj+vv53hVyHE1Q+IsYN1dPQ7fN7MVmKxXqrgmi1ycoghHjV5aV6fO
	 LxhRodMaxYOUZOmnQbO2sjo3TEruJ5R1Gn9cpfzabz1XeTGLTplBFj3btmuiwIDXlJ
	 TUGc1tcIDxqJwCjA+0wGy8kyE+5nfhXOewbfoKpvZDM4BU1YoEG9ZNeAyx75N0lq3W
	 kp0qPjWSU52QQ==
Date: Fri, 27 Dec 2024 09:59:24 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>, Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
	linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/3] dt-bindings: nvmem: rockchip,otp: Add support for
 rk3562 and rk3568
Message-ID: <eyl7xqtfsdby53p2t5ub24nj4223hzbsazbuxxshnyk7xx6nrx@gzbcyqs4pjfc>
References: <20241224094153.3816923-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241224094153.3816923-1-kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241227_005928_369386_5490DF24 
X-CRM114-Status: UNSURE (   7.93  )
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

On Tue, Dec 24, 2024 at 05:41:51PM +0800, Kever Yang wrote:
> +
>    - if:
>        properties:
>          compatible:
> @@ -78,6 +107,12 @@ allOf:
>        properties:
>          clocks:
>            minItems: 4
> +        clock-names:
> +          items:
> +            - const: otp
> +            - const: apb_pclk
> +            - const: phy
> +            - const: arb
>          resets:
>            minItems: 3

missing maxItems, probably in many other places as well.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
