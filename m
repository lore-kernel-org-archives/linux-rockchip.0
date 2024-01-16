Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C018AC4706C
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jan 2024 11:20:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Vkzp66iNDeUEMoTTlaec/wF7Um/lLPqq0wgsV23bJ6w=; b=Bm2pQwOeeYC9lFX7MTGOEVh42w
	usyNNST/nAnj8X6U8A3IvQDzUR9OEwjL4MJhG3dAxMixg267L6R0OivbSyekIjdtEKHLrq/80yzIs
	dY1wpsDS5Qqcz+d69CKAOXVbflf484nlsITTFPFe7PFqAFZ0StGYFltqaa9BtfDZ2JcFD5DYUfRYj
	ieTVtMdKE9qznuefmwb7lodD6ULOSQQXnKo3G3RTSDmXyExsHguvHYE2kG9ZSeyjD1xKtXPE641oR
	FYLNNQjo4H8y0YQXA4jbg/Pl2IDf892rYdKPaJcyR4jKMzOOz3TxW5/bDbvPLMuQk+xtf4uWB2T70
	ttQ+XojQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPhUB-00BrsZ-0L;
	Tue, 16 Jan 2024 11:20:03 +0000
Received: from mail-qv1-xf2e.google.com ([2607:f8b0:4864:20::f2e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPhU6-00Brlr-0z
	for linux-rockchip@lists.infradead.org;
	Tue, 16 Jan 2024 11:20:01 +0000
Received: by mail-qv1-xf2e.google.com with SMTP id 6a1803df08f44-67fe0210665so55824336d6.1
        for <linux-rockchip@lists.infradead.org>; Tue, 16 Jan 2024 03:19:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar-org.20230601.gappssmtp.com; s=20230601; t=1705403995; x=1706008795; darn=lists.infradead.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AS3BBwgYanBUfBnpxKNvwfAfy1OJUBRnEQmNzkGmJ1s=;
        b=LHHENKyzoEs6fAMgJugFGVUbwSH9HULI/hIoHawqrbBw2xmkO8BuYGdoiJRiq10l5m
         autJVHqZW2u2qjEeJRcPXoC0cjCJgbobakKS8VoMQK2euNb1n/6qvGsaZdMc4X330nf1
         T3ZhWeUFkCl8IswmbH7IMCH11MRvovoKh0AkBOYcuroZa9JL7oIUtJ4n1SPCqxXXklIE
         ry1h7cYCe3Kvd1+UsNDz/unKukzJYlQSPV/q4hidfm5xca+T/f0VUU2X+miTWX7Oy63H
         BXnVJhFpcmGHZZ1CkOEJYI/tkYkqB923KZuVQuqhm91MZ36j/q2U+NbGi4F8ZBxW0lDd
         qerQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705403995; x=1706008795;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AS3BBwgYanBUfBnpxKNvwfAfy1OJUBRnEQmNzkGmJ1s=;
        b=TqcxzYax5UC5mQx4t+CAv0K0S8B0wjEOUOO1QObFQxpEAFbN2wLzXIbgiJvc9vSqV0
         dtmxLHXd2slWiDPVdCNvSDZbuIiv0dDoPcINTfy/qHssBIJ/Rf+zpTVwQCN2bb+p4Uum
         CrzMeY7ZwKCSodcWV/q3edGmm62ddXWfF2Ep1AAcEzVIQlMRNmMDfTv8MeDmBUiPZ+VE
         wsgEEC4qhmWSEgcWm8VyEclN6ascJt6O96xePYRLzpj+mz3AlVw1+QqFJ/B+8U/n5F6W
         pSTlTcum1P/bGEtzHPP1X7HIcgOA0RfWLqXglA/uVUVm6JvIbAXGY+iKB73LtNxi1tpw
         L50g==
X-Gm-Message-State: AOJu0YyoUZYoCsCJKXrYuKTUF4+uaQjtxhnnk7Yx84FLolqU1Ai/Ocfb
	bwo+W2RGslQztgi7r06cAk2HGzE9wjJ0LkZp/icJj+iX3RT8YQ==
X-Google-Smtp-Source: AGHT+IFrGX+QlGcwiMcvFXBVyO7eiX4wVISfsMNIemyKgmDmI8h7UYeLiWdxotNRUa1oCcK60IlwlDmzM+TIfP+BjPM=
X-Received: by 2002:a05:6214:31a1:b0:681:562a:16e1 with SMTP id
 lb33-20020a05621431a100b00681562a16e1mr4955020qvb.102.1705403995478; Tue, 16
 Jan 2024 03:19:55 -0800 (PST)
MIME-Version: 1.0
References: <20240116095439.107324-1-vignesh.raman@collabora.com> <20240116095439.107324-3-vignesh.raman@collabora.com>
In-Reply-To: <20240116095439.107324-3-vignesh.raman@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Tue, 16 Jan 2024 11:19:44 +0000
Message-ID: <CAPj87rNKLPETVGzpXaZtQwVGauH2V-fCuFGN4zrOE0nH2R+F+Q@mail.gmail.com>
Subject: Re: [PATCH v2 2/7] drm/ci: mediatek: Rename exisitng job
To: dri-devel <dri-devel@lists.freedesktop.org>, 
	Helen Koike <helen.koike@collabora.com>, Dave Airlie <airlied@gmail.com>, 
	Sima Vetter <daniel@ffwll.ch>, David Heidelberg <david.heidelberg@collabora.com>, 
	guilherme.gallo@collabora.com, sergi.blanch.torne@collabora.com, 
	linux-mediatek@lists.infradead.org, 
	linux-rockchip <linux-rockchip@lists.infradead.org>, linux-amlogic@lists.infradead.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_031959_324136_34C762A1 
X-CRM114-Status: GOOD (  11.36  )
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

Hi Vignesh,

On Tue, 16 Jan 2024 at 09:55, Vignesh Raman <vignesh.raman@collabora.com> wrote:
> Rename the name of xfail files for mediatek (mt8173 and mt8183),
> to include information about the tested driver and update xfails
> accordingly. Since the correct driver name is passed from the job to
> test gpu and display driver, remove the check to set IGT_FORCE_DRIVER
> based on driver name.

I think something is still wrong here, because I can see that later
xfails updates are setting expectations on kms tests when we're
supposed to be using the panfrost driver. I can't tell which branch
was used to run this, but you definitely want to look closely at the
job logs and results to find out what's going on here.

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
