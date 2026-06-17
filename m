Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D731BCD98F3
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jun 2026 19:15:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:Cc:References:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sjl1il/1ddJvlD7fcNXPGDfAP+vu1mJGAjXM2YneGaE=; b=nSs7pt3Nen1Gcl
	IlaFs40SvqvI5/N1+p6xwycoRpIrCMdz3ojNz9x0fClmDIE89ndQT90dOf/T49KSpB3PyQRmsnDyS
	FUuZL8lghzQBijg1sGlridrQxVCYuViyGtj/FXAgvemyAHA0nyu6+cRujqKOcU3eE8jO2vQw6NbUB
	pgLgOt2Q3EDdd5T1rf+L2JNSnPIz7GM4YJvPg36qSdbVhPGbRmE6NfWfVRj7SY8bhYfJfYXtCPx6V
	ZnDYpUs/RS9/LVBfNJCChfuJ3Is2uuxm+K0y74GUNRpYG20MqHhHk5tr7Z9OEViIhPjhx+rlPIxBP
	e/quf9K+l9ha7IpadFbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZvje-00000000FCU-2Aaa;
	Wed, 17 Jun 2026 19:15:38 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZvjc-00000000FBm-1NZx
	for linux-rockchip@lists.infradead.org;
	Wed, 17 Jun 2026 19:15:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: Cc:
 References: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1781723736;
 bh=4v1eEsKGlvRwTTS4YVH1FGhzyxT113XMnVu/R9kJqpo=;
 b=0suNeHQ9zbNOmJ7zAfRLRAHjwl8OpHPI+XKUOupsyf8Bb0tnNfaChoY3il9eDek44m9BYvVUz
 usVDmsUJ0K81ZKskxOnaVPzp7fwsxNuL6F2TfKVNY7fZNgUibnQQfGFwmLZxOpcAEVjna1ORubr
 nf/e+xV75eGrhwqTNx+FaPl/tjllRaLd7PX6gyv1M2PxDwXAa3QaaTpWmisTx/GMNiBpgjpUTpG
 KX9Go22/CW7+BCgQN2DYbCqaOQ467L1ZZNhbIbckwssK1vLQpmNyj8HK7W8VGBHcToP2vzW/icN
 yQG6FWL2q05454eNEPjo0Cak3LKjLdarCKs50GCb5xzQ==
X-Forward-Email-ID: 6a32f25392c317d763cdbfaa
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 2.8.30
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <1d9da21e-4b66-4a8d-afe0-38610fb850ef@kwiboo.se>
Date: Wed, 17 Jun 2026 21:15:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] nvmem: rockchip-otp: initialize ret in rk3588_otp_read
To: Ruoyu Wang <ruoyuw560@gmail.com>
References: <20260617183803.1106486-1-ruoyuw560@gmail.com>
Content-Language: en-US
Cc: Srinivas Kandagatla <srini@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20260617183803.1106486-1-ruoyuw560@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260617_121536_410469_A9ACC405 
X-CRM114-Status: GOOD (  13.76  )
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

Hi Ruoyu,

On 6/17/2026 8:38 PM, Ruoyu Wang wrote:
> rk3588_otp_read() returns ret after a count-controlled loop. If count is
> zero, the loop is skipped and ret is not assigned. Initialize ret to 0
> for the empty read path.

To my knowledge core will protect against bytes<=0 read, if that is not
the case we should likely fix so that rockchip_otp_read() never calls
the internal reg_read ops with bytes/count<=0.

Regards,
Jonas

> 
> Signed-off-by: Ruoyu Wang <ruoyuw560@gmail.com>
> ---
>  drivers/nvmem/rockchip-otp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/nvmem/rockchip-otp.c b/drivers/nvmem/rockchip-otp.c
> index 0ec78b5e19e7d..50a19b6dc4027 100644
> --- a/drivers/nvmem/rockchip-otp.c
> +++ b/drivers/nvmem/rockchip-otp.c
> @@ -242,7 +242,7 @@ static int rk3588_otp_read(void *context, unsigned int offset,
>  {
>  	struct rockchip_otp *otp = context;
>  	u32 *buf = val;
> -	int ret;
> +	int ret = 0;
>  
>  	while (count--) {
>  		writel((offset++ << RK3588_ADDR_SHIFT) |


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
