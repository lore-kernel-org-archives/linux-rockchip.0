Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA46CC19F2D
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Aug 2022 14:59:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lv8ESpc0kEwOnLGLcLT7FKVRB8G8uL5yhAAmlTjiLQQ=; b=gIdWaIGdMRZ8vG
	jzdd0CZ4+sAvDV6XHvnThjaYKdvv3HnhAKbvN8yYxP5n7zmRcfLEtM6pepL0jp4LoKZdmJl3lvii/
	X9VT5GEQFnYrD0Z7oqYNYyv0miC5ct0ADh0ToL4IhsQXSCdZrOM5AOeN6hUDwsVEetJfBu43Xf8bM
	RfaVlRXP/xrTqiBoYnjWfzoS7mWl3SGPhluVOjbCW6ZOIzB6HmzE94gi4URGbOhHgsp8ow26eDjlg
	aHlk9DJcEQduQSmf0HsJr9v/DOugPMbfFebKYoj5Gjue6bxKxlGynC/sc1fFTn7NRBSEtXaSPU5KR
	JpznNQRDLLvKq8ZessCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oKLG5-00DfPe-P7; Sat, 06 Aug 2022 14:58:33 +0000
Received: from proxmox1.postmarketos.org ([213.239.216.189])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oKLFu-00DeiP-0h; Sat, 06 Aug 2022 14:58:24 +0000
Received: from [192.168.1.12] (unknown [81.178.197.238])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by proxmox1.postmarketos.org (Postfix) with ESMTPSA id ACF94140200;
	Sat,  6 Aug 2022 14:58:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=donut; t=1659797898;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nBZVMbltsIkBFwLkxDGMWLniH6iU/Y6FiotIXQVhv88=;
	b=qQES6BnccUYz1+rLG4Jicvck/nD41hk2Rr3ChLx+HhqRP0j6mP5zTz2QuSOzIu99suIcUH
	qqaJVFS16kDTb959tGrs/CAbsN4Qz3A6JgxZsCKsRTuc0YN3K+ejeBOuFYCYfS5U1aQZeo
	BURzjBRl7KqYt40esDRhDMqlnl716nI=
Message-ID: <eb4327d0-b31b-b6ea-e0d3-d5cff3508f39@postmarketos.org>
Date: Sat, 6 Aug 2022 15:58:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: Add initial support for
 Pine64 PinePhone Pro
Content-Language: en-US
To: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de
Cc: megi@xff.cz, martijn@brixit.nl, ayufan@ayufan.eu,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220805234411.303055-1-tom@tom-fitzhenry.me.uk>
 <20220805234411.303055-4-tom@tom-fitzhenry.me.uk>
 <f9cbc047-f30f-e711-3213-56fcbb7bbc8a@postmarketos.org>
 <9a168a20-1fd1-5d73-1d33-bd2f054d60d7@tom-fitzhenry.me.uk>
From: Caleb Connolly <kc@postmarketos.org>
In-Reply-To: <9a168a20-1fd1-5d73-1d33-bd2f054d60d7@tom-fitzhenry.me.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220806_075822_559564_AA04CF4F 
X-CRM114-Status: GOOD (  41.97  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



On 06/08/2022 03:37, Tom Fitzhenry wrote:
> On 6/8/22 12:10, Caleb Connolly wrote:
>> I was surprised to see this series, and this patch especially.
>> An almost ready to submit version of this patch with considerably more 
>> functionality has been sat around for a while but unfortunately never sent [1].
> 
> Firstly, thank you for your review!
> 
> I'm not sure why that other patch series has never been submitted. It was 
> prepared 3 months ago (unbeknownst to me, at the time of v1), but since then has 
> not been submitted.
> 
> I would feel uncomfortable submitting that patch series, since I am not familiar 
> with parts of the full DT. In time I intend to be, but for now I think we'd 
> benefit from having a base DT mainlined, on top of which we can iterate and 
> parallelise.
> 
>> According to the link below (and my own knowledge of PPP development) Kamil is 
>> the original author of this patch, both Kamil and Martijn created the initial 
>> version of the devicetree. Given that you're using their work as a base, 
>> Kamil's authorship should be respected in the patch you submit.
> 
> I agree authorship is important, and thus Kamil, Martijn and Megi are listed as 
> Co-developed-by in this patch.
To be clear, by authorship I mean literally the author of the patch, the 
previous patch in this series was created by Samuel and you left his authorship 
intact - it has "From: Samuel Dionne-Riel <samuel@dionne-riel.com>" at the top, 
so when a maintainer picks it up and it ends up in Linux, anyone looking at it 
will see that he was the author of the patch.

This patch is from you, there is no From: tag overriding it, and the diffstat in 
your cover letter shows you as the author. Whilst you have obviously made some 
heavy changes to this patch, it isn't your original work as you state yourself 
in the commit message. Authorship should be attributed to Kamil as they are the 
author of the earliest version of this patch we have.
> 
>> Their original patch [2] contained SoBs from them and Martijn, those are both 
>> missing below. Both of their signed-off-by tags should be added before this 
>> patch hits the mailing list, and the same for Ondrej. The order also seems 
>> wrong (Ondrej should be last before you).
> 
> Yes, this patch's acceptance is blocked until all Co-developed-by authors 
> (Kamil, Martjin, Megi) provide their Signed-off-by to this patch.
You should obtain SoBs from Co-developers /before/ sending this patch upstream, 
this indicates that everyone is on board and that the patch has some sensible 
history. The mailing list isn't the place to ask your co-developers to sign off 
a patch after you've made extensive changes to it.

I missed the following points in my original email:

Please read the documentation on modifying patches [1] as it applies here, and 
add a comment before your SoB explaining your changes, something like

[tom: strip down to minimal booting DT for initial support]

This way the history of the patch is preserved properly for anyone looking back 
at it in the future. In a similar vein, replace the external git links with 
links to exact commits so they don't degrade over time.
> 
>> Support for the volume keys, accelerometer, magnetometer, GPIO LEDs, 
>> touchscreen, modem codec and audio support are all missing here, but they're 
>> included in the patches you referenced. In their current state (see Martijn's 
>> commit [1] or my 5.19 rebase [3]) the DT for these components has been worked 
>> on by several people, tested by the larger user community, and are already 
>> supported in mainline. It seems strange not to include them and just leads to 
>> a bunch of extra busywork to add them back later. It's easy enough to drop any 
>> of these nodes during review if they become an issue.
> 
> To keep this patch series light and easy-to-review, I'd be keen to keep it as
fwiw, a few extra nodes now is a lot easier to review than a bunch of individual 
small patches later. But yes, better to get this done in some form than not at all.
> small as possible for now. This DT is >18 months old out-of-tree (across 
> multiple repos), so I think this minimal DT being mainlined is an improvement 
> over the status quo.
definitely, it'll be nice to start to see some upstream story for the famed 
"linux phone" ;)

[1]: https://www.kernel.org/doc/html/latest/maintainer/modifying-patches.html
> 
> The existing work that the community has done will still be useful, albeit in 
> future patch series. This DT just allows that future work to be done 
> iteratively, and in parallel.
> 
>> With that being said, I've left some feedback below, with it addressed and the 
>> authorship/SoB situation sorted out:
>>
>> Reviewed-by: Caleb Connolly <kc@postmarketos.org>
> 
> Thank you for your comments, I appreciate your review! I will ensure v3 
> addresses those.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
