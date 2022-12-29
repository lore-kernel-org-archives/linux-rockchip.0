Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76CB7C3DA7A
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Dec 2022 21:11:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/R+Sk8/3M+6bwBvK0DjwLVb21npc+rZ0ND6gM6StCQo=; b=AbKv9k8AfLkBOn
	EFCKPNR4FQVaIYnttY7dtiWQnMFwvEn8vZ3Bq05ySAH4rs8N4jlwHODMekHlCL7Nn+MexOAOgpwu2
	gMGRMdYP00rxCTAWAwZwVKaj9vj3+m0D/zRsTdGMJeBV3yQ+DJut5p+dpGFNaL0oxp1PUwGY/Fkeo
	d03rpOMaI9P+9qIXkyHKyoDWBmQkMdW/TPLDPH0DpdJEoxA/t+hIFR60N8ELXH9k1BrpH1qjR4fYX
	xIl7q/G+unwI60TIkyWDhzhxWG1jH34ZcevyzLFsWoTH7zAqG+mHQm404Pin960pPvzPIiCIm8Kve
	0cnUJmnCpKKplSk4FTag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pB0B8-0026xD-V9; Thu, 29 Dec 2022 21:11:07 +0000
Received: from mail-oi1-x22d.google.com ([2607:f8b0:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pB0B3-0026un-IB
	for linux-rockchip@lists.infradead.org; Thu, 29 Dec 2022 21:11:02 +0000
Received: by mail-oi1-x22d.google.com with SMTP id j130so12436647oif.4
        for <linux-rockchip@lists.infradead.org>; Thu, 29 Dec 2022 13:11:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ytpOR5QKWww4Z2Cv85ErUsWgiGHeMk8+Lk2wYOFtAtw=;
        b=xbFD/xyyvlgiwXtsMAxGjOb+jsXVwyc4HW4hneMivB6velLE6QyBbjxoUe8EUeuLlJ
         86104vtAl7L3T3sWLVR2Ak49fVJd/web83caPH64VqDtv90t9YEhfVMx//GTpSFNNqVF
         fLmtNqSSxqKdr06gi2BFgfHePwCu9VtkHnsJ1eOKIF7jfv1o6vXmislXFnuKy42DTxqu
         g2TyFNqdzuDvE1NlTLXrEjxO0BGZJ5Llk8jHSTMP54OcQeX9pImEc4R7cymQMtOqDTi/
         eKq9Yawt+2eU4AoXTezethraApb1YAYj6Pw4PPkeHCJBn41e8kLdgFwvyd9pcU+pWQBp
         Ag5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ytpOR5QKWww4Z2Cv85ErUsWgiGHeMk8+Lk2wYOFtAtw=;
        b=GtwjUe81GkVUjiUglC3fVyZn4q+6y/E4PRIkMdU2ixTBjV1z1lJNzsjVy6dAuKOEB0
         Nv+CaPWZtBatTV5YlecCQdd/lzX53xTOkd5RDpYxde2ZYbCH++wGovoOvZly42OqLnTZ
         dZ+mkcm0i2PH88zvwvSDKwKASRWFJPTWgJrcIgMCdoMGZJ5LRpoIS8mIYQTi7/f1weNF
         c719fW+wX7sxeVNSrOY3rCy79ra3qKVI/D8Hy8/+tJtGhoG/h8JN2RLPHty5IYIPe3f7
         t+Oq3dxwHaBDQExdRlIAsntmdRhRutzrnZxBlxYi5QqfHFcdZaG2AFtfhh8qLCBt4tGs
         nImQ==
X-Gm-Message-State: AFqh2kq3SeDW7f3hkXGmdZeydx7MNKxD6peFI9piPGnaYb0CQ70cj5my
	FD6+QaqujK/uJcLxtUdXfKL9rjjRQznrfIDKoeyDHg==
X-Google-Smtp-Source: AMrXdXvmYVRVuctXWIBSVhNIR2w3Wbao95qnogH453MhyUTn81jk1LWCyFZbpRJUL5cnYYT094MnX3RBubSmKHxwWQM=
X-Received: by 2002:aca:3dd7:0:b0:35b:8358:aed4 with SMTP id
 k206-20020aca3dd7000000b0035b8358aed4mr1552718oia.291.1672348260189; Thu, 29
 Dec 2022 13:11:00 -0800 (PST)
MIME-Version: 1.0
References: <20221215185211.1560736-1-macroalpha82@gmail.com> <20221215185211.1560736-2-macroalpha82@gmail.com>
In-Reply-To: <20221215185211.1560736-2-macroalpha82@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 29 Dec 2022 22:12:54 +0100
Message-ID: <CACRpkdYR1VOwHjUo-NKZgTuMnx5GUUtUjKYbAg0sZXy0064LNg@mail.gmail.com>
Subject: Re: [PATCH V6 1/4] drm: of: Add drm_of_get_dsi_bus helper function
To: Chris Morgan <macroalpha82@gmail.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	maccraft123mc@gmail.com, tzimmermann@suse.de, mripard@kernel.org, 
	maarten.lankhorst@linux.intel.com, heiko@sntech.de, 
	linux-rockchip@lists.infradead.org, krzysztof.kozlowski+dt@linaro.org, 
	robh+dt@kernel.org, daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org, 
	thierry.reding@gmail.com, Chris Morgan <macromorgan@hotmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221229_131101_658970_91F1BCF7 
X-CRM114-Status: UNSURE (   9.29  )
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

On Thu, Dec 15, 2022 at 7:52 PM Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
>
> Add helper function to find DSI host for devices where DSI panel is not
> a minor of a DSI bus (such as the Samsung AMS495QA01 panel or the
> official Raspberry Pi touchscreen display).
>
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

The kernel test robot is complaining because the stub isn't compiling,
because of a copy-paste error (superfluous semicolon).

If you fix this up and resend I think we are ready with the patches!

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
