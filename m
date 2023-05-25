Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3666C7EE29
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 May 2023 13:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Subject:Cc:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2DUk+ytCo8Trme8sd0IJexJgERKHE1vclZaLg8VXtUA=; b=SJ7WQ0c6khrDS6
	MghavPQoUaY6x9BO62qdZC2kxbNXucK40F8rVoL0a8XpSg0oD8bsXGXcrwV+UafGvodATAkhNqAHN
	xeX5Kce5YfOy12JACBOzItytk9mgHzCKoofrdB1sK5aDOMPeYPJscAz2RUso61QO9yNSwT16O0S1S
	rLQxhE3SzK/ew2y4xmZR+w7cHJ0Y/Aw7HoqOQdrLrflb5ePquMot9QmPZhm/LXlOEBe+OJ88jG7Sm
	6R6esPAPFBp/RE7X2Tpr8GkZq7MSjfnCZb5qGcqPEPnGA0I16mHvEpgP9b4EQsb0AHk9Qb9BvYtzJ
	mSLSrPyYfs6dj45WSWLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2BSt-00GmZF-00;
	Thu, 25 May 2023 13:57:15 +0000
Received: from mail-yw1-x1131.google.com ([2607:f8b0:4864:20::1131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2BSq-00GmYF-0c
	for linux-rockchip@lists.infradead.org;
	Thu, 25 May 2023 13:57:13 +0000
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-561b7729a12so8336647b3.1
        for <linux-rockchip@lists.infradead.org>; Thu, 25 May 2023 06:57:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685023027; x=1687615027;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=XDo5JGpMh+sfqhz2XW6FMxspF0XjVpH9YEGVgGeMjUw=;
        b=TTAz3FOgo7dOFNI7aoiwX/0ljg5lz0wR0gFOezPqt9E1Ubrz1VqGe6aviRVmBjQGxY
         mXF1M4aX7QL2DpYmXW1TLEnGsA82U73NiD17Sw4DpyLEEwxDd2CN8/TSuyiebDJmdOph
         9lipSq39yElmxJTXAJncx/josTWvpCiYdKGmBZImHlwizI4ySjj7iYIFLn4+gNqcXAzs
         5TtwqWH0jseD8nGeXTCwlMNZ9CzR5pQTY1ZGIT8VvzV0c28G2BmAPDp9CEHdDsMMBy8T
         pKHknHW4hdN5A5n6z4//aTrHaniwuIvHJsTye3wn20Oy2P21nWwS90GzEUC3GRbupZ6U
         sOEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685023027; x=1687615027;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XDo5JGpMh+sfqhz2XW6FMxspF0XjVpH9YEGVgGeMjUw=;
        b=YkSEmXJwltKtW7pyodeyiBWB8c7bfJjyj5qc/GbACAYLFEU/2Kzp2D/T8aYbihn5L4
         hfAdiDyhzGUe605R25BU6G4EqNWW++2yGtSv+DKDgqHxfKebQeHgdmQVIwsNglxCdCB9
         6gEeEccnKVwK16bEpuwxLmtF/yRMhreP5ezxClPNUZ9LeHMcEZoZcWQAehrydPgjMgAw
         h0vKxLejixJ6e7qnsmXH2G9Yv1uojm0ucDXSpo6ZCjQRHdD5nOg68B47cDUUf8VRtMUu
         F73MGRcQ/qi+Etnv5xHKxG8Ky7lnfEXFIuqu2+Lq+9JeFTg4DMAR9GtwibXydE/CQKKu
         HQuw==
X-Gm-Message-State: AC+VfDwR/8f5ClxfbxNCD3YL4FznUUCikK+NTnfwtdsqzJ8BPJzU676a
	7+RG/YQj0uWtDbHlXIFyVDc=
X-Google-Smtp-Source: ACHHUZ5FiUL0rUUkvwykB8kqe+2IeLANHjnUXgIdMT6rP0bdidLHdnLmRMsDhL1wP2uFZ72SwMPzNw==
X-Received: by 2002:a81:4ec7:0:b0:561:987e:27a with SMTP id c190-20020a814ec7000000b00561987e027amr3756808ywb.10.1685023027566;
        Thu, 25 May 2023 06:57:07 -0700 (PDT)
Received: from neuromancer. ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id c184-20020a0df3c1000000b00555df877a4csm371333ywf.102.2023.05.25.06.57.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 May 2023 06:57:07 -0700 (PDT)
Message-ID: <646f6933.0d0a0220.e2a16.15a9@mx.google.com>
X-Google-Original-Message-ID: <ZG9pMemLwjqAuaWz@neuromancer.>
Date: Thu, 25 May 2023 08:57:05 -0500
From: Chris Morgan <macroalpha82@gmail.com>
To: Conor Dooley <conor@kernel.org>
Cc: linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org, zyw@rock-chips.com,
	sebastian.reichel@collabora.com, andyshrk@163.com,
	jagan@amarulasolutions.com, broonie@kernel.org, perex@perex.cz,
	tiwai@suse.com, lgirdwood@gmail.com, heiko@sntech.de,
	conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 4/6] dt-bindings: vendor-prefixes: add Indiedroid
References: <20230523213825.120077-1-macroalpha82@gmail.com>
 <20230523213825.120077-5-macroalpha82@gmail.com>
 <20230524-extrovert-unhidden-35e289c28bc4@spud>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230524-extrovert-unhidden-35e289c28bc4@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230525_065712_232934_EB974FE8 
X-CRM114-Status: GOOD (  17.02  )
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

On Wed, May 24, 2023 at 09:30:03PM +0100, Conor Dooley wrote:
> On Tue, May 23, 2023 at 04:38:23PM -0500, Chris Morgan wrote:
> > From: Chris Morgan <macromorgan@hotmail.com>
> > 
> > Indiedroid is a sub-brand of Ameridroid for their line of single board
> > computers.
> > https://indiedroid.us/
> > 
> > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > ---
> >  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > index 82d39ab0231b..632662be6e65 100644
> > --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > @@ -655,6 +655,8 @@ patternProperties:
> >      description: Iron Device Corporation
> >    "^isee,.*":
> >      description: ISEE 2007 S.L.
> > +  "^indiedroid,.*":
> > +    description: Indiedroid
> 
> Can you add this in alphabetical order please?

D'oh. Simple mistake, sorry. I'll fix it in V2.

Thank you.

> 
> Thanks,
> Conor.
> 
> >    "^isil,.*":
> >      description: Intersil
> >    "^issi,.*":
> > -- 
> > 2.34.1
> > 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
