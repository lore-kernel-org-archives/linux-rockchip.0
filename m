Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FEE4C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Feb 2022 19:49:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2L1z4ZkYsrZ4lvXjef37kiizNTXclyAnd7WW1i8CGRQ=; b=MBgSMc9jFSiCGZ
	GI0bbrovnGZLeZu9vLB0yEfJwa5wEEfLOo/1fviYkfhlg9e63ETV5r8o3YyEkaI84w27c0qk1T+wK
	1wLqBane3URwwcEUQLqzHDkRS8wcdgUWFWB/q3gG1r5Z4peWW6KpdJ6eTja9ZlnCoE1/nqtmT8T/v
	sqOLCaN+5rp0qafibeeDk5ZWxmDBYlYPKNaSlONkpcmVlouyeOtn+s7FKii1Cr1mhdk+RSBMPpb1S
	hfH2YhL8htJZU4+ZGZ10xeHu6LjKEhddA1GZ2r4U1yTsmPJ6rulQDiy1MOBE428exOsu0NkpAlSl5
	slzlG0uiyixyICQsu0FA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGR3X-007LY9-1S; Sat, 05 Feb 2022 19:49:11 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGQHl-0072IL-4W; Sat, 05 Feb 2022 18:59:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1644087575;
 bh=Aw2WMDEbEhlH/mZNLfkFzJ3FjsJZHx67MeYHGf5Ed1c=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=E0SpvTtVR4zB+1sVAyIeA5Yex7HrM8hnFx8yFn76GNvJQ3xPdTEtV2PiicJSTPssn
 CTs6y7cPyf9lyRjSz6pmToOCU7cQgebUk3lLq3spvAKBRyWrfOsQK8kfb7YDDWD9nF
 eQBMy12TPbgTLLb5QeMLjwl7rkugiF0vqSNVWmG4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [80.245.75.80] ([80.245.75.80]) by web-mail.gmx.net
 (3c-app-gmx-bs06.server.lan [172.19.170.55]) (via HTTP); Sat, 5 Feb 2022
 19:59:35 +0100
MIME-Version: 1.0
Message-ID: <trinity-7a0de29e-ada7-43b1-ae8f-50da4736f2b1-1644087575012@3c-app-gmx-bs06>
From: Frank Wunderlich <frank-w@public-files.de>
To: Frank Wunderlich <linux@fw-web.de>
Cc: linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>, Johan
 Jonker <jbx6244@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Aw: [PATCH v2 1/2] dt-bindings: rockchip: Add BananaPi R2 Pro Board
Date: Sat, 5 Feb 2022 19:59:35 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <20220123135116.136846-2-linux@fw-web.de>
References: <20220123135116.136846-1-linux@fw-web.de>
 <20220123135116.136846-2-linux@fw-web.de>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:wtFtw4+ksp83Q2y92etl/kbPoD8QWRWOUoK1ywDfvhrdYz68Xyd1uZItuW7+kN2NdNUoZ
 aPdebyWl5vMRsIAgFgy2jS4UjyDJt2ehF1gPcG0EyypqLdZUo9lpFfuHqqK8yWGUt0TftMCzK9mE
 VugotwAhJxGnC+WVlRMwio86X5WDPXg0auY1pKBAsUdfCK9EJ3H6ZbPM7u/oqbyjOsxJqulSL2bp
 ksL3Q432k+Xa+z1EeJdydiVlK5Y+0eGYvqekkNLVKfjsbyrXzxQdah5C3LsfbXrU8sBpuUEtcvnI
 Tw=
X-UI-Out-Filterresults: notjunk:1;V03:K0:ZfuXrw71q/4=:ChBe3CXdNiA+BE9kiEo7w9
 6N/3blfcGwR9VfGH6FRU6JZ4bkHlQp8ry/OLIGjGqizYBCx1KwIXkWdiOfGyVcCzIEuj4eRwT
 8hlmsJIdNsnV0SCD9Et9KMWgUQUHlcaxcHzExdftklMxsnCdyhXiS7d+S9+cLsLcGEYoX+8cx
 Bl91e/9oY/yZuZdDVpVuTc0bOOxiWuEtxoWCxRrlLo9BiUVQiL3dgrHwi/kXXuZTV/14LL1PU
 K+uA932PyYEvqHxRmAuNRpGsvh5pTmHSjHnhM1sauyqvI75UcXxI50Ar8FDb0mg35vbG69M5J
 u6/Mr/zq0ibXqCse/6mHpOZPmNE1yOo+DXkWPtyHkHjLq1zggYNc1qW0ZhvGTtN+YgiCPOraJ
 S/N1WBC2j928AP+lz4XeffXTOBqNpwrHRr2IJUXoF5offlKluhkdi4Mu5SIFYJxqCMNpvUR9c
 42eEDDJ96jhAZecSKv6oM358msy7m1hxS1NTolGXr0v6WA9uh5RgIY6eHwX9G4mfCpH5MQmDn
 y8DL34GJvXVnB8WmXSqsvjxPGuQ0/A6/iARRDOSEwmfrveywYIViAPcOJqNR0mNnhyE7vITA5
 PjNF6PSOQLyLe8IUt4PzWBCNaRg1S/jLrN1uC7eLnwUNOkc2jE0zOD4SmfgNPZOWnUnYmnULo
 iDb7a3DbcUfRE5rZ2/1TIdWAEZOLIY6w2YBoz2XLD1aO0R07Pzq9VE8tuxF8Fr+qD/UkYgSGI
 ryq/tMgBIpso2/vYpbXDmxsAZPGJ9HhlZKhwKANMQ+aELB35qH9lmMyVldNSV5ZLttbf2uZnL
 Pc7gl2l
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220205_105949_565863_1D631C99 
X-CRM114-Status: GOOD (  14.22  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Hi

just want to send a friendly ping ;)

regards Frank


> Gesendet: Sonntag, 23. Januar 2022 um 14:51 Uhr
> Von: "Frank Wunderlich" <linux@fw-web.de>
> An: linux-rockchip@lists.infradead.org
> Cc: "Frank Wunderlich" <frank-w@public-files.de>, "Rob Herring" <robh+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>, "Peter Geis" <pgwipeout@gmail.com>, "Johan Jonker" <jbx6244@gmail.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
> Betreff: [PATCH v2 1/2] dt-bindings: rockchip: Add BananaPi R2 Pro Board
>
> From: Frank Wunderlich <frank-w@public-files.de>
>
> Add Devicetree Binding for Bananapi R2 Pro Board based on rk3568 SoC
>
> Co-developed-by: Peter Geis <pgwipeout@gmail.com>
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 4aed16176434..33d6423fe6c3 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -651,6 +651,11 @@ properties:
>            - const: rockchip,rk3568-evb1-v10
>            - const: rockchip,rk3568
>
> +      - description: Rockchip RK3568 Banana Pi R2 Pro
> +        items:
> +          - const: rockchip,rk3568-bpi-r2pro
> +          - const: rockchip,rk3568
> +
>  additionalProperties: true
>
>  ...
> --
> 2.25.1
>
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
