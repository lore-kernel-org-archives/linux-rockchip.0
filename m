Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A43ACD5BB1
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 May 2026 01:25:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ITkxO6SciHpppDVYMQ/H+RyAl5KwXRFKYUi+YRIl+Qw=; b=BVINvHQw+EhPrNWP/oCQ/e6z1N
	QIzrIGJRK0x/EgmlK3J9LSe87RKZRKlWlPb2llzbUQ1O5jmZixcvWV47z671IogdYEIZF9ifV3aTI
	9Pmzq5FbrRSQ7Mcvr0IvlB9HXFPhXfEVOg/BgUcwmYohpt0KmrNCpuDvHmJribp3ZTB3ODuAR++WU
	n86UgcsKjFpW20Crl/hFGaYxlxpB2CK8BdywsTU3KZ7rD5RPT9MqGRbhWFNbDpWofUxawA4ZmcqsD
	/B+rhjOEXTDKa0BIDCb+f0rqEdPbNH7d2CNSTtAt5IykCJJtgmKJk1e4TJQr7YrKtz61b/I+wiDuq
	y9X58gtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQEdd-00000009TSl-2HO2;
	Fri, 22 May 2026 01:25:21 +0000
Received: from mail-m17221.xmail.ntesmail.com ([45.195.17.221])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQEdZ-00000009TS0-0mAf;
	Fri, 22 May 2026 01:25:19 +0000
Received: from [172.16.12.43] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3f5fceca6;
	Fri, 22 May 2026 09:25:09 +0800 (GMT+08:00)
Message-ID: <959f90d0-a97e-41f2-b39c-97465e906700@rock-chips.com>
Date: Fri, 22 May 2026 09:25:08 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] dt-bindings: rockchip: analogix-dp: Add data-lanes
 example
To: Conor Dooley <conor@kernel.org>
References: <20260521114459.1394264-1-damon.ding@rock-chips.com>
 <20260521114459.1394264-3-damon.ding@rock-chips.com>
 <20260521-powdery-tux-22a7cf4fadc3@spud>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <20260521-powdery-tux-22a7cf4fadc3@spud>
X-HM-Tid: 0a9e4d494c0303a3kunm0428e0bca4f9b
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCQxpIVk8dSB1DS0NJTxlDGFYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=GnvlT/xBYOdkN9DU1iEt20bXPIo8qdooBfyzFMQY8127vD1w+oeiXdZNszI+FwxKWmNnMLyy7YaSJS+FA/2UIC2njnzt66dgeKAwTfsgzkSJk1Acbr0R4GM9yO6HuaKAHwmCWEYBDEatI0Y/F/Ah0M8H19iQqc4vGHhmxJI0Vl8=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=or1x9VMxHGuaR+KEDTWJh5vt8U96cHrmYFhV8rlbjwo=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_182517_780660_F68349B9 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
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
Cc: heiko@sntech.de, dri-devel@lists.freedesktop.org, dianders@chromium.org, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, airlied@gmail.com, m.szyprowski@samsung.com, simona@ffwll.ch, robh@kernel.org, rfoss@kernel.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, luca.ceresoli@bootlin.com, devicetree@vger.kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, maarten.lankhorst@linux.intel.com, mripard@kernel.org, linux-arm-kernel@lists.infradead.org, dmitry.baryshkov@oss.qualcomm.com, neil.armstrong@linaro.org, hjc@rock-chips.com, linux-kernel@vger.kernel.org, tzimmermann@suse.de, andy.yan@rock-chips.com, krzk+dt@kernel.org, nicolas.frattaroli@collabora.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 5/22/2026 3:47 AM, Conor Dooley wrote:
> On Thu, May 21, 2026 at 07:44:58PM +0800, Damon Ding wrote:
>> Add data-lanes setting in endpoint example to show actual lane mapping
>> usage.
>>
>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> Squash this with patch 1.
> pw-bot: changes-requested
> 

Yes, will fix in v3

Best regards,
Damon

> 
>> ---
>>   .../bindings/display/rockchip/rockchip,analogix-dp.yaml          | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
>> index bb75d898a5c5..cf75c926318b 100644
>> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
>> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
>> @@ -151,6 +151,7 @@ examples:
>>             reg = <1>;
>>   
>>             edp_out_panel: endpoint {
>> +            data-lanes = <0 1>;
>>               remote-endpoint = <&panel_in_edp>;
>>             };
>>           };
>> -- 
>> 2.34.1
>>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
