Return-Path: <SRS0=PznR=FL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03DD6C4361B
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Dec 2020 21:14:02 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AF288238EE
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Dec 2020 21:14:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AF288238EE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cFlyfX5hrFdaViypSOXzvhHHiGUSABMvGjp/dyEOrms=; b=di7pk3wuEgufvCWivnaMQwPut
	9pdA6RPw57BxMqmjBasWeqG8MG2ZGWTn/PcQjL0nJcNyNkOkIJ5DrEWHsC3KBOZVb9reaL0sG7rU3
	HNoPAi96y4kMZq+DCNObJ0Hi/dfdGNwc+73u2BL8u4Z9eX0KTnVf/z8EX0GBQcwK4NeBEaFAFuSEq
	YtJE7n4ytC2I5+AexpZXQ/L8bJ1XgkFdJ/g7bUpDeqO8FmvzAbiy3Kqp820gXOzKTCw9yVD07VOrl
	qP5pDiR+ZVaswvn51xV8PHqlQ5XpRkDsX4HaNQ3/JQgvN6PICm/NlukYCOhvoIakrryT1t7KMYJCn
	cSicldTqA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kmNpS-0003v9-IT; Mon, 07 Dec 2020 21:13:54 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kmNpH-0003nR-To; Mon, 07 Dec 2020 21:13:47 +0000
Received: by mail-oi1-f195.google.com with SMTP id 15so5854545oix.8;
 Mon, 07 Dec 2020 13:13:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=wSSUTQZg6bgD+NFU+dlyoaBo/UNi5gEZyvnAHdAYmoI=;
 b=CmY9wq+MXjjKJT3ikZefsnIfJYOjePUyVZt7QydKionichjJqDqtoJkYgWqCPYTGQn
 p2yy5ufSBTrMo2ZwylDlSIWl87Cyi9yAY6DJss8/QfGDaz8ARtmgmd8Ur6fm8mBHe9e8
 Go08TA1bWZmlzMj0K0gpDU2MoGA/sVu8jcxFji/K2CyHjN6rlYj1Ic3ffouiY8N8MLWe
 T2y66aymUYdvjJt6MQh6nMB31fpP7PSZh4PT9WcTB3tFaljzo4oQTq1sLoWC5ztg9W2A
 clRo0GMQThyKb8BU3Exgi7BY8kXNFmw0vGRw+8PsRbuBv3qNyCg0FmgtpiFPmtjPcT9b
 LpBQ==
X-Gm-Message-State: AOAM530bpmN4qfH/g4sqz9HjsooUTykf3xcBHpZyE4wtTFVV+YNwD7DF
 UXnB/WVG7pOSXqZX+D5sxA==
X-Google-Smtp-Source: ABdhPJwxEb2r9vTvghtzHd8K3uHSFXi9O1760V/OHmnDBVyD9HJ35YFbgajx/vD/9xQJIohC18waoQ==
X-Received: by 2002:aca:3192:: with SMTP id x140mr558323oix.172.1607375620156; 
 Mon, 07 Dec 2020 13:13:40 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t186sm3224633oif.1.2020.12.07.13.13.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Dec 2020 13:13:38 -0800 (PST)
Received: (nullmailer pid 835084 invoked by uid 1000);
 Mon, 07 Dec 2020 21:13:37 -0000
Date: Mon, 7 Dec 2020 15:13:37 -0600
From: Rob Herring <robh@kernel.org>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH v2 2/4] dt-bindings: arm: rockchip: Add FriendlyARM
 NanoPi M4B
Message-ID: <20201207211337.GA835025@robh.at.kernel.org>
References: <20201118071724.4866-1-wens@kernel.org>
 <20201118071724.4866-3-wens@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201118071724.4866-3-wens@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201207_161344_193598_E4D4BB36 
X-CRM114-Status: GOOD (  18.48  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Johan Jonker <jbx6244@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, 18 Nov 2020 15:17:22 +0800, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
> 
> The NanoPi M4B is a minor revision of the original M4.
> 
> The differences against the original Nanopi M4 that are common with the
> other M4V2 revision include:
> 
>   - microphone header removed
>   - power button added
>   - recovery button added
> 
> Additional changes specific to the M4B:
> 
>   - USB 3.0 hub removed; board now has 2x USB 3.0 type-A ports and 2x
>     USB 2.0 ports
>   - ADB toggle switch added; this changes the top USB 3.0 host port to
>     a peripheral port
>   - Type-C port no longer supports data or PD
>   - WiFi/Bluetooth combo chip switched to AP6256, which supports BT 5.0
>     but only 1T1R (down from 2T2R) for WiFi
> 
> Add a compatible string for the new board revision.
> 
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
