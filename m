Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FE77C19F2A
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Jul 2022 15:59:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:From:Cc:To:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ULLdZCpbC4OHZmswk6kch/a66jFkXQPLjJ9H8peC6ck=; b=Iz4CqeveryUfM0
	P0TWOo2wR4aXZ1rxsiX4JtFkegqBoa21JfPiKQJ+zVj2FQWKxfwwmRxDzV3hizWyY8MkY9oOF+QX3
	tRbHqa2dQ0j3c91QxODiamcPH5HSc/d50Ne6wex4KlSdh90bB7c1SsLUZbWVjgekYT0KhNZMDR2wA
	pr0UuQa4qeE6LxQE0LiKDEA9E6Y2Y296ijjjygVOv8mF/nA1yDYAOL0KR/neuOYrwpCGBkDDA+G3O
	rtqwE6o9quJKrmHL2nMSk9tO99yQoWsqCraB7qYcyycPwjVHAQbPNfWQ0rQp1+Ls27PGvbs8PqsIY
	u7uB1wx1GDdISQQvF63g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oHork-002BdH-Ma; Sat, 30 Jul 2022 15:59:00 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oHorh-002BZq-7M; Sat, 30 Jul 2022 15:58:58 +0000
Received: by mail-ed1-x535.google.com with SMTP id a89so8966668edf.5;
        Sat, 30 Jul 2022 08:58:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:subject:from:cc:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=DnMOj9t6t4ctngwIKooiACvAQ9sK4xzMu2PPkAQAu/g=;
        b=Lm36qD60gTl71mOhvLTF1M3ke2Ps/QMCQJBZ2PKCdqjBO/d8pVO1u15G3Cy0BFI70I
         mdAvV69w0znzx8EoXgNV7/qLhv640J3w/sxyUEtL5XdGryntlfLxrYlHXDSqOYFsVgI1
         xT5TFW8jm8ZvztRjcxDIfEmK4tMCrL1FhmRGnzT/tnrdCY1rz1KYQWIk6cRxq9vwm3tZ
         rAiRZafZEKct+ODE1Pn8NmAOSkR6f0cYpqaikwh83JVlX8Y5NCE61gec0Ih32RZQPOw+
         j8WVxWoFiMBg+zMk1cDGcfl6ndJybZnfNxvmlSYDiOqkoY11V8GghT0FctU9bsmejJ7N
         pC3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:subject:from:cc:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=DnMOj9t6t4ctngwIKooiACvAQ9sK4xzMu2PPkAQAu/g=;
        b=5CsX9y/U6H8q3E1dgIyGc7NuUrRd7WUj9/5yWDbMXp202AUMARGt5Y/KJO+yrl8i9p
         lqhuYKEy60lX7GVMMrofAgzDsSzpr8Y7fBTJaLdFwV0TIJ3pSbTBr18A4FThvYN+YPFj
         pFE6yerV7hHeZwFjkNGCHYjYp2jpEFivqWzFgmLGSbt9VZDeLL17dSiJyGtdoa/GCoPU
         fbwp5ZdUB/sgBDYRANt1qaPzehqezmy1BCjJqc2UgV0unlblLrmI4bdLuB+c9COSir2J
         v40AFNlXBSM3ZO9OIwxHVoZS7X9m5aqbwiBn/t+NrFIMR6M7do7neZxJz825fst3P7Bp
         gSJw==
X-Gm-Message-State: AJIora/n+PcgpUMxhNIQLtk9EJTQykMFbGQiUJ3b3Uahu3dt+IMutCzG
	kKBFk6v0heHjGLi35Cx9qVo=
X-Google-Smtp-Source: AGRyM1vCbsWg31k0PCdbkMBNqTjXrQ/G1fV+uisBV1voK854XWf9CWDdkboY33zxzXTcr8vT4pNHcQ==
X-Received: by 2002:a05:6402:4516:b0:43b:c806:6346 with SMTP id ez22-20020a056402451600b0043bc8066346mr8286356edb.52.1659196734474;
        Sat, 30 Jul 2022 08:58:54 -0700 (PDT)
Received: from ?IPV6:2a01:c23:b9c0:f700:d5b:898b:b7ca:1bf3? (dynamic-2a01-0c23-b9c0-f700-0d5b-898b-b7ca-1bf3.c23.pool.telefonica.de. [2a01:c23:b9c0:f700:d5b:898b:b7ca:1bf3])
        by smtp.googlemail.com with ESMTPSA id h22-20020a50ed96000000b0043c0fbdcd8esm3959295edr.70.2022.07.30.08.58.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Jul 2022 08:58:54 -0700 (PDT)
Message-ID: <ca9560eb-af9c-3cfa-c35e-388e7e71aab7@gmail.com>
Date: Sat, 30 Jul 2022 17:58:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Jerome Brunet <jbrunet@baylibre.com>
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
From: Heiner Kallweit <hkallweit1@gmail.com>
Subject: Meson GXL and Rockchip PHY based on same IP?
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220730_085857_327997_1830A81C 
X-CRM114-Status: UNSURE (   5.16  )
X-CRM114-Notice: Please train this message.
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

Meson GXL and Rockchip ethernet PHY drivers have quite something in common.
They share a number of non-standard registers, using the same bits
and same bank handling. This makes me think they they may be using
the same IP. However they have different quirk handling. But this
doesn't rule out that actually they would need the same quirk handling.
Eventually it might be possible to merge both drivers.
When working on the Meson GXL PHY driver, did you ever come across
this similarity?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
