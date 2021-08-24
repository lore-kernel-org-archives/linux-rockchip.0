Return-Path: <SRS0=/gBD=NP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C0FEC4338F
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Aug 2021 17:01:50 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 208AF61AA4
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Aug 2021 17:01:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 208AF61AA4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BanCl2ozTHjo8thfyXvvLFt3WamYm9g1Katmz8nAeCY=; b=ig8sausXGjY1Kw
	WDJ2ct5sR3hCtlcZipzPSj2eQHLbT9gqlexUrpHtOWrkLscsOBdbDgU1Jn5LcQKCJHiAY8J1lRBW7
	Bu20QgPaO1oT2gTwzzjzTXc4nYEcVh4rtZUTceV1iXn433FOvfNlETdiqwaAuDZQUqOxGLo3CP27o
	gxCFu45WvAqP4XRHmfwpX0fgRFghXjj79lDDr4tOmLTHHOP+EHFTyIbuE6i9qSuR5l0dXfBoSXCey
	vwuSEoEddt28B4LmlDacbmca6VpGXr7b92UhFizkKqRzB+KBXCjA+qgPwtxvkHAxcXYl9vLF9wdwL
	FNaZbs4bY5BreIM0071g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIZo3-0044hE-1P; Tue, 24 Aug 2021 17:01:47 +0000
Received: from mail-ot1-f54.google.com ([209.85.210.54])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIZo0-0044gA-KQ
 for linux-rockchip@lists.infradead.org; Tue, 24 Aug 2021 17:01:45 +0000
Received: by mail-ot1-f54.google.com with SMTP id
 i8-20020a056830402800b0051afc3e373aso36649748ots.5
 for <linux-rockchip@lists.infradead.org>; Tue, 24 Aug 2021 10:01:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=nUUWA5CRF6HLqmKmoi7Vjo2ILY+GNb621NKyvGmJA8s=;
 b=JLqQ0O+EgZfYOeBl+b6CMoc8WY/6f+7GXEonanH1evsffPOj27KpfvEVlAbMVbMAiv
 hDnKajadxhfb+bzuhaROhx1oc5l0xffggEC19GHcBpp5udoqPm6uW0hoyP6yLDw1ve2B
 QCvK2o+fhZNneFeTCAhdZXWo18o99xrvabtkzD4j+hZRwt+2s3qwbqUqUu9JFtbaZGLh
 OFaKkq1D56MCWJl6O8ht/BVKYTK8JcfBQWuymNL01ir9VYdTvQDLWahbn9Dguzdw28zq
 4otPHhQFd2BQpKKBmBaTFVJGBRVMwrfRtq+81UDl17mxdlBWVCNT3G/Zfpp8xwTFcgtL
 bs6w==
X-Gm-Message-State: AOAM530YljwgKuGRNwjLF4CBY8yoNpZrvB2zVcGlqS64W4HHfog0AefT
 8UNeSzySsZI+9M3tygu+Dg==
X-Google-Smtp-Source: ABdhPJxk3xxIG5/F1f6fBOsunCUzkOVmpUpV1nAU+ih3BbcLVZRf59oAnpIFJdiE4ZUhjqGI5dUqUg==
X-Received: by 2002:a9d:7ccc:: with SMTP id r12mr33420960otn.350.1629824503999; 
 Tue, 24 Aug 2021 10:01:43 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id 33sm4499216ott.19.2021.08.24.10.01.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Aug 2021 10:01:42 -0700 (PDT)
Received: (nullmailer pid 630780 invoked by uid 1000);
 Tue, 24 Aug 2021 17:01:41 -0000
Date: Tue, 24 Aug 2021 12:01:41 -0500
From: Rob Herring <robh@kernel.org>
To: Sugar Zhang <sugar.zhang@rock-chips.com>
Cc: alsa-devel@alsa-project.org, broonie@kernel.org, heiko@sntech.de,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 07/15] ASoC: dt-bindings: rockchip: Document reset
 property for i2s
Message-ID: <YSUl9aqF8AP2Kb8n@robh.at.kernel.org>
References: <1629796561-4025-1-git-send-email-sugar.zhang@rock-chips.com>
 <1629796682-4170-2-git-send-email-sugar.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1629796682-4170-2-git-send-email-sugar.zhang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210824_100144_709693_0FAB2DC3 
X-CRM114-Status: GOOD (  10.26  )
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

On Tue, 24 Aug 2021 17:17:54 +0800, Sugar Zhang wrote:
> This patch documents reset property for i2s.
> 
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> ---
> 
> Changes in v2: None
> 
>  Documentation/devicetree/bindings/sound/rockchip-i2s.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
