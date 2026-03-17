Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EA16FD8769
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Mar 2026 13:21:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CVvLydUb5aG71IXwXZvvKdLS+ypqPoAinveA3uBD3xU=; b=BIQ3W57MAackDW
	kSqgvEzG3fpe1GqMnZRDQcxgDgra4Wb//W4a0zD46iup8Ctv5TgRyJ4IVakcFV9DmPWa/QxvrGy9G
	vBciXUcIPmflqsEH6ddifKleH/2ujiQPehvwXuTVU2CrST3HP1ZH+5Oql2XZ4CJWzgrbWFu0EIxGq
	8QrGPoE8XRvsRUMfWF47Xukxu5prsHascfny1YCkj9xulantOpXezsL8x9qbaA/uYoVYraRjnuym8
	T8v5HHljhDkkLqjKAuxi+1U16+MDtDAKF7n+3rBC2QhaWHGdo9ccwQpcaCuXwmbEFmuTCPixs+EBs
	iiYRmn8iQhcUhwlerU8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2UMT-00000006Pio-2Ksy;
	Tue, 17 Mar 2026 13:21:29 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2UMQ-00000006PhM-1R5p;
	Tue, 17 Mar 2026 13:21:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1773753682;
	bh=hTN1TNlOZL26JxiO/N2w3PZRC4OyzRSiRbthnRGcI0I=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=e3Wo5w1g48wmRF4VftZVxkCP6WO42t2NEdAxgAgcbg73QSnJPPXkHZXTmPnrIEwGM
	 g4EfshV3wE3ZbE3QLdmmaTGH5N2hY/gpqcfiAAs9IbvJ6CUE+59IrqS6g3oO0YbC/A
	 FwdqhZBos8+ItXxhieyZ6z6IOlsXuftcfHXIR6rVYdklpDI0LrrhQFQiA259+QO9up
	 fzB5FZbYlOJV7PTs5YwhxwI1gFwoOvxAxI18eVV83ixh9Z/wA1/E58JupvozFswG9C
	 LXQazlhooyzrZ/DdRnNn+7CWEJr1uBIEzd/3qGEdHc1RfNPagIwLMS248CGhO4KoHY
	 6OMIzOpw/1D/A==
Received: from [10.40.0.100] (185-67-175-126.lampert.tv [185.67.175.126])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: mriesch)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 68CC517E0E3F;
	Tue, 17 Mar 2026 14:21:21 +0100 (CET)
Message-ID: <e894fe10-3780-465a-984d-01f5e8f4c97e@collabora.com>
Date: Tue, 17 Mar 2026 14:21:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/9] media: rockchip: rkcif: add support for rk3588
 vicap mipi capture
To: Mehdi Djait <mehdi.djait@linux.intel.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kever Yang <kever.yang@rock-chips.com>,
 Jagan Teki <jagan@amarulasolutions.com>,
 =?UTF-8?B?0JrRg9C30L3QtdGG0L7QsiDQnNC40YXQsNC40Ls=?=
 <mai.kuznetsov.misha@gmail.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Collabora Kernel Team <kernel@collabora.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250430-rk3588-vicap-v2-0-77de5ee9048e@collabora.com>
 <20250430-rk3588-vicap-v2-3-77de5ee9048e@collabora.com>
 <ablRBViDR996euua@mdjait-mobl>
Content-Language: en-US
From: Michael Riesch <michael.riesch@collabora.com>
In-Reply-To: <ablRBViDR996euua@mdjait-mobl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_062126_570898_7685D0E6 
X-CRM114-Status: GOOD (  15.67  )
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

Hi Mehdi,

On 3/17/26 14:08, Mehdi Djait wrote:
> Hi Michael,
> 
> Thank you for this nice patch!
> 
> On Tue, Mar 17, 2026 at 10:32:21AM +0100, Michael Riesch via B4 Relay wrote:
>> From: Michael Riesch <michael.riesch@collabora.com>
>>
>> The RK3588 Video Capture (VICAP) unit features a Digital Video Port
>> (DVP) and six MIPI CSI-2 capture interfaces. Add initial support
>> for this variant to the rkcif driver and enable the MIPI CSI-2
>> capture interfaces.
>>
>> Signed-off-by: Michael Riesch <michael.riesch@collabora.com>
> 
> [...]
> 
>>  static inline unsigned int rkcif_mipi_get_reg(struct rkcif_interface *interface,
>>  					      unsigned int index)
>>  {
>> @@ -631,6 +765,8 @@ static int rkcif_mipi_start_streaming(struct rkcif_stream *stream)
>>  	rkcif_mipi_stream_write(stream, RKCIF_MIPI_CTRL1, ctrl1);
>>  	rkcif_mipi_stream_write(stream, RKCIF_MIPI_CTRL0, ctrl0);
>>  
>> +	rkcif_mipi_write(interface, RKCIF_MIPI_CTRL, RKCIF_MIPI_CTRL_CAP_EN);
>> +
> 
> while this is the correct solution for rk3588, for the rk3568 vicap this
> will write 0x1 to the VICAP_MIPI_CTRL : 0x00A0 which will enable the water line.

nice catch ;-) However, the TRM (at least my version) claims that this
bit has a reset value of 0x1, so the bit in question should be already
set in the first place. Thus I decided to *not* make variant specific
code paths.

Do you see problems in your setup?

> 
> --
> Kind Regards
> Mehdi Djait

Best regards,
Michael



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
