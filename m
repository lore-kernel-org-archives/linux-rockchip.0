Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3AE9BC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Mar 2022 11:24:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q+UCKxHDdXklApvHZbBu/X6OCBXSTEaEz/EwB2u/haM=; b=dGQb8mlQjWo2wr
	CmIMvDy1yrvUKg0LRdP51uRnBqC6CyLr9LJshdY5h7p8pTKqaNAHzQUtMWp6z/0wPJQJMRaEYoGYJ
	KlDdo4q4fWY4ZZ0ATSZNY4MxrfbL+NS6HNaQSPArgbeZoxuP3VLT5OwHJA4qXiW8xqfXRqRNkRlXS
	Z+AmzZ/4vTxUbWmH+QZP4uh159dzg4mbxw2U2x8eVrAjAL+qf+/Rmg7tcmiVBTHqtzwN7Al6d011C
	viUeDG8IUNUwlmsbAeB67r1nOQBrrpuk08+h0UGmxB4oGw9w4LgpgEfkNOfHhvuFrHtlZxbwMYV4g
	zkqK6ftEBUus7ezEBDJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nP0cU-00GPjP-QE; Tue, 01 Mar 2022 11:24:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nP0bf-00GPTl-1B; Tue, 01 Mar 2022 11:23:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AB7B8ED1;
 Tue,  1 Mar 2022 03:23:49 -0800 (PST)
Received: from [10.57.39.47] (unknown [10.57.39.47])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 373963F73D;
 Tue,  1 Mar 2022 03:23:48 -0800 (PST)
Message-ID: <c12e74b7-0bef-ac7a-20c1-2a17ddd050dd@arm.com>
Date: Tue, 1 Mar 2022 11:23:44 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Subject: Re: [PATCH] mmc: host: dw-mmc-rockchip: avoid logspam when cd-broken
Content-Language: en-GB
To: Peter Geis <pgwipeout@gmail.com>, Jaehoon Chung <jh80.chung@samsung.com>, 
 Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-mmc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220228223642.1136229-1-pgwipeout@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20220228223642.1136229-1-pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220301_032351_180210_F0ADD776 
X-CRM114-Status: GOOD (  17.96  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On 2022-02-28 22:36, Peter Geis wrote:
> The dw_mmc-rockchip driver drops a large amound of logspam constantly
> when the cd-broken flag is enabled.
> Set the warning to be debug ratelimited in this case.

Isn't this just papering over some fundamental problem with the clock? 
If it's failing to set the expected rate for communicating with a card, 
then presumably that's an issue for correct operation in general? The 
fact that polling for a card makes a lot more of that communication 
happen seems unrelated :/

Robin.

> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> ---
>   drivers/mmc/host/dw_mmc-rockchip.c | 9 +++++++--
>   1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/mmc/host/dw_mmc-rockchip.c b/drivers/mmc/host/dw_mmc-rockchip.c
> index 95d0ec0f5f3a..d0ebf0afa42a 100644
> --- a/drivers/mmc/host/dw_mmc-rockchip.c
> +++ b/drivers/mmc/host/dw_mmc-rockchip.c
> @@ -50,8 +50,13 @@ static void dw_mci_rk3288_set_ios(struct dw_mci *host, struct mmc_ios *ios)
>   		cclkin = ios->clock * RK3288_CLKGEN_DIV;
>   
>   	ret = clk_set_rate(host->ciu_clk, cclkin);
> -	if (ret)
> -		dev_warn(host->dev, "failed to set rate %uHz\n", ios->clock);
> +	if (ret) {
> +		/* this screams when card detection is broken */
> +		if (host->slot->mmc->caps & MMC_CAP_NEEDS_POLL)
> +			dev_dbg_ratelimited(host->dev, "failed to set rate %uHz\n", ios->clock);
> +		else
> +			dev_warn(host->dev, "failed to set rate %uHz\n", ios->clock);
> +	}
>   
>   	bus_hz = clk_get_rate(host->ciu_clk) / RK3288_CLKGEN_DIV;
>   	if (bus_hz != host->bus_hz) {

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
