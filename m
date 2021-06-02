Return-Path: <SRS0=F5E9=K4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 829FEC4708F
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Jun 2021 13:41:06 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 46A8D613B1
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Jun 2021 13:41:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 46A8D613B1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=28KFBztbXJ6p8RZhAqStDKDWj+0HLU4UonAKSonCdkc=; b=uoQk3GpSOE4gLR
	6WNEYig+ApvaTWZlA2aTuMay1o6LKqjXEcgfNpiIRSORu+IXreVYMhwqbLDQx8LO8vUgO0PXMkdtx
	yv3soc/nashEj5X7K62ebT7MthtfUj7Y3dVIJtyON2g2Vns3bLYh48GDkgimwqvfPuGNVXGJ5Oqgy
	xI0LsIhAyB/oqBi/t5O66XOSbawsEuDcKvaW54hg9LW0iRep7MsSHK0uaD6isXPsRYNkKLAKGAyxW
	L908Wc1EiuBEMHv2DJ0SfzETe6kDlvR+k74B2CrUcQeD5sXXyz2MaBdfvAn1dvYsaxbUzsXVAz+/X
	d14tqw3H32eM5BglFmWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loR7G-004OoZ-UY; Wed, 02 Jun 2021 13:41:02 +0000
Received: from mail-pf1-f175.google.com ([209.85.210.175])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loR7E-004One-Mr; Wed, 02 Jun 2021 13:41:01 +0000
Received: by mail-pf1-f175.google.com with SMTP id y15so2174752pfn.13;
 Wed, 02 Jun 2021 06:40:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:references:date:in-reply-to:message-id
 :user-agent:mime-version;
 bh=hUOeTXG0YC0TwEopFyW5gRSpVI6Gvqblgn3g9W0kHZk=;
 b=EmJUae+0we23sUDmOib5YTlA29oHh/dT98gHgNXJ3Sry3ZxQvM/KL3/PETYEIKjUHA
 KmNn951ymoMGWIcuq7Ba+LeRzpjX+NnawoSOtRy6T3iIAbNlt5rRJ+iYtKtmJrFjDscI
 2Ybi2S8WjdgIyRkSGylZq9raRYEUudBRt3JzC/JS/hvZasnAZV71JATagbqirUVTDSkT
 j0ES7URAPBKv2MnMuHJXLTNPkyTPDCJF+IURPYHEibpTOlRS4SKY5IptkDw8YVnArYLc
 1X35mTorbHweqsYNp4kqDLjAuqmNwvOVnHtwu7m3+zW5njY4zSHA+HjJr3hJRs8Q34vS
 pvBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:references:date:in-reply-to
 :message-id:user-agent:mime-version;
 bh=hUOeTXG0YC0TwEopFyW5gRSpVI6Gvqblgn3g9W0kHZk=;
 b=pBdW/HM7YP3nJ6QgEGOfyM0M7i41jxEOIbUjvR0MwzIuSb/v3HaduC1ulZmuk5epqI
 ax1/XYTTJrfeOdeo6EFW4+EOOaEnpc/n+2aPH/7fo+eqdY/tbPw2p9GSP/LGnsFrEzWK
 wacyEZBbtGoFMTSogqobf9selhskJ9R5fzKfhePTfVM8L6njWPohDOQTrfW+Uf3nLI1l
 U5fGL1jNjMQ3eoJFhrY8+2jTNfAhNcBuHoUn2gu1uRzr2kMwOPinwohH/5pge8U6PJ50
 /IKUbuWEBYFgtqZDvsEk9Fe8XNVCdW3l0kOlDBQegycdQO/KBpT17q/nFg+tQScRMdgK
 Ogug==
X-Gm-Message-State: AOAM533Guic3Q0G/pcnYY3yYb0msQpz8cagNDcgstKMYa38BvtcF96iQ
 vJoC6EjF7CmXjel6p+6Q03s=
X-Google-Smtp-Source: ABdhPJyvkSbrRKLB4qkSLMGR/0Q7Oe9Yiu1u6KChtgZRBoZRdbOT5d1Q6AKh4w5CLvX0B/o2Jcz5BQ==
X-Received: by 2002:aa7:8194:0:b029:2aa:db3a:4c1d with SMTP id
 g20-20020aa781940000b02902aadb3a4c1dmr27015368pfi.58.1622641198907; 
 Wed, 02 Jun 2021 06:39:58 -0700 (PDT)
Received: from localhost (122x211x248x161.ap122.ftth.ucom.ne.jp.
 [122.211.248.161])
 by smtp.gmail.com with ESMTPSA id d7sm12590413pga.23.2021.06.02.06.39.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Jun 2021 06:39:58 -0700 (PDT)
From: Punit Agrawal <punitagrawal@gmail.com>
To: Alexandru Elisei <alexandru.elisei@arm.com>
Cc: linux-rockchip@lists.infradead.org,  linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,  linux-kernel@vger.kernel.org,
 wqu@suse.com,  robin.murphy@arm.com,  pgwipeout@gmail.com,
 ardb@kernel.org,  briannorris@chromium.org,  shawn.lin@rock-chips.com,
 helgaas@kernel.org,  robh+dt@kernel.org
Subject: Re: [PATCH v2 0/4] PCI: of: Improvements to handle 64-bit attribute
 for non-prefetchable ranges
References: <20210531221057.3406958-1-punitagrawal@gmail.com>
 <75da0524-7588-4ace-a135-69236f2d1d5e@arm.com>
Date: Wed, 02 Jun 2021 22:39:56 +0900
In-Reply-To: <75da0524-7588-4ace-a135-69236f2d1d5e@arm.com> (Alexandru
 Elisei's message of "Tue, 1 Jun 2021 13:53:19 +0100")
Message-ID: <87pmx4l70z.fsf@stealth>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_064100_777272_B68B7D39 
X-CRM114-Status: GOOD (  14.94  )
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

Hi Alex,

Alexandru Elisei <alexandru.elisei@arm.com> writes:

> Hi Punit,
>
> On 5/31/21 11:10 PM, Punit Agrawal wrote:
>> Hi,
>>
>> Here's an updated version of changes to improve handling of the 64-bit
>> attribute on non-prefetchable host bridge ranges. Previous version can
>> be found at [0].
>>
>> The series addresses Rob and Bjorn's comments on the previous version
>> and updates the checks for 32-bit non-prefetchable window size to only
>> apply to non 64-bit ranges.
>
> Many thanks for the series. I've tested it on my rockpro64, and the NVME works as
> expected:
>
> Tested-by: Alexandru Elisei <alexandru.elisei@arm.com>

Thanks for taking the patches for a spin.

Punit

[...]


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
