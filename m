Return-Path: <SRS0=A1uQ=QD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 28070C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Nov 2021 14:48:21 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EB5C86152B
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Nov 2021 14:48:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org EB5C86152B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=vanguardiasur.com.ar
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZNzhombSY/I7EY/f76+wMwrIPaFuXb+3WAp+KmDXGPk=; b=sgX10e4iVkny8h
	3Azwgkg/576ffhrK1GAO0rZxbl9tqmwAauPlnYUgngEY0AGVBi93Q1ReTMkjqLetbrtGnodDgJpit
	7wRXEc2w8Hgap/f/+9QkXKycO85/N/v7uROCPF2GKCyGYYyey9x78IVp8hikaInkq+dwhPXqRmdR5
	pG5CND9uNd2WTQ/d6ToFZo9zoZ+zdSjGP9rvSodfpOpJj0yD3jUbZhNGxQIi2e8rkdDT5JVca1GW/
	o3CdvOohsknqx76Ury2dpK2oILyDz9vWQjoO+QcBs7E3zcmvPh00orb7dB1zofA299IXh3mYiopU5
	6KYzy+8blnQBeJQuMvfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmzku-001zmy-QS; Tue, 16 Nov 2021 14:48:16 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmzkM-001zZR-1d
 for linux-rockchip@lists.infradead.org; Tue, 16 Nov 2021 14:47:44 +0000
Received: by mail-ed1-x535.google.com with SMTP id z10so62492026edc.11
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Nov 2021 06:47:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mgaqjk8sgzbSZfMvDCSzKXjRpwlwJK3+PAYiZNEuOBE=;
 b=nV/7kFKtbhV4ChQ9ucaq7lglpxHn2UyUeU00RAxwvn0aQn9ywvmJO1dJCH2H3rlnT/
 RPoVFac2heZmhtOPq+gwUaBv9O6eqNaFfyIczRVZI5bg3d92EZYiHpEf7uwk2pAHpVPd
 nIeRMcDdxUZr4zE1jkv6OMYH0zk1YjndhjSNI/4Aj3t2l3q5XcWVseL9+06iStE9i+W/
 Go5Bmj+H6j0Gnml6h6TttWRId+7o9bPnnQTul5yNBmwDKVxY2Tu5sI3iFP+F6rXQqXuI
 y3Vjz6ozUASBDVNrCXCMtODVVvyRn1WCL69AnOEI4TCcrA2Ii4tYtG0jUFsLAOm8ty2V
 Uc1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mgaqjk8sgzbSZfMvDCSzKXjRpwlwJK3+PAYiZNEuOBE=;
 b=gczMTqZ1S3GnPdS8IVmFpMF40hP50hXOj0tYU/26uPrFiRqECInwosf93ElcGqOn9+
 3m0+A7/iFwnduF7EfEpEzYEv+qK/DkJbR+67lZrlInjN1IfxalcdP3uiBqH2x0YniXwH
 lPC3ecPoSfDe8qoOdQ1FyBhZ0ZuXHSk5GMT72ECXvufMhD0sNoFBp+DTuj1n2VfwiMYs
 mGTPBFlVja90qD/R0v8FjecAFR7iLj1ECNr8vCByJEaeRId4SBcN0w3/A+ryyk82FTzE
 RMVCvEumTgkbZSFkKObkNe5peWfRKxxrYbWQStr0DbftK7E+EVQmk3pS5Ht1YuxjEkAH
 AlNA==
X-Gm-Message-State: AOAM533rNoPE/IxDJUBQj+yEPoxw9iwwlT2rJ4wAMhXaKWqaG/oiBMqb
 8HEldRKGLWmrMHfYUxD16eyIA2NMHAiMWKeM3m3xtA==
X-Google-Smtp-Source: ABdhPJxz70hgLYrABSLSFXH5Gg+bcgsU1RfiTzsk+WCrJ+nxltCEmGAkIEe4gDw2GOEMoqO92TBYbIsiqbdWyf4FlJ0=
X-Received: by 2002:a17:906:3b84:: with SMTP id
 u4mr10651360ejf.310.1637074060018; 
 Tue, 16 Nov 2021 06:47:40 -0800 (PST)
MIME-Version: 1.0
References: <20211116143842.75896-1-andrzej.p@collabora.com>
In-Reply-To: <20211116143842.75896-1-andrzej.p@collabora.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Tue, 16 Nov 2021 11:47:28 -0300
Message-ID: <CAAEAJfANEficRLg2JCvOmv_pv9j9tEVPPsph4n4TYkeBjeUWiQ@mail.gmail.com>
Subject: Re: [PATCH v8 00/12] VP9 codec V4L2 control interface
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Cc: linux-media <linux-media@vger.kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 "open list:STAGING SUBSYSTEM" <linux-staging@lists.linux.dev>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 Boris Brezillon <boris.brezillon@collabora.com>,
 Fabio Estevam <festevam@gmail.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, 
 Heiko Stuebner <heiko@sntech.de>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Shawn Guo <shawnguo@kernel.org>, Collabora Kernel ML <kernel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211116_064742_314671_76C8F193 
X-CRM114-Status: GOOD (  18.18  )
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

On Tue, 16 Nov 2021 at 11:38, Andrzej Pietrasiewicz
<andrzej.p@collabora.com> wrote:
>
> Dear all,
>
> This patch series adds VP9 codec V4L2 control interface and two drivers
> using the new controls. It is a follow-up of previous v7 series [1].
>
> In this iteration, we've implemented VP9 hardware decoding on two devices:
> Rockchip VDEC and Hantro G2, and tested on RK3399, i.MX8MQ and i.MX8MP.
> The i.MX8M driver needs proper power domains support, though, which is a
> subject of a different effort, but in all 3 cases we were able to run the
> drivers.
>
> GStreamer support is also available, the needed changes have been submitted
> by Daniel Almeida [2]. This MR is ready to be merged, and just needs the
> VP9 V4L2 controls to be merged and released.
>
> Both rkvdec and hantro drivers are passing a significant number of VP9 tests
> using Fluster[3]. There are still a few tests that are not passing, due to
> dynamic frame resize (not yet supported by V4L2) and small size videos
> (due to IP block limitations).
>
> The series adds the VP9 codec V4L2 control API as uAPI, so it aims at being
> merged without passing through staging, as agreed[4]. The ABI has been checked
> for padding and verified to contain no holes.
>
> [1] https://patchwork.linuxtv.org/project/linux-media/list/?series=6393
> [2] https://gitlab.freedesktop.org/gstreamer/gst-plugins-bad/-/merge_requests/2144

Due to GStreamer monorepo, the MR has been moved to

https://gitlab.freedesktop.org//gstreamer/gstreamer/-/merge_requests/1012

Thanks,
Ezequiel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
