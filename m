Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71B45C19F2C
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Jul 2022 13:57:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BuWzv3B8f0AoBfCMVRk0h0FrCwwOwiCeVzkvAiPlTqM=; b=pmxnQXSUUY3lny
	Fz9vuikC19sCfdaef8oGV6HdbF4xwezksq2F82+YTkOhvMzDjwvN7F/yOOoNe/AVPVeGm0BqqX2M6
	sPOiU9z1NMO4Ei1xYNJ4go+4l19SucuTznucgDHtw5FpLC2igVJE2yq068bI6t1f5xjc8xnFFHI0b
	5ZNwlDcTh6E2NOVMlrmimEaauoAYCbbCDyIbatuBQ+3wHzb4Wz88mD3gMg6e2gcuFmEAAo3wc8fPb
	KSCo+z5BFb4omYHdy4DIDghAMT2KMRh/UonnyK1+t5EFbrFyyybl5RZIvtA1O+z/56QAoeqhrESeA
	dygU6mZ2oc1ZGpIISddA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oGKrp-00HTZw-A0; Tue, 26 Jul 2022 13:44:57 +0000
Received: from mail-io1-xd32.google.com ([2607:f8b0:4864:20::d32])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oGKrm-00HTWy-Mo
	for linux-rockchip@lists.infradead.org; Tue, 26 Jul 2022 13:44:56 +0000
Received: by mail-io1-xd32.google.com with SMTP id l24so11191563ion.13
        for <linux-rockchip@lists.infradead.org>; Tue, 26 Jul 2022 06:44:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3sg0+bj79T4lUnFNDlgphNi3BOPuqpEValbE02nToJo=;
        b=g/LGzUesna7SjtItQmKFQ9pgi/BlEOtA1B2YgV0QmvX3mAhFInLBX+8yBjuv0e5gpO
         C7f8/V0bIoKSSloxlBZbMvUYGCis1a1lwyey2fMhxpeGcjg5rVLBbOYBxzWObLKep8vu
         INE0iVq7Hfc4IdtRKvjQ4GPWO/1fuxmm8Bk7Mx4n+CGihmE0HddFrlBVDFl3/WMhDjs6
         dhOnw4RmBXTyTDpCB7FgtXn1c4fRUHlc7rQhStKgi11w2l2X4qQxsnW48pYdpvWYhZS5
         VNrxKOmZ9KLYO/g53KX7tQnK3oFdLrRKTTaPNkRg+DikwLZHl9+ZyxdYuVsVbQTzrss4
         qErw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3sg0+bj79T4lUnFNDlgphNi3BOPuqpEValbE02nToJo=;
        b=7/3c7FlvZBu+0efvfLBnxFzDk4cPv0SkgPGQJ3AXolK+BU0qprLRdVH+SyVeRpPJde
         XM1pnSee6OSQMbZvR6aoPxZ2eCd9Cv7xNHIW8CQkrsT0tm/9dxrLSNGljbrjVyCriHBF
         k9dblutpgkQZ1vMZR67d7ogE7thI8rtZg1Fq8P6XrzqllE71NdX11SXEia4D+OHnXFKg
         uiaLfQ6D/64NZx+qkDC+UAi8fuYV8n9HoGX8EG7NtwfixLf8Ryp8BSnThhcKBTHg7xcn
         oZtcQADvJ77SQrxTUKUMZqdJpxQVA8RdCVthsC2FKrXfQQunR47+6Y1Bz7TQaAiMyu35
         nuCA==
X-Gm-Message-State: AJIora9fjQp0LkOmYjfOR60QFdOG/YB//WvHtM0iYyn5Nzsco5ojlS2w
	EiRAgwPCwkYeB7WvMiEfsowyzziejYHqR3vfkav6ag==
X-Google-Smtp-Source: AGRyM1uq1rM8MT8d/wz/N5sPh0/sqPAh+n6MB8ouXkjmJvHbq65SJIqtmCAxxT/s12a1j6n71R7YjbXdKZBASS571T4=
X-Received: by 2002:a05:6638:31c1:b0:33f:2450:46a9 with SMTP id
 n1-20020a05663831c100b0033f245046a9mr6851405jav.45.1658843093031; Tue, 26 Jul
 2022 06:44:53 -0700 (PDT)
MIME-Version: 1.0
References: <20220723204335.750095-1-jagan@edgeble.ai> <20220723204335.750095-3-jagan@edgeble.ai>
 <e1d57de9-060b-bd58-2cea-85f41f75e7be@linaro.org>
In-Reply-To: <e1d57de9-060b-bd58-2cea-85f41f75e7be@linaro.org>
From: Jagan Teki <jagan@edgeble.ai>
Date: Tue, 26 Jul 2022 19:14:42 +0530
Message-ID: <CA+VMnFwNqm57StGj_JyTT2TM56uD-nFjxCekEH6aKYDMhEuxjw@mail.gmail.com>
Subject: Re: [PATCH 02/22] dt-bindings: power: Add power-domain header for RV1126
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Kever Yang <kever.yang@rock-chips.com>, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, Elaine Zhang <zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220726_064454_978203_44529BDC 
X-CRM114-Status: GOOD (  14.89  )
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

On Sun, 24 Jul 2022 at 02:28, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 23/07/2022 22:43, Jagan Teki wrote:
> > Add power-domain header for RV1126 SoC from description in TRM.
> >
> > Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> > Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> > ---
> >  include/dt-bindings/power/rv1126-power.h | 34 ++++++++++++++++++++++++
> >  1 file changed, 34 insertions(+)
> >  create mode 100644 include/dt-bindings/power/rv1126-power.h
> >
> > diff --git a/include/dt-bindings/power/rv1126-power.h b/include/dt-bindings/power/rv1126-power.h
> > new file mode 100644
> > index 000000000000..f15930ff06f7
> > --- /dev/null
> > +++ b/include/dt-bindings/power/rv1126-power.h
> > @@ -0,0 +1,34 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
>
> Dual license and a blank line,  please.

Yes, all rockchip power includes (at least here) are GPL-2.0 what is
the issue with it?

Thanks,
Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
