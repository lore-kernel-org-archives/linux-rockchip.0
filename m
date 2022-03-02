Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09B3AC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Mar 2022 17:25:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c4GKAPOfQxij2eRNIDPi3Vm39fBJc+HPRP+KXIWTVMY=; b=Sx/qPw7LaHgwfT
	udocHlLZsejRZESdTDOUvy+0aGdOjNiA2RjgyqxmZuQEU/rodSktxNMVs5xkRx+YCf8/u0R021F5Q
	8Z4l4ssYtDi0ORJVfGELBIoko64Ys8VPx5GauaNgYgAqt6XbZjGNzS+rRagA+T1XAZjCNntfXRnZP
	2FQqZQCJoAZnrpJKqO5nR7VouMOTaODqJ+cbOtrCAKXqP3bOXNVSKehvmL6ttK1WuQ1q3P6Xwz9Ik
	rt/Fm4MPfEpfZTrnrLZz6tX+wJA8+DQlDq89cDFw4w1vaCnbKiSPMZdlXLwn8QYXQiMBpIPvlufhW
	2nEcHMwAysTkcXc6hRpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPSjI-003X8G-Sc; Wed, 02 Mar 2022 17:25:36 +0000
Received: from mail-yw1-x112c.google.com ([2607:f8b0:4864:20::112c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPSiy-003X1B-CZ; Wed, 02 Mar 2022 17:25:17 +0000
Received: by mail-yw1-x112c.google.com with SMTP id
 00721157ae682-2db569555d6so26019697b3.12; 
 Wed, 02 Mar 2022 09:25:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WHLK0rZoZwvLk407H3I3AQl9EwHKDQ8Qn/KJVxCEprA=;
 b=Mpa9yuqvsgiPWU7E5zDlY7qrZ7YkH/oJgAwF0bkUoBZTiKb5A4QoOJmxH5ADLmgE0L
 WrHX6Gcsj2UNIAUowILtqQAe5yzF3jnRbxGuuojrdZPkmEnf4tGFqcfyXq1C/nrKLsXN
 daRlwC/rUv+SrgitsXZmEvTrc+73PV6zDsjEDAWT4Iv43QDXuNzvJvR9/K3YVNcxNIqp
 KKXIN6+IXkSawy5mHmKIhiCdpYBfu/gVlaGjwcDarFGZC6JeX7/zQJnzeePylIsc/Ekb
 nVq7ojdJ7f8X9+DsKlF2ongMaze3of8LvrhLF8zp2DkAkpFU/nRKPra2CjjKxXwxint2
 SdMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WHLK0rZoZwvLk407H3I3AQl9EwHKDQ8Qn/KJVxCEprA=;
 b=Xv9CEPj9KfnHNPQ1IuoCZxNcZsZZBTQxVaMiQdgIqZny8q5SROMP367JO6YwVb/qFA
 3ED1D78jxN0Z0jTJfsSMiaezvBqxgaIxVrDi5L61NF36YHHafORLTfoNKzPWPe7NA52i
 9+5H09bpdWoN0lN4i2nnkBSxb4iMEJD9qFMePaA152ZFPQXwvTojNzDKOCSLM+UMFqaK
 e6H15NbCS+jBEO/c2l+TMyavCS7MRvG5ijwtoaLVuoZREjvvWPS5MesuOY/fRZs/LAsc
 SqvBwxabIIEGR+nOTxAEP5BTkhVQTT0jW2N5AOiZXvjgFBeK9cV0p9DXiuUxN/2n8ZMf
 P8yA==
X-Gm-Message-State: AOAM530X7eJEEfaXSNBTyrIvA74DTFNX0vWw2vOPpI0wIoWjN/W5n/Yx
 rxbyue0wLcsju30pdTusrjqZqKxhhfm9LXiBpBc=
X-Google-Smtp-Source: ABdhPJwQX66RmntT4aJExWpWltr3suaoJxs4GWL9aqZqibeCHhZOncYjov5VmoDhhvP6zgQnYaeSQWcDLbeK6o/LHao=
X-Received: by 2002:a81:3807:0:b0:2d8:2ed:1d19 with SMTP id
 f7-20020a813807000000b002d802ed1d19mr30671490ywa.519.1646241915023; Wed, 02
 Mar 2022 09:25:15 -0800 (PST)
MIME-Version: 1.0
References: <20220302143427.447748-1-vkoul@kernel.org>
 <CAL_JsqJMZ8PHqJk6drNbNHprmfeV9UvJzJnech7sz_JwcdbckA@mail.gmail.com>
 <Yh+l7+7zDvI/9e6n@matsya>
In-Reply-To: <Yh+l7+7zDvI/9e6n@matsya>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 2 Mar 2022 12:25:03 -0500
Message-ID: <CAMdYzYoVz4wk-EhfxQdwu9FqRg8Vj-HGMFG+CFjfsHeM8HcnNQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: Revert "dt-bindings: soc: grf: add naneng
 combo phy register compatible"
To: Vinod Koul <vkoul@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, 
 "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>,
 Heiko Stuebner <heiko@sntech.de>, 
 Johan Jonker <jbx6244@gmail.com>, Jianqun Xu <jay.xu@rock-chips.com>, 
 Tobias Schramm <t.schramm@manjaro.org>,
 Michael Riesch <michael.riesch@wolfvision.net>, 
 devicetree <devicetree@vger.kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_092516_469688_3F292847 
X-CRM114-Status: GOOD (  17.77  )
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

On Wed, Mar 2, 2022 at 12:14 PM Vinod Koul <vkoul@kernel.org> wrote:
>
> On 02-03-22, 11:04, Rob Herring wrote:
> > On Wed, Mar 2, 2022 at 8:34 AM Vinod Koul <vkoul@kernel.org> wrote:
> > >
> > > This reverts commit b3df807e1fb0 ("dt-bindings: soc: grf: add naneng
> > > combo phy register compatible") as that was wrongly merged, so better to
> > > drop the wrong patch
> > >
> > > Signed-off-by: Vinod Koul <vkoul@kernel.org>
> > > ---
> > > I am applying this to phy-next to fix the issue
> >
> > Reverting will just cause a different warning that it is undocumented.
>
> Right, but a patch for that would fix that
>
> > The fix in the other thread won't apply either if you revert.
>
> It is not applying for me, so that needs to be updated anyways..

It seems phy-next has fallen out of sync with -next.
It's missing this patch:
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/Documentation/devicetree/bindings/soc/rockchip/grf.yaml?h=next-20220302&id=7dbb47d64acf4aac131a2aaade726913aa62abe7

>
> --
> ~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
