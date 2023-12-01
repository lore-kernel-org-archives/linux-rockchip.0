Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70F5AC4167B
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Dec 2023 19:58:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RJuYV4KBrfP0GrBOgmVBrjhjx54OJIHLZFm3sdkK56c=; b=BqfsTQH5r2KCJ/
	jftqsO8/ncABfTArec0gv9cZA8ddjKvME8iFOhdV3BRIQNEppAfS1alAQlX7m378X+2XtF/UToovv
	fKYH+tYkUL116tXE5T4jmO2SdHflawVCt5m6wrpXjAHseiPNPs0zESzOHX5jLFBlAKnkJmXG4N4Fp
	7k6f9UX0cHh41kokXeJq40p/O9fSR0bh/vwCd93m8zwVxtHLLmiHldZjfYSUrHDlaR2fDeuy9YjAu
	k7mySAjU0p5yni6UHNttE9Jqw9idkv2PInCUDKLRu3Tpq5i1pJaRSjkMilMLo9WN00RES+My3nuHM
	7ynfPZGD/w+XIBGDgB7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r99eB-00EYMY-2z;
	Fri, 01 Dec 2023 19:57:59 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r99e8-00EYL7-3D;
	Fri, 01 Dec 2023 19:57:58 +0000
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-6cb66f23eddso2197667b3a.0;
        Fri, 01 Dec 2023 11:57:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701460675; x=1702065475; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zyzLIr5ihLwZiFHD5N2JP652u+Cx/BTgouJCwrn0qwM=;
        b=GHkcS5wy56HebRA60mOy2P1RnpQkuIduGcuQuwe23+Ws0NX0Yty91Qz+a1tm80v8Us
         I4hoqt0Txhww/oF3J0DPZyjPZa1bl7D5PQe8cK62LvtS8wZL1tlKcoMhFyIMR3jFsawE
         2ZlxUDDpPhm6BNEh5KwUnB0/Q0um/qvoy2HuOij6D8Bnu9PEw5jFTgrUjs1N0TGXJpXW
         Ap8kvbDUyEAR4Pmrq0tPee6S3aNZVCfoqYBT5Zms6nnGWCOiez/ld920k7YHtQFeiZqd
         20FEvBLaMlDZJitTf4TRcF9eIvnx2oSWqM1Ca7xS1XV8R7Bxem70MQ2MK3C91/gBdZae
         Kw9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701460675; x=1702065475;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zyzLIr5ihLwZiFHD5N2JP652u+Cx/BTgouJCwrn0qwM=;
        b=V+JfGYQHx4eNF7gTOGD4WY4YusKsLVZICvGyGEvZGf59J5R8kKPQhC5Qm+gI96zvfG
         zltqdWzIdnMmAT5FJ5jR/EneD7HgGw76eY3jEd8YcLpX+Es2NRDjcjvmj5TMo6OIvfQF
         lXhibGbKHCr+y6jdRaJUTFwYSCDQSH9Cz0PKQ0GSYj3uckLHP8lUteR0e4G72qIF0qj5
         LmCI3WPIlw9NNZkkxKsDe4sHycFpZpbi2GCNjkhUMSAICA+G1waNQWLeia99HvnISkI+
         LahZsW/9C3CXCUQsXyY3KZoTsiMcLczhsqBVcRItPTdmTFzhBUDBRS1GqF8uSN4pAw2r
         U6+g==
X-Gm-Message-State: AOJu0YxdDZL90/s1PPPcDPSeUle6urqb2pzEwCEwRKwhpqmM/ArgcECs
	PoJFjk7P9DM2if9zKL3xRmk=
X-Google-Smtp-Source: AGHT+IE8VsnFvihs21CgA96tW8zGqkLEsAw96IfJ4l/eeWR9gjNp6JxbBRZyLW3r/QoYCxhpVrp5Dg==
X-Received: by 2002:a05:6a00:1150:b0:6ce:2732:1dfe with SMTP id b16-20020a056a00115000b006ce27321dfemr28724pfm.56.1701460675218;
        Fri, 01 Dec 2023 11:57:55 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id e20-20020aa78c54000000b006cb88e7c005sm3362798pfd.203.2023.12.01.11.57.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Dec 2023 11:57:54 -0800 (PST)
Message-ID: <bf5c7806-7405-4728-bb10-7913368f62a0@gmail.com>
Date: Fri, 1 Dec 2023 11:57:53 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: defconfig: Increase SERIAL_8250_NR_UARTS to 10
Content-Language: en-US
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 Francesco Dolcini <francesco.dolcini@toradex.com>
Cc: linux-arm-kernel@lists.infradead.org,
 quentin.schulz@theobroma-systems.com,
 Heiko Stuebner <heiko.stuebner@cherry.de>
References: <20231201191228.343230-1-heiko@sntech.de>
From: Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20231201191228.343230-1-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231201_115757_037917_F378866C 
X-CRM114-Status: GOOD (  11.89  )
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

+Francesco,

On 12/1/23 11:12, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@cherry.de>
> 
> Boards using socs like the rk3588 can use up to 10 uarts, so the default
> of 4 is way too low. Therefore increase the maximum number to 10.
> 
> SERIAL_8250_RUNTIME_UARTS on the other hand describes the number of uart
> data structures to prepare before registering them. This option can stay
> at its default value of 4 since for one it can be changed via a boot
> parameter 8250.nr_uarts but also since
> commit 9d86719f8769 ("serial: 8250: Allow using ports higher than SERIAL_8250_RUNTIME_UARTS")
> 
> the kernel can register uarts dynamically that are above the
> SERIAL_8250_RUNTIME_UARTS threshold.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>

There is a competing patch set from Francesco being submitted as well:

https://lore.kernel.org/all/20231201171544.1901-1-francesco@dolcini.it/

looks like some coordination is necessary.
-- 
Florian


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
