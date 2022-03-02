Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2239DC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Mar 2022 17:12:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BRVusWSAXEElo0gYldbuHgCQhA0D1HxV/S6OnkCVHVA=; b=1MR6zHswtzai8K
	F58KLWiPjbLity/JezsFlMOFrKme4WQTt2YWheIjeIIl7fZMe/bcR+HS/laWpvj2PQrwp3+qlCoqf
	jOBwcGVBXc2OWopoSOr7XmYY3sPFKowQD+ytOfBGvmXFthzEskrOfReADhSQZxhhZIvnJUGd/Bv9x
	9F5ogucLVuPPpMHHIK2k5sbUEEGO1rXbSP+77ad3Hn6aWAD40UVvt7p8S2h3ddxuvON2KJVUhmPs9
	EVXjVK7Y1z/n+nFKHw1Kmdwim8RHqfXpyksMvf2Ujf1DOEBAi30aoSARsEhmCyQMxUlm6hrBG/Qix
	tfVe7Bh4I4WryEg3GttA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPSWm-003UJ4-Ig; Wed, 02 Mar 2022 17:12:40 +0000
Received: from mail-yw1-x1135.google.com ([2607:f8b0:4864:20::1135])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPSWZ-003UER-GZ; Wed, 02 Mar 2022 17:12:28 +0000
Received: by mail-yw1-x1135.google.com with SMTP id
 00721157ae682-2d07ae0b1bfso25738607b3.6; 
 Wed, 02 Mar 2022 09:12:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AvcFqOYltGy+0NWy8JBCis1x7cnlm0NXxI65Z4H9cuA=;
 b=YF7dFPct/RccQtzqMIZlbMgKl+DOMpfbkGMkkci+ZFO/QYDkK0opHy2/Gaonc1ZEaF
 gs5PxnqeR5Tle5f3kkNArSNvSbbphHdrZre6jVTGygh53B7+jua7CTQ6vP5idUVvH1go
 gtlXCOWQFPMT8SWzVRVhaHOhnktTI/5xjzS0CYeeLNgDj5nks3ZQPM9bD2hp0tjXbaiq
 BhfzFdrRjPBU5EbVLBlZfWPoRK8XdJQH9A9H38Gi+mAS10YQ9f5qrPlNI29ZUVKN26bo
 N2YMg5nNxffw1Pq3mfD2Bb1mHPob78PJa3jrR/hW78I7YVXSftkhIgSEeCkTO+oGRWmX
 /PHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AvcFqOYltGy+0NWy8JBCis1x7cnlm0NXxI65Z4H9cuA=;
 b=Bym3jOl8jFMJZtrtaztrUWN73+TGJW5JRpPFjVrAhnyIhlou+48JDY319wfzAItLFv
 sz0EBr4+rObbvGnBgjuYhPeUed2IzptU+G5ISyV9sfc2Ivsl5DDu76AtHTkerd7wTOup
 zYUvsJTXhvVLbCkVJgQ8noS774gfGgHQz82iIOpoZl1o1Dy6do2yLc0LncQLOmRSCSuY
 ssC8DjboiWHkYaTQ0kJJUWqAdvmxASsW96oId9o/0qT8Q5oAwD3HmKpR5YUxJ32qOL2P
 ycu6tNmgsUjboY63mVDPLwde7odhsRG5oUien9Jl175uJTX823MY4ZdffK6+zXku4fpR
 bzBQ==
X-Gm-Message-State: AOAM530VesrYXPVTM3FqR7y41f1A4EIPqcE+NFDquGUW+MX5/G7Jn0yK
 mCzErlc2X2E5i9anE8xVRk5FAC3fBMINRk+G6Aw=
X-Google-Smtp-Source: ABdhPJy69RwfdCCJC68UIsfdXRgP0PJVVpf3TFtA9o0oEVpIj8OY9p2dVyfF5kCHR5KWl1EEwNMj9doM+vj+bE3vShY=
X-Received: by 2002:a0d:fa01:0:b0:2d6:595d:81d4 with SMTP id
 k1-20020a0dfa01000000b002d6595d81d4mr31750715ywf.86.1646241145503; Wed, 02
 Mar 2022 09:12:25 -0800 (PST)
MIME-Version: 1.0
References: <20220302143427.447748-1-vkoul@kernel.org>
 <CAL_JsqJMZ8PHqJk6drNbNHprmfeV9UvJzJnech7sz_JwcdbckA@mail.gmail.com>
In-Reply-To: <CAL_JsqJMZ8PHqJk6drNbNHprmfeV9UvJzJnech7sz_JwcdbckA@mail.gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 2 Mar 2022 12:12:13 -0500
Message-ID: <CAMdYzYoCeSKPQjUqigtP7GiAB8iDre9BRwVTqvmq_OA-N06NQw@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20220302_091227_574127_7ED65E21 
X-CRM114-Status: GOOD (  13.53  )
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

On Wed, Mar 2, 2022 at 12:04 PM Rob Herring <robh+dt@kernel.org> wrote:
>
> On Wed, Mar 2, 2022 at 8:34 AM Vinod Koul <vkoul@kernel.org> wrote:
> >
> > This reverts commit b3df807e1fb0 ("dt-bindings: soc: grf: add naneng
> > combo phy register compatible") as that was wrongly merged, so better to
> > drop the wrong patch
> >
> > Signed-off-by: Vinod Koul <vkoul@kernel.org>
> > ---
> > I am applying this to phy-next to fix the issue
>
> Reverting will just cause a different warning that it is undocumented.
> The fix in the other thread won't apply either if you revert.

Reverting and reapplying the original patch would work.
https://patchwork.kernel.org/project/linux-rockchip/patch/20220208091326.12495-2-yifeng.zhao@rock-chips.com/

>
> Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
