Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95210C55171
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Aug 2026 03:12:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f3tEcPNtK9oQeB8UJ17dS0oKeaZl2+x0LM/VYy8FVM4=; b=BQaXYTJVDhImUS
	dCFRCcC+eLcNt2RMbzHkpKzaOuBRZikUk2D3iI/+/iDlChLv99gmHsw+uFZ9A8f39JYA3KzFX3Xqm
	ptL67Q/fz0BRdo2s2QktWPzFU0A3zcpbRs/XlYDeuCyBC4zL/Wu72Bj8Fdwk+7q6kdCjUsIEksHW7
	N0UcA9UKYrdMmjRsSJFx0RZZjed6jw1COcHxxUHfTE970EIQqb7PCxDaPLUkoIPqaV5id2h84cyMK
	DXlWhHYTmxe87NP1W2FSrGYPCIJ3vkZZQjIBYJ90UPCB4U2OiVENmFa3kIGmlnoEgQVvtRAR/3MUU
	WRQ6rPQhUs+qO26ZwoAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqMcP-0000000FIg4-0KOB;
	Sun, 02 Aug 2026 03:12:05 +0000
Received: from mail-ed2-x0a.google.com ([2a00:1450:4864:33::a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqMc9-0000000FIeV-2Gyj
	for linux-rockchip@lists.infradead.org;
	Sun, 02 Aug 2026 03:12:03 +0000
Received: by mail-ed2-x0a.google.com with SMTP id 4fb4d7f45d1cf-6a0942e63b9so1301621a12.1
        for <linux-rockchip@lists.infradead.org>; Sat, 01 Aug 2026 20:11:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785640307; cv=none;
        d=google.com; s=arc-20260327;
        b=gNATiIzHCFUE6FhjZVApFx/+K3o4SsYvxrDwu5pfs2yJOb/w9xssoHZPTivqcv548k
         ukGeHuFPZ6r88enRzvgMMPZa2MoyNpClztyCSi4h+UxLFgr/7m/KjS9GhIDZLCMPTU6B
         cWoS05lywmtuCHpb/X15d3zN2YiYbEbKGZdCS8vY5xSQ6UmMid7VcNMo8efPvJXDg7fJ
         OEzDn/EAiRd+x6DGBBXqcSSXsYh0S9dWYHu7DQ0mwE2tYzKRB/ilftq9hXDCPxqHF6uP
         dAuifVl7uJCqg6s/3S2gj6dt2imc34L6InDRxQn7w20LvQ94XZ1940XB0sUx6qdZibKa
         0ZFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=c7i9JdeVJzDWpjjDEXDdnp2erjUKykrkBMYRh4KI/Og=;
        fh=/rrRYK95buWwAxL7STlEvJy+A+kW4sBzebfo3gyW9sE=;
        b=dmskyejsAvlEunMv5EhwlT2QOr8BS/yFeioOY7EKLEd38b+QYrLezdWlIqQiLX6ks6
         QoNndd3ArPqvHJcYpBoskx2UgcFr2sElwkdVaFc2lFC84jGeBFEbqQ1+yVg0Fjra7Twn
         ddVBi8bhJ9F5qhwfYCH7fzjzbFUkUKWlwWTg4aq4xZ86S3K9g8hczYzhR8s9taRRA7Wr
         wabFGC1/kTQgiy0/HEFW9dfGyUgx5c/5zTy5CuyrmhNxct/H1MA1AEjOUY2ZTGQl645e
         9wglKOOcjjdOlucmhfHJ/xbG+bZs2WOAUC///wcCLwXngfcg9VQ8OjWWHL12yuGV+X9y
         J1Ew==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785640307; x=1786245107; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=c7i9JdeVJzDWpjjDEXDdnp2erjUKykrkBMYRh4KI/Og=;
        b=Bvzh4E0eua7Sm815cfpXF0e9LabI8LYQNEeSi2I+Lwd4rG9BCTD827IKdM1TZkGmRV
         jqkdq8DGpOligfrHL0uSdF3LaFIu4Wi7xZiiy5lpi8qzTigLiBkFSzPtyNf+Tm27mZgc
         zbvkXn9/qoe+a4wB42USdW9EIciZ3FQw0Ucp1m0AiU/WJEVam8F5XBeBahB0EpPW+0a6
         D7IwMVQJJSfsW3hGzt+tq/rgWng7MQdOjCmgBKf6vSEbQksZxh67zZus146J58pQhArc
         TKg2WNmtlKcNDfykqjKTShe+WPFEc+1vnfTDV7Bj2S1DokxkFDnKURPKQ+cbpomk8GlY
         +xSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785640307; x=1786245107;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=c7i9JdeVJzDWpjjDEXDdnp2erjUKykrkBMYRh4KI/Og=;
        b=WfnFu1GnyxuYzJ5IP4NGsEOgJ4z5UJ8nyrKvhBdErJG2mQb2ziB5GjnlF4wHechpIP
         8uMx6Sup3bnEapLpRqXUKzelBBHaoSoregRtFkkrLbcIpiCPMh2BWK0QU2ZXUYz4JRju
         0T+pMz+oR4jGAyesmVJsAS/1d+te4Wy5NJC5AvTtpwgyEKLzt5n++xjm5R8RlWDzXDcv
         XaND5kls8Jx72BZKEIw5T+4CE9OtSRP5f8cS+A+tINb+k/prYtt8dQzCUEOYlOz2XSAO
         pWBINStUfo2D6zbYczWUrlaLjuEPwUXpmLheBsKIqopj8PSd9s1IJHsBUxSdu5tVTIkW
         ZGFw==
X-Forwarded-Encrypted: i=1; AHgh+RrUUcr3H2w+mXBHsHKvSVYhbSmNx0PW1biiNxswu9c/hdCimRnh7tmThUJoCE6PaX/eHZzllvp0uaiD5TBT0A==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx4GU7IqGUqMq8PLl99zO7QwzZtnWJAmbFRFKjc02EPbLIVFpay
	1HlA8UCzY1ERZsuH+lZbZdQYY1nMbx2x89USoLav0wVMUa0B87ZC9sa1XBSf0VvPyDoiAQuyzeP
	9hmQVKegUeZgtxHRyoCBKARDCg7L21mA=
X-Gm-Gg: AR+sD13dq1oiKKe/j4wxYvaOCA9PZaJqUFM3LtAVh2AY4DuiN785YX72i6LXBQwZxWq
	4NtmmtGHEsvPt2EQ0Q2Nw4R2JYmzp5tAwvtbAdcGhGrSZbSwIr+lJAolbTcuG5P81wt6LfMZByH
	gAuK0wbI3f2UbP+l0zfUsCcXo6t3NonE4A5aztvt+wY8IFHRG9BwQIy1zkvORjQuwFYi1vR94H/
	+fHk/0FQ4DsBvbC8daE/GkvwRwaw3h70p9Ku9D/9Ez1VFbq86EsAxMIKJRGIychgtdWBPAsgAYu
	dl1QyHvsAkYFhVa6sT0FP1ef9xzIlB0zf9s+mudQ+GEAFWStFsHQXugirHg=
X-Received: by 2002:a17:907:a0a:b0:c16:318:34e3 with SMTP id
 a640c23a62f3a-c1fe7ee16b4mr409057166b.16.1785640307171; Sat, 01 Aug 2026
 20:11:47 -0700 (PDT)
MIME-Version: 1.0
References: <20260801142244.679437-2-coiaprant@gmail.com> <20260801142244.679437-8-coiaprant@gmail.com>
 <cfddb747-11d0-476d-8402-e0886cca582e@lunn.ch>
In-Reply-To: <cfddb747-11d0-476d-8402-e0886cca582e@lunn.ch>
From: Coia Prant <coiaprant@gmail.com>
Date: Sun, 2 Aug 2026 11:11:40 +0800
X-Gm-Features: AUfX_mxry2V8YGgxr6fvsxNhCSaA_pBDCP69byM5eyulpGFZP2LcAYzvhwycRyM
Message-ID: <CALj3r0i1TCTgvm8FrJAJqmZgoJp61NCxc_xmVYaDFd-gh4H=7w@mail.gmail.com>
Subject: Re: [PATCH v2 06/10] net: pcs: xpcs: add ANRESTART support for SGMII
 link recovery
To: Andrew Lunn <andrew@lunn.ch>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>, 
	Maxime Chevallier <maxime.chevallier@bootlin.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Romain Gantois <romain.gantois@bootlin.com>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Russell King <linux@armlinux.org.uk>, 
	Shawn Lin <shawn.lin@rock-chips.com>, David Heidelberg <david@ixit.cz>, netdev@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-renesas-soc@vger.kernel.org, Jiawen Wu <jiawenwu@trustnetic.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260801_201149_601260_254EC11C 
X-CRM114-Status: GOOD (  13.86  )
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

Hi Andrew,

Thanks for the careful review.

> This probably needs more wide spread testing. I would be afraid that
> if you kick off an AN cycle, you loose the link until it completes?
> You would of noticed that on your hardware, but other hardware
> obviously behaves differently...

The trigger condition is: link is down AND an_complete is set. This means
auto-negotiation has already completed (or completed with failure), but
the link is still down. In this state, the hardware will not restart AN
on its own on RK3568, so the link stays dead forever. Kicking ANRESTART
here is the only way to recover.

For a working link (link up), state->an_complete may still be set, but
the function returns earlier at the "if (state->link)" check, so
ANRESTART is never triggered on an active link. This should not cause
unexpected link loss on any hardware.

Regarding testing:
- Jiawen Wu has tested this on Wangxun NICs and reported no regression
  (Tested-by tag included in the patch).
- On RK3568 (Photonicat board), this fixes the SGMII link recovery issue.

I agree that wider testing is beneficial, and I'm open to running more
tests on different platforms if needed. However, given the condition is
strictly limited to "link down + an_complete", the risk of disrupting an
already-working link is minimal.

Thanks,
Coia

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
