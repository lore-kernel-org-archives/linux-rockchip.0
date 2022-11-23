Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B21FAC433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Nov 2022 13:01:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LYwzBOIfdjcIvtx5JLPcYYHGHXrQJRWPuURsNpmnpHU=; b=r+xsvwL3LJ0nZf
	T773FobeMsbakgjDUusz1N/tuZJl3X2toHM27V+tEEe6lXM72OCExR2Cy8C5wy4/1z+3zuSTW4ZU3
	VSLs+4HoZdtE1uXgoMR+m5ARuNylGnveHvugmZs3xNKXgRnG3cMdbcfZnHgqkIVVekwB6L6Vdr/PY
	SU9acaQ/RNNEm5zQOu82UGm4klTzsoHvt6sJfloyYebaFVrRgZoAtS7ixaG9GV3Qg217ghX3a1smf
	XsXoHm0zKUqsOn0h36HRqKoiIVbB+NpSdN/ZvkhqiXNimIOCe0+e53BeqlPw0wsVx9tPOKRmfGCbE
	XTtI7OmQmu2BNDObk7Og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxpNV-00H6B6-Dc; Wed, 23 Nov 2022 13:01:25 +0000
Received: from mail-oi1-x22b.google.com ([2607:f8b0:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxpNI-00H66T-Bz; Wed, 23 Nov 2022 13:01:13 +0000
Received: by mail-oi1-x22b.google.com with SMTP id c129so18969428oia.0;
        Wed, 23 Nov 2022 05:01:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=D8iNsY38chO/HqPmklDMe6KMcfnGGpO+SfN25u2MR9k=;
        b=fe6HirGOUDK4nqPF1BFgY1lmrm30/fCj8oi73BGLRuy7chtWit372NNZOCRvH8nsAx
         CIsFes5MpzAdzt1LCqTErH0eG6JXlo944wFSHTL+SMiKb3w/adeTWloYj4LRAONDTlPf
         5hsgIt6+otyfavu7LrGylkto+jDSS29+OPmAG7j1cdO3pFA3moX0pxEylcY24DNrVdtt
         JxI2MffvwraF1TbxK2VDp2DOdZ+XdE+VrpVGcvox/ArDzWmTwXUeg2qjxck/nFnEqR/y
         8LZxd9tEVGgO2rk6J0nH81iIJnCvN0uvuNzNzxAP6KW/jWgtMKRq7R7QYP1KIllBHGpt
         jnqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D8iNsY38chO/HqPmklDMe6KMcfnGGpO+SfN25u2MR9k=;
        b=QbBV7UT9KSLpyMu5QekZAWdV6WkXCusNgvpeVYB7HOQk263OcxwG8MojfxlH9bPlQ1
         xGQGqKeg7gfhhKfTvnfP6xPLDD4PQzJy+ABzN3uvCRee6x0SDk5lJy2ebmQ+D/dp45x6
         l6BVzMgEbW4kCtdhG+jvMVbzFGrpV4Xlwoi6QzfObEUuTVkyjZVbuWnf6h87Pp5Z636u
         MnMgNmvMBiZywMtscd45FpY3USpee4s9w3F7o0nuUMRrk3WRJ9paIambqsxqPzBA6T8+
         D3qR0py0gVLMXDU8uJN1bK2J6+ee2yPgEvbJwASuBXX9ZFHEt8cvVI/zBFb8SWIUXXZy
         oR3Q==
X-Gm-Message-State: ANoB5pn4+n0M2WMMAY/eTotn90HMOOuVIbD1RgdABY1F5EwcvHbEXN3B
	Fe3mpT7Fg/SUWigZi0koI6Z2gfE6Zrbs9eZ/GN8=
X-Google-Smtp-Source: AA0mqf5xNBOot5wGFrpujJ4FWWy2MHxMhw7SnCOf6Jrue4uTFZvRmZ83x0rBa8NZBvW1D92mdfQnd8YAo7ubu5u00GE=
X-Received: by 2002:a05:6808:284:b0:35a:e9d:925c with SMTP id
 z4-20020a056808028400b0035a0e9d925cmr13280366oic.260.1669208469849; Wed, 23
 Nov 2022 05:01:09 -0800 (PST)
MIME-Version: 1.0
References: <20221116200150.4657-1-linux.amoon@gmail.com> <20221116200150.4657-3-linux.amoon@gmail.com>
 <3e4e601b-e7f8-e9df-0ec5-4f4b629d9c0c@wolfvision.net>
In-Reply-To: <3e4e601b-e7f8-e9df-0ec5-4f4b629d9c0c@wolfvision.net>
From: Anand Moon <linux.amoon@gmail.com>
Date: Wed, 23 Nov 2022 18:30:50 +0530
Message-ID: <CANAwSgTbTziSY-5=V3_WJG9-SaTY4R0JM4hkohLFE-q1bERcdg@mail.gmail.com>
Subject: Re: [linux-next-v2 2/5] arm64: dts: rockchip: Add support of external
 clock to ethernet node on Rock 3A SBC
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Chukun Pan <amadeus@jmu.edu.cn>, Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221123_050112_429301_1417B622 
X-CRM114-Status: GOOD (  13.54  )
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

Hi Michael, Heiko

On Tue, 22 Nov 2022 at 16:48, Michael Riesch
<michael.riesch@wolfvision.net> wrote:
>
> Hi Anand,
>
> On 11/16/22 21:01, Anand Moon wrote:
> > Add support of external clock gmac1_clkin which is used as input clock
> > to ethernet node.
>
> Indeed this operating mode is defined in the schematics, thanks for the fix.
>
> >
> > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
>
> Reviewed-by: Michael Riesch <michael.riesch@wolfvision.net>
> Tested-by: Michael Riesch <michael.riesch@wolfvision.net>
>

Actually, I wanted to drop these changes since looking into clk_summary
gmac1 CLK gets wrongly configured with PLL and the reference count is
not correct.

Plz do the patches, I will send the correct changes next version.

> Best regards,
> Michael
>
Thanks

-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
