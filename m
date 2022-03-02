Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F17F8C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Mar 2022 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7uGsSHdfnmVJ/kc/guoxEm7mO3pYekArynqSN7FzhPo=; b=zcYEQUP5c1BSN9
	E48TswZU/dmBe7OLEAy5tiQYM1Gx3O+20o3kGIDypEXih5AgwLY2uCPJKPfV568mUhPc436xDDMhe
	aJHdogayvp162zxy03duuzH3h9jdsW8eiZIE4I5dIAbHaN5mP5sSnuSxiAHOke2NIxzZDfekOtmiq
	RXOjlHKuJ1nxnDZY4eZjByqz/rggFhebDtP1cn683uE8D+hlrF0JDQ2Hn8Q+bnIH8J+IifuLuQjMT
	g+eLRGF0aIyXU+xL1WSqV8AwuTDGL1Wq0vj03CvnRngNJc5Ymlmme0mmteebCodSSbd37Do07fwK8
	K+DCD6SeYRjmmVheeeqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPTec-003pqH-MQ; Wed, 02 Mar 2022 18:24:50 +0000
Received: from mail-yb1-xb2c.google.com ([2607:f8b0:4864:20::b2c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPTeP-003pm5-Fn; Wed, 02 Mar 2022 18:24:39 +0000
Received: by mail-yb1-xb2c.google.com with SMTP id g1so5186979ybe.4;
 Wed, 02 Mar 2022 10:24:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=k8trmR3Q/wKgFOlN56Zfs9MLMD2hMa6/k0WKIWBkMmM=;
 b=EI7PKbxWvSqGp9xJmAzLPWSp5Tf1E04s3YrH5kSS7z6m+CKHqqpxsF1gSsptgTcOcP
 s92pTtvsM1mPJlvaG7OtmwhLVLwZj/9riUWO8vLV72/BDvSjj+rvsO4KlqLXBNUW4Wsa
 jbDq62016TJkK8q8iZwUdEaU8qe40kqrghh1GqvbX7Gq9mSUMvDVyO2JYFjrLH+dgaWW
 Y5We2GXHWVHPyr3pLLn9QNykj6paKj5xfYDElWRybIvDGi28yatztI44TWmZoRTGxIOm
 KD8BRSfnehZMnzHlXWDkmeocicXx0K2iD3tCxtfS7nu6euo1LBpEkcv4z7KEzBURG8od
 fj2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=k8trmR3Q/wKgFOlN56Zfs9MLMD2hMa6/k0WKIWBkMmM=;
 b=UIOpwNO8P5jDB4Vmsk+K/Pt54C5MXvn5rJ34lWgKMtaDf8kSAAINdOITqVHrZiK1ja
 gV1uSpy2TE1QFnAi5UPmR3xYr9+ApLviNghtSkb5KxtTR29G1QzGbyMv6lv+qzRY0Sbu
 emY81kvG/V4OzATLasPGfgiL94xhuI2j+LpA5CuaGYPpQfCshbB3LnfTQDeqsXfjMxBF
 3DgWjO2XSyknNGDRC/PsE3g4JUkvadIdzcJR1f2BaK4LQgoUY7tVll22AKevZrEn8X/8
 tsyWGrdX2MIy8nRm5ayTNnHNH6Irdcg29FXvSPnzjVawvlPO/50bXgi0OhOFWCoC/bDl
 DPqA==
X-Gm-Message-State: AOAM530FMpU3lLGNkor3aTsY1zvEg4s4WdS9C3ckHYcheGkBBTCqyJUP
 vS/8ipXLayjAkHNgPK6O5uNbOpXQbrbcpAkwZ7A7YVmA8gk=
X-Google-Smtp-Source: ABdhPJztt2OEDdgAGfUkeMuakEtvQlotuosKn6RGHzjaJ0yQIJbh4vJafHCFX3KRfLld0T8niouzFGhLQs3ATA6lq9o=
X-Received: by 2002:a5b:dc8:0:b0:624:a898:dea6 with SMTP id
 t8-20020a5b0dc8000000b00624a898dea6mr29475925ybr.600.1646245476111; Wed, 02
 Mar 2022 10:24:36 -0800 (PST)
MIME-Version: 1.0
References: <20220302143427.447748-1-vkoul@kernel.org>
 <CAL_JsqJMZ8PHqJk6drNbNHprmfeV9UvJzJnech7sz_JwcdbckA@mail.gmail.com>
 <Yh+l7+7zDvI/9e6n@matsya>
 <CAMdYzYoVz4wk-EhfxQdwu9FqRg8Vj-HGMFG+CFjfsHeM8HcnNQ@mail.gmail.com>
 <CAL_JsqL1cYyU=LCmEn=dEk712CECpxj8sUWrwpi8_XpoaXEQig@mail.gmail.com>
In-Reply-To: <CAL_JsqL1cYyU=LCmEn=dEk712CECpxj8sUWrwpi8_XpoaXEQig@mail.gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 2 Mar 2022 13:24:24 -0500
Message-ID: <CAMdYzYqMgoOKuBw9gKuybcoGxiGYtwf3aA07C9Mqvq2gjB47rw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: Revert "dt-bindings: soc: grf: add naneng
 combo phy register compatible"
To: Rob Herring <robh+dt@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, 
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
X-CRM114-CacheID: sfid-20220302_102437_561385_0D9C602B 
X-CRM114-Status: GOOD (  27.91  )
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

On Wed, Mar 2, 2022 at 12:34 PM Rob Herring <robh+dt@kernel.org> wrote:
>
> On Wed, Mar 2, 2022 at 11:25 AM Peter Geis <pgwipeout@gmail.com> wrote:
> >
> > On Wed, Mar 2, 2022 at 12:14 PM Vinod Koul <vkoul@kernel.org> wrote:
> > >
> > > On 02-03-22, 11:04, Rob Herring wrote:
> > > > On Wed, Mar 2, 2022 at 8:34 AM Vinod Koul <vkoul@kernel.org> wrote:
> > > > >
> > > > > This reverts commit b3df807e1fb0 ("dt-bindings: soc: grf: add naneng
> > > > > combo phy register compatible") as that was wrongly merged, so better to
> > > > > drop the wrong patch
> > > > >
> > > > > Signed-off-by: Vinod Koul <vkoul@kernel.org>
> > > > > ---
> > > > > I am applying this to phy-next to fix the issue
> > > >
> > > > Reverting will just cause a different warning that it is undocumented.
> > >
> > > Right, but a patch for that would fix that
> > >
> > > > The fix in the other thread won't apply either if you revert.
> > >
> > > It is not applying for me, so that needs to be updated anyways..
> >
> > It seems phy-next has fallen out of sync with -next.
> > It's missing this patch:
> > https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/Documentation/devicetree/bindings/soc/rockchip/grf.yaml?h=next-20220302&id=7dbb47d64acf4aac131a2aaade726913aa62abe7
>
> That is not how things work. linux-next is a tree that no one can
> apply patches to (in the worst case like this one). It's useful for
> integration testing and a shortcut for getting a maintainer's tree,
> but should not be the basis for patches to the lists. You should
> generally use the last rc1 or a maintainer's tree when there is a
> known dependency. Using a stable base means 'git am -3' works and the
> merge tools work rather than git just failing to apply anything.

I apologize, as I'm not the progenitor of the original patch or the
merge conflict I'm missing insight here.
My series is dependent on patches that were pulled in several trees
and the only place they are all currently available is in -next.
I attempted to correct the merge issue in my series, but I don't know
how I would do so when it needs to be based on multiple trees to be
correct.

I will wait until this all settles down and resubmit based on 5.18-rc1

Respectfully,
Peter

>
> Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
