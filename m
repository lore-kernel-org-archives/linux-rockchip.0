Return-Path: <SRS0=TPHQ=NV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2F00C432BE
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Aug 2021 21:50:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6074B60F42
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Aug 2021 21:50:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6074B60F42
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:Cc:To:From:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=B8buKoLajfemBsBXzCDQB+igrqrRlUW3bgpyD6lIML4=; b=dh226fojvSLZp6P5TXXxvYCGnZ
	OtQzgS9A1kqYHh1Oo6V6PipiMO3pQAEG0Pe539+VLtWguhrI4kR/quBa0UYdz64oL46ABTaAjDoeZ
	SQqBIntNRoU3OwQtDcDHbmEYtc/nbM3NRcu/7npt5oVtLkzd0sm0ADqS24L4tfyKbwdGSbRSlFcR9
	0ZZesRF2BK2mkK/k4FedtktosZxHB3EKHpr7ZgOxkqGBg+2fef7+GUHQPq+xyxC7AD5Xx0cJhfVbA
	OuLyILkradCWSMO18rkktX9L2YNrGqZ86Y2+1rRWGSyAjr7cZ6gSaLDkjjbis0cpKP4BJdfy41FYV
	VidsHnXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mKpAh-000hZP-G9; Mon, 30 Aug 2021 21:50:27 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mKpAf-000hYa-9z; Mon, 30 Aug 2021 21:50:26 +0000
Received: by mail-ed1-x52c.google.com with SMTP id n11so23709531edv.11;
 Mon, 30 Aug 2021 14:50:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=S8anJ0NPPB4P0Ut+ZHX8utJDYvZhnlZjZsXzn1rS+3E=;
 b=hPz+rupDI0UhCDh5P+uZg41eWTjlnSVCvPPsZKNU7dDveXrnz4EBdWdxZfhAYeJxB2
 hYfHV1ER5wiH8POAOZd7yZ2vUGOrSQWtOeeZW6NhZNna1LD+CQOK4tEZ+QTaHynzlLZm
 jSm9/+ZNhLUdMvsX+TD8pD1djLH6Qy7rRUSxuqBlwWjC1xu+bgEBaBnwuSr4K/m8Pouc
 SZMi3NQaUjj2ZAgFvIzvTN9kVUnoOyvDjuWj8OugcKYttn64wS0GNHMWALYAdZG92ZSe
 aJZ/vlT7auVKYFWH9Lp9D8zl7acl188pnhsnLSZGnZuuR70OiL5NsN+JVUHYhA5ET5un
 McHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=S8anJ0NPPB4P0Ut+ZHX8utJDYvZhnlZjZsXzn1rS+3E=;
 b=cIZorangz4PopkS+vy/r09cSJaNFI0gPIZVHeysww4zjQPosHzMXZ1FWvSsJHf9OFX
 ZdIcw7626SCAVaMqwzxnnyGG/Bqy0ctFa3SuiZscTQN3R8Oe4j6C2nTPFyuEhXn7U1MJ
 NhoWT8RTciyGZxHB1c/oaJi1Xdliq4ykhTBUcFadJcqIOhWLaN35C76DjRpSxuObLuTJ
 ILN2IJjccH4I3kRTArpn2gNcDZrgH1HZJdDIVYk/01c6+YeZ+is6MvQwNRBHG5qsrpxW
 LEmHK+2fdTd6gKUZWA1ordTZN/Hy+Yd4VWc2lUwrl+F4bK8PPmW7tY4l4cbc241CGZaI
 TykA==
X-Gm-Message-State: AOAM533vIKH+TvPnj/2gdhzqXNcIITM5BNhdhk0fnkKWQKU7hmBXGbWF
 VZ3lXAtGshYgEypgec0eVcF2x4y426wpLUoV
X-Google-Smtp-Source: ABdhPJz9YU4vyFs0t9RrfhZb9jXHLop4ynGMWZhZKNyeg1BHemIWXywK4XjaDQ00ea0hqArcVaHWBQ==
X-Received: by 2002:a50:fd02:: with SMTP id i2mr22536429eds.22.1630360222786; 
 Mon, 30 Aug 2021 14:50:22 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 s3sm7340097ejm.49.2021.08.30.14.50.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 30 Aug 2021 14:50:22 -0700 (PDT)
Subject: Re: [PATCH v1 5/5] arm64: dts: rockchip: add mipi-dphy-tx1rx1 for
 rk3399
From: Johan Jonker <jbx6244@gmail.com>
To: Mikhail Rudenko <mike.rudenko@gmail.com>, linux-phy@lists.infradead.org
Cc: linux-media@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Marc Zyngier <maz@kernel.org>,
 Helen Koike <helen.koike@collabora.com>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 Shunqian Zheng <zhengsq@rock-chips.com>, Robin Murphy
 <robin.murphy@arm.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20210830180758.251390-1-mike.rudenko@gmail.com>
 <20210830180758.251390-6-mike.rudenko@gmail.com>
 <ac38a6ce-19f6-8d30-6070-55b78cc082e2@gmail.com>
Message-ID: <909ebc5f-3a9b-c793-a4fa-07429effd8c3@gmail.com>
Date: Mon, 30 Aug 2021 23:50:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <ac38a6ce-19f6-8d30-6070-55b78cc082e2@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210830_145025_407476_C2FD4412 
X-CRM114-Status: GOOD (  16.89  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



On 8/30/21 11:12 PM, Johan Jonker wrote:
> Hi Mikhail,
> 
> On 8/30/21 8:07 PM, Mikhail Rudenko wrote:
>> Add DT node for RX mode of RK3399 TX1RX1 D-PHY.
>>
>> Signed-off-by: Mikhail Rudenko <mike.rudenko@gmail.com>
>> ---
>>  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 15 +++++++++++++++
>>  1 file changed, 15 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>> index 3871c7fd83b0..2e4513275a87 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>> @@ -1902,6 +1902,21 @@ mipi1_in_vopl: endpoint@1 {
>>  		};
>>  	};
>>  


>> +	mipi_dphy_tx1rx1: mipi-dphy-tx1rx1@ff968000 {
>> +		compatible = "rockchip,rk3399-mipi-dphy-tx1rx1";



	mipi_dsi1: mipi@ff968000 {
		compatible = "rockchip,rk3399-mipi-dsi", "snps,dw-mipi-dsi";
		reg = <0x0 0xff968000 0x0 0x8000>;

Sorry, there's already a node in mainline. Excuse...
See Heiko's comment.


>> +		reg = <0x0 0xff968000 0x0 0x8000>;
> 
>> +		clocks = <&cru SCLK_MIPIDPHY_REF>,
>> +			<&cru SCLK_DPHY_TX1RX1_CFG>,
>> +			<&cru PCLK_VIO_GRF>,
>> +			<&cru PCLK_MIPI_DSI1>;
>> +		clock-names = "dphy-ref", "dphy-cfg",
>> +			"grf", "dsi";
> 
> Could you fix the alignment a bit with extra spaces?
> 
>> +		rockchip,grf = <&grf>;
>> +		power-domains = <&power RK3399_PD_VIO>;
> 
> Sort in alphabetical order.
> 
>> +		#phy-cells = <0>;
>> +		status = "disabled";
>> +	};
>> +
>>  	edp: edp@ff970000 {
>>  		compatible = "rockchip,rk3399-edp";
>>  		reg = <0x0 0xff970000 0x0 0x8000>;
>>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
