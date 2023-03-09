Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73BB4C61DA4
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Mar 2023 10:44:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6aahsdvy8AiekOeQT+UYYs1jNN7o6WOMdhXiRiPpsYo=; b=4WU2vlIdLWJ1uk
	Th5+5DOXURk8vYF1WFWlHotNT3UwPiEapSBtJMhHpHwC04j5jnJ+JZW5XaNR0n6ftwG5c5N1gOAXC
	sn+f2hrRaQyW6RaEZDstnZ3irrY8fCS2UCFqH1eHRTVknfQHCOEj81a23NBAzpFzvnwfXB8dT/6WY
	T1mgHjzRzG1KIsLK6E82a3vzZjcD+P8dNGpbOAVSEBYpaGAKASXNTXWh5LEhiwDaQ+Ge6A1dLeg9l
	C2ZqqJnxARIeEArFjB+alD7pSChagNgggvROSEA6fte/tM5TPvC+YEzLW3EzTjJuhRGTRkqtfd3Ib
	1VhVDbW6M/R9wC8UQd/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paDl7-009Au0-D8; Thu, 09 Mar 2023 10:44:29 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paDjN-0099ag-PQ
	for linux-rockchip@lists.infradead.org; Thu, 09 Mar 2023 10:42:43 +0000
Received: by mail-wr1-x429.google.com with SMTP id h14so1384699wru.4
        for <linux-rockchip@lists.infradead.org>; Thu, 09 Mar 2023 02:42:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678358559;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AXe5GLVgfCGpsOd/5Hq05tqMS28XNylXrDvLRZzzBYk=;
        b=nBr8nAd36m9PAaXhfYM/4OLaddFdsGqVE33IkJXe836CVY1mwrMaJ0z6xZBf96qoOI
         wHtu0PFtoKoyIzX+VPr+/fuzdwvpjf7WHn48t+f9zcU6YwYZWztwBuqGj7l0dwdbArgj
         9BdJxnMMnENBMqvEWmtN9PjHCRl7l2YExcQXYKyBbziRvao/CePqrt7EvP4HpVtto5VH
         QXi3YjTFTii/7goIfJr/GTdt68ovUVdmBOWoUiiz0gXw5VAu3RMa5w0b1gBU8OSuUqb4
         AEtkZbqFYD4W0WJ0d3IiA/1XF2s9Fl82n7X/PtjFCiLZRgjUzj9Q13c24vjHb1a/yAmF
         vQrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678358559;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AXe5GLVgfCGpsOd/5Hq05tqMS28XNylXrDvLRZzzBYk=;
        b=FvdybFI9yU1pWiiyGaFxySrePqrEqPefmvbPxNPeqV+gr5K42zb/gzyh+Pf42ibtkP
         Ufa6BU1DSZtvLiZZDOAMUzVXt8MYGUEBEemBoETd4Gtc8D6MTUehP6DkFQHUgjC3OqJW
         uVYQB8JtCeRKdk4jkoB0ltay9W03adDCB7kPO4ExAjNlvoeyb4mRgM2gbwCGKZEjtMbQ
         A7nJMJbJaGIo+bX8Vq40B8XFF/ybSa8o8rUdbYAm+bXLtAjYnk9uBBFyf+VjBIj1Nnj/
         k+LW54+/3SzZAX9/oddPZuf53d+jbQKKPX4uCWGlS82HB1NPssmA4C3OoTBlUy0uq6U9
         HCjw==
X-Gm-Message-State: AO0yUKWJh6JPnFihrV+dsiQRA7KeaFkhsMuwcqP7kAlnYAkLHHwnU1we
	cFfbuWqLT0szy6u6JrYmAjR8eQ==
X-Google-Smtp-Source: AK7set9TX+g8GQa3ZvYm7K5IyQckLiVBKmzBF9eqRJS1rvlystpDX78yR8o1b1wUu4lOee+V+S+WMQ==
X-Received: by 2002:a05:6000:507:b0:2c5:4f2d:d9b4 with SMTP id a7-20020a056000050700b002c54f2dd9b4mr12687108wrf.58.1678358559301;
        Thu, 09 Mar 2023 02:42:39 -0800 (PST)
Received: from [192.168.0.173] ([79.115.63.78])
        by smtp.gmail.com with ESMTPSA id f12-20020a5d58ec000000b002c71b4d476asm17579951wrd.106.2023.03.09.02.42.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Mar 2023 02:42:38 -0800 (PST)
Message-ID: <1849e2c8-54f5-9e56-4ed8-8b0e4a826d04@linaro.org>
Date: Thu, 9 Mar 2023 12:42:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH] spi: Replace `dummy.nbytes` with `dummy.ncycles`
To: Michael Walle <michael@walle.cc>
Cc: Serge Semin <fancer.lancer@gmail.com>, Sergiu.Moga@microchip.com,
 Mark Brown <broonie@kernel.org>, Tudor Ambarus
 <tudor.ambarus@microchip.com>, Pratyush Yadav <pratyush@kernel.org>,
 miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
 Nicolas.Ferre@microchip.com, alexandre.belloni@bootlin.com,
 Claudiu.Beznea@microchip.com, chin-ting_kuo@aspeedtech.com, clg@kaod.org,
 joel@jms.id.au, andrew@aj.id.au, kdasu.kdev@gmail.com, han.xu@nxp.com,
 john.garry@huawei.com, matthias.bgg@gmail.com, avifishman70@gmail.com,
 tmaimon77@gmail.com, tali.perry1@gmail.com, venture@google.com,
 yuenn@google.com, benjaminfair@google.com, haibo.chen@nxp.com,
 yogeshgaur.83@gmail.com, heiko@sntech.de, mcoquelin.stm32@gmail.com,
 alexandre.torgue@foss.st.com, michal.simek@xilinx.com,
 bcm-kernel-feedback-list@broadcom.com, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 openbmc@lists.ozlabs.org, linux-mediatek@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com
References: <20220911174551.653599-1-sergiu.moga@microchip.com>
 <20220925220304.buk3yuqoh6vszfci@mobilestation>
 <18e6e8a8-6412-7e31-21e0-6becd4400ac1@microchip.com>
 <20220926172454.kbpzck7med5bopre@mobilestation>
 <1766f6ef-d9d8-04f7-a6bf-0ea6bc0b3d23@linaro.org>
 <f647e713a65f5d3f0f2e3af95c4d0a89@walle.cc>
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Content-Language: en-US
In-Reply-To: <f647e713a65f5d3f0f2e3af95c4d0a89@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_024241_874204_F1412F06 
X-CRM114-Status: GOOD (  16.71  )
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



On 09.03.2023 10:38, Michael Walle wrote:
>> In an ideal world, where both the controller and the device talk about
>> dummy number of cycles, I would agree with you, buswidth and dtr should
>> not be relevant for the number of dummy cycles. But it seems that there
>> are old controllers (e.g. spi-hisi-sfc-v3xx.c, spi-mt65xx.c, spi-mxic.c)
>> that support buswidths > 1 and work only with dummy nbytes, they are not
>> capable of specifying a smaller granularity (ncycles). Thus the older
>> controllers would have to convert the dummy ncycles to dummy nbytes.
>> Since mixed transfer modes are a thing (see jesd251, it talks about
>> 4S-4D-4D), where single transfer mode (S) can be mixed with double
>> transfer mode (D) for a command, the controller would have to guess the
>> buswidth and dtr of the dummy. Shall they replicate the buswidth and dtr
>> of the address or of the data? There's no rule for that.
> 
> But in the end that doesn't matter because they are just dummy clock
> cycles and the mode will only affect the data/address/command. Therefore,
> the controller is free to choose the mode that suits it best.
>  > But that begs the question, is ncycles in regard to DTR or SDR? That is,
> are you counting just one type of edges or both the falling and rising
> edges. The smallest granularity would be ncycles in regard of DTR. To me,
> it's not obvious what the SEMPER Nano Flash [1] uses. I'd say we choose
> the smallest granularty in spi-mem to be future proof and maybe provide
> some spi-mem helper to help setting the cycles for SDR/DTR. As an example,
> if you want to wait 4 cycles in SDR you'd have ncycles=8 in spi-mem.
> 

No, we can't invent our own measuring units. We have cycles and half 
cycles (regardless of the transfer mode used (STR, DTR)).

> So you won't need the mode nor the dtr property.
> 
> -michael
> 
> [1] 
> https://www.infineon.com/dgdl/Infineon-S25FS256T_256Mb_SEMPER_Nano_Flash_Quad_SPI_1.8V-DataSheet-v01_00-EN.pdf?fileId=8ac78c8c80027ecd0180740c5a46707a

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
