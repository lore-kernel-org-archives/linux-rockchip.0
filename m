Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7808C43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jun 2022 11:47:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qOROYHKOVdvP2S2WAv0clGHZgJPhE6el5baPi24Yf3E=; b=iULnKzMU1MiUUq
	cjDR7Lsxv9Ms9zduaFRPCsI//UcK26MkMxZ3P1/0bsEEfvB2JhMq0v6mEyi5Viw2eM9xBGiVTS9Dg
	TjJ/OJ2AYh712RoFR34DGct/rWl5BEOsO+CpmTcIKYtU/DR9SyrYnwjOK0d6Sd1oqCnKmWlv/h7gQ
	um+7P3CYRa8BSJG0PxFcXn3N7dvRMwHwHrOopihWg2P/Fv7QYq+oo7pPvbLMQPgCLpxYCcld4gdfX
	IF/bLhFlgnz9FfdprBNeWrCfoayjpMN2sAwmXPEDPVEA4Yhz8qd9+laehNoSgEq2dns+tD+bAF11x
	v96gb1FsQBzbqu/h9u4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2ARV-007Q4K-8i; Fri, 17 Jun 2022 11:47:13 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2ARS-007Q2v-W8; Fri, 17 Jun 2022 11:47:12 +0000
Received: by mail-wm1-x335.google.com with SMTP id l2-20020a05600c4f0200b0039c55c50482so4246458wmq.0;
        Fri, 17 Jun 2022 04:47:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=/hNIOJ5hTTtx9TBs8QFTNJBtJBcEBlHU7N6Sy/oc5s0=;
        b=X1ObqiPYXvwHaBHTfpC53aI4725mpZnLSUYqGsbkxDtAMs4SkXx+FWqBU6F3choNie
         4aW+2CzHAYat3Y/BPWU2jbD3I2JnM4U/MiEmuI/3ehiA8O1U4yJXDZkvGl9wulKG1h/E
         u+Maa3POJUgr466ZCBvBwCGd8X4mXmnhe1WnjYivKYC8ssZA31vb8RzhkueEEZguFHOf
         43SzyWZLjiWxarTu4NLYpkUl5a4w/9v8mfU4yaNdas9BADfB+LQJWsfay0E1hXm90Yxq
         LDNMfqn1IfJBdkG56Bi/vI/XoJ2P/g5l+jY7/Grr1NqyFeU+waX5GEqniDkuhHY4osTk
         tPlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=/hNIOJ5hTTtx9TBs8QFTNJBtJBcEBlHU7N6Sy/oc5s0=;
        b=pk/FgA6zIl0X946DvGsprC8uklGTCrajhfrAwsvR4XAso4vbBW/qY3aVXb12dmMoGH
         sOqe1ZobZaIqzpCsncp3tnygEEg16zUH+cLCEbgzl2cTV1eK8Sf+ANUKxT4foYlj1kK4
         d8KyNay5PexlwwVhHO2ELzKkNpg7TDZtGAsA+mRnScG5xmCGtML8/XFZTWrNFKSW2/C5
         UeRr84F7FQLg5fDczLGg1N39bqQgRGiYRf0G6JsvkF2LKYOCpFurtqnAGNNCeFl92JI3
         SDv1PRzYNPj1O6GLQNNx4asm/yG0HK0xa3hJsF2X1dURbrQp0BPXzJiGncl43tOTrq4O
         zW9w==
X-Gm-Message-State: AJIora/tB6rrXM6X+dG1COt1Sqi4OOcueLMKjRSbVUaMWBLxHKIF49Oo
	IyXMgYu4FjpcNBXEWr/49LY=
X-Google-Smtp-Source: AGRyM1steUx9TNawBD0U/V5zMX16ry1ElKnP2KDoRFRBDTqD6ROfZV6NA+HSpMcHvsWQ4brp9SBfuQ==
X-Received: by 2002:a05:600c:3485:b0:39c:7db5:f0f7 with SMTP id a5-20020a05600c348500b0039c7db5f0f7mr9923396wmq.8.1655466427376;
        Fri, 17 Jun 2022 04:47:07 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
        by smtp.googlemail.com with ESMTPSA id h204-20020a1c21d5000000b0039c693a54ecsm6710593wmh.23.2022.06.17.04.47.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jun 2022 04:47:06 -0700 (PDT)
Date: Fri, 17 Jun 2022 13:47:05 +0200
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: MR <m.reichl@fivetechno.de>
Cc: linux-rockchip@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>,
	heiko@sntech.de, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: rk3399-roc-pc does not boot
Message-ID: <YqxpuT36/sjQKm0o@Red>
References: <YqxEL/pgv3zuH6aS@Red>
 <c12cc4bd-f7b8-5e52-14a2-41a0da83bb0c@arm.com>
 <9CC86176-19B0-491F-86A4-F95E670B0A66@fivetechno.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9CC86176-19B0-491F-86A4-F95E670B0A66@fivetechno.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_044711_075364_64C066F0 
X-CRM114-Status: GOOD (  18.42  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Le Fri, Jun 17, 2022 at 01:43:05PM +0200, MR a =E9crit :
> =

> =

> Am 17. Juni 2022 11:58:03 MESZ schrieb Robin Murphy <robin.murphy@arm.com=
>:
> >On 2022-06-17 10:06, Corentin Labbe wrote:
> >> Hello
> >> =

> >> I try to add rk3399-roc-pc to kernelCI but this board fail to ends its=
 boot with any kernel I try.
> >> It boot normally up to starting init but it stucks shorty after.
> >> It fail on 5.10, 5.15, 5.17, 5.18 and linux-next.
> >> When disabling CONFIG_USB, the board boots successfully.
> >> =

> >> In dmesg I see OF: graph: no port node found in /i2c@ff160000/usb-type=
c@22
> >> According to Documentation/devicetree/bindings/usb/fcs,fusb302.txt, th=
e port is mandatory.
> >> Can it be possible that the problem was that the power port being disa=
bled ?
> >
> >Indeed, I believe the OF graph error is just a meaningless annoyance, bu=
t the general problem sounds like it's probably the same thing that's come =
up before:
> >
> >https://lore.kernel.org/all/0ac6bbe7-6395-526d-213c-ac58a19d8673@fivetec=
hno.de/
> >
> >Disabling CONFIG_TYPEC_FUSB302 or blacklisting the fusb302 module should=
 help confirm that. I have no idea if it's still an open problem, or if it'=
s been fixed and you might just need to define the proper power role in the=
 DT; this just triggered a memory of that older thread :)
> >
> >Robin.
> =

> Yes, the issue above is still there. I therefore use dumb 5 V, 4 A USB po=
wer supplies  that do not react on the USB-C communication.
> =

> Markus

@Markus
Could you try the diff I just send ?

Thanks

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
