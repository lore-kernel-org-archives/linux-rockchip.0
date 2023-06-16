Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CAA5EB64D9
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jun 2023 02:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hkNJ5RZjg/o3Vl4gHH9o1DFQmWLUVm9bqyBh/BiORms=; b=h9SriqXQQCUzoy
	htfMfOkaE6a8BhUnkwkM2PK4bo1/Y+aK+hsExG1qPqP3MxxI9ZsIpQymxSUx1mx1ojc4jbeC7cOYw
	/M8EBemqkHEAVT1ZqcGhrf7ZxmoB9VEd0oszesVQgVTypijok0vgWY3TI1Z9jRI/uSRucjedveMjX
	ehIPkZs1RiNKfwGzTtH6p64gy5u4lm/CiYHDZJopRde8BfsnJBmEc/6hlyguRH7dchp1lP/t55P8U
	nR+WYhuULAGiBVxCIlXY/5hRHurh2v8Ww5ZmX8kgPFpD//1R7nacHhhMk2HYzedwak3a++WKie4Mv
	srevHh2XoExgOvPywhRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9zBk-00GcvP-1r;
	Fri, 16 Jun 2023 02:27:48 +0000
Received: from mail-pf1-x430.google.com ([2607:f8b0:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9zBi-00Gcv0-04
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Jun 2023 02:27:47 +0000
Received: by mail-pf1-x430.google.com with SMTP id d2e1a72fcca58-66643830ab3so370024b3a.0
        for <linux-rockchip@lists.infradead.org>; Thu, 15 Jun 2023 19:27:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686882465; x=1689474465;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=lrm4RXCLtawSCTt2xEoMjdXS2vTA8X2w0nWYSNzEbCU=;
        b=Dh4SZj1BYzVhuC3v8F6tkuMbrYJ663MLo1gleJvGvFPvSItZVMquu9TZJxbJgs2d2s
         ufL0bD/rkhSaxSy9DaPROSkSKoe9D3zkYrfpkxHwPwA7DkLQEGu7TOECfG9K5rCUzOi0
         fIGmCVhwR+Y5Y4V2+yhgvAwqq6deSzjMr2+UJE2Zdnm4ogMcPqNs+zBFAizONru/WryO
         4Prm/57qma8ZkjeOD9guxz/Ag3pthT5SACK6q2jr6/DSULP/L+Mhr5FqiEaUKvKdBGED
         HK1ubyQMYoQSa1rTlGBpUsS4b7VuJEKlI3ZRPgaIHp7QRF43XIoUF3I1KwLjUHP1GVZV
         ni1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686882465; x=1689474465;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lrm4RXCLtawSCTt2xEoMjdXS2vTA8X2w0nWYSNzEbCU=;
        b=MqJMChOw5k2JVGKaF3usnZagRt10Aym3+O6YHgtSN4Uc8o3VpQV9azZWYwRJANNhX4
         AEMHLko7GlAcHqNmdjC0PWTZzOa539TPNnk2DuqC+pSRseHcq0TR1XLKx02vzUN9MrJ8
         wgPa+i5OyzGNpmfbxLIijd5fxAiITGBpmj0+RX+0UYQ65Z6H+lO/y9Skiwbkgtt6DsVU
         dR/de6sENo6b4zMYbvH59VParatxsQdCG38sX2C9OhAoyValhxf8tKdRISHvHa1WsM+d
         wNFSN8ZUNd8pR1MBQEttZKNcoAoC2s+EKV4H1a8MbanmiQ0aVigPM5HwbXtojViPEbiy
         a5/Q==
X-Gm-Message-State: AC+VfDzBcpuIIUm0nuXMT9mgNvQusrieadwmv5rl9Cd9l/aLWP4A8fTj
	clxrhc/jGxogUULf3DJP//b1fl75Cx0=
X-Google-Smtp-Source: ACHHUZ6KkhQj9St2fy/bZ0hKx7EtifQHGV6A4pYwLeNzUNrUXxeI5zanpcady3g+4UPEKkQ0M2d6WA==
X-Received: by 2002:a05:6a00:244a:b0:666:8cbb:6e02 with SMTP id d10-20020a056a00244a00b006668cbb6e02mr895703pfj.8.1686882464752;
        Thu, 15 Jun 2023 19:27:44 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c? ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id p3-20020a62ab03000000b00646e7d2b5a7sm1943024pff.112.2023.06.15.19.27.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jun 2023 19:27:44 -0700 (PDT)
Message-ID: <3c3fbecd-caf9-c432-0890-93cceade98c1@roeck-us.net>
Date: Thu, 15 Jun 2023 19:27:42 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: usb: typec: tcpm: fix cc role at port reset
Content-Language: en-US
To: Frank Wang <frank.wang@rock-chips.com>, heikki.krogerus@linux.intel.com,
 gregkh@linuxfoundation.org, sebastian.reichel@collabora.com, heiko@sntech.de
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, huangtao@rock-chips.com,
 william.wu@rock-chips.com, jianwei.zheng@rock-chips.com,
 yubing.zhang@rock-chips.com, wmc@rock-chips.com
References: <20230616022001.25819-1-frank.wang@rock-chips.com>
From: Guenter Roeck <linux@roeck-us.net>
In-Reply-To: <20230616022001.25819-1-frank.wang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_192746_058197_0D290746 
X-CRM114-Status: GOOD (  16.26  )
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

On 6/15/23 19:20, Frank Wang wrote:
> In the current implementation, the tcpm set CC1/CC2 role to open when
> it do port reset would cause the VBUS removed by the Type-C partner.
> 
> This sets CC1/CC2 according to the default state of port to fix it.
> 
> Comments are suggested by Guenter Roeck.
> 

I have no idea (recollection) of what I suggested here :-(

Guenter

> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
> ---
>   drivers/usb/typec/tcpm/tcpm.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/typec/tcpm/tcpm.c b/drivers/usb/typec/tcpm/tcpm.c
> index 3c6b0c8e2d3ae..9f6aaa3e70ca8 100644
> --- a/drivers/usb/typec/tcpm/tcpm.c
> +++ b/drivers/usb/typec/tcpm/tcpm.c
> @@ -4885,7 +4885,8 @@ static void run_state_machine(struct tcpm_port *port)
>   		break;
>   	case PORT_RESET:
>   		tcpm_reset_port(port);
> -		tcpm_set_cc(port, TYPEC_CC_OPEN);
> +		tcpm_set_cc(port, tcpm_default_state(port) == SNK_UNATTACHED ?
> +			    TYPEC_CC_RD : tcpm_rp_cc(port));
>   		tcpm_set_state(port, PORT_RESET_WAIT_OFF,
>   			       PD_T_ERROR_RECOVERY);
>   		break;


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
