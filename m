Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7AD4C4453C
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Jul 2026 17:13:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f3ISL+oo7rOfSv5htj1jdemeYH05UDkiFPdnZRaqnH0=; b=tpE29PIXMfO7lu
	6kqKqU1d+10g4Yz3op1E4vjzI7+hppaTYMYqsJemYQzJQeCtBPH3pZY+/YZI36YiUxl3PrJqggaS5
	/ec4X8hcFEE76RauJR95UVL1DR7cRFDGj4D6o5LbQ+JDhD6qnyK4QeJzD9cZTZAjAsLhKfbXVxegy
	pXQvg8kO+Bnw6kdTdIsIn3dm4iAbdlUpI9CgmC/NoGeetqPI9g2OWyOHHhhM8oj/CuDM8Y3Rfi0jt
	s8VYXcPwljju2hDv/Qx0NoOSgELUXyK05/DJFfUBMP43VhCj7DN1tdk9vyQLW5FTyUZvzzDCKccN+
	e/8JVShv3F3jl6c5HbQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmaVr-0000000CQkQ-3H27;
	Wed, 22 Jul 2026 17:13:43 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmaVq-0000000CQk5-45pl;
	Wed, 22 Jul 2026 17:13:43 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 33A5360051;
	Wed, 22 Jul 2026 17:13:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 604E21F000E9;
	Wed, 22 Jul 2026 17:13:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784740421;
	bh=eLGH+onOHUQQ2Pa53WW6oK4W9UByI1udRdVtEs/DmAA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Ur2uJfJ+/90t5tzFCGojA0+rHOdWQadyPhYRnVTPlhMVUumGaIK/64ZGgH9F7ycns
	 7quzrvXKlQTeORK8q94fT7meGXH1rj3840W2LK8tthsD/Zrgv2HSiaxyPwBSjOQ3KE
	 iEQV+2E3j1QomkDN0pS5Yafp1+8YIZ+xwzgtYZ8+tslXjqstI+xhSviNwRGQM/U7ct
	 91jfhURy20NeqQN5u33AQcPYBJQqiO53Fy4XSWAYiGa3QJtOMHtplyK0zMcHSF973V
	 r1CyQ1YVb1UD9aVQRC8SZgqTSRRVdgrrhumhhQWROeK9a/BEULyfV0te/C5lH9Q7nH
	 SRufUZ+vohL6w==
Date: Wed, 22 Jul 2026 12:13:38 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Simon Glass <sjg@chromium.org>
Cc: huang lin <hl@rock-chips.com>, Jonas Karlman <jonas@kwiboo.se>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Jeffy Chen <jeffy.chen@rock-chips.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Linus Walleij <linusw@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2 2/3] dt-bindings: pinctrl: rockchip: Add RV1106
 compatible
Message-ID: <178474041814.1140906.9446539351605289459.robh@kernel.org>
References: <20260714192535.2082729-1-sjg@chromium.org>
 <20260714132531.v2.2.3a4f9d47d4dba36e14141f8796afe8907028aa9c@changeid>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260714132531.v2.2.3a4f9d47d4dba36e14141f8796afe8907028aa9c@changeid>
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


On Tue, 14 Jul 2026 13:25:30 -0600, Simon Glass wrote:
> Add the compatible for the pin controller of the Rockchip RV1106 and
> its RV1103 package variant.
> 
> Signed-off-by: Simon Glass <sjg@chromium.org>
> ---
> 
> (no changes since v1)
> 
>  Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
