Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5B65C19F2A
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Aug 2022 10:25:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8oDFQu1w6KfXhq7ravDyJLQk/O7kx+YAVDe7kqFwN8g=; b=3WE7xSigAf9S3A
	j/xKkiuvEGGEQ/oEucxC1Y26DqTriQCusNYLHRI+d3w2nv27V14w4PmwpC8eMhnxCaqVhxLRCzPZV
	s9WRuUi0iVgelOoOdx1Qt/jaXMN1oyRa3+woEhiBG04g0vTLoybJCNVjcrUElJG4QI3GwnWgBlz4V
	9+aGlOQXjtgc+w94jEP+48j3Y66gKVT7V1dZbBF+4F2+H5kaqFJnH5MUGC2hi9hdnOvhz200HJqem
	eu+JYJnbeb6LdRxDH8ZGFyF86b3Mio0HaWw9aDH6flxlfKCIrZdJDsv94bDnKxzJqbmnYD0ucmLfs
	+GWDB2L6E7JoR8QA2FnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJBYt-004oHn-Uk; Wed, 03 Aug 2022 10:25:11 +0000
Received: from mail-io1-xd2a.google.com ([2607:f8b0:4864:20::d2a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJBYr-004oET-4R
	for linux-rockchip@lists.infradead.org; Wed, 03 Aug 2022 10:25:10 +0000
Received: by mail-io1-xd2a.google.com with SMTP id r70so12564723iod.10
        for <linux-rockchip@lists.infradead.org>; Wed, 03 Aug 2022 03:25:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=YmDA3kq1/xilo+yZEI3WQJxtfYiQ+XqxKBBcYLngZhI=;
        b=hTICKdtVQTnsfKZFCZBlyrTUaqWPeHxYSnQCNCzFtax3c3I77sA2mxe+aCggQXgRPE
         Xqz8amzMS3o6j6NQ7zYUT/UFlODQksJFoKgiCztmh3WzJNKfFZA9o2+wuw5vjNztB28W
         AcupddDvk07jdgyjjhBVE/YqfcKSte+2Y8v6lMWMpQpCVLCMt60OnN0a7ttPmI4i3qg/
         VnvCKMLYO0dXnxViyuTe7QF0AfN7Q5EnDlUCy6iG10WomgA24/5oPGV8Dexa9xCR+tK1
         n/JKrCdhPdyqZ3/RBHZwX4VEwLu1LoGpOd47kmipBpd9TKIMMvj+2KXZF3XU/xXiu29x
         qFdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=YmDA3kq1/xilo+yZEI3WQJxtfYiQ+XqxKBBcYLngZhI=;
        b=56/YE3xMgmshzZyAy7xXUFisPBYgi9CWS4epG0pm+JkWBtwGDrB2Ak2H5jrMGg5R+2
         zjLNKaqHERHrqy6d3B7MMZpP04KKaGrc/+fzpfoIiMUPlCjK0g9jnKs2HbqXQb9/5XE1
         lmx6q5I6X8Vf6N0bKRqVtWsi0pE7s7YAql1dgznR64LZ298XPSVRBRKH6TF+f+A5StuQ
         bRHTphhdVQvUStOiYLQlmxwVEjV5OhQnyUbGpX+FHp1RmWSHpiy1cQOve9eKOB7xWd9r
         OqDHChXMHE7f9ZKtTduqmYgCua9o3Iz91zSQYNCCHGs/BBrVOdm16+M+PV0y27BzOH+V
         tGoA==
X-Gm-Message-State: AJIora/fpk1OdtI+fTtMa/t3MkMTjWECAoRfbfIaUDp2awNZr1sVry2q
	JTjKh1NZgh59KrT676YiD5RFmlhRYLUeSg2qyCT6jA==
X-Google-Smtp-Source: AGRyM1vm86YSVaw+8M+NZy8VQoKRM/ZV7Oz/sVMkJ9ie5+WmNHtGfYhm2DqkAHvB/i4nCwRBBrrHTArmfdUNOySOeHM=
X-Received: by 2002:a05:6602:2d4f:b0:67c:24ec:73af with SMTP id
 d15-20020a0566022d4f00b0067c24ec73afmr8697296iow.73.1659522307280; Wed, 03
 Aug 2022 03:25:07 -0700 (PDT)
MIME-Version: 1.0
References: <20220731174726.72631-1-jagan@edgeble.ai> <20220731174726.72631-3-jagan@edgeble.ai>
 <4f8b8b98-c0ef-4924-6ff1-ccfeae77fc21@linaro.org>
In-Reply-To: <4f8b8b98-c0ef-4924-6ff1-ccfeae77fc21@linaro.org>
From: Jagan Teki <jagan@edgeble.ai>
Date: Wed, 3 Aug 2022 15:54:56 +0530
Message-ID: <CA+VMnFwQFLNbtgX0RR5vLq29tvU3HBpcyrtrksOsxF5s=W7=UQ@mail.gmail.com>
Subject: Re: [PATCH v2 02/20] dt-bindings: power: Add power-domain header for RV1126
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Kever Yang <kever.yang@rock-chips.com>, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, Elaine Zhang <zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220803_032509_344009_C16C89AC 
X-CRM114-Status: GOOD (  17.40  )
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

On Tue, 2 Aug 2022 at 16:08, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 31/07/2022 19:47, Jagan Teki wrote:
> > Add power-domain header for RV1126 SoC from description in TRM.
> >
> > Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> > Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> > ---
> > Changes for v2:
> > - add blank line
> >
> >  include/dt-bindings/power/rv1126-power.h | 35 ++++++++++++++++++++++++
> >  1 file changed, 35 insertions(+)
> >  create mode 100644 include/dt-bindings/power/rv1126-power.h
> >
> > diff --git a/include/dt-bindings/power/rv1126-power.h b/include/dt-bindings/power/rv1126-power.h
>
> Vendor in filename is needed.

Yes this follows how similar rockchip vendor notation

$ ls include/dt-bindings/power/rk3* -l
 include/dt-bindings/power/rk3036-power.h
 include/dt-bindings/power/rk3066-power.h
 include/dt-bindings/power/rk3128-power.h
 include/dt-bindings/power/rk3188-power.h
 include/dt-bindings/power/rk3228-power.h
 include/dt-bindings/power/rk3288-power.h
 include/dt-bindings/power/rk3328-power.h
 include/dt-bindings/power/rk3366-power.h
 include/dt-bindings/power/rk3368-power.h
 include/dt-bindings/power/rk3399-power.h
 include/dt-bindings/power/rk3568-power.h

>
> > new file mode 100644
> > index 000000000000..38a68e000d38
> > --- /dev/null
> > +++ b/include/dt-bindings/power/rv1126-power.h
> > @@ -0,0 +1,35 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
>
> Dual license, please, unless some copyrights are no allowing this.

Yes, as we discussed in v1 - I'm not liable to change so I keep this as it is.

Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
