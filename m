Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 890EAEB64D7
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jun 2023 08:34:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YJSVtbgr6vQsq+JrQDar+ZS7c8W3KqGy7PDC7VDVbgY=; b=45hs82CZNFCHo4
	slh6GORHOAFUGoLnDROIMKeVOd9IiLWyeRu3mcqPDYCZR3T7l3Kh7DxIr00/tk5wD6x0rhFGU90/C
	7v3QveZqZTzCx8iGK8ZFmb2vqrAOU2tc2jpnuKyeuU/maZxQu9n0zcXY3zc7pM4d75ZJvMNYMzv8Z
	UsdQjeckmQ1eB/qo1kogrYi1YslsBOviw54yGUH6dztQXtPgQUUFkLcvrzFS09Z3mhI7r+UStXrVk
	qH63xwgUrkeQL67SLjoRlFTdgfNihx3TE5LM4mpPN5Si4u4OZLtpXqpgaydcLKO4sQQLOb6H0watf
	fxIAvOV07uWMoZLeVCEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qA4u3-00HHe6-1x;
	Fri, 16 Jun 2023 08:33:55 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qA4u1-00HHdQ-0w
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Jun 2023 08:33:54 +0000
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-1b505665e2fso12374425ad.0
        for <linux-rockchip@lists.infradead.org>; Fri, 16 Jun 2023 01:33:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686904432; x=1689496432;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=r7W2YpiCgw7oCQ3PCXW/fc0lvN+XnDETz4eXDeHajPk=;
        b=QBJDcX12ahEDU3oiRXfENkwYtpK2H41lfLNbf5z4n8fAx0GbHhTHQeTMOPmQJOQ5o/
         v7o8KTdwIZ338wTpTtNspXxI7Ss1m/w80pcuy0nI1emMF4RN/YQ/3AQNM4C+bQoTYZky
         5ubuEv2PBXdndvb69o5a6WfmhMuKVkadAe77zVFmf3oblwNI92wqXrugLR1nM2wC8UNm
         mVYorbvsubd+cbyhToHv6sXz8z1Mk5Ifw7RfxGSEEk1AouVZ4Ir3byN87dZIwsd472O4
         qU6LcivUTWvUqKZfvuq00wCs8kNpsjOvPeGR8DwEO2sfwNN5fQUQzDN3+dEl/M0eWTpB
         2v1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686904432; x=1689496432;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=r7W2YpiCgw7oCQ3PCXW/fc0lvN+XnDETz4eXDeHajPk=;
        b=X0s8XYz2f2tD8xlItn0n7Z81cgnPBgCDElQpOvogmwttfmbLhFVpOBsbUm+1zAapuG
         FD/3IZF7bdG5zne1kdJgcAWTTcFGRGHUjdv+zgzeR5ruMmAkt00qAI0bvTpgsg6XITri
         rJENXk0YGFx948hAhHVjmCbtxXAvdQTOd7lGOB21lAP1F5IuhIgCbhTPml6mEG8MfdfR
         6m5m5j24+jH3msY2jikqoVUuoO2b1666nlJh4rSwQ7zfGVQUVDcAG/QJnjSIcgBPSpDF
         ei6ToMi/KMj8ggL3nF1l8d2/5tNWX03lifa33QVppRn+sb2pj/bz5VVSTObmu9rZSSYH
         H38A==
X-Gm-Message-State: AC+VfDzp+pYmafwXv+5pqWkT3CoXCluSeQ/3j1depUDB9/VEKm9njWm2
	fUkKkWk58XRx+xoxF+M2wfA=
X-Google-Smtp-Source: ACHHUZ6yofeCZMkq0H9Y2b1OS2wkY+A5CbNG2Lnz4QU7gP9mrnYimT8A3DEGmtJef4zs1Tm4UTLRdg==
X-Received: by 2002:a17:902:f90d:b0:1b5:b28:2ff1 with SMTP id kw13-20020a170902f90d00b001b50b282ff1mr7130875plb.10.1686904431733;
        Fri, 16 Jun 2023 01:33:51 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c? ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id h3-20020a170902680300b001ab12ccc2a7sm15411335plk.98.2023.06.16.01.33.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jun 2023 01:33:50 -0700 (PDT)
Message-ID: <b11a278d-8098-a1f0-7aae-9dc882ab48c4@roeck-us.net>
Date: Fri, 16 Jun 2023 01:33:48 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [v4,1/2] usb: typec: tcpm: fix cc role at port reset
Content-Language: en-US
To: Frank Wang <frank.wang@rock-chips.com>, heikki.krogerus@linux.intel.com,
 gregkh@linuxfoundation.org, sebastian.reichel@collabora.com, heiko@sntech.de
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, huangtao@rock-chips.com,
 william.wu@rock-chips.com, jianwei.zheng@rock-chips.com,
 yubing.zhang@rock-chips.com, wmc@rock-chips.com
References: <20230616075241.27690-1-frank.wang@rock-chips.com>
From: Guenter Roeck <linux@roeck-us.net>
In-Reply-To: <20230616075241.27690-1-frank.wang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230616_013353_331858_5F845FB1 
X-CRM114-Status: GOOD (  16.38  )
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

On 6/16/23 00:52, Frank Wang wrote:
> In the current implementation, the tcpm set CC1/CC2 role to open when
> it do port reset would cause the VBUS removed by the Type-C partner.
> 
> This sets CC1/CC2 according to the default state of port to fix it.
> 
> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
> Changelog:
> (no changes since v3)
> 
> v2:
>   - Make some tweaking based on the default state of port, commented by Guenter Roeck.
> 
Specifically: Do not set the state to TYPEC_CC_RD unconditionally
but make it dependent on the port's default state.

Guenter

> v1:
>   - https://patchwork.kernel.org/project/linux-usb/patch/20230313025843.17162-2-frank.wang@rock-chips.com/
> 
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
