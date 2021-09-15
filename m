Return-Path: <SRS0=WjyS=OF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4B23C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Sep 2021 23:29:53 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 86968610E8
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Sep 2021 23:29:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 86968610E8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2aAwM3N6v59zBZwkUVc8PpxgbuMT9KavtKrz8Ai9OFo=; b=xBIy9eKaogJGiy
	oNc7xNYLGxbOUA66LGaZi++VuuCrj5nbvs7Lv9g1Ag63/LwwTV4qdPjp4flOqrEYzNkX2XLe13E4A
	Ro6KkDZturWAX7tVVH6rDDKrxuG5+s8yB22Fz5TAfzkSsBT13TNBFZgp4H9BAEgQQaSo4YaqzhEB5
	4yXUFtpUdfhmLNbt1VQ/gF7D90HVbAdsrb1yXVLn1U3Sx+DnZTUVddBwok9EFnsputHP5dW2wAfvm
	piZdVxj4vKDSlRyJY7QvuMhq8cDz6tqyCYWP8xoPdpaz2S6Kg1N5i1VnJcVsMBlJfRE0xb8bpjHaM
	LQ+UPq8CQ30AjiXkeahw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQeLe-00A4Ms-9F; Wed, 15 Sep 2021 23:29:50 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQeLb-00A4M6-GC
 for linux-rockchip@lists.infradead.org; Wed, 15 Sep 2021 23:29:48 +0000
Received: by mail-pf1-x435.google.com with SMTP id w19so4110745pfn.12
 for <linux-rockchip@lists.infradead.org>; Wed, 15 Sep 2021 16:29:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:references:date:in-reply-to:message-id
 :user-agent:mime-version;
 bh=hpeXHvQf5cGY9CoeDdEs7ZLhT9Q3N/JfknN2Mu1jgqE=;
 b=Ol00fguPRgnbKhDADPttvOkVvxnsULHVX7bZJ9k5SdgN2brE90nKNbRLnki+tfZ1H6
 eaGb1yxj9tL9hupPTUiGKM+0KGIVXmozb8DrnJmWwPT0OEhDH3uiGuO4BiB2nchCeq/8
 T4PXP1ETitkvwFI/2MCZ2AAkX8Wy7imTYQmbq0bs/9eRRgDkTNQf/wuwMN0hM9x3Qphz
 G6TgmnkGAdfu6DW3Rt6uIZoqAxEGxAtlVMJcjPImizDjjJ+X6f1SJvmgdok1dwivwbG6
 hhcq9Qu2zfJaWn2SSjmFs8FRkoN1wpXz8DMr78x2fu8Rv6kIHK72jJo3rehQW4H6J1Kp
 qVag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:references:date:in-reply-to
 :message-id:user-agent:mime-version;
 bh=hpeXHvQf5cGY9CoeDdEs7ZLhT9Q3N/JfknN2Mu1jgqE=;
 b=FeLug9d/2sWdVJaxeLkb1ld7t8DzM47pJyVhGyK+atM1EcEyTGRUVTfNZJikotajMy
 aWcyJZUvznwi6m1sJRqvaUdOpwRiWscsi/rSSAArThNzMlCEuZWrnvogPtOuHskSh+nw
 7dyyyhZidmc9d/IRTswrCDSZSKWmWawmMo43zlVs5FkHe8MiGRkh1/AH4aB3yXMfgg3e
 +wWNS27sjSx72iZj+XPlfytKxDLS7oFm7DRWZz9mZnw7+mPoqBjBdLHIwsRDJxPqAUxQ
 GpMU/HHP0+253GqDcD/T/97+99kRvIZxMA6Ibd7W1te0dha3ahPdoGRJSAIHvcBs4HV9
 knwA==
X-Gm-Message-State: AOAM530nhMY49f081ECqsbB4KQG8wbNdrYWQ3jC/236VSs9F4RtOJuCC
 JMKOR/9Wz6npqse3oo/okCHc83VHI9x5mA==
X-Google-Smtp-Source: ABdhPJz70TYOk8ljeQMIyN+ozbbtQ7I5IR6X6DMJ0e4YckZlxLt7cvW29G40M3vJo6qjA/nUhYqxjg==
X-Received: by 2002:a62:178f:0:b029:3e0:35c4:f0f with SMTP id
 137-20020a62178f0000b02903e035c40f0fmr2139723pfx.64.1631748585766; 
 Wed, 15 Sep 2021 16:29:45 -0700 (PDT)
Received: from localhost (122x211x248x161.ap122.ftth.ucom.ne.jp.
 [122.211.248.161])
 by smtp.gmail.com with ESMTPSA id l11sm5537674pjg.22.2021.09.15.16.29.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Sep 2021 16:29:45 -0700 (PDT)
From: Punit Agrawal <punitagrawal@gmail.com>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: linux-rockchip@lists.infradead.org,  Heiko Stuebner <heiko@sntech.de>,
 ivan@ivan.computer
Subject: Re: [RFC PATCH 0/3] net: stmmac: dwmac-rk: use stmmac helper
 functions and clean up
References: <20210915170255.30561-1-michael.riesch@wolfvision.net>
Date: Thu, 16 Sep 2021 08:29:42 +0900
In-Reply-To: <20210915170255.30561-1-michael.riesch@wolfvision.net> (Michael
 Riesch's message of "Wed, 15 Sep 2021 19:02:52 +0200")
Message-ID: <87o88t76zd.fsf@stealth>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210915_162947_608902_6DAAE352 
X-CRM114-Status: GOOD (  17.03  )
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

Hi Michael,

Michael Riesch <michael.riesch@wolfvision.net> writes:

> Hi all,
>
> This series aims to clean up the dwmac-rk glue driver by
> making the stmmac core responsible for clock and power management.
> The dwmac-rk specific code is passed to the core via callbacks.
> The patches have been tested successfully on a RK3568 EVB1.
>
> With any luck, the patches fix the Ethernet regression on different
> RK3399 boards, which has been introduced recently in v5.14 -- but
> don't be disappointed if that is not the case :-)

I did a quick test run - the ethernet is still buggered on RockPro64 for
me.

Thanks,
Punit

[...]


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
