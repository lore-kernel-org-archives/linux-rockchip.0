Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAD4A108E1C7
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Mar 2026 10:18:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8/g3Wr7dbqNRHkuJ0I4OepH4yuaI59odv1PuBOBeYcU=; b=y2FtbgvemWXurj
	J4AmadiDkSEOyt3FmVDBeUF3grSWytz7o3jTjNJs8JCHQynDZa57eD2IRHctovig9SOGW/puLRgNh
	l4uNhcZQsQI/L340/d5YkfseW5uQ6MMD+O2rcp3XYRKAqWjbvTFpf4EkA21f3xVH1GwuPqyy617VV
	JPQYze09W5etO4zk4QKCnBKAVTkurUK+UH4QCsoflqnVP2kJbN1Z1PBWsL15sMht6DO1PQoW9Q1xq
	NYjOg5zNJ0GSEn9Sy0Ij9lOvUkLWnx0dGDSj3NWRwPyKYd5A9XQdLUTN4BllVjeI418cXbqSmg/Lb
	knU7uwpQKmS3gCdvd51Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3AS9-0000000AOtP-1KD0;
	Thu, 19 Mar 2026 10:18:09 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3AS4-0000000AOpl-3bUK
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Mar 2026 10:18:07 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-4852e9ca034so6564595e9.2
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Mar 2026 03:18:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773915482; x=1774520282; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vtI5DygtRvulSb7YE3u7LJdebCzSARmgo/E7HSytGFo=;
        b=IL9PVgA2ffsOuol1+7hjal13Oxzwret1CZSMCH3/JtKKf7Wnxm3RSyWTNHG/ErFZ7C
         2FfrZ+T6WOlNQ8oOCXltN5fuTubDUUt3PIlSzPqZ6WcGxuCiMlGguPhi2cohA4jpo0ra
         WuQaZzRx0nqpBUm6RksNi2cBq811riQOSUwHe5Y4PybGQypqpNcBGV7MS5cPZ76YgfYP
         UTvF+mI+1TiuiG0Us2wtFt4yzan8ngBSei0nC3KVT6ZCC+eyHYIogWnNhbYxHq2EGi4V
         +DyIJyiDPrOQxX7/JFSvPeHQ3w0eYUNmsMTmrNMoXG0nWSIfI3QeRJn/SPRwdphY9H9d
         xYAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773915482; x=1774520282;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=vtI5DygtRvulSb7YE3u7LJdebCzSARmgo/E7HSytGFo=;
        b=L8/gYFHcWk/UvjY7tvatLJh6rgGNiTrbMgEjgHMWiiq10t299pSK1yqOi+WD4Y2hpA
         14ElPPOSfif0UN+6W8m8AxQXuN2beSPBs4FTt8M5bkXs8eI1p0qfnGhtG4dOCjN3QL1E
         3s31dgv+UClkE6UfzK2a0sAc9Hbj6TISkE5cX8DXfqZ9NkMy6IqXQ5ae/0AZwNSwXJbQ
         0CyaTDMsBm5FYsJNjJm0bTgUp+SsDBg/CO1sdjknUQd1+36dP6qqGciJN7YsoYvmbBkp
         0whZdY9wNIXiNA4eA0EBrafEeaysB0T04fc2g2SECP5yyRRefQNGsqpzZa888rXg6oEA
         STQg==
X-Gm-Message-State: AOJu0YwKOHUkNJvR7R1pKCWAC25+pxoT9XetcKjgvLxY1sD4o/2/eHQM
	/CHK/n82pPSnHMxb0EcrdEgHtSOAjZKj1jBGDEmbvmNTRYbasR0g6qL5
X-Gm-Gg: ATEYQzzOSMQLhI1AcbX+ZIFkhEaBTmLQVIP/VU3NA4d+MIhD5FzbAo8E6XTx/aJwOCd
	yS9LMKHPX3ULR54WOrWGriJ/UdGFRo0YkCYKA1hlgTN6pDNMfgZ29Flkke1u78ny8KW9HbIlIdF
	GZHFY2BlIhBq4LD0AGMrGSMxFxnXSyjdB30br6icLLjmgzTNC3oGumkhIoCwja+U8kJUCHtPXId
	v2JQ79s/ANWzpXJkLnpsaXPBp3lc0wzpc4aRC1qIYjHNQ12H8g/RYiSWzuDt95omKBdJkpWjJVD
	wAEs1/9FcCTHpBAycMdtRoX9eJGsrT+Sh3cDaOQl+qpER/t+FqtKRrR1lauOJe5Yh6LKCe7cHFE
	rUAgpO+/Z8kSrOB6/2Oni9lCwLEy9Bihj00OimI+tXsDzbON2sfLhoNVgBXpNwKZa37wQNxrbIt
	BG1RiUyj9HPokGsM8esqdLDgiTGF6wmxsscyXOvA==
X-Received: by 2002:a05:600c:4e49:b0:485:4136:99a8 with SMTP id 5b1f17b1804b1-486f4441072mr98897205e9.22.1773915482135;
        Thu, 19 Mar 2026 03:18:02 -0700 (PDT)
Received: from debian.levillagebyca.com ([213.152.28.84])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f4bb1b38sm71969575e9.3.2026.03.19.03.18.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 03:18:01 -0700 (PDT)
From: MidG971 <midgy971@gmail.com>
To: shawn.lin@rock-chips.com
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	jonas@kwiboo.se
Subject: Re: [PATCH v2] arm64: dts: rockchip: rock-3b: Model PI6C20100 as gated-fixed-clock
Date: Thu, 19 Mar 2026 11:19:11 +0100
Message-Id: <20260319101911.31348-1-midgy971@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <shawn-reply-message-id>
References: <7008e941-e4b0-a060-1cd7-55070fd5831f@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_031804_914548_D244A634 
X-CRM114-Status: GOOD (  11.31  )
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

On 2026/03/04, Shawn Lin wrote:
> IIUC, you are using Claude to help generate this patch, please
> describe it properly, for example,
>
> Co-developed-by: Claude claude-opus-4-20250514 [1]
> or
> Assisted-by: Claude:claude-3-opus [2]
>
> [1] https://lwn.net/Articles/1031473/
> [2] https://docs.kernel.org/process/coding-assistants.html

Thank you for the guidance. I used Claude as a coding assistant and
will use the proper tag in v3:

  Assisted-by: Claude:claude-3-opus
  Signed-off-by: MidG971 <midgy971@gmail.com>

> There is a missing pipe clock which should be fixed. Please
> refer to David's patch[3].
>
> [3] https://lore.kernel.org/linux-rockchip/d981fa84-bd05-ac9d-98ca-89ee47177829@rock-chips.com/T/#m6a8289609e6a60691d3c06358b6322c7aa5e43d1

Since our board-level &pcie3x2 override replaces the clocks property
entirely, v3 adds CLK_PCIE30X2_PIPE_DFT ("pipe") as well, consistent
with David's base DTS patch.

I tested v3 on the ROCK 3B (kernel 6.19.0-rc5): pcie3x2 probes
successfully and the NVMe device is detected at 15.75 Gb/s. The
pcie30_refclk clock appears in the clock tree at 100MHz with pcie3x2
as its consumer.

One note on the pipe clock test: CLK_PCIE30X2_PIPE_DFT is defined in
rk3568-cru.h but was not yet registered in the CRU driver in the
tested kernel build, so the pipe clock was excluded from the
functional test (pcie3x2 probe fails with -ENOENT at clock index 5
when it is included). The gated-fixed-clock node and ref clock were
verified working. I expect the pipe clock will work once the CRU
driver registers it alongside David's DTS patch.

v3 is sent separately.

Best regards,
MidG971

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
