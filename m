Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0145AC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jun 2022 16:39:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uOjKpR9GfW0CdPQUgvIRUqMbrLy+o05jqcbxIevB/kM=; b=HU68tjRJ/z9lyW
	h9KBvPmpgcNgrZ3UebbISD5QI8h0WRldcmi65yHqXQLrPQiQfHHqaFVZWzVYI+g+BHgOnqpdRjjGi
	jF9I4K7JT9ZJju/HF/ajSaXxlbbE+SUm6ooGaXmviHAiXyK6IUFKW/bBlDS+RZNbv4gmDkTFvDiz7
	5Ivw/lrRsWL7cM2a99Zp0vl7V55/yWL3EbgFb7vRuSsBeM2fDVhEOGkM8ZNM0L5FBxdc6atGlFEQx
	2HAjCTkan/MZ0Et0R3mwtTUaOMOxsj905sWepmoCR/XO+vxjTnK+LMybCmJLWn31hS8ZQKV+dvt94
	VSvqPhBfMeqbhmptoFGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzhfT-008xzE-NK; Fri, 10 Jun 2022 16:39:27 +0000
Received: from mail-pg1-x533.google.com ([2607:f8b0:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzhfR-008xx6-EV
	for linux-rockchip@lists.infradead.org; Fri, 10 Jun 2022 16:39:26 +0000
Received: by mail-pg1-x533.google.com with SMTP id y187so25292089pgd.3
        for <linux-rockchip@lists.infradead.org>; Fri, 10 Jun 2022 09:39:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=256cAUtVkFagDS/yqIZzb58j3dk1nOGs4ItV0B+B3cI=;
        b=D3zV7Y1IWSVTJVokfED/63D/2j42lBd46GeSwVKGFKBdfoXZEHxL3cr6zYs0RngV7D
         I47cqKiMrBoDtuOweVBbjjvTV2UimiCGImI6tAQad8Zac33GT/Umx8ULdOgXDKsfcL24
         cfi5tdK4vzvNmxLc5iiyEZjVNjGk7pOSqAi9M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=256cAUtVkFagDS/yqIZzb58j3dk1nOGs4ItV0B+B3cI=;
        b=CNLhgRq21L19iGTO7FJxjz+zHlG99QKBB3TkqpN8yMHdnoq+cVNygtZrSNsSA0bHHs
         VppiM2Zko+A6mX8AKVU1Pl4OCrRxdGR05tcASHnxHwgbMUSdyggfWCUKKO5smX6NKW/o
         5TpncBkUiIQwKKgeuD/XCVDGaJ9/UkVPXogxDhQp/HKv7K9gsP2L1bIEcv/ywCLtOWiQ
         PQ8FsNXhJ4tXYi0v/vuZ6Dn1fpBb+qTRka+T1IXwvbD48gqnbU4d0bg8u6BBIKeb3gkV
         tp+xNM5NLn35U4R2Xf1DBIVUUR6CUeEHR/eLj2vlFW+z0Ebkz28yTEMynoLBEgV/e+O5
         5LLQ==
X-Gm-Message-State: AOAM533A8dBeXtzUXIXkNXIR8UiHYi7ZK1BGy7zlS+7sNf54kO0QOa57
	vtCCDGu0VfbZ4X+M1DR5zV9x7A==
X-Google-Smtp-Source: ABdhPJwxtPN3zU9xrzQM+6wrSyNRdmKkl7p2ded9MNwUAam/BDGtr4NWYxTixwxl9D0Td1pz01r6/g==
X-Received: by 2002:a05:6a00:b41:b0:50d:35fa:476d with SMTP id p1-20020a056a000b4100b0050d35fa476dmr47102208pfo.33.1654879162018;
        Fri, 10 Jun 2022 09:39:22 -0700 (PDT)
Received: from google.com ([2620:15c:202:201:b40f:db8c:1759:e71b])
        by smtp.gmail.com with ESMTPSA id a2-20020a17090a70c200b001e2a36fb4aasm1943824pjm.43.2022.06.10.09.39.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jun 2022 09:39:21 -0700 (PDT)
Date: Fri, 10 Jun 2022 09:39:19 -0700
From: Brian Norris <briannorris@chromium.org>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: linux-media@vger.kernel.org,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	kernel@collabora.com,
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
	linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 1/5] media: rkvdec: Disable H.264 error detection
Message-ID: <YqNzt9T9BaYu8tgb@google.com>
References: <20220610125215.240539-1-nicolas.dufresne@collabora.com>
 <20220610125215.240539-2-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220610125215.240539-2-nicolas.dufresne@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_093925_555976_6D3D6778 
X-CRM114-Status: GOOD (  14.28  )
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

On Fri, Jun 10, 2022 at 08:52:11AM -0400, Nicolas Dufresne wrote:
> Quite often, the HW get stuck in error condition if a stream error
> was detected. As documented, the HW should stop immediately and self
> reset. There is likely a problem or a miss-understanding of the self
> self reset mechanism, as unless we make a long pause, the next command
> will then report an error even if there is no error in it.
> 
> Disabling error detection fixes the issue, and let the decoder continue
> after an error. This patch is safe for backport into older kernels.
> 
> Fixes: cd33c830448b ("media: rkvdec: Add the rkvdec driver")
> Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

This is effectively how ChromeOS previously was using this hardware for
years. When moving to the upstream/staging driver, this started giving
us problems. This fix is helpful; we'd rather sacrifice error detection
for now, to avoid hanging the hardware in error cases ;)

Reviewed-by: Brian Norris <briannorris@chromium.org>
Tested-by: Brian Norris <briannorris@chromium.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
