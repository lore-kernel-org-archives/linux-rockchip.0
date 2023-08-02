Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97A6BC001E0
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Aug 2023 14:38:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VmYPqpFAOtmFkwia9H1dSmqjh0GHV52ORKNmVlbY9og=; b=to58bZ6YVhRW4p
	cvqDz8UoN7CId4Kem7o43vXGDu+Z2IyYvGtDSt9X0/ieq8iI8b0rslhFDXRdfJx1mPqCj/rl7rXNr
	F+jOclrk8e2Fb1rRfBAgvqDbYaCDt+fEVhm82riWQDsfK/BblRtIybnbNhODNzIDP4yVe3coWbpUy
	kLTneH6gqSzEmorb8F1b2DBFHQKQBEG+NiYtRp0FxQYduPCJyqymSwjDw4SP2pK0tSYzQ11AFLe6F
	t1ykdXZmpOCI6RadwLPU8dEhWDgCl+8N8CtQ52XdjXgFK1EtHNuUGDDlIOy7wqHlhvT0GltOPW1G2
	ZfErG+zimL2/VUv/FZJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRCzU-0056Hh-0X;
	Wed, 02 Aug 2023 14:38:20 +0000
Received: from mail-oi1-x22e.google.com ([2607:f8b0:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRCzR-0056Es-1N
	for linux-rockchip@lists.infradead.org;
	Wed, 02 Aug 2023 14:38:18 +0000
Received: by mail-oi1-x22e.google.com with SMTP id 5614622812f47-3a5ad44dc5aso5339659b6e.3
        for <linux-rockchip@lists.infradead.org>; Wed, 02 Aug 2023 07:38:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690987086; x=1691591886;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8nmftj9H6QNMjKvC/PHkZC+FCS8/x2xMcYkBxSq4Jqc=;
        b=Nq1cPX/iQ+SjG++rAIUe4TQ0nEJvKktHyDdQygPW6XGYm6QdZ22VYdWX3Sxia4lv/R
         YJuSNgBmBsiEtFjKvURlOY+apmhMQxa649KhDz3pit05rVnP0pFw6e83dyFOJJjEQzNM
         0vzLw+06LIheQacaf8f6rgsRruNeKoQQOtflwEXzm7ZJ6Z8vIxrKXinDr/ocV89/pImb
         /JrlZC6lPd7gqvpQrU2n55PHJKSeqQGNf+2cgjc/TscYTTu/dEGp5KDuSJtkvjVeamYh
         YQk7ZrAMcc0ajRcpiq2ELwz1ytTmjz3kH0rHjga+I055BHA+jcwpeDD7u+ByaQLXgddf
         mlTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690987086; x=1691591886;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8nmftj9H6QNMjKvC/PHkZC+FCS8/x2xMcYkBxSq4Jqc=;
        b=UAbENCRr6zEadUYbfveOiNJgzR1YDKosOKKnZPXldY7NxQ2GIKkUKqT0mfZbD7wk1t
         +/+bGqnkLkRf0k/woH3LZCCiQf3u9vLj/Cg9pSO3xv6QDj61NUo15K0ljUYeE/+vsJIp
         H/Fb00eZL3sgkDKY0pMBXAfaHTUDfw4r8PEucHVgKzISDWHkl/7I4rYpj/WNzeBfhLP9
         3GoUVEEhw3IEI4CDYecYF51fVHKls9mhhez+nZBiggVapIXyx6h/0FCoPsp4qrLlscq/
         AdArkMr9Oa3CDok2miFNzUrtkWvVnONjjq/iuD1b2TFJeQWNgoL0YTwkYds4Hc7dnZKm
         eAhQ==
X-Gm-Message-State: ABy/qLZjZp38Q0fYex4RR9hfMidxTGPih7hLvXDIvZ659tfcaV55Vltf
	6URavsNkgTlwofs7/TL62u0oweNpZDsXUeJWqR5rVQ==
X-Google-Smtp-Source: APBJJlEzTjl6RKml+LdRCmbwAb2hGX3y19EwwY+i1muMiAb8Luqi1vw3YUfBLtHOB1vz1+aCnlEV0Yzu1qxjbKqjsqw=
X-Received: by 2002:a05:6808:3010:b0:3a3:ed41:5ab with SMTP id
 ay16-20020a056808301000b003a3ed4105abmr18113315oib.9.1690987086380; Wed, 02
 Aug 2023 07:38:06 -0700 (PDT)
MIME-Version: 1.0
References: <20230731110012.2913742-1-jagan@edgeble.ai> <20230731110012.2913742-6-jagan@edgeble.ai>
 <20230801-residue-tractor-5c63e4447f2c@spud>
In-Reply-To: <20230801-residue-tractor-5c63e4447f2c@spud>
From: Jagan Teki <jagan@edgeble.ai>
Date: Wed, 2 Aug 2023 20:07:55 +0530
Message-ID: <CA+VMnFyh-ctPbf_j=CEXxPNKY+sUymV64Sdqqs-kY7dTojQYUA@mail.gmail.com>
Subject: Re: [PATCH 05/14] dt-bindings: display: rockchip-vop: Document rv1126 vop
To: Conor Dooley <conor@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sandy Huang <hjc@rock-chips.com>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230802_073817_460514_1F0F72D9 
X-CRM114-Status: GOOD (  14.22  )
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

On Wed, 2 Aug 2023 at 02:37, Conor Dooley <conor@kernel.org> wrote:
>
> On Mon, Jul 31, 2023 at 04:30:03PM +0530, Jagan Teki wrote:
> > Document the VOP for Rockchip RV1126.
> >
> > Signed-off-by: Jagan Teki <jagan@edgeble.ai>
>
> There's no commentary here about compatibility with other, existing,
> devices nor did you CC me on the rest of the series. How am I supposed
> to know if appending to enum is the right thing to do?

I had past comments not to add all people in the entire series and add
one relevant developer on respective patches. On that note, I tried to
CC the developers only involved in the respective areas. But, you are
CCed to the DT patch that affected this binding.
"[PATCH 10/14] ARM: dts: rockchip: rv1126: Add VOP_LITE support"

Please let me know if I missed anything.

Thanks,
Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
