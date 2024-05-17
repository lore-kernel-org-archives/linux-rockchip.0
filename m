Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 809B1C25B78
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 May 2024 19:50:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ujNfTUMdKjA5sJzU23Fw3UhPMHjyjbM/P9BfjvSNPT0=; b=Urx3LwDzmuhf18
	3Kdt9+ZgCRNMyqG96MMU5P0feAoA1lF27O+MuanTgOzUYMOpB95r4RXkHbYQn8LtgydyZ1aejDQey
	iwpzICLcEITLNRuJFCiQTQzK0M3gpp7TtE9UGbwG5fI0IYiluz2zixmHvXOPht2YfqFSbzduUE4a/
	nEeb7Gqlo9Rvd+org0ZS16ErQBqNnZp3d0sgyH/Xen2HGxkux2baKAB9MWvohprNaAUIqrWyIxdJ7
	8uQJ3U4mjOaRhF6TZEK9rMd3mSPckuJ93qn6IfKx6dAHkYGZ8+P93T1hD0qFzd77dbLoCfBaxxW6P
	NLXOgVbz4r6EXPbfBxew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s83ad-00000008rEX-2N5O;
	Fri, 17 May 2024 19:50:03 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s83ab-00000008rDa-1RDd;
	Fri, 17 May 2024 19:50:02 +0000
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-1ed5cbf7b49so2290115ad.2;
        Fri, 17 May 2024 12:49:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715975399; x=1716580199; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=DkC02ajmDp8au8nOQAmSiKZwlbDJdPCrp7KJQmbB5LI=;
        b=E6YfVOFQXfVjRzLNIjDo+Ma9+j9v7LjOAXFe+BpxF5h8t3swAC/0UJ3vaWoizbyt7M
         d4/4fyutqWIplhLVK9YhAwyhlVAYyyUpfm7Mf/Seyoyaquf2y7Wy/5Pta17Y7KkFfzgL
         B2e5oHnlK89iLznxl61XdcObYAjPm4RnDb3E/T5wBj1qdH+Muu6hfIgrjLoqrjXBAtoV
         T4A1OU0YGpVY1ObfaVIHtTmt2AkZi/WA6K1rfF5q7DnvU4f5En2T6vLPxd3y6l1R4nkt
         Xeo3Ad8aKL/IQvdIzquQDlx/+oFJ3302sZt7ZAS+TXE3kHLz/Cn33S4BEgMIOx7koBQL
         v00w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715975399; x=1716580199;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DkC02ajmDp8au8nOQAmSiKZwlbDJdPCrp7KJQmbB5LI=;
        b=whO/CEqHhNs0kmADigFkPkmyEqa8xF1HLyAK8a+5+kNT2rGredGKwe24KuRUIYR7EP
         ak7qAei3Wj0bc3dmYJk5tPDSEe0ZNilf6MdYFOgV6zuoWvqFlA4ScnHI+x6I5kLjQFO8
         GDprF8xEMANTDdBir7PnqytSG2N71c+gB3/TA60PIUZggqlqsacrGqcd9nKvUcz5A4yZ
         9/5xC0pewURH2pSb9gbjOJBfn0lfKWYTiETUWlRmJYHuqCZ+rHWdg8YP4eQBs484nBa2
         jy1auO+9fD+xm1ja+CUpq2OAaOgiz6Db65i0N2vebEEcuikiHFTo94naP2Y227MUlSka
         AkEw==
X-Forwarded-Encrypted: i=1; AJvYcCULtJCU2ltRdlcBV/0GS8eutt1wCcjETGMcs6RzF3QqUymib3XqQGM1k/wWD/wLmhFI2nh8q2BdKw3rmdp+ayObvmx60U6LZ0zllZsiXw79ErcWdD4ND8/dJ31cjM7/hhaXeWFUsqfCCAUWWvW8qKpi/RbBmK6wg/Y=
X-Gm-Message-State: AOJu0YzNvBN1hzrNubYoL7ZCn0L7eEIAQ2o3QlGPzNubVDMcYVMG8JFU
	Qj5ah/Q1O6o6059nTG54S2IpvKK9nvGAopW9rtOVQyS7/upghFiurfaX1JdgMtLjjYMPr5J3kIR
	hX/I5sGTFF22UakwjQ4/iRsuricg=
X-Google-Smtp-Source: AGHT+IHoGq3IWj7advFtjZZYLQJht5smm9rTMguTThuxymXQmX3xKdysGKnWcNRH2uPZihxbeifZaQku1+dwYWHzZSM=
X-Received: by 2002:a17:90a:8c7:b0:2b6:20a0:441e with SMTP id
 98e67ed59e1d1-2b6cd1f1b31mr21460875a91.4.1715975399291; Fri, 17 May 2024
 12:49:59 -0700 (PDT)
MIME-Version: 1.0
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 17 May 2024 16:49:47 -0300
Message-ID: <CAOMZO5Bp1kfq9C7HpK=V+v=LytZFdbfcvgg1MmhYqqkntHVb2A@mail.gmail.com>
Subject: rv1108: SPI DMA failure
To: Mark Brown <broonie@kernel.org>, Andy Yan <andy.yan@rock-chips.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	linux-rockchip@lists.infradead.org, 
	"moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>, 
	linux-spi <linux-spi@vger.kernel.org>, Otavio Salvador <otavio@ossystems.com.br>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240517_125001_408456_F917C503 
X-CRM114-Status: UNSURE (   9.51  )
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

Hi,

On the new revision of a rv1108-elgin board, there is an Infineon SPL9670
TPM device connected to the SPI bus.

On kernel 6.9, the following SPI transfer errors occur:

[    2.747002] tpm_tis_spi spi0.0: SPI transfer timed out
[    2.747564] spi_master spi0: failed to transfer one message from queue
[    2.748239] spi_master spi0: noqueue transfer failed
[    2.749039] tpm tpm0: tpm_transmit: tpm_recv: error -110
[    2.749569] tpm tpm0: TPM in field failure mode, requires firmware upgrade

The same issue happens with older kernels, such as 5.4.

If SPI DMA support is removed like this:

&spi {
    pinctrl-names = "default";
    pinctrl-0 = <&spim1_clk &spim1_cs0 &spim1_tx &spim1_rx>;
    /delete-property/ dmas;
    /delete-property/ dma-names;
    status = "okay";

    tpm@0 {
        compatible = "infineon,slb9670", "tcg,tpm_tis-spi";
        reg = <0>;
        spi-max-frequency = <10000000>;
    };
};


Then the TPM device works correctly.

An old RV1108 SPI bug was reported by Otavio:

https://lore.kernel.org/linux-spi/CAP9ODKpW=h6SVtsn-uuDQ4+TgR0NnjBW==8vwyQD4+x_dbFzRQ@mail.gmail.com/

That indicates an RV1108 SPI problem after moving from polling to IRQ.

Mark's made a good point in reply to Otavio's report:

"Does the interrupt ever fire?  I'm wondering if the DT is wired up
correctly for the particular SoC you have, or if it's even wired up at
all in the hardware."

Can we get some help from Rockchip to clarify these issues on the RV1108 SPI?

Have RV1108 SPI DMA and IRQ been tested by Rockchip?

Are the rv1108 SPI DMA/IRQ descriptions in the rv1108.dtsi correct?

Any known SPI hardware issue on RV1108?

Thanks,

Fabio Estevam

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
