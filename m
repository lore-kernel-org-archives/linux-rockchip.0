Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14BB0C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun,  3 Apr 2022 18:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3wwzip5f87jw2qJ9/oYHkVbjArQAqdayn5COC2SovpU=; b=pWej2GYWDW4Idm
	0LnWnKN3b2SXZ5w+NMk6cOJzY+5xl0dzWNjOH4T0l8ciRlIrm9uAYhosMp8BDA3e9Ye3nHlyhRtsQ
	B9f1aurII/vhRN3VeHIH1xll5is/AWDr+e6CZcJ/Rx9TTZn2e33ESS+SHw49bY1N/aGzsi1t0QPjb
	mU7aYhAYOwlFnt0I17CN2PnYbXbQ87DwspZn53Mvo+vFvFcogkCVZfxHdoXrN/7t0l3SbmVCsryyo
	CYBlD+HwaouoBbNlGukvBZFGp25cYjHmrbTeU8Uz52grlGIUOkxybFTO1zMNmmfQXVdSLNu1wvZij
	ppphMyvy1kNudFzswDtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nb5R3-00CD2J-DK; Sun, 03 Apr 2022 18:58:49 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nb5Qu-00CD0K-Fk
 for linux-rockchip@lists.infradead.org; Sun, 03 Apr 2022 18:58:41 +0000
Received: by mail-wm1-x32d.google.com with SMTP id
 v64-20020a1cac43000000b0038cfd1b3a6dso6475116wme.5
 for <linux-rockchip@lists.infradead.org>; Sun, 03 Apr 2022 11:58:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=t/RpIWdhbQVBXdaJ9oI5/IoGk7GgpeKKoOGSNN4wvL4=;
 b=iiuksQImYHQwFGIIvxhiUz1Kb7RqQfCkD9nr2/f9EKEev9O1Gerai4R+qVyYrIqgGx
 nitAv//xgEQNlKcwzDj8hHfToG/ZXHGJO94o+PqurCzSX6zSrMqIx4NsIG2+61MIs3DM
 H/2NklABJqKRd2J95fJCHDgnjQjfD8UsWsj6+sqOcPS1nVtPR+hGx5uzY+BQ0+a3ssnl
 azRlg9npq9HlKarVHYEgprjkGiq4LTNfkQxuSwl+s+MPxn+9OBhy0YIceeO/cp+GiS/2
 /665pzb6/czZxtTshSQc8c43PpTc5ymPNf1sOa6ERhZ6BTL0QNHJVWVukWfvUr2gLBHB
 7J3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=t/RpIWdhbQVBXdaJ9oI5/IoGk7GgpeKKoOGSNN4wvL4=;
 b=z49/DTL19GCM+UG7EW7FZLIemasEOFDDPeaClhGBC1GUxdxoABgsBn4qIiyu8TEuoH
 BC31HDkkXIgheOfRLM4S0w5Wk5uXoB1avl1Dr32SSq5di2xqiWN7xiPG46kw0xvlP8Qz
 8TTmKI7iajdPhyTYblErWguOaaDXndziC9rFnX/wf9b7ugYiFZJVqjYBWNgzcDwKgqGj
 hWd/uScx7OgI46xbNcBlAwfH2xixsrTOxA0HOAnLaXHr3rZBKTeSCh4MT3jj3z2WXwTD
 TWuVFed4bTrQRvOKZx2mRJVLT/3yySGrKBKfvjAoeidImj5BYKe0APk7z8Y3V2hRh68I
 PQhA==
X-Gm-Message-State: AOAM532CpP0lSnIWBYJfRrfK70rdKHSnQ3izlH+2HhOVIaHRtZOfZFnJ
 BW4iB7XOMVKjtgcEsvss7GQNSw==
X-Google-Smtp-Source: ABdhPJzaazCPH6bFmU44UKKw6seoXSI3MBgT9c48Etfj1O+qSs+lrQUM2JPkuI1O1SQe4ZWjHVI07g==
X-Received: by 2002:a05:600c:1c1e:b0:38c:b393:b357 with SMTP id
 j30-20020a05600c1c1e00b0038cb393b357mr16709948wms.66.1649012315105; 
 Sun, 03 Apr 2022 11:58:35 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id
 m7-20020adffe47000000b002060d09327fsm2505092wrs.16.2022.04.03.11.58.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 Apr 2022 11:58:34 -0700 (PDT)
Date: Sun, 3 Apr 2022 20:58:32 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 robh+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 28/33] dt-bindings: crypto: rockchip: convert to new
 driver bindings
Message-ID: <YknuWEOPq+I6jq9X@Red>
References: <20220401201804.2867154-1-clabbe@baylibre.com>
 <20220401201804.2867154-29-clabbe@baylibre.com>
 <30305936-4b69-e1ce-44c2-0d1d113b460e@linaro.org>
 <d092ede9-df92-9b34-d2d0-5da043e11679@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d092ede9-df92-9b34-d2d0-5da043e11679@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220403_115840_551973_2A7A0660 
X-CRM114-Status: GOOD (  26.65  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Le Sat, Apr 02, 2022 at 02:07:26PM +0200, Krzysztof Kozlowski a =E9crit :
> On 02/04/2022 13:53, Krzysztof Kozlowski wrote:
> > On 01/04/2022 22:17, Corentin Labbe wrote:
> >> The latest addition to the rockchip crypto driver need to update the
> >> driver bindings.
> >>
> >> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> >> ---
> >>  .../crypto/rockchip,rk3288-crypto.yaml        | 68 +++++++++++++++++--
> >>  1 file changed, 63 insertions(+), 5 deletions(-)
> >>
> >> diff --git a/Documentation/devicetree/bindings/crypto/rockchip,rk3288-=
crypto.yaml b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-cryp=
to.yaml
> >> index 66db671118c3..e6c00bc8bebf 100644
> >> --- a/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.=
yaml
> >> +++ b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.=
yaml
> >> @@ -11,8 +11,18 @@ maintainers:
> >>  =

> >>  properties:
> >>    compatible:
> >> -    enum:
> >> -      - rockchip,rk3288-crypto
> >> +    oneOf:
> >> +      - description: crypto IP present on RK3288 SoCs
> >> +        items:
> >> +          - const: rockchip,rk3288-crypto
> >> +      - description: crypto IP present on RK3328 SoCs
> > =

> > These two comments are not helping, so this should be just enum.
> > =

> >> +        items:
> >> +          - const: rockchip,rk3328-crypto
> >> +      - description: crypto IPs present on RK3399. crypto0 is the fir=
st IP with
> >> +                     RSA support, crypto1 is the second IP without RS=
A.
> > =

> > The second part of this comment is helpful, first not. You have chosen
> > enum in your first patch, so just extend it with comments. Additionally
> > indexing does not scale. What if next generation reverses it and crypto0
> > does not have RSA and crypto1 has?
> =

> Actually let me re-think this. Is programming model (registers?) same
> between crypto0 and crypto1? If yes, this should be same compatible and
> add a dedicated property "rockchip,rsa"?
> =

> I looked at your driver and you modeled it as main and sub devices. I
> wonder why - are there some dependencies? It would be helpful to have
> such information here in commit msg as well. Your commit #26 says that
> only difference is the RSA.
> =


Hello

There is no dependency, my only problem is that only one of 2 instance need=
 to register crypto algos.
The only perfect way is to have a list_head of devices, but I found this a =
bit complex/overkill.
I understand my current way is not ideal, I will probably try this other wa=
y. In that case, yes problably the 2 node need to have the same compatible =
(and only a future rockchip,rsa will permit to distinct where RSA is).

Regards

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
