Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F56EECAAD4
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Aug 2022 10:04:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2kBGgJyDS8TQc9UA1vh+yV9mRfqoCBDyYfueLPJK9t8=; b=Vxz8vE6yOMud6y
	C7cNU1J+fP2/FPJXBxkXt3+5R2S4PT1/ZxOI+8yxClJSKR+hvDXTis0KygN4BAYOObdCfIvQMF5nU
	83vxuS5+lXuo4mywp2Oh3PwCf6GOzBB/moWtLhMR8CaoOt5MqSnQ0aj453Gi7Jz4f8qKLAzXQ2pAF
	bxK1jc4WtGOdiXfE6a+FqU/YQH/ycDpTjQAdiEpv1IrQD0lhgx6OOB68eAGTSSRsz2IO1sSkEfw6v
	FYbumyuZkeefZZc6q9iGzdEk5L9APwA/Fdibzvqs0Cjgd57ZsgKxhHaabB2ugeDwWOcRswU0friQ0
	cFxBnrMwtOWEx5jDF+Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSy6t-00G0Xf-N3; Tue, 30 Aug 2022 10:04:43 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSy2u-00FyV3-14
	for linux-rockchip@lists.infradead.org; Tue, 30 Aug 2022 10:00:37 +0000
Received: by mail-wm1-x32f.google.com with SMTP id bd26-20020a05600c1f1a00b003a5e82a6474so5813614wmb.4
        for <linux-rockchip@lists.infradead.org>; Tue, 30 Aug 2022 03:00:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=0b21QXH6O+BTSjJFC+3rM4trmoZDQJp1tN7KcWJ7AWo=;
        b=bj2skJMvdzjz078Ov7MeI6BrC+N8Z5RAt9LSxeTNWaAnfcX8+MsUHuhMzu6Zr43jXl
         5eYhsEw9px1Nr+tnrxEsaTOoR2yVUPieVwxjNScLwOhaMlJWU4hQBD6dhxYJMR8uOcor
         vVG1GtsCq7uf6ByVQ9ZNo6fepvO8/Ok3rtJfuXaSI2CHFZZn/04ojSlQQRVWucmrnauV
         2Htia78+PAK8OqN2EiI+gwGHBBnlaQ4BKEz1X6+7kjG725Bx1m5INH+w9BABmX2/EPhK
         1nv5lhnddkrwyEQHNAgxL4HnwjXIAiHaayAilECTJYlSW+2n2Ts92WPKc85Tb4391coD
         suTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=0b21QXH6O+BTSjJFC+3rM4trmoZDQJp1tN7KcWJ7AWo=;
        b=WsNfkumO61BQ/2ARpGEog3XsTXvY1wTbdnMtczKJiDPSFBCxSu+zjG9ypFSynDE+ZA
         ODJuO+wZoSnrh2oXSjVd9ORfRdgK1T/N7cpim0e/N3PCWQgL1MHywD1s8AC/AZcF7bvr
         5VcTk/5gmDz3JBz7FYYjF5ZgXkb2w7IeEux19/f8clr3VW9nh4wld8rIr0VdUUPwXJi4
         0PRlMEyJBM5iMsOIQCQI/eoFR5frR1h3aqjiHiaXaHdW2uRgmNCT9BHxV+45qiji7K7Q
         owddJLraxyvMr3Db/RiOBY+ywai8QcaRDUoaOFO+OIDFtbBYhe9esFn9IagRl5uZohl4
         8hPQ==
X-Gm-Message-State: ACgBeo1SF2Co4Nr7UE81IlLPWdJBTpC53ZDSVVagmdaliTSw+O308oPL
	FhYk3+qrpVdEJcjiqUpQY487J2mySslWM2Y/xCrBnQ==
X-Google-Smtp-Source: AA6agR6aNmu8tqzPRfJhzC1q15Zhh3XEe9S9CQ3NvFq+tQCjwhaY+BTSAAxNwSJGvY+m7hbap1HrnznQheLiT4TU10o=
X-Received: by 2002:a05:600c:1550:b0:3a6:1d8c:247e with SMTP id
 f16-20020a05600c155000b003a61d8c247emr9133266wmg.63.1661853630619; Tue, 30
 Aug 2022 03:00:30 -0700 (PDT)
MIME-Version: 1.0
References: <20220829065044.1736-1-anand@edgeble.ai>
In-Reply-To: <20220829065044.1736-1-anand@edgeble.ai>
From: Jagan Teki <jagan@edgeble.ai>
Date: Tue, 30 Aug 2022 15:30:19 +0530
Message-ID: <CA+VMnFwF4UVah9rbdhwjbuTuYFXwNFuDD==x0oYDxYiO+V-c-Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: net: rockchip-dwmac: add rv1126
 compatible string
To: Anand Moon <anand@edgeble.ai>
Cc: "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	David Wu <david.wu@rock-chips.com>, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_030036_347605_0997F709 
X-CRM114-Status: GOOD (  14.72  )
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

On Mon, 29 Aug 2022 at 12:23, Anand Moon <anand@edgeble.ai> wrote:
>
> Add compatible string for RV1126 gmac, and constrain it to
> be compatible with Synopsys dwmac 4.20a.
>
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> Signed-off-by: Anand Moon <anand@edgeble.ai>
> ---
>  Documentation/devicetree/bindings/net/rockchip-dwmac.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> index 083623c8d718..346e248a6ba5 100644
> --- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> +++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> @@ -26,6 +26,7 @@ select:
>            - rockchip,rk3399-gmac
>            - rockchip,rk3568-gmac
>            - rockchip,rv1108-gmac
> +          - rockchip,rv1126-gmac

it needs to be in the properties menu as well.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
