Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A1B9CEBF86
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Nov 2025 23:29:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FAFLBxYZSx4XXtOdbY0wlxxYITXKNZ5OCqkdkbQPzwY=; b=aqJb98wMpqUF2L
	V/uMMYplA4nEdtuONxy8hMXOlsOeyvtm+Y/zRdMA9eQKauN8dxWbvFQcUSh+LnO5sEkIVWMMzOvRp
	R0ZqPkdfLqnuaGbIdYzCAzAdkY7LzFhYSC5zrfcj1khdghln0j2FT2ulg5fdE+62Rc6/L1LvR1kCU
	GE2C1IxvWZduwh2BIAej5K/SxiMJo0meek12TGc4vK0Sc04Y3+x9BEfq1L0BqykzlBowy5HARIrMl
	o4lORiK5ok7jPJhYKsycyW4VMDB23B/Oc3RqzENdRBqVdOUnpRPj7rnpuCasGb5W1JrIXU66wOqZY
	cG0efbNMTNi5/mWhfbwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKPhu-0000000ECVX-26Ph;
	Sat, 15 Nov 2025 23:29:26 +0000
Received: from mail1.manjaro.org ([2a01:4f8:c010:b6e8::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vK4X1-0000000DIzG-2slZ;
	Sat, 15 Nov 2025 00:52:49 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 7354C40CFC;
	Sat, 15 Nov 2025 01:52:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1763167964; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=spTcZiqb4A5425RyOXmezQjUNlBYhLgtHwe9e0+p9NA=;
	b=IJKQcBfpXOwKJTaIcBLEg4NTpmUc4cYkUWd5M4nz/rdv6KKy0M1FOXhXchOhtfsKfZy+uC
	j0v6dTXiGIiLgy1UZDJLDE/IPGsg24eERd8bF3jQyWzKK9nJXBLOYOkYnvRhmep3Tb2dGC
	9QfM+poNzIinWL1/6m7izlsTpe7yAOKOZ/ApLfNh/c8wDxCx9IaLpxuyMxmr+Dex2YA0UG
	KV0IVRDNTD2nUXv33+i+nOP/yITriLaPho1rV4d/QY5PUaWp5OvyMY/u0PLckMxgxemin0
	Yde3GArqfm/I9rZO2bLSjVcklVLZ7Oh9vBejYljq6wfULwYHcB8JbS0K3rXTnw==
From: "Dragan Simic" <dsimic@manjaro.org>
Date: Sat, 15 Nov 2025 01:52:43 +0100
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
To: michael.opdenacker@rootcommit.com
MIME-Version: 1.0
Message-ID: <e4cd11d0-463c-e707-5110-6b92899b1ba3@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v2 1/2] =?utf-8?q?dt-bindings=3A?=
 =?utf-8?q?_arm=3A?==?utf-8?q?_rockchip=3A?= Add Asus Tinker Board 3 and 3S
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251114_165248_004053_5D2FC3DE 
X-CRM114-Status: GOOD (  12.51  )
X-Mailman-Approved-At: Sat, 15 Nov 2025 15:29:00 -0800
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

Hello Michael,

Thanks for the v2!  Please, see some remarks below.

On Friday, November 14, 2025 16:46 CET, michael.opdenacker@rootcommit.com wrote:
> From: Michael Opdenacker <michael.opdenacker@rootcommit.com>

I'm sorry for not mentioning it in my earlier responses, but this
line is redundant, because it duplicates the From value found in
the actual email message.

> Document the compatible strings for Asus Tinker Board 3 [1] and 3S [2],
> which are SBCs based on the Rockchip 3566 SoC.
> 
> The "3S" version ("S" for "storage") just adds a 16 GB eMMC
> and a "mask ROM" DIP switch to the "3" version.
> 
> [1] https://tinker-board.asus.com/series/tinker-board-3.html
> [2] https://tinker-board.asus.com/series/tinker-board-3s.html
> 
> Signed-off-by: Michael Opdenacker <michael.opdenacker@rootcommit.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 6aceaa8acbb2..cd249325a4d9 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -86,6 +86,17 @@ properties:
>            - const: asus,rk3288-tinker-s
>            - const: rockchip,rk3288
>  
> +      - description: Asus Tinker Board 3
> +        items:
> +          - const: asus,rk3566-tinker-board-3
> +          - const: rockchip,rk3566
> +
> +      - description: Asus Tinker Board 3S
> +        items:
> +          - const: asus,rk3566-tinker-board-3s
> +          - const: asus,rk3566-tinker-board-3
> +          - const: rockchip,rk3566
> +
>        - description: Beelink A1
>          items:
>            - const: azw,beelink-a1

I'm sorry again for not mentioning it in my earlier responses, 
but shouldn't this addition be specified like below:

     - description: Asus Tinker Board 3/3S
       items:
         - enum:
	   - asus,rk3566-tinker-board-3
           - asus,rk3566-tinker-board-3s
         - const: rockchip,rk3566

... because the introduced .dts files define the actual board DTs,
by descending from the common .dtsi file, while they're compatible
in the sense of the 3S board variant extending the 3 variant.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
