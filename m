Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E615C74A5B
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Mar 2023 12:58:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2aRhMaR3oR9vkL5/FLd3kVOJKWrQ+xZntcQfqIy5M00=; b=4Y64mUmwCwrDJV
	K9ccXiavFDlop0Jx04kRACOCIOzQ+hG6N2Egz7rAsfsPY+zQpT6QjTwqYtXkUaiD3ZeG/BcwQnP2T
	CYrc5LoXSrHUYZFHFh0vSYUVcb8v9VgFuT8zy1nSASpSWFEs2XHwWFfpUTW1f3pW+HlUYmOcVaTmJ
	SVc+8pvXyy1s37y5bbdwHjLmSFX4pR82S0fkVA9vunBk2UjbkT84VaRmdnxevYgPui74J1ua1pbh6
	jeKLquYTpxwyd44v618ivBbfLd6dMnNUfpGwZeXypQ612EMx89jqqjENbOC5h8k62fUOUk5Y7lrnn
	wdB4FEBzl9KxqEqqV9BQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pd9ev-002I9j-27;
	Fri, 17 Mar 2023 12:58:13 +0000
Received: from mail-il1-x12c.google.com ([2607:f8b0:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pd9et-002I8q-05
	for linux-rockchip@lists.infradead.org;
	Fri, 17 Mar 2023 12:58:12 +0000
Received: by mail-il1-x12c.google.com with SMTP id s7so2676825ilv.12
        for <linux-rockchip@lists.infradead.org>; Fri, 17 Mar 2023 05:58:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679057889;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=U8+4cXu3qDjUouNJqRhPXdnyraju2nbEvYbMrucPxSE=;
        b=YZy43MHhLsBKYE3NR/zoHY7UjvO8FU9R96nyRXlZAZegB/5jclv2il9icUwmi4/pYR
         bbBhrDEn51XVLiOwVd3RzY8rR8VQItdGtyyDgfkV0l+oJgqQRQvrQbQhOEnr5q8I1hyR
         r6geo/w9ouL30rFvDVtNLe7nt2AOXzCA6RFjYfJvGoH2o0cwrsdq9ReZJUiSsFqQ7sXv
         WHj4cDRq8IRnd1X/TwqR07CReq0FSkd5DDQNvHsEYD31F5n84qhCP5D08EEAlgCHyXLS
         zqYxN22vwAp9UiGJhAbrEx6083QEazixDu/GS3OvikqBRHIG+I0MeBgoyXHGVawUYMGK
         y1CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679057889;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=U8+4cXu3qDjUouNJqRhPXdnyraju2nbEvYbMrucPxSE=;
        b=YFKdFnOc6Lg9qvOZr9jMPFBL2SOLINLDDPqt1uPJyaJwmufxCNe+N+X2jGa17wnWnw
         1xWk28a6aML2m9f1pHnRl8IeBsMmqtRajv+UDFSiXbBiapcb5cDNX+KB+y6EfNJgnccl
         0CUWXwNmzHyMmIDnurYtK5PGAA/Ngb69LQ4IpGPzyWxKYOi8dwzvFGqumCRxE2j8AP1Y
         cdcX8PfSD+hd3dP3k923Ib6bPjKVU3Fsb3/B1E4c/hjTMcTB9htEKzT61M7othCIr38p
         N23uu9z1RRM2DS9OijnfEO7Uqgo0OxuzRMSLZUbAhCyT7ntOE6SnCbWw4zlSAsDRF9/D
         aVXw==
X-Gm-Message-State: AO0yUKUd9VjUebktTSTUIfM2n2hi+9wkEWslCsjTYxWQbcozziCcIUk4
	++RWQWZJv/1VOaE1isxpMEiAFvGolHQ=
X-Google-Smtp-Source: AK7set9imSwZfpVK/XShg0oQ3fFaFqKk37d66TfcA+zJ0qe4+XvX2no2yd7RUImM07ROYPHTSIg1Vw==
X-Received: by 2002:a92:dc4d:0:b0:323:1470:a08c with SMTP id x13-20020a92dc4d000000b003231470a08cmr9687213ilq.8.1679057889107;
        Fri, 17 Mar 2023 05:58:09 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c? ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id x7-20020a056e020f0700b00317a2fed5b6sm585329ilj.45.2023.03.17.05.58.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Mar 2023 05:58:08 -0700 (PDT)
Message-ID: <f5650fa4-db16-b1e4-f5b4-917fbcabb415@roeck-us.net>
Date: Fri, 17 Mar 2023 05:58:06 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 4/4] usb: typec: tcpm: fix source caps may lost after soft
 reset
Content-Language: en-US
To: Frank Wang <frank.wang@rock-chips.com>, heikki.krogerus@linux.intel.com,
 gregkh@linuxfoundation.org, heiko@sntech.de
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, huangtao@rock-chips.com,
 william.wu@rock-chips.com, jianwei.zheng@rock-chips.com,
 yubing.zhang@rock-chips.com, wmc@rock-chips.com
References: <20230313025843.17162-1-frank.wang@rock-chips.com>
 <20230313025843.17162-5-frank.wang@rock-chips.com>
From: Guenter Roeck <linux@roeck-us.net>
In-Reply-To: <20230313025843.17162-5-frank.wang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230317_055811_060170_2CFEB0FD 
X-CRM114-Status: GOOD (  17.90  )
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

On 3/12/23 19:58, Frank Wang wrote:
> Invoke set_pd_rx() may flush the RX FIFO of PD controller, so do
> set_pd_rx() before sending Soft Reset in case Source caps may be flushed
> at debounce time between SOFT_RESET_SEND and SNK_WAIT_CAPABILITIES state.
> 

Isn't that a problem of the fusb302 driver that it flushes its buffers
unconditionally when its set_pd_rx() callback is called ?

Guenter

> Without this patch, in PD charger stress test, the FUSB302 driver may
> occur the following exceptions in power negotiation stage.
> 
> [ ...]
> [ 4.512252] fusb302_irq_intn
> [ 4.512260] AMS SOFT_RESET_AMS finished
> [ 4.512269] state change SOFT_RESET_SEND ->SNK_WAIT_CAPABILITIES [rev3 NONE_AMS]
> [ 4.514511] pd := on
> [ 4.514516] pending state change SNK_WAIT_CAPABILITIES ->HARD_RESET_SEND @ 310 ms [rev3 NONE_AMS]
> [ 4.515428] IRQ: 0x51, a: 0x00, b: 0x01, status0: 0x93
> [ 4.515431] IRQ: BC_LVL, handler pending
> [ 4.515435] IRQ: PD sent good CRC
> [ 4.516434] PD message header: 0
> [ 4.516437] PD message len: 0
> [ 4.516444] PD RX, header: 0x0 [1]
> 
> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
> ---
>   drivers/usb/typec/tcpm/tcpm.c | 11 +++++++----
>   1 file changed, 7 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/usb/typec/tcpm/tcpm.c b/drivers/usb/typec/tcpm/tcpm.c
> index 9e583060e64fc..ba6bf71838eed 100644
> --- a/drivers/usb/typec/tcpm/tcpm.c
> +++ b/drivers/usb/typec/tcpm/tcpm.c
> @@ -4321,10 +4321,12 @@ static void run_state_machine(struct tcpm_port *port)
>   		tcpm_set_state(port, unattached_state(port), 0);
>   		break;
>   	case SNK_WAIT_CAPABILITIES:
> -		ret = port->tcpc->set_pd_rx(port->tcpc, true);
> -		if (ret < 0) {
> -			tcpm_set_state(port, SNK_READY, 0);
> -			break;
> +		if (port->prev_state != SOFT_RESET_SEND) {
> +			ret = port->tcpc->set_pd_rx(port->tcpc, true);
> +			if (ret < 0) {
> +				tcpm_set_state(port, SNK_READY, 0);
> +				break;
> +			}
>   		}
>   		/*
>   		 * If VBUS has never been low, and we time out waiting
> @@ -4603,6 +4605,7 @@ static void run_state_machine(struct tcpm_port *port)
>   	case SOFT_RESET_SEND:
>   		port->message_id = 0;
>   		port->rx_msgid = -1;
> +		port->tcpc->set_pd_rx(port->tcpc, true);
>   		if (tcpm_pd_send_control(port, PD_CTRL_SOFT_RESET))
>   			tcpm_set_state_cond(port, hard_reset_state(port), 0);
>   		else


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
