Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65E76C6FA8B
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Sep 2022 07:33:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zXrtwg/H1T2eiK0qjE52gJto0ZG9fI1h2m5rTNKPP+8=; b=E3N6rFDTufR8JO
	DTQ0oBixNxvddcFTRGyvuqzXWExSK+LyXCk1faGCcS2gCxYI4eevd0wc7V4/wJp3PUVgxtzPFv804
	Au8RgNvl5WB2+X+LaPE7h587XC5j4+Fl0IJ6AbTm8uKpu6tyF1cdYz49N0rI/h/fxZUJDaw/uXith
	dKW3mLPs3gHalWiu0JnQLe1JR8Fh7DMAOM6ml3SOygQ9YtFFMKBCyzhO7yPDtkrbwodUnJ3kLqUtc
	oNYwGWqeOn5c2/YCd3aS8EX2HK2+LrtKVc439L/eizGkdlbYq8Byd+sw9U9VG+vhGsLMAThBneAqS
	u+xwlG2n5XLGumDdj4dA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obGhu-00DsIW-UG; Thu, 22 Sep 2022 07:33:14 +0000
Received: from mail-yb1-xb31.google.com ([2607:f8b0:4864:20::b31])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obGhp-00DsFU-N6
	for linux-rockchip@lists.infradead.org; Thu, 22 Sep 2022 07:33:12 +0000
Received: by mail-yb1-xb31.google.com with SMTP id 63so11543995ybq.4
        for <linux-rockchip@lists.infradead.org>; Thu, 22 Sep 2022 00:33:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=vznxy9xqdRmX/+c1xfDYAdYiNLfodMVytirKxQVlqvU=;
        b=19h0p9PeYDDwrzqyam5VPOXf99gXbD0aK5k8BfPEJenh2Jv/WjdzknPH0tUHmgiRHX
         pggTcESbyFCz5wjPpmJSkcd/NQRRrZZiBSfJaMhq7Myfc7diCyDqoIkbuwR+vpE+NSyR
         4tcuq0xXpQnSX0V8U1+heBDJXgld0tSC2LqBM4z3VUSaqRkZ06YHK7IIfBYqUtBTnOpH
         8g3j2HwH0C6U9V4Dw6woPkeBBq7Y38GohOYuh8QKlknbOt7Pa+3U8VR0EHsy5/voiIZb
         V9qFOtQMx6p07AjQGpO7hX3d+YsO1Jyuw006ghhAYb0bZNJ0/92AxLL4Vef3bOqkZOU6
         FV4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=vznxy9xqdRmX/+c1xfDYAdYiNLfodMVytirKxQVlqvU=;
        b=bB6yN6Bh2mT6nQYuhHoNYFQhxVlq/+YF6q2fZB1S/1Z6XCXj3Pmcv09X5AgMHDu0vG
         ELKeJIIaFmefCOrvinXPQZW+y2MiqevCbnx0WqgORX40ZAWJiBLWsrQk1rz7k9pybQMO
         tUgklSlf63WKAcFh5MdOEKb6tjOZwGtK2B+pH82QnYzqo86OKgnyqlaGrSvJ5gRFVgkJ
         3IeElRxwFgmH9Ie1zSpyRGRryKpIfVA0FwSUyncl8f63oFxkGNioKY6FMS8HVporJb9A
         gDvaz/Il8VPDcLryBOyXFqMwAu01mkEBSKaVck0w7z3NlvcyE2i7Ej/dpBwU3vFvc1/1
         MMqg==
X-Gm-Message-State: ACrzQf0QUc/m9if83l6Pn9Dd4b96hpilmib0/gG2moUHGhaMwBkeRNLl
	/qeGkZpw62pCEwY4zDJtYmsV1QcX97j6MtgIx5PpAw==
X-Google-Smtp-Source: AMsMyM68mBRWPzgSHinmacDlTcXL0xgy38F9UZIPw2GA0HUhSgygjrtVbr+Xf6Xo2IYCzPizO8zkXxrLXkUa8C1413c=
X-Received: by 2002:a05:6902:1146:b0:6ae:72f2:62cb with SMTP id
 p6-20020a056902114600b006ae72f262cbmr2487652ybu.615.1663831987619; Thu, 22
 Sep 2022 00:33:07 -0700 (PDT)
MIME-Version: 1.0
References: <20220907210649.12447-1-anand@edgeble.ai> <20220919115812.6cc61a8e@kernel.org>
In-Reply-To: <20220919115812.6cc61a8e@kernel.org>
From: Anand Moon <anand@edgeble.ai>
Date: Thu, 22 Sep 2022 13:02:58 +0530
Message-ID: <CACF1qnd0Nq7Fzi83emR=-cDscCprt2h4gwquecLRyyrbSNsm5g@mail.gmail.com>
Subject: Re: [v2 1/2] dt-bindings: net: rockchip-dwmac: add rv1126 compatible
To: Jakub Kicinski <kuba@kernel.org>
Cc: "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	David Wu <david.wu@rock-chips.com>, Jagan Teki <jagan@edgeble.ai>, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_003310_009692_D3C2A899 
X-CRM114-Status: GOOD (  12.87  )
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

Hi Jakub,

On Tue, 20 Sept 2022 at 00:28, Jakub Kicinski <kuba@kernel.org> wrote:
>
> On Wed,  7 Sep 2022 21:06:45 +0000 Anand Moon wrote:
> > Add compatible string for RV1126 gmac, and constrain it to
> > be compatible with Synopsys dwmac 4.20a.
>
> Hi, these patches don't seem to apply cleanly to net-next, a 3-way
> merge is needed. Please rebase and repost. Please put [PATCH net-next
> v3] in the subject as you expect them to be applied to the networking
> trees.

Thanks I have send the patches rebased on net-next,
Please find the link below

[0] https://lore.kernel.org/all/20220920140944.2535-1-anand@edgeble.ai/

Beat Regards

-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
