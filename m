Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C9DCCEBF61
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Nov 2025 10:33:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dIo1BJrhn4QlUNeTboJQ/jvxWuy2PhYxRB50wiHMSMk=; b=4ftjMzEbSJAPLo
	prO62N9osTX5uuW3j6ocuybU+u3H0vrjQ8rJD0S3UUUgtzVhOn70PVmtVW3yF1f7pmL4V3vpQlrJA
	ElT/mchprYjlWSjNzyjzDIG6TojSs8qvVFfq49LOBVQYX2CvauU7nv2iEhMWU85XuRsV61DkoUZf1
	+J2frdJnIcw2izW3t172p0da2iZbQDoa+KLJMwja3Wo6QUL6IBd7IZ4/Eh2bSsNV4vvtWkOEG94Xq
	PBji/GA5nePXnaukQidHqPDZrWXQ12tFxexvsO9ywD/78Rp3wg3VHQMVK2+6o9e0MUJbffODWGGK9
	Vtn2HTvyiXYcu5pS1OhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKwYK-0000000Fsyu-3ECO;
	Mon, 17 Nov 2025 10:33:44 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKwYH-0000000Fsy1-3FhL;
	Mon, 17 Nov 2025 10:33:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1763375616;
	bh=vaSfU4t7U2cn5yAxDTxbnW+J0huTZf3ya2jZVqfUJ5c=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=COkaG7VmhHg/B+JsDdIRn4dBT/f7lVnRuUxnysgGSkvevwgEpz9ngD2uburz9WSRF
	 HzJVUP4XvqSJntwn2TBSpcOwAtgaqrp2zHgPsE366aGrLFGM4/SBOsNycsFJXjkv07
	 2Lr/ynQHaNeECStBuhsxAnLbJWaaKfrNosYTWgt8RUsw1OOPN6f50K+scftlMnAHw8
	 DIwR4TspiH6dw4b7b0h2lShWkbbmDjVUM7Gy0zWpKf/tsWFCNc6cOoDhnaxGsntkfg
	 IfTacoGWi7xA3ljHPrX2F9eVgOIbeYvXcr71bAfGSIdkXpDaTMPJMW/sRBNOjAlRJF
	 bz/Awcmswlk+A==
Received: from [10.40.0.100] (185-67-175-126.lampert.tv [185.67.175.126])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: mriesch)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 9310F17E10F3;
	Mon, 17 Nov 2025 11:33:35 +0100 (CET)
Message-ID: <2a7a0978-0e7c-4c2b-a51e-8056f9ed1d3f@collabora.com>
Date: Mon, 17 Nov 2025 11:33:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] media: dt-bindings: add rockchip mipi csi-2 receiver
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Mehdi Djait <mehdi.djait@linux.intel.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans Verkuil <hverkuil@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Collabora Kernel Team <kernel@collabora.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Bryan O'Donoghue <bod@kernel.org>
References: <20251114-rockchip-mipi-receiver-v1-0-d13086e810dd@collabora.com>
 <20251114-rockchip-mipi-receiver-v1-1-d13086e810dd@collabora.com>
 <7c37017a-0769-4db3-be7f-af5837d4d102@kernel.org>
Content-Language: en-US
From: Michael Riesch <michael.riesch@collabora.com>
In-Reply-To: <7c37017a-0769-4db3-be7f-af5837d4d102@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_023341_990831_0B233846 
X-CRM114-Status: GOOD (  11.28  )
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

Hi Krzysztof,

On 11/17/25 11:06, Krzysztof Kozlowski wrote:
> On 17/11/2025 11:01, Michael Riesch via B4 Relay wrote:
>> From: Michael Riesch <michael.riesch@collabora.com>
>>
>> Add documentation for the Rockchip MIPI CSI-2 Receiver.
>>
>> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
>> Reviewed-by: Bryan O'Donoghue <bod@kernel.org>
>> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
>> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> 
> 
> Please keep only one tag per person.

Oops, OK.

> That's a v1 so I don't get how could you get these above and I could not
> find answer in the cover letter either.

Quote cover letter:

    "These changes have been discussed and reviewed thoroughly (see [0]
    and predecessors).

    [...]

    [0]
https://lore.kernel.org/r/20240220-rk3568-vicap-v14-0-b38b6da0fc80@collabora.com"

That's how I got them.

> 
> Best regards,
> Krzysztof

Thanks and best regards,
Michael


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
