Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D16CFCD1288
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Apr 2024 11:20:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=768CAsB1UZLLdCIIduhgUDpvTNjyf6ETsZqHvYbsJmg=; b=TkBVR7gD/LRkTM
	CA6lWEglCJmUyZ7kIkB3hKunh7cOBAv88P7hVLgve2siVrZML/Dnq/qPwTvn3o0yF/GtbEjNDHkqv
	pkj+AueXCjpVspgvztlmAL/lWw8Jk5wFOV4ZN5QHBVGvifGmPoU2/ijXH6y0+S5s/6kyMeO214od4
	W2NVEJYzedq2k+Clll4OVvYqOikD8G980ghjJ/HU4VQ4bS2H700n9orYOJ6kP8rsJvR6ZsJ5KTnyO
	GimcS5bik1Bx9X9AwyuK8a6DovEYnUWqWCyDmkPLp4bssmbzgCyzdCNTbof9fb7X71Ze5YWLeXZrP
	9Uh7hdIJ+cMuGj528cIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rryf5-0000000FkCv-0eUw;
	Wed, 03 Apr 2024 11:20:11 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rryf1-0000000FkBy-1CAX;
	Wed, 03 Apr 2024 11:20:08 +0000
Received: from harlem.collaboradmins.com (harlem.collaboradmins.com [IPv6:2a01:4f8:1c0c:5936::1])
	by madrid.collaboradmins.com (Postfix) with ESMTP id 81D8037820E7;
	Wed,  3 Apr 2024 11:20:03 +0000 (UTC)
From: "Shreeya Patel" <shreeya.patel@collabora.com>
In-Reply-To: <a2f88176-b4e1-4202-843c-a00c5a2b1622@linaro.org>
X-Forward: 127.0.0.1
References: <20240327225057.672304-1-shreeya.patel@collabora.com>
 <35e566-660d2080-1-7eb9eb00@16488675> <a2f88176-b4e1-4202-843c-a00c5a2b1622@linaro.org>
Date: Wed, 03 Apr 2024 12:20:03 +0100
Cc: mchehab@kernel.org, hverkuil@xs4all.nl, hverkuil-cisco@xs4all.nl, heiko@sntech.de, robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org, p.zabel@pengutronix.de, shawn.wen@rock-chips.com, kernel@collabora.com, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org, linux-arm@lists.infradead.org
To: "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Message-ID: <35f774-660d3b80-3-513fcf80@97941910>
Subject: =?utf-8?q?Re=3A?= [PATCH v3 0/6] Add Synopsys DesignWare HDMI RX Controller
User-Agent: SOGoMail 5.10.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_042007_480854_7439BAAC 
X-CRM114-Status: GOOD (  14.52  )
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

On Wednesday, April 03, 2024 15:51 IST, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:

> On 03/04/2024 11:24, Shreeya Patel wrote:
> > On Thursday, March 28, 2024 04:20 IST, Shreeya Patel <shreeya.patel@collabora.com> wrote:
> > 
> >> This series implements support for the Synopsys DesignWare
> >> HDMI RX Controller, being compliant with standard HDMI 1.4b
> >> and HDMI 2.0.
> >>
> > 
> > Hi Mauro and Hans,
> > 
> > I haven't received any reviews so far. Hence, this is just a gentle reminder to review this patch series.
> 
> Why did you put clk changes here? These go via different subsystem. That
> might be one of obstacles for your patchset.
> 

I added clock changes in this patch series because HDMIRX driver depends on it.
I thought it is wrong to send the driver patches which don't even compile?

Since you are a more experienced developer, can you help me understand what would
be the right way to send patches in such scenarios?

Thanks,
Shreeya Patel

> Also, you sent it just a week ago and you already ping. Please relax,
> and help out by reviewing other patches on the mailing lists in order to
> relieve the burden of maintainers and move your patches higher up the list.
> 
> 
> Best regards,
> Krzysztof
>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
