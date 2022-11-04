Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20220C433FE
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Nov 2022 07:31:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sMo8ZmDreZa2ifDkDyJlG+jco55dh2zvcAUjquObxGc=; b=ZhISMu1NWFtoKn
	bOFTnqsD0wMOP0ZHMLIc40WcZBTRRlxKpIxCAkJSTIyyoR33S+O0zosFFlaolqEpe/DjjkD2Pvbqh
	nzMHOWugTKZtRKzWY88SDCUwhK3GtbHJCjKtwKzJ3iBDIqhknDEP86Epakxy+d4cXvz44ffUuIdU1
	+WcCc8+Ci1aaZAqp5DdjLK2+9wg/t+OR5jfgwYx3isIQRVHT0+ZG2c0b9tdozY59NSExng4i/ANgt
	YTSuoIu/XGwjUjgf2B/UKb559KbVVAck3l1ihVHzK0hVUKMv613jgiMdj7L2bn7E7MSd2J8TMed4e
	fMB+grt35nAGMbFz4cOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqrAR-002mNc-TM; Fri, 04 Nov 2022 07:31:07 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqrAL-002mKK-M0
	for linux-rockchip@lists.infradead.org; Fri, 04 Nov 2022 07:31:06 +0000
Received: by mail-wr1-x42b.google.com with SMTP id z14so5846480wrn.7
        for <linux-rockchip@lists.infradead.org>; Fri, 04 Nov 2022 00:30:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=orgUum75kO3mxGZKGpA9/prw1jAc40FrjMlN50pgpP8=;
        b=iV29rlj5LEzTTuolIj6HfjVxTpts9vywAncmtY33E8bL3TvUTOxTqR+r0TS7FXHAqn
         Lq/qZUGSJnZgm7VP+BTyGm9CFfSuV8B6c36Sy7+wDvu1AGjq39dyuTMfRBgjteHBLZd7
         TZWxDJ9WoHdmJaWDpoobJWz32Em+Nx9nTg8KQ1wgpl1AM2yz5Eof/+RwGlIdQRb2ObBD
         AScw+6Y2icp96gbEW9GQzpCGgphYx0+Q50zJQX/bSr7A69xsi1vItqinv4vAKfIgu3V5
         fcu7cRuGt/1DBNYfowMSzIYUsYX10I67VU4jJeU85aIjAXUxMZK99Uh4/fSQOViwnYQk
         AP0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=orgUum75kO3mxGZKGpA9/prw1jAc40FrjMlN50pgpP8=;
        b=Et4MNYoHxn8A/noqIotCnct72zusyoaxLFDjt96YGuBviGKzOWHM+NfQGwj3y6GW0F
         opSuijdtvZHZEESyV3PGjRBmW6MUolYOD0JDsSThAa/RT7HzTWi9ris3i5IVJgfEp7fX
         qIYAxFaf+/hgVjIWLoGmVBOH4b2KumlOD+taXlAQhw3xQ9cId3+hFLA7uUYIpqzBO+sT
         66rA4feumyx6GouGwj2W8S96ElA72IAQUhks5qflfIvkoW4qAZ5KWBMAKKWvRa80SExY
         y2JPSb8QkR9aiIV6qky+KsK9neNPi9d+S0K8HrSHCZBPZo1BtFj3zPK3LQqP/RCY4Zo5
         YnVw==
X-Gm-Message-State: ACrzQf2zjPvesZqPCucZHyVZmbmU7w38UeVtaU/sSJM7zPg9xd/xTDo9
	ACtDOtQCvOtuyNlBMd34vHx8jg==
X-Google-Smtp-Source: AMsMyM6HO7azKIgRXgvhDjn9z4jfxA3QL9eOdmQYZ8skG4pF0vM71JR0bJOOgP1RFq7AEwM9PShlZg==
X-Received: by 2002:a5d:6181:0:b0:22e:3db0:67a2 with SMTP id j1-20020a5d6181000000b0022e3db067a2mr21962144wru.257.1667547048514;
        Fri, 04 Nov 2022 00:30:48 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:4a02:2aff:fe07:1efc])
        by smtp.googlemail.com with ESMTPSA id l6-20020a5d5266000000b00236a16c00ffsm2701107wrc.43.2022.11.04.00.30.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Nov 2022 00:30:47 -0700 (PDT)
Date: Fri, 4 Nov 2022 08:30:42 +0100
From: Corentin LABBE <clabbe@baylibre.com>
To: Yang Li <yang.lee@linux.alibaba.com>
Cc: herbert@gondor.apana.org.au, davem@davemloft.net, heiko@sntech.de,
	linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Abaci Robot <abaci@linux.alibaba.com>
Subject: Re: [PATCH -next] crypto: Remove surplus dev_err() when using
 platform_get_irq()
Message-ID: <Y2S/osIvNJzs1jU5@Red>
References: <20221101021751.89362-1-yang.lee@linux.alibaba.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221101021751.89362-1-yang.lee@linux.alibaba.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221104_003101_918367_F0549283 
X-CRM114-Status: UNSURE (   9.99  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Le Tue, Nov 01, 2022 at 10:17:51AM +0800, Yang Li a =E9crit :
> There is no need to call the dev_err() function directly to print a
> custom message when handling an error from either the platform_get_irq()
> or platform_get_irq_byname() functions as both are going to display an
> appropriate error message in case of a failure.
> =

> ./drivers/crypto/rockchip/rk3288_crypto.c:351:2-9: line 351 is
> redundant because platform_get_irq() already prints an error
> =

> Link: https://bugzilla.openanolis.cn/show_bug.cgi?id=3D2677
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
> ---

Hello

The subject should start by "crypto: rockchip:"

Otherwise it is:
Acked-by: Corentin Labbe <clabbe@baylibre.com>

Thanks

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
