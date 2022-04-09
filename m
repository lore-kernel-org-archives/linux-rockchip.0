Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07612C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Apr 2022 11:57:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7gRxM1CB66JQNbXireI2xPP4YKqnZl7vf8fO5JnXk5w=; b=kAEoSsgKcQiJ/S
	wpiY4rrDaeA/J/zhXEmssDYBRYpcF2OY36xOTlrFiR1ZUVR+eQ3rhk1+CgYp1uLuBg/hUNNTiH9E1
	LYJghsKxl6/uTTtYKKbPrtblIT/BSSM7CnwytcHGU6tBYQKS7WSgz/Wm0A2mcXCizYtdST+7t4j+5
	3K8dYuD+bctB6tK/bldpi/29Tt/e4x+O1eTpDCvJjtVlSseSVBGBReWvDv9fbaynk6l3x6aysPtvE
	NO4iMsljqJkiPfPoWqtn5wBj+GuIaX6UFMp+AK57o5fFgTTxzsGk6jrLwUqzF1U2Po0mQKyVSSmTt
	QbNtVneSRQyzdDQke4yQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nd9iO-0030L5-WF; Sat, 09 Apr 2022 11:57:17 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nd9iC-0030J7-W0; Sat, 09 Apr 2022 11:57:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1649505409;
 bh=v2/xJ7yto9BmCfd00GAKmMJNCuq5Souzk3hwnLPMWcc=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=LSTwAdCroFkqACPFFmDVbWXFphpW6RBq59c1ddGthV5a/ryIhbxB4UvHzJm0ixyeR
 U9ssmsJVX0yX6vOnYjezwFRwd75+qIDzTP9za5D4dNr1uNCf26A4cdn515FxaEo0Lc
 gJgxTWdWZUyBRgV4jFn7SssmIslCxPNi//G8IXsM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.154.105] ([217.61.154.105]) by web-mail.gmx.net
 (3c-app-gmx-bap35.server.lan [172.19.172.105]) (via HTTP); Sat, 9 Apr 2022
 13:56:49 +0200
MIME-Version: 1.0
Message-ID: <trinity-da7d86cc-5703-4657-858c-f241e5f0a6fd-1649505409042@3c-app-gmx-bap35>
From: Frank Wunderlich <frank-w@public-files.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, Dan Johansen <strit@manjaro.org>,
 Frank Wunderlich <linux@fw-web.de>, "open list:ARM/Rockchip SoC..."
 <linux-rockchip@lists.infradead.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Michael Riesch
 <michael.riesch@wolfvision.net>, devicetree <devicetree@vger.kernel.org>,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, Linux Kernel Mailing
 List <linux-kernel@vger.kernel.org>
Subject: Aw: Re:  Re: Re: [PATCH] arm64: dts: rockchip: Fix clocks for
 rk356x usb
Date: Sat, 9 Apr 2022 13:56:49 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <4232341.5fSG56mABF@phil>
References: <20220409075147.136187-1-linux@fw-web.de>
 <CAMdYzYqx1iUuEe9FPpUTgL0L2i=Q5Sq2+0oiSYzqkV6noQ8BFw@mail.gmail.com>
 <CAMdYzYqaGe9_GbRCvG3kvLpNsVfVqGNkg=YYgbVR90Qtcs9YSA@mail.gmail.com>
 <4232341.5fSG56mABF@phil>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:IpO6iEatWIxd338hHRF5AGz8rNo4DAr/13bwlpwbcBkjfcy7yL02zG1I+1zX3LCi0/8hi
 7sG089SdN79CJ/5wSouKpXJDvRGXCITX9wP7etALmwlmAgqOlRx21lzg/RKhxs6Mf0Eke9hJIlld
 pYnlXHihiP84w6FXkQNhA8VgaikP+U3oQw4mdiJqasbJ/bB9q8R1UEkBLHWRbMP9GRb/FpzERBc7
 a3G947ISBK5Wk9PpklhxJTQS3Pr567bwyBn7HiLPkDuCwuLilXxgQWZDd263cthJ1YIKeB8jkeUX
 7M=
X-UI-Out-Filterresults: notjunk:1;V03:K0:ceG3UwnHoAs=:pHlwaSspH0+O9pfaynPKeo
 yNyGFkpxcEYItEbLIMbUVEltaghh2bMXdz4mHqGZcwBwDXVL6BgXJaVgCGHXVo/SFZlmyRk7S
 ND55sSTK60b50Gwm237kOYG/z3PWbhNXAyKs1fB9keZEi34sRrppkUJxIqyC7zY1tMF297eH4
 OiXPYfLYywBJhNSGSfOUPeX0rHcprgeW7NzsDMqZP8hFWQ8xagObZc8TpN0vRVHLpfbOQBGO6
 Faf0CbFxDSNZV9Uy4p14m6fcK+PTDsZ/udzeZDcNbMgVpLA492ak28LKEYY7xDvVwgdv3MxYV
 xDxY3pOKmJjgoHZb1zGuQRhR2olXEv5y4bsdQGdbNXAwpIafdC9b9h72El4llkfhrpvUqF9Sf
 ey6sKnXhH36lH7zOgKZ3KLk+wILkPT9q0shOxbH7U6J4or0vWsQdZLHbbfto/eLoUQKgriU3t
 yXvFpO5IzKiVXQeJS5d0+GA8HkCkoIW3Zzlbybslrk5P8mRdtCNhzKuqYvi4yRfWoz0VZ+xlF
 hmFDWuMnDoxqeaMK8XGqVvWqJ8Zptwo3PDf2Bt7tqG4MJhMwdhq+IxhTWZbWGkl4BcSmMCZWw
 LMKJFeUTPFiaD1r2Ijh+FYHm/iwJSRHTJ3o/j5BKaFhzIykRklsbJrY1Bsmg0WDJwBuV0sj6c
 gZjfua55wlVNCFjAIDIK2x8t2gabCiHqZTZqpJeGqOo8kAxGtKH8KFixaoi9YChvkwNpfDKm6
 tbp1ryMg+IP1baF+sRp8Nwqfz62GDpRE/RmTNGaBbT2UXPjeme+UpNOzEBe4zJDvUxyj+IALN
 JenhYhU
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220409_045705_356868_1363A214 
X-CRM114-Status: UNSURE (   9.22  )
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

Hi,

so to not break the binding and other boards the right Patch should be like this

+++ b/drivers/usb/dwc3/core.c
@@ -1691,17 +1691,17 @@ static int dwc3_probe(struct platform_device *pdev)
                 * Clocks are optional, but new DT platforms should support all
                 * clocks as required by the DT-binding.
                 */
-               dwc->bus_clk = devm_clk_get_optional(dev, "bus_early");
+               dwc->bus_clk = devm_clk_get_optional(dev, "bus_clk");
                if (IS_ERR(dwc->bus_clk))
                        return dev_err_probe(dev, PTR_ERR(dwc->bus_clk),
                                             "could not get bus clock\n");

-               dwc->ref_clk = devm_clk_get_optional(dev, "ref");
+               dwc->ref_clk = devm_clk_get_optional(dev, "ref_clk");
                if (IS_ERR(dwc->ref_clk))
                        return dev_err_probe(dev, PTR_ERR(dwc->ref_clk),
                                             "could not get ref clock\n");

-               dwc->susp_clk = devm_clk_get_optional(dev, "suspend");
+               dwc->susp_clk = devm_clk_get_optional(dev, "suspend_clk");
                if (IS_ERR(dwc->susp_clk))
                        return dev_err_probe(dev, PTR_ERR(dwc->susp_clk),
                                             "could not get suspend clock\n");

but this needs fixing dts using the new clock names

this is a link to the series moving from bulk_clk to named clocks:

https://patchwork.kernel.org/project/linux-usb/patch/20220127200636.1456175-3-sean.anderson@seco.com/

regards Frank

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
