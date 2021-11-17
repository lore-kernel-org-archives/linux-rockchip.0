Return-Path: <SRS0=hOKP=QE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F730C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 10:58:42 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 390A661A0C
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 10:58:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 390A661A0C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=vanguardiasur.com.ar
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ReReHrDlQgv3QdG++ImViwQEB4AdaAX69GbEjY5R/OI=; b=ZCLz2OvRKDVb4f
	1zggnCa64iBI8cDBRd9e9pMmxo4BTSiNpm3UeRE1O2d5vye4m6MzwGyLAvC89MP5Wl3Fa0jPSOgyC
	p78kbZuRUkV4yJCY9TKx8j2znDeutpEx1JmTg+wZFymhhSW8+m/63FswsbiDhE66HKPwtsIsMNNRN
	Lxor45UgBECJd+y/elu7pWdl0dD30SLADLNqAJzrvNWuWPojiYBIP1dSJY3S8MLwGgHT9BjldExhy
	t0V/NLg5RXXgI5oPP43uro8NWfXU+KFAt0gJP08mfd2mA4BTXhBv+NmmZTa9LesViugGAp80oQEGC
	4WFhoBhCxTx07NmbLBFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnIeC-004WBZ-JW; Wed, 17 Nov 2021 10:58:36 +0000
Received: from mail-ua1-x929.google.com ([2607:f8b0:4864:20::929])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnIe9-004W9x-SQ
 for linux-rockchip@lists.infradead.org; Wed, 17 Nov 2021 10:58:35 +0000
Received: by mail-ua1-x929.google.com with SMTP id p37so4914758uae.8
 for <linux-rockchip@lists.infradead.org>; Wed, 17 Nov 2021 02:58:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=GL2vVTwkDGaxnJKnzTpSFsHa3YcDS/lACsSvbC/mwqI=;
 b=7yAOmEZtKssLDy+Mi1v2A8a/1edO5rzt+1q7QWK/blFKaXK8ebDMcY7nc+YOTG8Kjd
 ZiCyRY3v5vfuTHYoj5MVj6n6cTVNYKXbwF3zZW3xHkWSl5sOjIwMkBKLHjm+rXuKokps
 buf1CnkCaSMhGEjqACdor1ActX5fzLq7ADgXGorAAqqAK9yUJ0rWjiF7t7Ze5CY9Zs1M
 BW/fHP84yKPphZ8yQPiQhDQPHK3ITuznYGa/j2WKeH/BZX95BJI/1/4IVHS6tvl5/dc/
 7f0LvQNZKCxT9FZSexm3uxQ8dn8ZkCks7bJKZRDetCQdaQR+Y2hEmQ5tc9QQyxD7+CgA
 AX3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=GL2vVTwkDGaxnJKnzTpSFsHa3YcDS/lACsSvbC/mwqI=;
 b=fme3CURbe4Gl2uajNSE5JfEhF7bETx1TSRur6hcbT2i6qtgqwrheXOWv5dqWms45LK
 Wld/C2WME6R1yCMRMHjdb5VI6DA/PXe8IoIEEFHSM+4TOvwk1fIRoLmFREqnrLCYM+n3
 e4MUw2ZEA8SIA/Leu2Xjms/sIrJHYf+hsEmjrjC9+3D8A9FpKNliqHAKiSLg1aPOsYm5
 Ei3fhuQKpxG1BHO6jKeufg08DGz7oZvXtrY1GUSUhOu6jLSYkMTQXezg99XSsf70zDtX
 Ztif9v5AYzMuW3RAWogSJ613gAMu8oyXYEDuMG77tcL/NQYzuRbnm4Jpn8LSyy37Tdjw
 kRrg==
X-Gm-Message-State: AOAM533sqEo1ySPfjdmOACKd07hUh1+FuVc+mG2tz9gZjJxJtZ/ACaJh
 q4nxTwmNS4Cu3ucF+oXnBVp96Q==
X-Google-Smtp-Source: ABdhPJx0rFYEn6Y1Kc0Vuh2EfsmgisCwK03nysfYsSX7F1YoD/nOk5rKQZ75zS/TNfM4/Zj8NiZlHw==
X-Received: by 2002:a05:6102:dc7:: with SMTP id
 e7mr66274552vst.21.1637146712303; 
 Wed, 17 Nov 2021 02:58:32 -0800 (PST)
Received: from eze-laptop ([186.122.18.126])
 by smtp.gmail.com with ESMTPSA id r20sm11672009vkq.15.2021.11.17.02.58.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Nov 2021 02:58:31 -0800 (PST)
Date: Wed, 17 Nov 2021 07:58:23 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: James Cowgill <james.cowgill@blaize.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heiko Stuebner <heiko@sntech.de>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] media: hantro: Avoid global variable for jpeg
 quantization tables
Message-ID: <YZTgT3Gt8GVQqJtm@eze-laptop>
References: <20211111220108.1873947-1-james.cowgill@blaize.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211111220108.1873947-1-james.cowgill@blaize.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211117_025834_093788_466644BE 
X-CRM114-Status: GOOD (  13.08  )
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

Hi James,

Thanks for the patch.

On Thu, Nov 11, 2021 at 10:01:08PM +0000, James Cowgill wrote:
> On a system with multiple encoders present, it's possible for two
> encoders to write to the global luma and chroma quantization tables at
> the same time if they both submit a JPEG frame to be encoded. Avoid
> this race by moving the tables into the `jpeg_ctx` structure which is
> stored on the stack.
> 
> Signed-off-by: James Cowgill <james.cowgill@blaize.com>

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
