Return-Path: <SRS0=aLnl=J7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4920C433ED
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 May 2021 12:03:25 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8B46F613AA
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 May 2021 12:03:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8B46F613AA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q87RMEMmyAJEUH/zadTf+rhUeP3qVECjnyCQMMhgEBA=; b=mtWCMNgrdi464X
	+SYkeRpmH1GPluReT/LSb09H13q0hJ7fFCdjNpc8KE03uBxgIZlLpgxpOo7w5dd84RXWbzWL6OOZk
	R92zOLvwn0BVzpC5BPGtxL3mWHqRalEs9uKi2X3TpDiwtAE2qhYw9cNZIeiXUxHtYcNQMNe7k+7YM
	2vw169e9Z2PlxAE/3RyqOBtXPjzMttjr1gthooBYWo1gPvlcSGBXgnm1y1cKbXmYUio/K5jstbl1c
	w1FdD9PLCNmOqCeTsnTxURBTzvDdtH8JMcjlCrXA0ApyPt4r56iRLSQsTyr4tYT/5/oqpb7oZisIO
	SgSq9h8BqcyrAqrOD0+g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldtlo-00G9Lb-NP; Tue, 04 May 2021 12:03:20 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldtlm-00G9LO-N2
 for linux-rockchip@desiato.infradead.org; Tue, 04 May 2021 12:03:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=0NQ3MxerAvkWC6zK3NhV+dHLrT6/5kHmGE1fwXLZAqM=; b=SZd7LCMLq0HFTJ6HBMONWdwgVa
 SVE+Snp8JU2cWCi2jV94FxKCKATWCch2KtqJJREf7Jpd/HJ2V56wii+QuiDz2sszZqR+b3ML2XgJ7
 4OLi5miB/Hifos4sVN1kS1XUVXoBxwH5neCdEvVAfoYqrX0gEHkg8isaMFYoeoOWz2oC2mLZ9jxD4
 2tA+oQEvcJUTyFxweQ+haMwf5ppeLdR5D5SCFIwu2t0KQ8TxtTOkDVi4+jHSPbHy3HIP8EOp2EA77
 lzb0g6fd0hejAnomeV7gsaNENEtxHhCp51mudnJVWaUnF3Cmkejkpazg8yMZxNSTxsLYy6f8pn8ri
 3NzOHiiQ==;
Received: from mail-ua1-x932.google.com ([2607:f8b0:4864:20::932])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldtlk-003x3b-2a
 for linux-rockchip@lists.infradead.org; Tue, 04 May 2021 12:03:17 +0000
Received: by mail-ua1-x932.google.com with SMTP id 33so2945652uaa.7
 for <linux-rockchip@lists.infradead.org>; Tue, 04 May 2021 05:03:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=0NQ3MxerAvkWC6zK3NhV+dHLrT6/5kHmGE1fwXLZAqM=;
 b=FkpRK+jEf7isXI0Qdtak7RrFHk3ZHt8kM5lmd2REFZn8qfSYiUgITWQQM3MzCVpWx/
 Tf85N+8FguZJ3g6gkDnb8aw4dIPFRmpLaWf+ar8JgM/8YNwCfmHAtP8m2Pi4lziwpnyZ
 2tq4rf6kfn+ACrhE7Lq2rmzQa++95832bgvGyIPwCxEN/NqjXqjL8rkxNOkVbjJIR7hQ
 9i6vFEs4I7SjuyANvtBDCPWVrLzbk7A+y1jk65bFW8W9xVG+2Xc7SY0cKiT6GVpkwptC
 u66Ep3zlGBhgazxWCjjd4w4V7+ITY6iGRgPF+rLtfbSeisygr9SurCyCynxkYJMi9N2V
 NjKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=0NQ3MxerAvkWC6zK3NhV+dHLrT6/5kHmGE1fwXLZAqM=;
 b=li2AeqnTn78NrxCLUSfemnP39u910EmizXnvP5TUS0uc5AZ9bDhmQkRYDf4Ys0qscc
 +zNmrkFAtnei/ZRUXJJWwX3ygKF1zg4vAfiKbE+tNzqKq2K7cnvHFPVRQB+/tT9PWd33
 8XVI/AOHWg2IA9QfAOCIc+suvC6W2sJrbOKA7aRzRocuTf+CPPBWb8/NGIt9k/+wkm6R
 Pfs47iYCr5zNaLHbcBhBQifzfcLN9LNo1XF8ixJCvVgmWFXsMySQNLkpdGYRi3tsLVZE
 wUSrO2rBU0XZnnGyJmyrIJj7Q3fQZ1TOIOPa2R4VKNVfS7WZa4pTx17rSh+o2N/b5UH9
 NxZw==
X-Gm-Message-State: AOAM533rCPnDu25QPmKRlWBx1ht6HEJ1FbBLalzfV4vaLyT8xe5znp4i
 G0MgIz5sIHBWFCZM3Eg48impbyVE2ldomSVLcBQ=
X-Google-Smtp-Source: ABdhPJwolUHKgw8s5TS7v3bK0fvyUEvgy0j1O2UMeWhWHwzjOALlPvZZe1ZltFvtzTTZ34NcfqHT+RU+6Jx+d2/+28Q=
X-Received: by 2002:ab0:3157:: with SMTP id e23mr19059785uam.106.1620129793193; 
 Tue, 04 May 2021 05:03:13 -0700 (PDT)
MIME-Version: 1.0
References: <20210401144336.2495479-1-emil.l.velikov@gmail.com>
 <CACvgo50-fKJk_EpY-G_SGes6-FUs=nAouzBmSN-CYgMTpoeN_w@mail.gmail.com>
In-Reply-To: <CACvgo50-fKJk_EpY-G_SGes6-FUs=nAouzBmSN-CYgMTpoeN_w@mail.gmail.com>
From: Emil Velikov <emil.l.velikov@gmail.com>
Date: Tue, 4 May 2021 13:03:02 +0100
Message-ID: <CACvgo53Mkvx8n8RQ4BRCNWgb2wBWhyn8A2syYzHmuv0eJ=eChg@mail.gmail.com>
Subject: Re: [PATCH v4 0/9] Microchip SAMA5D4 VPU support et al
To: kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>, 
 devicetree <devicetree@vger.kernel.org>, linux-media@vger.kernel.org, 
 linux-rockchip <linux-rockchip@lists.infradead.org>, hverkuil@xs4all.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210504_050316_150858_5B57920E 
X-CRM114-Status: UNSURE (   7.93  )
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

Hi Hans, all

On Wed, 14 Apr 2021 at 11:32, Emil Velikov <emil.l.velikov@gmail.com> wrote:
<snip>

> Is there anything I can do to move the series forward?
>

Based on the Patchwork tracking [1], I suspect that Hans will be
merging the series.
Although if there is anything I can do to ease things, please let me know.

Thanks
Emil
[1] https://patchwork.linuxtv.org/project/linux-media/list/?series=5041

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
