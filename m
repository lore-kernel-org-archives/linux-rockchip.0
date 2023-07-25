Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9ECAAEB64DD
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Jul 2023 05:44:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m9pU+0PmscvbBbdVd5nLPR8gNmYBSO47mXsunQZs7FE=; b=zm0IV47xRkjJCY
	w3s3plYMHnYvWqAapmyILVYBvJFZt2OqGsOINbhCGQsMyte78ZaBc0YB7OGiSzhcLZ7+Fsms/xC3D
	EVSEJSLoV4jm1dTNuCYZjw7ylkThOwSQ/5+KiyInjMP3RzNG2jMFUR98eULKPlMr1jHTiaUdSLGoe
	PVZ4DXgT/FP2nncbEq2Jl49RHzyIBMUMrys97bfsU9rWRyHsTecBt8WPel35N36Oc70i5/zcVTwMo
	uHYv6eB84rxpHD00+SAzUKPasdfIhTBjKCqOpj7ka2TI+Un7ehf9GUfbN1KToe6YLQ5p3BpBkoNZd
	lPC5vFPoPwE4Miul9E8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOApx-006K7t-2V;
	Tue, 25 Jul 2023 05:43:57 +0000
Received: from mail-pg1-x535.google.com ([2607:f8b0:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOApu-006K6x-0v;
	Tue, 25 Jul 2023 05:43:55 +0000
Received: by mail-pg1-x535.google.com with SMTP id 41be03b00d2f7-55adfa61199so3658165a12.2;
        Mon, 24 Jul 2023 22:43:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690263831; x=1690868631;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=sWpeQEXkxx6moDjPwLRjO33o1MVNetkxDTfjChMiebs=;
        b=EvoK59qtrucIfirbBPE8V2OhcYmt3T48AT1joPDN1D9Qu+qEE73r4/cc1daLi60Ydu
         W9OjfU6BEWgE9r5RajS4qZrLP5UQcsIxhFCeTxvvj0fepgYJ05eb82mpkxo5rssbsg9M
         O9LnhOGLbT6aHlqvHX3rkQ44kG3WCtwfmRzCiu7oGkCj07RQcLnNb+pzVNlsMY8zP+Ds
         mmmnbup8yyyj2xJCK7RK0HJ5nRTGUuSj/K4D4w045x0iMMuXZ7Mr3RMJyMpbV6609UYf
         pOMcY58xYhu9AUaZv+QAuzNr1EBwFmXyMcKCqbdXlcHjE3J5mOBlAS+i5o6bXO6qiebk
         Q4lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690263831; x=1690868631;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sWpeQEXkxx6moDjPwLRjO33o1MVNetkxDTfjChMiebs=;
        b=Xn7rwZzIT/+VoccPs0BQYHU2f8wct2Ov7HvAvgqirE30y7DTQ1x60e3R0hxsbJ+SUp
         i/jOLodeY6fbL7AD1yUibB1yYyB2yKn5GlXYvZF84b8UPHiLtSzV4fmkh3JmcBROobDw
         Cp3VILGrfxn5LQS+C5bJDpUhjXyEH9HqThcHmN4m+Uf2Uum/DauSombVjWhTjW/gALq4
         ixxLQi115i1Ovcd9LLCnaVt9WqODu0W/0KvsEtkUfDIaNT+/7y1/hTur5P5gIzHK+gpQ
         daCn9ppLeysdEqIaxlfGiI1A9ty52AmiNAcXg+Gp6lwRFA+KxE2VLsTSvfsDSxq4OjIT
         A2mg==
X-Gm-Message-State: ABy/qLb3jyiXjfJ5+YO8EEL01pNXR1auDKu3hnPejdfzXljpPnCp7sZw
	jYJbMeTbu9uViN7kV//g/QUVq4PegUo=
X-Google-Smtp-Source: APBJJlH1oBzcBGr7tDO/0eNp6ihGNRlQs70V0KM9UGizlqp6a736sZfqH/REEYad9RTEhLNxX62GsA==
X-Received: by 2002:a17:902:7893:b0:1b9:d961:69b7 with SMTP id q19-20020a170902789300b001b9d96169b7mr11745734pll.10.1690263830757;
        Mon, 24 Jul 2023 22:43:50 -0700 (PDT)
Received: from zephyrusG14 ([103.251.210.209])
        by smtp.gmail.com with ESMTPSA id jj22-20020a170903049600b001bb54b6c4e4sm9961732plb.147.2023.07.24.22.43.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jul 2023 22:43:50 -0700 (PDT)
Date: Tue, 25 Jul 2023 11:13:43 +0530
From: Yogesh Hegde <yogi.kernel@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: robh+dt@kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-rockchip@lists.infradead.org, ivan.orlov0322@gmail.com,
	skhan@linuxfoundation.org,
	linux-kernel-mentees@lists.linuxfoundation.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Fix Wifi/Bluetooth on ROCK Pi 4
 boards
Message-ID: <ZL9hD2db5xbtpmLu@zephyrusG14>
References: <ZLbATQRjOl09aLAp@zephyrusG14>
 <169022470428.2905604.14514573882052237409.b4-ty@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <169022470428.2905604.14514573882052237409.b4-ty@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_224354_325381_14C1E307 
X-CRM114-Status: GOOD (  10.99  )
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

Hi Heiko,
On Mon, Jul 24, 2023 at 08:52:37PM +0200, Heiko Stuebner wrote:
> 
> Applied, thanks!
> 
> [1/1] arm64: dts: rockchip: Fix Wifi/Bluetooth on ROCK Pi 4 boards
>       commit: ebceec271e552a2b05e47d8ef0597052b1a39449
> 
> and added the "Cc: stable@vger.kernel.org"
> 
> Best regards,
> -- 
> Heiko Stuebner <heiko@sntech.de>
Thanks and my heartfelt gratitude to you for fixing and applying the patch. 
I am truly grateful for your support. 

Due to an increased workload and pressing commitments, there is a considerable 
delay in my responses and patch submissions.

Thanks and Regards 
-- Yogesh

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
