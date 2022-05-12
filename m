Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0E1BC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 May 2022 11:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z4d0drcJCPJWk7Sd88yfyIVv8aW72gf4+/WuzXv6YvA=; b=ev4KvZME6w/Y1N
	Rs4uNlbOL9+H0bGUgDy6i63dA23/lVlBCT1pFKmE3iACd4rMHr3EMaoeMCQYWeDnB77E572k4vbRh
	5gnbRizIOT1imwX5znVCXWf+3Fghr/9yQHc4AFAAGchfrv7+RsPMe4Q1bsgbHs5e1Iavum0cwgHzh
	XhlLa6vHzTQo3rWa2JxU77c8pvWMAnlYXWaj2VVpfvq7NCocRmPGQR6E7o9t9Q6J6hr/0564la1L3
	fW7vkAgE86RJVOHINQAB53I+RHPKyyL8dTbQx+qMbnftDPA4vcvPA+PAA1dK+Opc7krRuyz4VEpZJ
	fb9o50u22bfMQBvJRhxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1np6jJ-00BVs6-QN; Thu, 12 May 2022 11:11:37 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1np6j8-00BVqK-FY; Thu, 12 May 2022 11:11:27 +0000
Received: by mail-ej1-x629.google.com with SMTP id kq17so9514464ejb.4;
 Thu, 12 May 2022 04:11:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mU7DjZ6YdE5ZE6KKWVtlZVe9sgVvfea3+yMKl+vOnVo=;
 b=Jz3TNB8Ix/xBZkbtD4X/DUmSq4yrvweuymYmhr87xqoKK5IUcCStHAl/E63TFW9yig
 lcBfVAgG4F3Y70mg4qNIlVfbSyle/W6kkfNPBn3V53mF6wXoUvnWuh2G1uaOVPh2pNVZ
 29PL1PqFKJ5Q17EoiAxRowAF6RaaQR7bHgXdonm7011jncH3ynSsle0eIJlA38q6o/gw
 S1P4+n0yOKA0iDNxa2RRjZZt9ImKvr+7LHeXFbgqRiKSRfKwe7SKImD52XXg0ib0zhG6
 D3sR9XXM3oS9fT4pT7hGWd8NX+8ZgSsFY/YN26HVof+qfy6t65+FRNetsjng4OXJYS5y
 tVjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mU7DjZ6YdE5ZE6KKWVtlZVe9sgVvfea3+yMKl+vOnVo=;
 b=WYATpLpSp+7Sy2pODtihEM98oLF8qYACxvy/B86fMWbJNMZcKoj1LC1BFYpAPwbYzg
 Qt44TItzeXMKBjTd+JJ+jn4PjuynyXevwstgoIOJv8yDvjN4yJGI5FV+oa2fjwPSknUx
 OjgtxSuNBaOaEvKkoSWQwnCuw7+whhGuTvEeXbP4dRvFA+UL0z4j5MuxMsg9yNC1dfZu
 9cUPDgM836GAMkCHfk5mDijCTAgU6PLc+qPQAcAkgmHF2o3BbmvumFoPN3Hm7dulUkO1
 wEODqgfHfLxSFP5NbGxEuE9s11RngSQfGRBe3D16QodeWccr4dJAJaj5xD10whHDPjtf
 X70w==
X-Gm-Message-State: AOAM530WdvrnmBehd4Tby3ddlDEMrz9DwWh51CpVSsI4OIhJCgjhxiOT
 YlWOffPb0XcLEno8/sP9chM=
X-Google-Smtp-Source: ABdhPJyAzjR5uVZuKuZsiWODeTC6oFfxt4BJFSeN9J6FT/+zjzv4PUPDOISmQAZEk6erZEgvpK+x2A==
X-Received: by 2002:a17:907:c28:b0:6f4:2a80:f355 with SMTP id
 ga40-20020a1709070c2800b006f42a80f355mr28999239ejc.101.1652353884087; 
 Thu, 12 May 2022 04:11:24 -0700 (PDT)
Received: from archbook.localnet (ict-networks-195-176-112-051.fwd-v4.ethz.ch.
 [195.176.112.51]) by smtp.gmail.com with ESMTPSA id
 y17-20020a50f1d1000000b0042617ba6380sm2436781edl.10.2022.05.12.04.11.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 May 2022 04:11:23 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Cristian Marussi <cristian.marussi@arm.com>,
 Etienne Carriere <etienne.carriere@linaro.org>
Cc: Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 Liang Chen <cl@rock-chips.com>, linux-kernel@vger.kernel.org,
 Kever Yang <kever.yang@rock-chips.com>, Jeffy Chen <jeffy.chen@rock-chips.com>,
 Peter Geis <pgwipeout@gmail.com>
Subject: Re: [BUG] New arm scmi check in linux-next causing rk3568 not to boot
 due to firmware bug
Date: Thu, 12 May 2022 13:11:22 +0200
Message-ID: <6587375.6lpfYT6tjA@archbook>
In-Reply-To: <CAN5uoS_MgBiTVZCRSZyYCH4cnUZD_bHj2+mZu661bFV8TKWScw@mail.gmail.com>
References: <1698297.NAKyZzlH2u@archbook> <YnOEwuuyO2/h7c1G@e120937-lin>
 <CAN5uoS_MgBiTVZCRSZyYCH4cnUZD_bHj2+mZu661bFV8TKWScw@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220512_041126_563458_2C8D9A62 
X-CRM114-Status: GOOD (  13.81  )
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

Hello,

sorry for the late reply, completely missed that there was a question
for me in this mail.

On Donnerstag, 5. Mai 2022 11:40:09 CEST Etienne Carriere wrote:
> Hello Nicolas, Cristian,
> [...]
> 
> Indeed the firmware implementation is wrong in TF-A.
> And also in OP-TEE by the way:
> https://github.com/OP-TEE/optee_os/blob/3.17.0/core/drivers/scmi-msg/base.c#L163-L166
> 
> @Nicoals, do you want to send a patch to TF-A, or do you want me to do it?

I have no experience with TF-A, so I'd prefer if you could do it.

In good news, Rockchip has confirmed they're preparing to release RK356x
TF-A sources, so I'll be able to port the patch over to their sources once
they are released, if they don't already apply it themselves.

> 
> I can fix the optee_os implementation. I'll tell you when I'll have
> created a P-R.
> The fix is the same for TF-A and OP-TEE.
> Proposal from Cristian looks good to me, maybe simplified:
> 
> ```patch
>          memcpy(outargs, &p2a, sizeof(p2a));
>          memcpy(outargs + sizeof(p2a), list + a2p->skip, count);
> 
> -        scmi_write_response(msg, outargs, sizeof(outargs));
> +        list_sz = (1 + (count - 1) / sizeof(uint32_t)) * sizeof(uint32_t);
> +        scmi_write_response(msg, outargs, sizeof(p2a) + list_sz);
> ```
> [...]
> 
> BR,
> Etienne

Regards,
Nicolas Frattaroli




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
