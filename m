Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20150C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Mar 2022 01:24:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5eeWi3D7JI7BSoYcRr45EnW/gPBX7tXm6PNOT1nrB6g=; b=hRualFBdBdFRj+
	tRmHZjd9P1cwimla213Q015U/K/euVkB9YO/FbXTI0LDlR4sInWtSfqBZRckPrgGoiD/pKUH8+2G6
	+AOwohiZ97aZ6Is+TM3lfXCCRnYkbIFsPTBqzBAWAMe9bL6xpEvPUh7XK+UUNJdY4MrdoY9hZbYQg
	3CsVEWCX+Rk7VA7Q2eB16N39/2W2HgNsoP1X55N5HnUfbg/50PMgB96DFsXwdf2ZPesxZ3N4mqCw1
	denG5mzzKG20GZ1j1q/Hur2yePL5hwqSLoLLBpl4Y4n1V6YYUCQhq2wnX++qqxwUdO5crBEWVP26T
	jurRCbX7PQ70pUFdxh2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nTvvR-007TNo-Fl; Tue, 15 Mar 2022 01:24:37 +0000
Received: from mail-yb1-xb33.google.com ([2607:f8b0:4864:20::b33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nTvvE-007TJW-TB
 for linux-rockchip@lists.infradead.org; Tue, 15 Mar 2022 01:24:26 +0000
Received: by mail-yb1-xb33.google.com with SMTP id e186so34367848ybc.7
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Mar 2022 18:24:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HoZ1zKt0q25Q5dal4n689oI7sVmSymRUjK0r4Cr8DIk=;
 b=a4ezsPpowFS0VU5lUTu7aXKdVc9Jm9lgYKeL1/AXXvepgqPlFMhnlowVa6M2mIsYXu
 kOtK00n3qmtrC/0oLUY0idkar/9DvyKvtRcosRldvGlBJzNk+Jrq5idPcxSr8sI8ohEt
 8V/z4JleVtXOxGkUesXsBCmMJ0wW2YIFEsBGvXfD0iM8D/S6fBD+qVqwPSmzuPPN0Tfv
 DMiiDy7ObQpNRpZLaGPWn8vvS0nX71mpVzPPUaMM8uab2f6vNZOHmZPxa4JK1fyHMKBj
 B23K8GCbGl/BvU+3MEVE9RTPU+HC7DSpjD4O8WPM+R50NGkAPjkmHHyiaIxUV0MIvuu4
 k1Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HoZ1zKt0q25Q5dal4n689oI7sVmSymRUjK0r4Cr8DIk=;
 b=vGXCEITtw9y0x/1jlXr16JNyCPsdyk6GU1uW2hP3HdcsfUN/NMnItnAwoJl16ovUPv
 bjqHaqz/SdMU9+OHzuswyYR0CWl6pIlrNknGrSBB+DhcFa3nnfvIpEpX6OeMKtgSX8Yv
 L0jZubzUdNR9chHuO3PD26TdmPC3NeraGtuNOWQGh5Mt1O5U8Xu9rPSL6rA2lKnasxSc
 +js0hitvA1pP+IWhoCsqHe5SpJZKbc3TeUmHX28/y9zzXMRZlSNagdGyck+sxk1i6cev
 STgs9/+0hWDLFOtg8+88oEAS8pteKg6h0AYLuVHu2KOL/wUHp9cLHlrjfg3LgzEjDGPH
 cm3g==
X-Gm-Message-State: AOAM531OuP3jKqI/dMTW4mnIvM5sYHFcLt0M461luEoyuhKOELvWD1eS
 aGZuQh96EcxbK/BEkovlcpJQ9Fqfi+uT+qbnvpH0zg==
X-Google-Smtp-Source: ABdhPJxvJ5Bc05j0AE0OHsu+uwzZ9IkQZvREDZzprZnxbKIAkZgJjfiW5rXpmaZTxW8zin0cnxA4j+xOolFipP52fbQ=
X-Received: by 2002:a25:4e82:0:b0:633:68d7:b864 with SMTP id
 c124-20020a254e82000000b0063368d7b864mr3400295ybb.514.1647307463666; Mon, 14
 Mar 2022 18:24:23 -0700 (PDT)
MIME-Version: 1.0
References: <20220307120234.28657-1-linmq006@gmail.com>
In-Reply-To: <20220307120234.28657-1-linmq006@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 15 Mar 2022 02:24:12 +0100
Message-ID: <CACRpkdZ2EzZ1bOcothpxW=9b-qPsCDKwYt_zmEX1zvs+Bs+U1Q@mail.gmail.com>
Subject: Re: [PATCH] pinctrl/rockchip: Add missing of_node_put() in
 rockchip_pinctrl_probe
To: Miaoqian Lin <linmq006@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-gpio@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220314_182424_964656_F1D43812 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
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

On Mon, Mar 7, 2022 at 1:02 PM Miaoqian Lin <linmq006@gmail.com> wrote:

> The device_node pointer is returned by of_parse_phandle()  with refcount
> incremented. We should use of_node_put() on it when done.
>
> Fixes: 1e747e59cc4d ("pinctrl: rockchip: base regmap supplied by a syscon")
> Fixes: 14dee8677e19 ("pinctrl: rockchip: let pmu registers be supplied by a syscon")
> Signed-off-by: Miaoqian Lin <linmq006@gmail.com>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
