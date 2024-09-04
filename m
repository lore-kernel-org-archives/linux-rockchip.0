Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76FA8CD37B4
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Sep 2024 14:27:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pATozv+nARVAIgJFTDVwt7AB00L+xI0NFOyPYjuDAao=; b=QWkdgntbL3VP9W
	DDCnlvEpEAJ6UPi+t0SQdv+npvFVJH6iNofn7/nMnjytVV6YlD2gHZPFJh5JnoHfOlGdmmdIpjYse
	HvDFa+Yfo+cV+LiZHtEUjOeV8ZMqNPY1F7GVBDhCASIMWvfnCmdJFzsg7TUYLyQTScD+TnQhAOLcw
	sKl8JoljDjHiDHpLhPb7HMBrzDeZnef1DIYxA/3FLbeghXtuAQ9PfWKIuEUbf9yG+C4RBfj9fRKD9
	yp1oGgUxCDE+k3rxfS9rC8vRs73JHvJTOujcEIKGvdn9naogLTQ9zHZx0DAFE6cMoHnr0l9q8UPFR
	87FqW+oAHgTDa2C/wD5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slqyr-00000004miz-34Fo;
	Wed, 04 Sep 2024 14:27:33 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slqwn-00000004mH7-2Xst
	for linux-rockchip@bombadil.infradead.org;
	Wed, 04 Sep 2024 14:25:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=n9N1T1b3GYjcRtNdTA0eRt+BVdBxLA/iS8Tvd/9BiNg=; b=IrfoRmAF5ohylc4IIH7ecLwNOu
	6lslUEhAwTn9mnaxWA1ak13sNjtxyaLXkyadwUuqQoR2XC3dFOO0LTRpuv49bHpy1tWFHUic4y17g
	Ztw/9auhya1sDp1ZSEsj5HNry8V1qVd+46XQRE9q4j0ISph+6O5t/T2EAggXu8ZXbDm0PwMUQmqCB
	688axlxvo9ZtWHM2vksNbSaBTTiBtXpCvY8BtzZwluhkCRR1utDcf7WU30jvImhKgOvgd5VAWDsWs
	Xy5Td4RUGBKa9WusFFPwq4r7LlENHSZfhGWUmY/amXWhar0xWBcRSQAm0dllrQJhM2GH9EGmGQ4N9
	jJcn0LHw==;
Received: from omta38.uswest2.a.cloudfilter.net ([35.89.44.37])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1slqwj-00000000FJ4-3vrh
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Sep 2024 14:25:24 +0000
Received: from eig-obgw-5004a.ext.cloudfilter.net ([10.0.29.221])
	by cmsmtp with ESMTPS
	id lYNFsb6XEumtXlqvEsSI3t; Wed, 04 Sep 2024 14:23:48 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id lqvAspTM80vWTlqvBsEvFk; Wed, 04 Sep 2024 14:23:46 +0000
X-Authority-Analysis: v=2.4 cv=ffZmyFQF c=1 sm=1 tr=0 ts=66d86d72
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=IkcTkHD0fZMA:10 a=EaEq8P2WXUwA:10 a=-pn6D5nKLtMA:10 a=VwQbUJbxAAAA:8
 a=CDJ--hqRtXxyQu1MzM8A:9 a=QEXdDO2ut3YA:10 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=n9N1T1b3GYjcRtNdTA0eRt+BVdBxLA/iS8Tvd/9BiNg=; b=TTG5uyMGqpvP6hbpopOPtqgQYs
	cnPjiMnM6MOsyRTDhg1Z6dGFL4C29Kq4yCHyz1grE8dHjgmcLKkPCZ7/RBPiarQhT9rwseT/l0c4g
	Kj8zLuoyGys2GZIaRgCyE0FQnBcy3ufuB3vhuroQoUUA7HYe+v704KDRCedK3+l8i3M+BQddExODZ
	tNqMs6s2/8JQWhVxFDAa0ddfLsZG4lbeY54qBne0+PPeki4fmdOqSPMZbaGr9dai+L9no7UuLijDt
	EbhAEjiQDNi7dLcVrtuD68bENOpjc5SXgCR9QUzr0hiwrJSd8EuMSpJMtgqDBbNdErzBWFK41aFj6
	QH/0ORRQ==;
Received: from [122.165.245.213] (port=53602 helo=[192.168.1.106])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <karthikeyan@linumiz.com>)
	id 1slqv9-003mnG-0R;
	Wed, 04 Sep 2024 19:53:43 +0530
Message-ID: <5023c87c-993f-4264-b950-5a47edd5e9d0@linumiz.com>
Date: Wed, 4 Sep 2024 19:53:39 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: (subset) [PATCH v2 0/8] Add support Relfor Saib board which is
 based on Rockchip RV1109 SoC
To: Heiko Stuebner <heiko@sntech.de>, conor+dt@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, alexandre.belloni@bootlin.com
Cc: devicetree@vger.kernel.org, linux-rtc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20240903105245.715899-1-karthikeyan@linumiz.com>
 <172544170317.2587256.1675013741817340842.b4-ty@sntech.de>
Content-Language: en-US
From: karthikeyan <karthikeyan@linumiz.com>
In-Reply-To: <172544170317.2587256.1675013741817340842.b4-ty@sntech.de>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1slqv9-003mnG-0R
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.1.106]) [122.165.245.213]:53602
X-Source-Auth: karthikeyan@linumiz.com
X-Email-Count: 21
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfKYOD2XYPZ2GPg29/EpqVhIGBQktkOz1WlHIggwr3NtwaWsa6Q5SnHUWXKpA3jras+xo8L0weGWoImEuNy4Pi2g1O0Z6UIJOOp1A+L+KxzR9yWDv6AZx
 SVag2fjpyiteJ6Pcu69kqav9uUSmg0r7YQVZrtb8fGWiBKBkUvkPCXKh98lYSFQXgXDzYrnIfi3jWVa73A12hI4G1/SsMl0SwjcwU7hhpB11pfnWeq8cli74
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_152522_310472_297F2A8F 
X-CRM114-Status: GOOD (  11.83  )
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



On 9/4/24 14:54, Heiko Stuebner wrote:
> On Tue, 3 Sep 2024 16:22:37 +0530, Karthikeyan Krishnasamy wrote:
>> Rockchip RV1109 is compatible with Rockchip RV1126.
>> In this series, adding required missing peripheral in
>> RV1126 and its pin mux.
>>
>> Relfor Saib board is equipped with 1GB of RAM and 4GB of eMMC
>> Pheripherals like Bluetooth 4.2, Wifi 5G, audio-codec,
>> ir transmitter and receiver, etc
>>
>> [...]
> 
> Applied, thanks!
> 
> [1/8] ARM: dts: rockchip: Add i2c3 node for RV1126
>        commit: 15db79e0bdcb883f0d7a678fe8701a270467a339
> [2/8] ARM: dts: rockchip: Add i2s0 node for RV1126
>        commit: 212cda94739b1644e38ef4f588bb580c12feb9a7
> [3/8] ARM: dts: rockchip: Add pwm node for RV1126
>        commit: 898eb75f443eaf6cb46facf52fc337fbdbdca079
> 
> 
> This means I applied a part of your series and you don't need to
> resubmit the patches mentioned above in a next submission.
> 
> 
> I re-sorted some properties and nodes according the alphabetical
> sorting we use. Please see
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/dts-coding-style.rst
> 
> for the details.
> 
> 
> Best regards,

Thanks, i will updated the other patches in next version.

Best Regards,
Karthikeyan

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
