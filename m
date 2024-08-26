Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDE86C5321D
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 14:08:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Bp1UqdDNVb7Cab6vbY5D/wsukmdYGaEAdGAYhVwp6uk=; b=cpCs6pYbdu2YQBW3NuCQhjLDxo
	++z6Fn7ZDoon8xnjX6JgMWwJX4Fxw0XkdyNCxZqZynuSwKeHz4O5OtWr9c5oQvltWrv6HAcP+yBrw
	XollhDjm9bWjOg5P3MZd1uOwydkiIzDu4iyirx1ohrALjJDiNvivJ1zG/ROMel99Nffbzr1tKRJnz
	O5cGv26EbdWfIQD9tQF64RnSBpGbN1QFMvjfPm1v15cwjnSy+XlMCnbwl+2AkrsCRI9MUomR70HL0
	1+hYgU6LjRabCya4rTSCYMjbT9SPOBeicX/HG4vEMNMJOjBG2n0OWkgD2CZz3yvvQJZd7WtCmoocV
	qYFGavgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siaOh-00000007bfk-1ULP;
	Mon, 26 Aug 2024 14:08:43 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siaNs-00000007bXh-2hW7;
	Mon, 26 Aug 2024 14:07:55 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1724681270;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=U7u0W5LEnkH2sOZAmNO6zvSkVtZ3dx2voJoTAm3CKcA=;
	b=Lv3hQkmYGvuYXN9u4Feb//n8y/X8fQ8+7IjGikFSRN2GITBI4A51wFxRxvusbItAi1ANzR
	hcQtZDPR48ipibhiEKTtqBmOFIT7yzCeE8LBBfUCJjH6TplQ7fXJx+KiWFO2j+9oK0PckK
	hbEBoCMEB5AuPTOgswitAkUy2mp4my4abNHxWSPG5dQcbrAizx01SgcTuMBYnESx2ZmwvA
	Mb6tIfySWTjzhdQBDc3aIho8JflI1rp/8dxcWhrBzDqAnPczZDmJiIq+SBOgAym7l3ZO0Q
	W4W+bHqzV73jVcTutQDJyTrXAs+UdN77LwevsssYvieOZkW0Tlb3O1uQcZ9CFA==
Date: Mon, 26 Aug 2024 16:07:49 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Jaehoon
 Chung <jh80.chung@samsung.com>, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v4 4/4] mmc: dw_mmc-rockchip: Add support for rk3576 SoCs
In-Reply-To: <5808226.DvuYhMxLoT@trenzalore>
References: <20240822212418.982927-1-detlev.casanova@collabora.com>
 <20240822212418.982927-5-detlev.casanova@collabora.com>
 <26fe259f390a8015c3f08c6dc027711c@manjaro.org>
 <5808226.DvuYhMxLoT@trenzalore>
Message-ID: <dc77f6dbdfc68369d02005763143cdea@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_070753_971519_F14B4130 
X-CRM114-Status: GOOD (  23.30  )
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

Hello Detlev,

On 2024-08-23 15:20, Detlev Casanova wrote:
> On Friday, 23 August 2024 03:00:57 EDT Dragan Simic wrote:
>> Hello Detlev,
>> 
>> Please see a comment below.
>> 
>> On 2024-08-22 23:15, Detlev Casanova wrote:
>> > On rk3576 the tunable clocks are inside the controller itself, removing
>> > the need for the "ciu-drive" and "ciu-sample" clocks.
>> >
>> > That makes it a new type of controller that has its own dt_parse
>> > function.
>> >
>> > Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
>> > ---
>> >
>> >  drivers/mmc/host/dw_mmc-rockchip.c | 48 ++++++++++++++++++++++++++----
>> >  1 file changed, 43 insertions(+), 5 deletions(-)
>> >
>> > diff --git a/drivers/mmc/host/dw_mmc-rockchip.c
>> > b/drivers/mmc/host/dw_mmc-rockchip.c
>> > index 1458cb5fd5c7..7c8ccf5e71bc 100644
>> > --- a/drivers/mmc/host/dw_mmc-rockchip.c
>> > +++ b/drivers/mmc/host/dw_mmc-rockchip.c
> [...]
>> > @@ -435,13 +451,25 @@ static int dw_mci_rk3288_parse_dt(struct dw_mci
>> > *host)
>> >
>> >  	if (IS_ERR(priv->sample_clk))
>> >
>> >  		dev_dbg(host->dev, "ciu-sample not available\n");
>> >
>> > -	host->priv = priv;
>> > -
>> >
>> >  	priv->internal_phase = false;
>> >
>> >  	return 0;
>> >
>> >  }
>> >
>> > +static int dw_mci_rk3576_parse_dt(struct dw_mci *host)
>> > +{
>> > +	struct dw_mci_rockchip_priv_data *priv;
>> > +	int err = dw_mci_common_parse_dt(host);
>> > +	if (err)
>> > +		return err;
>> > +
>> > +	priv = host->priv;
>> > +
>> > +	priv->internal_phase = true;
>> 
>> Defining priv, assigning it and using it seems rather redundant,
>> when all that's needed is simple "host->priv->internal_phase = true"
>> assignment instead.
> 
> Yes, that's what I did at first, but host->priv is declared as void*, 
> which
> means it needs to be cast to struct dw_mci_rockchip_priv_data * and I 
> felt
> that
> 
> ((struct dw_mci_rockchip_priv_data *)host->priv)->internal_phase = 
> true;
> 
> is not very pretty and harder to read.

Ah, you're right, and I somehow managed to ignore that.

I agree with your conclusions, although I'd suggest something like
this, for slightly improved readability:

  +static int dw_mci_rk3576_parse_dt(struct dw_mci *host)
  +{
  +	struct dw_mci_rockchip_priv_data *priv = host->priv;
  +	int err;
  +
  +	err = dw_mci_common_parse_dt(host);
  +	if (err)
  +		return err;
  +
  +	priv->internal_phase = true;
  +
  +	return 0;
  +}

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
