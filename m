Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3F52C5479D
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Jan 2023 14:23:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mCQuXCJQsYnJCIApcSos9JL/kSLbVJzBLD0VgWM1B14=; b=NzAwS1dHQWutRr
	f2nePJnmB6pPriXuRtMSXLPFzUc1xSpMGKhyXpMHKlN985o2p0Oc05hoPVfDqyReB0CEYIJvhmRtg
	ZybYKxEiwrAdVCXRYhvxam9Ae+9kzLoWrGBz3GzM1/dbpCx76XexT5mVb6Y5nyjpOJxYsrawYXpzE
	z8Ioqrc80FXzD+SySk/B6Nf+UiaCdQE92F7OaX32lmTf6xkkD06zbPiMO8Gwv2MfOF1UDp52n7yks
	qf35plcjzX3OBC1RHazeWMetVyAXmh2Ikt1iaLtGB54qUIl60KUmdkiYTY4LWD3phe2HO1lOZpSW4
	PMxmONVK/3i/jGeepURA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEt35-001vVh-6y; Mon, 09 Jan 2023 14:22:51 +0000
Received: from mail-yw1-x1135.google.com ([2607:f8b0:4864:20::1135])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEsvF-001rgY-72
	for linux-rockchip@lists.infradead.org; Mon, 09 Jan 2023 14:14:46 +0000
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-4a2f8ad29d5so114087217b3.8
        for <linux-rockchip@lists.infradead.org>; Mon, 09 Jan 2023 06:14:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=P5bobKMsIRznoOvXz7SWvkB6xJnFk6PiGIGY3G6MS2o=;
        b=HOzC/Pq5ulIIhA/KnqPJQFum3MX1CVNtRK6oFn+qIyK8JqJgTT715WipABxQaFbEIF
         1JRnwSZ1iTMbopEbnyJarYGppK+0WlOe+lRVtcbvzLLP4OKuQzanGeosfsnAQ2rzBvme
         ifEHdi6brOwOevGA90SB3nzXbWGUx8iijhMoAS5uCrdXdpWSO2WRFkn/a4EjmL1UFdzI
         LGF8EngxkFLPNipXCCuv4RLuwe082RQHDDIpuow4i/Ek7CL4z6nc5wmLxgt2tYhZJWk5
         Z6ZJ886e1bKQG28ifP4evROVVFlQbCMbPOPfo9XM3Xo8A6eY+zCa2e42XKO9JBTFrbp/
         bc+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P5bobKMsIRznoOvXz7SWvkB6xJnFk6PiGIGY3G6MS2o=;
        b=U7zOUgP6RFi4rhnZ38GsHjZwUajGKDUFpi6wZfxpWNP1mugmpCJwX5fRTdknjx5JVs
         0YVgBKVfSWgEpx9kV34LyxfSowXx87+YkmIdL/IJLgdllONCXt80Gl1uvRVAH6k4fhJ2
         HwhYqUrEOCJbPJlbzc91pa2wxQF9Fo1pQqvRG8uLC/BPlL1dYLm9AgQIZT3prRg8pMGg
         2fBd1HdsN77bNeVK1qnWleCfe7eF2pHjNttOAnfpeLlz99pVf1xNtI6yzFYWBYGHXROd
         VroV6UUSSb4sTNMPnTeTdNM/ag54pmSZ2iHIi8Hgsbz1HTtKgKCwWzJTrq2g9f4eLBcf
         G75A==
X-Gm-Message-State: AFqh2kr0E2tR6wI/f2pmjlwCi51TWQDeHdCstsWJqvIwn2GRsZb9yN44
	Apv8miKqt070s58cY1el2dZbDbugvjV8oQPG5mVETA==
X-Google-Smtp-Source: AMrXdXscmRBkBgsHrMgvS+GuQDNO+z0Lx7t3uA7rUCKOfuuDv3g/cNEA/iPtCL706VwjeVKzC2ZoKaSu/RKf8cwNQKM=
X-Received: by 2002:a81:484c:0:b0:36a:de9d:825e with SMTP id
 v73-20020a81484c000000b0036ade9d825emr1508199ywa.477.1673273684076; Mon, 09
 Jan 2023 06:14:44 -0800 (PST)
MIME-Version: 1.0
References: <20230102112845.3982407-1-linmq006@gmail.com>
In-Reply-To: <20230102112845.3982407-1-linmq006@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 9 Jan 2023 15:14:32 +0100
Message-ID: <CACRpkdb41r2JiEoC2o5+QXVtLVH5OBHzHD=npDj-omS9NTwzmA@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: rockchip: Fix refcount leak in rockchip_pinctrl_parse_groups
To: Miaoqian Lin <linmq006@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-gpio@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_061445_280630_4A1D885E 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
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

On Mon, Jan 2, 2023 at 12:28 PM Miaoqian Lin <linmq006@gmail.com> wrote:

> of_find_node_by_phandle() returns a node pointer with refcount incremented,
> We should use of_node_put() on it when not needed anymore.
> Add missing of_node_put() to avoid refcount leak.
>
> Fixes: d3e5116119bd ("pinctrl: add pinctrl driver for Rockchip SoCs")
> Signed-off-by: Miaoqian Lin <linmq006@gmail.com>

Patch applied!

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
