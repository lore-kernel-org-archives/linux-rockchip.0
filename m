Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A38B3C00140
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Jul 2022 15:01:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t5NNhMSUwtP0nzTy7amL2xp3NXA4IKv7cFT7Weu7xBs=; b=svs4YAEmaiglYL
	/io7B/Dkx2WXB1H3nAPWsmhsHSkf3Ktinc68V7ZfQeZMLeqyGHbWp91R0ac+qd7TGbATdTOBvM+Gv
	qmOLzUyfBRs/+ODbq+7fEGCKtp1uY7+lAFZeqf3s480GCIA0donoAEJwKmywRFPfb2kPlSXH+mEn2
	IB/6VjxIbxqem0fhwBW2tGRumN72JR8zLTAr12v0VCPfpDRs0eFB5fRLegdCJqVVfdTbXa1bcLuCZ
	WiJR81kpgIyecNEO3JTBuEGpUJUZ6m8xmTfCCurqvB6MbICw0DrU1+10nAlV/VISOEnsW6zhaOe2T
	mG/Gbl+nOaaRJ+bZaaow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oGM3n-000PoZ-H8; Tue, 26 Jul 2022 15:01:23 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oGM3l-000Pk6-7v
	for linux-rockchip@lists.infradead.org; Tue, 26 Jul 2022 15:01:22 +0000
Received: by mail-lf1-x132.google.com with SMTP id d17so20968823lfa.12
        for <linux-rockchip@lists.infradead.org>; Tue, 26 Jul 2022 08:01:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/Abp4O2phjlQwqXSiq9vrzI7rfG09ZHavgh2SmBCZxI=;
        b=FNgYeohdCATVAP7X2iU36R9MeHDqIbl1lqmT50Bo1fwMpKLGUi26xD8u7IdsBxpDNr
         Wr66GNWgOu5zxSsqL/8P7lyTUyVZ+aN6us+npUllII5a1OB0/qOkaX0t0gy3zcEySwFo
         DEYukwmIhobCcct4j6e0Lrn58FTitKxBfWgQSw8pxQWFmS9BhxdRdaMI8cm618dc3rVK
         4Ok/3YT3C3L6Fs1CIH0OYz201C/kLUg3DUrQDRzMAvm7aB/iA2Dcp7LrIIugeGyjSVW2
         NSitrE1iGO764X6mIHq1mZDJXJgWIGdMbAEcP8YIoidic1iUBcteMr6K8ie06+8OsP3r
         ah9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/Abp4O2phjlQwqXSiq9vrzI7rfG09ZHavgh2SmBCZxI=;
        b=AoDAwYyVdEDBZP2DYpfecZ8wg0heolJ3RP+OXzaH9/wpfkBKH0z99yln+pMVIP78fy
         BcjItmWOkGYUNGNam00LEK6YqzBquz/ASzBcdc215MiHqGTko+YcR+bki7NwxgjsDlee
         qZ7VEr11pJsnA5/UOOVJpfpow95Mo7AHciyP2I/xSIbqkE+GUscL9DvqrpsFhXQj2aDH
         BpFV+UW1AwNClCQAr92SWDJWathSEi6YOpn7ih4rWbblqKEE6VtceB9F4uXoNY49zXnl
         5HqbV4yKcFGgF269jaqtqKPvUNEPyBS1Xcfn2MpzcoM+F3+bReBk0x7odhNBzEeiSLfa
         1Uog==
X-Gm-Message-State: AJIora/NOCORfsoutQOUguTZzkjc6dDZk5/1IYTsCMhkbSf7xbSuPcWb
	UFCj29ExNLunE08PDSctTELd9zAko7nu374yBnaGKQ==
X-Google-Smtp-Source: AGRyM1tWqxY9BYKQk44juX1eKWFfDs070weNDGQdXByMLPBbsJzkZx2RmQqqnjwR5M0SiaGb9Mt98TJpDepqL0XK05E=
X-Received: by 2002:ac2:4249:0:b0:48a:9f05:776a with SMTP id
 m9-20020ac24249000000b0048a9f05776amr1542411lfl.184.1658847676121; Tue, 26
 Jul 2022 08:01:16 -0700 (PDT)
MIME-Version: 1.0
References: <20220723204335.750095-1-jagan@edgeble.ai> <20220723204335.750095-12-jagan@edgeble.ai>
In-Reply-To: <20220723204335.750095-12-jagan@edgeble.ai>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 26 Jul 2022 17:00:38 +0200
Message-ID: <CAPDyKFp0bqiAnvQpNwD5JzKe4vUAGe7RH6Gog6VScqbea376iw@mail.gmail.com>
Subject: Re: [PATCH 11/22] dt-bindings: mmc: rockchip-dw-mshc: Document
 Rockchip RV1126
To: Jagan Teki <jagan@edgeble.ai>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Kever Yang <kever.yang@rock-chips.com>, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-mmc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220726_080121_302353_BECDC041 
X-CRM114-Status: GOOD (  13.39  )
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

On Sat, 23 Jul 2022 at 22:44, Jagan Teki <jagan@edgeble.ai> wrote:
>
> Add a compatible string for Rockchip RV1126 SoC.
>
> Cc: linux-mmc@vger.kernel.org
> Cc: Ulf Hansson <ulf.hansson@linaro.org>
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> index 54fb59820d2b..8d888b435817 100644
> --- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> @@ -39,6 +39,7 @@ properties:
>                - rockchip,rk3399-dw-mshc
>                - rockchip,rk3568-dw-mshc
>                - rockchip,rv1108-dw-mshc
> +              - rockchip,rv1126-dw-mshc
>            - const: rockchip,rk3288-dw-mshc
>
>    reg:
> --
> 2.25.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
