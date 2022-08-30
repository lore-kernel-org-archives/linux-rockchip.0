Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4065EECAAD5
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Aug 2022 05:34:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UMxYbVjJyjwc8AYGTML/AoE0B32XxfN+1vCkvqlzlmc=; b=tZa/Sb7LVWP2PR
	uoVtjgc9AmWIOqGZ1GzKXf6GuQzJAt7QZ4O/UJHrQ7f9TWUwLcQf6d+37b65FNi0W8r7Z0nUjITrG
	NL8y48Kzu8HQONtrNQgKgS/7cQemltPFbH2vMSNHosNbQNx+cCZPFzM/f4ztHB1g4vnmYAlq6ZHx/
	kyd0lbj4QfoHiYqo8WzBtqLj5gnSIO1Avm155gBjXffjG2GtV/rdpd/0my7d46qC2tefBM+U/a/xe
	kUrA/Q3aGK8+aQAPOH/lvFY4FvOmjSCmsIVWBLVRk2iROfXbmllo6GQGqyxZSLvGceeYZRWnPwUDq
	ZRyn1Rcq1mTqXQHhCH3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oStt3-00EC7E-3W; Tue, 30 Aug 2022 05:34:09 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oStsp-00EC4Q-Um
	for linux-rockchip@lists.infradead.org; Tue, 30 Aug 2022 05:33:57 +0000
Received: by mail-ed1-x531.google.com with SMTP id b16so12717174edd.4
        for <linux-rockchip@lists.infradead.org>; Mon, 29 Aug 2022 22:33:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=iSQy0KuABBA4DDaz+1FIthx+BQumzv6M9MzfzutPt+k=;
        b=fzhKvRCo1IN2z5/WF0zmktc9X8/AYmrVdDTxPYjL8vW21MLqDJNdkBsaY+8WeI3F6j
         fCoMDtxn0tGAdgnndZbDI+x3tdRGXI5Joci78NVq7F4vNwj6f4d/jRBYUg0Bt/+k4n+m
         00xA+EEGk46uGisaNqjga+EzueL7QLFKnomAg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=iSQy0KuABBA4DDaz+1FIthx+BQumzv6M9MzfzutPt+k=;
        b=JZQ5HhhX1n15MPtVYlhn+TAnk+2TO8ko9yN8v+w7TSnzhiaefL3kdyuJ2xviYe70+a
         h389BpAA5bMsBUqpuowyIgYEYfpW3uhSVD/h3kffWMfDK0JazKpmeuySGhM6Q7JipmzS
         wx8UqeeyiUI64+OKFAoR80JKse4Uzv1abrzgJ4z/tpcQ7K9JuRy0hd7Irt7M+qN1L2ZY
         3DzZWVgUUHgQ1Z5kF5mxhQ+uvYmDNdK53vGsIHLXo8aGRgv5N9V0mgb/1AfitxF5sK0N
         y+kG2me3lYup+s5sVjmEuSPhCRms08BGujBEyPZtj8vOQv+zRxji8151/kFgDYVCVQRf
         jBAQ==
X-Gm-Message-State: ACgBeo05M7rqRwLdyVAuQyWpjpjrwKxC9rIvjxwenYScBnmh02I7pd0A
	3/36GR3QbL1r/lkH35VemVY6rA7w+hzmXAgiiHF2vg==
X-Google-Smtp-Source: AA6agR6YxkdEnYvmegWsKXfKaUARXyifhSTC1u9R8gdv1mZBWHTcvhaJBQJgtfmybRtD565LDMBKCgKnx5YqZaUOQms=
X-Received: by 2002:a05:6402:34d2:b0:448:9fac:206e with SMTP id
 w18-20020a05640234d200b004489fac206emr3973021edc.171.1661837634234; Mon, 29
 Aug 2022 22:33:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAMty3ZDxvaFSYpjYniXwpA6Wfyyn=c8mW5XNNUaiuqSb1niC9w@mail.gmail.com>
 <20220829210103.518467-1-naoki@radxa.com>
In-Reply-To: <20220829210103.518467-1-naoki@radxa.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Tue, 30 Aug 2022 11:03:42 +0530
Message-ID: <CAMty3ZD2QDPKwAvJWB=kTJ+5ZtcdZhcT+No9joTkvBWnrKRmOQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: rk3399: Radxa ROCK 4C+
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: abbaraju.manojsai@amarulasolutions.com, devicetree@vger.kernel.org, 
	heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org, 
	linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, robh+dt@kernel.org, stephen@radxa.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220829_223356_032280_5554F6EA 
X-CRM114-Status: GOOD (  13.78  )
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

On Tue, Aug 30, 2022 at 2:31 AM FUKAUMI Naoki <naoki@radxa.com> wrote:
>
> sorry, I noticed I sent previous email to wrong thread (v1, not v2).
>
> > > > +&sdmmc {
> > > > +     bus-width = <4>;
> > > > +     cap-mmc-highspeed;
> > > > +     cap-sd-highspeed;
> > > > +     card-detect-delay = <800>;
> > > > +     disable-wp;
> > > > +     pinctrl-names = "default";
> > > > +     pinctrl-0 = <&sdmmc_clk &sdmmc_cd &sdmmc_cmd &sdmmc_bus4>;
> > > > +     vqmmc-supply = <&vccio_sd>;
> > > > +     status = "okay";
> > > > +};
> > >
> > > does card detect work for you? it doesn't work for me. I think it
> > > needs
> >
> > Yes. it is detecting for me. I've booted from SD. 2022.03.04 V1.2
> > revision board.
>
> I have same board, but I'm using eMMC as boot media. do you have any
> eMMC module?
>
> what I tried was inserting uSD card while running Linux on eMMC. it
> didn't work.

Here is booted from SD with eMMC inserted on board.
https://gist.github.com/openedev/85fb939664b6f0803c9ce02c5b275167

Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
