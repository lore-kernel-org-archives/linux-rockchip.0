Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9AD29EB64DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jul 2023 16:30:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pzwVtyp82vuXHyeqpUgAzESLXpvUrxs98rKwsU+EEt8=; b=OqmRZhKL+ElxS3
	IYYzGGe5rX80ASN2QS/GBzUJ2WZ1wTrSF7DwLujPWvjshrEhQ5SbNDJoowVKSR6qRBT6sKeyFmdfr
	syue4q2YMznZedS5K7/aS1TjWMX/3SdNolXysX60y9qafpS/eHfzPQDdWLGliCYySs3jLkkxelaRI
	W8E0+MW1fuKXnxkEb1wg4+HxQ9X+E5Ro/UW73SUjcoshsCqOT3u9HbPaC5Sz0mxGqIVj0/SBoFHM9
	QnZkUo+AuMG1Q4tRfE1fbkoC7TBa7P5vlrqO51p5CCQQ9C4dmO0NLtP5pDF0ejtERDJX6woTprhF6
	zfQ5BmPYFKgHZNZPYN4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qMt0v-00EazH-2P;
	Fri, 21 Jul 2023 16:29:57 +0000
Received: from mail-il1-x134.google.com ([2607:f8b0:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qMt0s-00EayY-1t
	for linux-rockchip@lists.infradead.org;
	Fri, 21 Jul 2023 16:29:55 +0000
Received: by mail-il1-x134.google.com with SMTP id e9e14a558f8ab-345db6c12b4so10090305ab.0
        for <linux-rockchip@lists.infradead.org>; Fri, 21 Jul 2023 09:29:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689956993; x=1690561793;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=f+FyGPDRmoxL2YC1UR+AkzCDS4XQ2NURuK6MfXzpH8g=;
        b=beVRX8xlKEG8j6K58hHhqmUqFmY5Huk4fdeO+Gw5Gil8oPPUr26uxwf/qbE07zB5+x
         yQDJ1Fn2425G8zkazELQKxP3ah6JafEa6URfADOvKo1pp8ted8HUAXlT4klKj9HVJtRa
         5xrn3jGN/fFxmyc1AVcZT3XwWf1Rjx/w26oJ8ZQePhHqhwlP+pdCSkhbWPnm14sQ1bAu
         ENtQmJmYOHoiEHX4hqJ2gs4sd1Imvq/5kH7JLdk/ruj4Ms16omg7xR61/5ntjF6Nz78U
         JQ7IReSiOC12i08UsRvRYdn+2qsXJoB+wRo99g9VGdFSnH1DV+25u6N+1PWunxkjE/BZ
         u6/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689956993; x=1690561793;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=f+FyGPDRmoxL2YC1UR+AkzCDS4XQ2NURuK6MfXzpH8g=;
        b=ASlSlabbAtaXVsdD1z5GphzbgPZQMRWuw3gDM43kik25RJMOWZiPaezk1v8jOIFr4L
         f+f8C5GmpltdYv8FEbdhVY9Oh8zKPZQEeLbrTztAidKi1GJ50cUSuHc64syvzsGUVte+
         DXSf8TLwUbEp2KbD5E2fJBa5s/YtCcDfsCQXxm59GheG/tSygiO8VCTKk9fsfT4rZvVc
         gvBnDbsbEjlb2mIN50eIJQOp03F3KHybpPwII47kXPcnpwEv330RE1cXM1Z7C/0Sm6Sl
         v2iihSsS8620lWEfszi1tpTQLldKa4/ZhKuP8YnXCU3heiqMoBl/i8Y2CM59tKKJUjCI
         zSDQ==
X-Gm-Message-State: ABy/qLbUcyqAKWl3GMa93xkvhnknRPCPrRUr54roJbHnY/egv3r/Zo+t
	2sWNQbQmq28PshjztGL8Ynk=
X-Google-Smtp-Source: APBJJlGllmyzrKIplT3/vybQXfWY6B/wfRZEIIzVqJ+YcglP3MTS9S2ZvWhJOoDT2n9IKFOhqPKnpQ==
X-Received: by 2002:a05:6e02:1a8a:b0:345:d58d:9ade with SMTP id k10-20020a056e021a8a00b00345d58d9ademr490967ilv.3.1689956993074;
        Fri, 21 Jul 2023 09:29:53 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c? ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id u7-20020a92da87000000b00345d00dc3fdsm1051573iln.78.2023.07.21.09.29.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Jul 2023 09:29:52 -0700 (PDT)
Message-ID: <20b76893-cae3-e17f-99f5-7a0a448799db@roeck-us.net>
Date: Fri, 21 Jul 2023 09:29:51 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [RFC PATCH 2/2] regmap: Reject fast_io regmap configurations with
 RBTREE and MAPLE caches
Content-Language: en-US
To: Dan Carpenter <dan.carpenter@linaro.org>
Cc: Mark Brown <broonie@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J . Wysocki" <rafael@kernel.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>, Sascha Hauer <s.hauer@pengutronix.de>
References: <20230720032848.1306349-1-linux@roeck-us.net>
 <20230720032848.1306349-2-linux@roeck-us.net>
 <CGME20230721145342eucas1p12e658a54d36d985b2811e2c21f7810ee@eucas1p1.samsung.com>
 <c2bba4df-da1f-5666-89aa-28c6700575ca@samsung.com>
 <fe31bb86-40ec-4b77-9edd-eeaa61bb5e08@sirena.org.uk>
 <c9614ffb-7840-6a84-883d-ed4371d75c11@roeck-us.net>
 <205a83df-c67b-457f-a9bf-a9c6def4bb3e@sirena.org.uk>
 <1c90db79-4a1a-d3cb-5250-f30cf6b5a90c@roeck-us.net>
 <e61ebbfd-98d2-4dad-98e7-67d81c0cc04e@kadam.mountain>
From: Guenter Roeck <linux@roeck-us.net>
In-Reply-To: <e61ebbfd-98d2-4dad-98e7-67d81c0cc04e@kadam.mountain>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230721_092954_621689_E05AEE95 
X-CRM114-Status: GOOD (  11.50  )
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

On 7/21/23 09:18, Dan Carpenter wrote:
> On Fri, Jul 21, 2023 at 09:01:03AM -0700, Guenter Roeck wrote:
> 
>> Dan, let me know if you don't have time to send a proper patch.
>> I have one based on your suggestion prepared that I could send out
>> if needed.
> 
> I sent it but, aww crud, I forgot to CC you.  Really, get_maintainer.pl
> should add everyone from the tag section to the CC list...
> 
> https://lore.kernel.org/all/58f12a07-5f4b-4a8f-ab84-0a42d1908cb9@moroto.mountain/
> 

No worries.

Thanks,
Guenter


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
