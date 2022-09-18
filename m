Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 250AFC32771
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Sep 2022 17:47:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-reply-to:
	Date:Subject:Cc:To:From:References:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jFMjLQjg88HVhl1pidEE1dgsp9gZUCttNJ5X5yWhwRw=; b=3r+NrqCDEpIGeI
	6k3WNdkE3XtHemwzM7ATxkryavHINwjQBZCBNIa/YWKkBxOTbIL7GK61I2rYYAGkfISzlyjuzzFzg
	D5/xyhkVJk3TSI6UVcIpayjqEPfHK361i/HVb6rG0kmEArAtXuADC3gJUQtCQ5Z3xOXqDzGpEhdNJ
	KweZ4Wl99gMC/m0cCijzWWIDE2dokxtSfIqMRjkaKTX30dyDVHL6m9qGfOrZ6n76ANEAoXxvdoWXX
	mnDxGCKfaLxOomki4vU72MV0Z8wlhzQtRiLVQuzUP0AWEW/VtuTbdS/YJF6rpFMbKO/6Yftz3HPaj
	JlmGnUNjbqsqT+nlMAog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZyNy-001Miu-Pr; Sun, 18 Sep 2022 17:47:18 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZyNv-001MdW-Vb; Sun, 18 Sep 2022 17:47:17 +0000
Received: by mail-lj1-x230.google.com with SMTP id z20so31355129ljq.3;
        Sun, 18 Sep 2022 10:47:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date;
        bh=89ee56w1RlLqFBfq/ZqXmyMzTIcCP/U7ZCyROaV/Xdk=;
        b=P4l73nOTri3R7MmTO0pgyCWjjgVTbq7jaqLPZkkk27cGFQ9BKZtzLv8rEv6CejqmOf
         o+Uxyt/MaMIQ8h0UbG4Rb20tS19Y4cxM2s1yyYIhKytNeh6KYIOuIdD9WYZ+BPGu4OR0
         e0Pv3NMQIcLxA1shDCOHzP4ORrBKxqB5YwO1tZpdWIb51fy/N/cysXL08N2JrRPsJr9K
         IX9p6LKgNKeUM7oO+BP4f739RaLwjFJ8ae6UZp7i6UkOCbo8O/4z9fqCCrUKQmIRS5eT
         SSpg8PKD/jOVUSVToEcmsipTD/1SGbCJBQChyc2i5l3SluunBJ0dYXuuziDtIP8LdQRZ
         ZqCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc:subject:date;
        bh=89ee56w1RlLqFBfq/ZqXmyMzTIcCP/U7ZCyROaV/Xdk=;
        b=zir4hg+85/AsmEGeAS1iWYkoplNZyg5hMWFeQDg4jp+khEU64gZQS2P6niyFNn2Dgs
         WoCdmHRY1f3xeoaMkrWLbE9dIAYxqn+ks65IxtJ0tHIB3SO5Gdc5KnDrUwSniNeByLse
         r9x6QbDkX+17HEJ9JkhJGg/Np8bBfZs9BfK60R6L20IMAdTnrWUVAeE8qumPAadZAZXt
         Ej9DUpFD5KlvAIVWzfF+LHKu1NN5QiFEpzC/YmuU1oimr3dDKWcCC+IR08+npzXc/L6x
         GIvj+H0sbIC+o9by1ArOvV0e9M7R0sAGD3EJMisHX1KHNSZxExKuhyD9N0aqvUM4Ux77
         KIQw==
X-Gm-Message-State: ACrzQf3RviQt4S7L/Gd8XCkuSaZ2QD2Bw/WoKkYL52hBPeFFv7GX76W+
	lJquoH4pPcLKVnXfFoDIBuA=
X-Google-Smtp-Source: AMsMyM44uqyFXHEpqUAKlWZV8NJSMKrk6IoYw7LAyUaXSZYV1bHNtTT8WfQ9JLWwUJSyT2llgR2usg==
X-Received: by 2002:a2e:a44d:0:b0:261:cb9c:6891 with SMTP id v13-20020a2ea44d000000b00261cb9c6891mr4215630ljn.136.1663523232668;
        Sun, 18 Sep 2022 10:47:12 -0700 (PDT)
Received: from razdolb ([37.1.42.233])
        by smtp.gmail.com with ESMTPSA id b17-20020a056512071100b0049aa20af00fsm4288166lfs.21.2022.09.18.10.47.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Sep 2022 10:47:11 -0700 (PDT)
References: <20220917165820.2304306-1-mike.rudenko@gmail.com>
 <6779635c-a162-0b7e-d124-d88d1ed9e162@sholland.org>
User-agent: mu4e 1.9.0; emacs 28.1
From: Mikhail Rudenko <mike.rudenko@gmail.com>
To: Samuel Holland <samuel@sholland.org>
Cc: stable@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Peter
 Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH] phy: rockchip-inno-usb2: Fix otg port initialization
Date: Sun, 18 Sep 2022 20:46:33 +0300
In-reply-to: <6779635c-a162-0b7e-d124-d88d1ed9e162@sholland.org>
Message-ID: <87tu54r2w1.fsf@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220918_104716_057701_8D17574F 
X-CRM114-Status: GOOD (  10.40  )
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


On 2022-09-17 at 12:12 -05, Samuel Holland <samuel@sholland.org> wrote:
> On 9/17/22 11:58, Mikhail Rudenko wrote:
>> There are two issues in rockchip_usb2phy_otg_port_init(): (1) even if
>> devm_extcon_register_notifier() returns error, the code proceeds to
>> the next if statement and (2) if no extcon is defined in of_node, the
>> return value of property_enabled() is reused as the return value of
>> the whole function. If the return value of property_enable() is
>> nonzero, (2) results in an unexpected probe failure and kernel panic
>> in delayed work:
>
> This should be fixed by the following patch which is accepted already:
>
> https://lore.kernel.org/lkml/20220902184543.1234835-1-pgwipeout@gmail.com/

Ah, I see now. Sorry for the noise!

--
Best regards,
Mikhail Rudenko

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
