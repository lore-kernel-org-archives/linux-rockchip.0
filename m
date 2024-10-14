Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D5D2CFC501
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Oct 2024 07:25:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OnmKyor/iFUPIKIqa7I9ep9XucWSHoOdnSIYJFRGGVg=; b=Azn2r2FmPqSMod
	qU3zUOIV4ddPXnVqLfsyfnyYbv0l4HNZx1IrQWk3mPkIwflwUNpzbGuBT4qVqPuZHp+ntxffMrVO2
	eDqxCqhodB+FlkvrxYIBxnna5nD0UmSllqlqFu5iWbhUMx2mATpc8JRB5rObuhkIIEb75YwZ+6eo6
	FbY4604yeaBTUJ/BAUDtZFc3YfqAP7dNjUKncIEpOUsjaGgLxpGndKXBuOAIBCbVeJQGGq2KOfXdK
	7ntSNihDmpADABwsHM0oTK2pkAbeqHAEHquWUng5hbKvL/O/0ZnZCtcC24qcTWWaNcxhiqoAm1pUo
	JWxIq4Dj53Dzmsi5eISw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0FSg-0000000439M-2BSq;
	Mon, 14 Oct 2024 07:25:50 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0FR6-000000042ls-1tYd;
	Mon, 14 Oct 2024 07:24:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 2E05B5C5A48;
	Mon, 14 Oct 2024 07:24:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 634EEC4CEC3;
	Mon, 14 Oct 2024 07:24:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728890651;
	bh=1X/AWdWy6XJyDSO7M/cdfaBQEjMbptSwkQxF6EyEVbM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GDQISWmAdJ2QhJIV6et8L0aeC7GtZDidTob1al2lXnVGaLjAjRZaXVKt3CppjYhXS
	 q2hQmiCPk+1O4lqE1WlyCj0DS6qSgAXRb+1eOPtdFTSRia2ghEq9Fx1J2c6r/H5HDW
	 QfJCpfi0263dyj7KvIK9XhHza9m6jD5QCuqoKcrNlDBe5FAbgqWkMAJmouW6m9RF7F
	 QtsKAykI+wHXl6FqvuP4hCSfJ7v2hDC2z31Gi3wKlezg9NMfz/wpH7P4Ucxk2M+oDP
	 UXoakmVjM0TZ/91Ra7MOYu9oJ6zL2DQDFO3+dlQBNfmNWxuq/bA+nlXIkSFgANAzQc
	 a5h707NufGLKg==
Date: Mon, 14 Oct 2024 09:24:07 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Cenk Uluisik <cenk.uluisik@googlemail.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Chris Morgan <macromorgan@hotmail.com>, 
	Dragan Simic <dsimic@manjaro.org>, Jonas Karlman <jonas@kwiboo.se>, Tim Lunn <tim@feathertop.org>, 
	Andy Yan <andyshrk@163.com>, Jagan Teki <jagan@edgeble.ai>, 
	Michael Riesch <michael.riesch@wolfvision.net>, Jimmy Hon <honyuenkwun@gmail.com>, Jing Luo <jing@jing.rocks>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH V3 2/2] dt-bindings: arm: rockchip: Add Orange Pi 5b
Message-ID: <3khrvo5fhft6kagr33oamfo744iqdriaccd75m5le7lsk4n27k@6awyomnakwv3>
References: <20241013213305.310844-1-cenk.uluisik@googlemail.com>
 <20241013213305.310844-2-cenk.uluisik@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241013213305.310844-2-cenk.uluisik@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_002412_632612_B27CCE2F 
X-CRM114-Status: GOOD (  19.20  )
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

On Sun, Oct 13, 2024 at 11:32:37PM +0200, Cenk Uluisik wrote:
> This commit adds the Xunlong Orange Pi 5b entry to the device tree
> bindings inside the Documentation folder. I know you said I
> should extend the Orange Pi 5 one with an enum, but I made a whole new
> entry, because looking at all the other entries, they also create new
> entries in a case "like this". I hope this is okay, or maybe I misunderstand something.
> Thank you in advance.

That's not suitable for commit msg. Explain the hardware.

And no, use an enum.


> 
> Signed-off-by: Cenk Uluisik <cenk.uluisik@googlemail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 687823e58c22..130f6ccc1658 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -1053,6 +1053,11 @@ properties:
>          items:
>            - const: xunlong,orangepi-5
>            - const: rockchip,rk3588s
> +      

Please run scripts/checkpatch.pl and fix reported warnings. Then please
run 'scripts/checkpatch.pl --strict' and (probably) fix more warnings.
Some warnings can be ignored, especially from --strict run, but the code
here looks like it needs a fix. Feel free to get in touch if the warning
is not clear.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
