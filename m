Return-Path: <SRS0=7T5N=LJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4DDFEC48BDF
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jun 2021 19:35:33 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0BCD860E0C
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jun 2021 19:35:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0BCD860E0C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zs2fJg++k735doD/dk1r9Ww5xLhIGKfl2oRzFLMG4xk=; b=WS+qZCG9UL5Ay3MQ+eyyTxVWSm
	omFy4yAdCoygukhVDr2I6lUdqgfXjZ0QGU3m4H2/xtpcVv9AVHiBWGuM/Q1jHG3x1UobsripJt0ni
	UxJgDXQz/ta6x5OAIL2oDKIJyUNUtpxwzUawHhPedknViGYYSssgyD9LVHEyAf+60kAPOEEFHCho9
	JCZhQXUQ45FLqXBuN6M43nKtSjBKxmoIEyrTDJqOrl3YT2tZY9UdIr84t2v8RNpqK699hyhsFJFcH
	e/wlBXHvVxDTNSP6gK8j3mVOxAAiiIHf3ap2cKbbwv0dlUXsX2uvUOutY4TvbFMl6WmV7kyNWxXGk
	v+6Rr2hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltEqP-002U82-Hw; Tue, 15 Jun 2021 19:35:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt9Li-000DEY-Sa
 for linux-rockchip@bombadil.infradead.org; Tue, 15 Jun 2021 13:43:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
 :In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=jbV2zqgnkriCxZgNMXONfxlHoD6wS9HrSELtEU6jTe8=; b=HdtUxp+wSpQFstwlPz3yNzvIr/
 yQV5vwqmFjBbxyuOGqiJcwTw9W1NAu9oUpD/EcmwbmqZRA5h9T+CW4p8tof+GvJl1CtZlbEc0msDq
 3q0N3Vwy/H6SqZDT8rYFZZlv6uIWsrcqEEGqF21NGl+2jCoqOBxVui68NwOeB+Kq0XsbOE1Dr6ghL
 PeoLrpBmVSLIo674iR/dYmiHCiiJs2WgEPu1WiXFUYv4WSOHAxjRbeyCzlUvFL8EuLPt3TCX/PJo0
 2EyPMdsycN74FJr81MCUnDKmGoyAqpfn6EWtlhDo7Ro6+XwRrhTlprfVupfcLzceLYiCuC25HnL8x
 PwGTwkkg==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt2bO-007PM5-HU
 for linux-rockchip@lists.infradead.org; Tue, 15 Jun 2021 06:31:19 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 7FCE11F412A9
Subject: Re: [PATCH v2 7/7] media: rockchip: rkisp1: add support for px30 isp
 version
To: Heiko Stuebner <heiko@sntech.de>, mchehab@kernel.org,
 hverkuil-cisco@xs4all.nl
Cc: ezequiel@collabora.com, helen.koike@collabora.com,
 Laurent.pinchart@ideasonboard.com, linux-rockchip@lists.infradead.org,
 linux-media@vger.kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
References: <20210615003741.3758316-1-heiko@sntech.de>
 <20210615003741.3758316-8-heiko@sntech.de>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <80e47c31-8711-37fb-8bef-43376d6558ac@collabora.com>
Date: Tue, 15 Jun 2021 09:31:10 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210615003741.3758316-8-heiko@sntech.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_073117_477100_3857AA81 
X-CRM114-Status: GOOD (  19.92  )
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

Hi,

On 15.06.21 03:37, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> The px30 uses a V12 isp block so add compatible and matchdata
> for it.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---
>   .../media/platform/rockchip/rkisp1/rkisp1-dev.c | 17 +++++++++++++++++
>   1 file changed, 17 insertions(+)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> index ddc05189c62a..6e4c0710f3a3 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> @@ -398,6 +398,19 @@ static irqreturn_t rkisp1_isr(int irq, void *ctx)
>   	return IRQ_HANDLED;
>   }
>   
> +static const char * const px30_isp_clks[] = {
> +	"isp",
> +	"aclk",
> +	"hclk",
> +	"pclk",
> +};
> +
> +static const struct rkisp1_match_data px30_isp_match_data = {
> +	.clks = px30_isp_clks,
> +	.size = ARRAY_SIZE(px30_isp_clks),
> +	.isp_ver = RKISP1_V12,
> +};
> +
>   static const char * const rk3399_isp_clks[] = {
>   	"isp",
>   	"aclk",
> @@ -411,6 +424,10 @@ static const struct rkisp1_match_data rk3399_isp_match_data = {
>   };
>   
>   static const struct of_device_id rkisp1_of_match[] = {
> +	{
> +		.compatible = "rockchip,px30-cif-isp",
> +		.data = &px30_isp_match_data,
> +	},

I think the yaml should be updated to add the compatible "rockchip,px30-cif-isp"
also, maybe interrupt-names values should be added to the 'rkisp1_match_data' of each compatible
and then in patch 1 those values can be used instead of the if-else implementation in the probe.

Thanks,
Dafna

>   	{
>   		.compatible = "rockchip,rk3399-cif-isp",
>   		.data = &rk3399_isp_match_data,
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
